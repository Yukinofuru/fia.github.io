(() => {
    const kag = TYRANO.kag;
    const rules = window.fiaMixRules;
    const numerals = ['壱', '弐', '参'];
    const symptoms = { light: '痛みがあり、動かしづらい', medium: '強い痛みと出血', severe: '激しい出血と反応の低下' };
    const patientNumber = () => String(Math.floor(Math.random() * 9000) + 1000);
    const session = () => kag.stat.f.irmMix;
    const root = () => document.getElementById('irm-mix');
    const partNames = parts => parts.map(part => rules.parts[part][0]).join('、') || 'なし';
    function node(tag, text, className) {
        const element = document.createElement(tag);
        element.textContent = text;
        if (className) element.className = className;
        return element;
    }
    function button(label, action) {
        const element = node('button', label);
        element.type = 'button';
        element.onclick = action;
        return element;
    }
    function reset(id, lab, debug = false, completed = []) {
        kag.stat.f.irmMix = { id, lab, debug, amount: 0, selected: [], phase: 'drugs',
            clicks: 0, drugsMs: 0, mixMs: 0, since: Date.now(), errors: [], status: '', completed };
    }
    function beginDay() {
        const f = kag.stat.f;
        if (f.irmMixDay?.day !== f.dayCount) {
            f.irmMixDay = { day: f.dayCount, patients: rules.randomPatients(f.dayCount), index: 0, results: [] };
        }
        return nextDayPatient();
    }
    function nextDayPatient() {
        const batch = kag.stat.f.irmMixDay;
        const patient = batch.patients[batch.index];
        if (!patient) return false;
        reset(patient.id, false);
        patient.number ||= patientNumber();
        Object.assign(session(), { patient, daily: true });
        return true;
    }
    function currentPatient() {
        const s = session();
        return s.patient || rules.cases[s.id];
    }
    function elapsed(s, phase) {
        return (phase === 'drugs' ? s.drugsMs : s.mixMs) + (s.phase === phase ? Math.max(0, Date.now() - s.since) : 0);
    }
    function phase(next) {
        const s = session();
        s.drugsMs = elapsed(s, 'drugs');
        s.mixMs = elapsed(s, 'mix');
        s.phase = next;
        s.since = Date.now();
    }
    function jump(target) {
        kag.cancelWeakStop();
        kag.ftag.startTag('jump', { storage: 'irm_mix.ks', target });
    }
    function beginMix() {
        const s = session();
        const { initial, target } = rules.problem(s.amount, s.selected);
        Object.assign(s, { initial, target, values: [...initial], clicks: 0 });
        phase('mix');
        render();
    }
    function advance(status) {
        const s = session();
        if (!s || s.phase === 'leaving' || (status !== 'interrupted' && s.phase !== status)) return;
        s.status = status;
        phase('leaving');
        kag.stat.f.irmMixResult = { caseId: s.id, status, success: status === 'success' };
        if (s.daily) {
            const f = kag.stat.f;
            const batch = f.irmMixDay;
            batch.results.push(f.irmMixResult);
            batch.index++;
            if (status === 'success') f.treatedCount = (Number(f.treatedCount) || 0) + 1;
            if (nextDayPatient()) return '*screen';
        }
        return '*finish';
    }
    function finish(status) {
        const target = advance(status);
        if (target) jump(target);
    }
    function confirm() {
        const s = session();
        if (s.phase !== 'mix') return;
        if (s.lab) (s.completed ||= []).push(s.id);
        s.errors = rules.errors(s);
        if (s.errors.length) {
            s.status = 'failure';
            phase('failure');
            if (s.lab) render();
            else jump('*patientFailure');
            return;
        }
        phase('injecting');
        jump('*inject');
    }
    function drugs(panel, s, patient) {
        const scan = node('section', '', 'irm-scan');
        scan.setAttribute('aria-label', '負傷部位');
        const map = node('ul', '', 'irm-part-list');
        for (const [part, [label]] of Object.entries(rules.parts)) {
            const injury = patient.injuries[part];
            const zone = node('li', label, 'irm-zone');
            if (injury) {
                zone.dataset.injury = injury;
                zone.title = label + ' ／ ' + rules.levels[injury][0];
            }
            map.append(zone);
        }
        scan.append(map);
        const log = node('section', '', 'irm-chart');
        log.append(node('h2', 'カルテログ', 'irm-chart-id'));
        const injuries = node('ul', '', 'irm-injuries');
        for (const [part, level] of Object.entries(patient.injuries)) {
            const row = node('li', '');
            row.append(node('span', rules.parts[part][0]), node('span', rules.levels[level][0], 'irm-severity'));
            row.append(node('small', symptoms[level] || '負傷あり', 'irm-symptom'));
            injuries.append(row);
        }
        const scale = node('dl', '', 'irm-dose-scale');
        for (const [label, amount] of Object.values(rules.levels)) {
            const item = node('div', '');
            item.append(node('dt', label), node('dd', amount + ' mg'));
            scale.append(item);
        }
        log.append(injuries, scale);
        const controls = node('section', '', 'irm-controls');
        controls.append(node('h2', '薬剤操作盤'));
        const dose = node('div', '', 'irm-dose');
        for (const delta of [-rules.settings.step, rules.settings.step]) {
            const change = button((delta < 0 ? '−' : '＋') + Math.abs(delta) + ' mg', () => {
                s.amount += delta;
                render();
            });
            change.disabled = s.amount + delta < 0 || s.amount + delta > rules.settings.max;
            dose.append(change);
        }
        dose.insertBefore(node('output', s.amount + ' mg'), dose.lastChild);
        const options = node('div', '', 'irm-options');
        for (const [id, [label]] of Object.entries(rules.parts)) {
            const selected = s.selected.includes(id);
            const option = button(label, () => {
                s.selected = selected ? s.selected.filter(part => part !== id) : [...s.selected, id];
                render();
            });
            option.setAttribute('aria-pressed', String(selected));
            options.append(option);
        }
        const start = button('調合を開始', beginMix);
        start.classList.add('irm-primary');
        options.setAttribute('aria-label', '作用部位');
        controls.append(options, node('h3', 'IR-M本体'), dose, start);
        const columns = node('div', '', 'irm-columns');
        columns.append(scan, log, controls);
        panel.append(columns);
    }
    function mixing(panel, s) {
        const gauges = node('div', '', 'irm-gauges');
        const layout = node('div', '', 'irm-mix-layout');
        const controls = node('section', '', 'irm-controls irm-mix-controls');
        controls.append(node('p', 'IR-M ' + s.amount + ' mg', 'irm-mixture'),
            node('p', partNames(s.selected)));
        for (const target of s.target) {
            const gauge = node('section', '');
            const tank = node('div', '', 'irm-tank');
            const liquid = node('div', '', 'irm-liquid');
            liquid.append(node('span', '', 'irm-surface'));
            const marker = node('div', '', 'irm-marker');
            marker.style.bottom = (target + 1) * 25 + '%';
            tank.append(liquid, marker);
            gauge.append(tank, node('p', '', 'irm-value'));
            gauges.append(gauge);
        }
        function update() {
            [...gauges.children].forEach((gauge, index) => {
                const liquid = gauge.querySelector('.irm-liquid');
                const height = (s.values[index] + 1) * 25 + '%';
                liquid.style.height = height;
                gauge.querySelector('.irm-value').textContent = numerals[index];
                gauge.setAttribute('aria-label', numerals[index] + '、現在値 ' + (s.values[index] + 1) + '、目標値 ' + (s.target[index] + 1));
                gauge.classList.toggle('irm-matched', s.values[index] === s.target[index]);
            });
            updateDebug(panel, s);
        }
        const switches = node('div', '', 'irm-switches');
        for (const [keyIndex, key] of rules.keys.entries()) {
            const impacts = rules.settings.switches[key].flatMap((delta, index) => delta ? [numerals[index] + (delta > 0 ? '+' : '') + delta] : []);
            switches.append(button(numerals[keyIndex] + ' ／ ' + impacts.join('・'), () => {
                s.values = rules.move(s.values, key);
                s.clicks++;
                update();
            }));
        }
        const confirmButton = button('調合を確定', confirm);
        confirmButton.classList.add('irm-primary');
        controls.append(switches, confirmButton);
        layout.append(gauges, controls);
        panel.append(layout);
        update();
    }
    function updateDebug(panel, s) {
        panel.querySelector('.irm-debug')?.remove();
        if (!s.lab || !s.debug) return;
        const correct = rules.answer(s.id);
        const goal = rules.problem(correct.amount, correct.selected);
        const show = values => values ? values.map(value => value + 1).join(' / ') : '—';
        const seconds = value => (value / 1000).toFixed(1) + '秒';
        panel.append(node('aside', [
            '正解 ' + correct.amount + ' mg ／ ' + partNames(correct.selected),
            '正解目標 ' + show(goal.target) + ' ／ 最短 ' + rules.shortest(goal.initial, goal.target) + '手',
            '今回の目標 ' + show(s.target) + ' ／ 現在 ' + show(s.values),
            'スイッチ ' + s.clicks + '回 ／ 薬剤選択 ' + seconds(elapsed(s, 'drugs')) + ' ／ 調合 ' + seconds(elapsed(s, 'mix')),
            '結果 ' + ({ success: '成功', failure: '失敗', interrupted: '中断' }[s.status] || '判定前')
        ].join('\n'), 'irm-debug'));
    }
    function render() {
        const panel = root();
        const s = session();
        if (!panel || !s) return;
        const header = node('header', '', 'irm-header');
        if (s.daily) {
            const batch = kag.stat.f.irmMixDay;
            s.patient.number ||= patientNumber();
            header.append(node('h1', '患者No.' + s.patient.number + '/残り' + (batch.patients.length - batch.index) + '人'));
        } else {
            header.append(node('h1', currentPatient().title));
        }
        const steps = node('div', '', 'irm-steps');
        const current = s.phase === 'drugs' ? 0 : s.phase === 'mix' ? 1 : 2;
        ['薬剤選択', '調合', '照合結果'].forEach((label, index) => {
            const step = node('span', label);
            if (index === current) step.setAttribute('aria-current', 'step');
            steps.append(step);
        });
        panel.replaceChildren(header, steps);
        const completed = s.completed || [];
        const nextLabId = Object.keys(rules.cases).find(id => !completed.includes(id));
        if (s.lab && s.phase === 'drugs') {
            const selector = node('select', '');
            selector.setAttribute('aria-label', '検証する症例');
            for (const [id, patient] of Object.entries(rules.cases)) {
                const option = node('option', id + '　' + patient.title);
                option.value = id;
                option.disabled = completed.includes(id);
                selector.append(option);
            }
            selector.value = s.id;
            selector.onchange = () => { reset(selector.value, true, s.debug, completed); render(); };
            panel.append(selector);
        }
        if (s.lab) panel.append(button(s.debug ? 'デバッグ表示を隠す' : 'デバッグ表示を出す', () => { s.debug = !s.debug; render(); }));
        if (s.phase === 'drugs') drugs(panel, s, currentPatient());
        if (s.phase === 'mix') mixing(panel, s);
        if (s.phase === 'failure') {
            const result = node('section', '', 'irm-result irm-failure');
            result.append(node('h2', '照合不一致'), node('p', '投与を中止'));
            const errors = node('ul', '');
            for (const error of s.errors) errors.append(node('li', error));
            result.append(errors);
            panel.append(result);
        }
        if (s.phase === 'success') panel.append(node('h2', '治療完了', 'irm-result'));
        if (s.lab && nextLabId && ['success', 'failure'].includes(s.phase)) {
            panel.append(button('次の症例', () => {
                reset(nextLabId, true, s.debug, completed);
                render();
            }));
        }
        if (s.lab) panel.append(button('検証を終了', () => finish(s.status || 'interrupted')));
        updateDebug(panel, s);
    }
    function restore() {
        const panel = root();
        const s = session();
        if (!panel || !s) return;
        s.since = Date.now();
        if (!s.lab && (s.phase === 'success' || s.phase === 'failure')) {
            // 旧版の結果画面で保存した場合は、ロード処理が戻ってから会話で再開する。
            let frames = 30;
            const resumeResult = () => {
                if (panel !== root() || s !== session()) return;
                if (kag.stat.current_scenario === 'irm_mix.ks') {
                    jump(s.phase === 'failure' ? '*patientFailure' : '*patientResult');
                } else if (--frames > 0) {
                    requestAnimationFrame(resumeResult);
                }
            };
            requestAnimationFrame(resumeResult);
            return;
        }
        render();
    }
    window.fiaMix = { reset, render, restore, phase, session, beginDay, currentPatient, advance };
})();
