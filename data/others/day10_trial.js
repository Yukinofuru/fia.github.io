/* 体験版の日課と推理記録。推理の本文は 01.ks と 10.ks が担当する。 */
(function () {
    'use strict';
    const kag = TYRANO.kag;
    const game = () => kag.stat.f;
    const records = {
        corridor_voice: ['暗闇からの声', '呼びかけに答えず、同じ声が繰り返し聞こえる。', '古虫の聴取'],
        corridor_sleeve: ['血の跡', '灯りの端に血の跡が見えた。声の主の姿は見えない。', '古虫の目視'],
        arm_returned: ['転移後の右腕', '失ったはずの右腕が、強制転移から目を覚ました時にはあった。', '古虫の観察'],
        arm_torn_sleeve: ['破れた血染めの袖', '右腕があった一方、袖は破れ、血で汚れていた。', '古虫の観察'],
        bone_delivery: ['印持ちと呼ばれた', '綾瀬が古虫を「印持ち」と呼び、世紬は「ええ、そうね」と答えた。', '綾瀬と世紬の会話'],
        bone_conversation: ['綾瀬の手元にある遺骨', '綾瀬は連盟が狙う遺骨を自分が持っていると話した。', '綾瀬の言葉'],
        setsu_knew_bone: ['世紬は古虫を印持ちだと知っていた', '世紬は古虫を印持ちだと知っていたと認めた。腕が戻った理由は不明。', '世紬による確認'],
        patient_shift: ['見張りの引き継ぎ', '処置を受けた患者が、夕方の通路の見張りに戻れると話した。', '患者の話']
    };
    const edge = (a, b) => [a, b].sort().join('/');
    const cases = {
        corridor: {
            title: '暗闇の声',
            nodes: ['corridor_voice', 'corridor_sleeve'],
            recipes: {
                corridor_unknown: ['声の主が仲間だと確認できない。怪異の可能性がある', [
                    edge('corridor_voice', 'corridor_sleeve')
                ]]
            }
        },
        arm: {
            title: '古虫の右腕',
            nodes: ['arm_returned', 'arm_torn_sleeve', 'bone_conversation', 'bone_delivery'],
            recipes: {
                setsu_knows: ['世紬に、印と右腕の関係を尋ねる', [
                    edge('arm_returned', 'arm_torn_sleeve'),
                    edge('arm_returned', 'bone_conversation'),
                    edge('bone_delivery', 'bone_conversation')
                ]],
                all_rewound: ['強制転移で、負傷前の状態にすべて戻った', [
                    edge('arm_returned', 'bone_delivery')
                ]],
                no_injury: ['右腕を失ったと思ったのは、ただの夢だった', [
                    edge('arm_torn_sleeve', 'bone_delivery')
                ]],
                knew_recovery: ['世紬は右腕が戻るところを見ていた', [
                    edge('arm_torn_sleeve', 'bone_conversation')
                ]]
            }
        }
    };
    const fact = 'setsu_knew_bone';
    const people = { airan: '藍爛', ito: '一十', akehiru: '明昼', setsu: '世紬', syuuichi: '秀一', ayase: '綾瀬', tota: '東太' };
    const dialogue = () => window.fiaDay10Dialogue;
    let lines = [];
    let firstPort = null;
    let drag = null;
    let notice = '';
    let view = 'records';
    let caseId = 'arm';
    let clueTimer;
    let clueOwner;
    let pendingClues = [];

    function state() {
        const f = game();
        if (!f.day10Trial) f.day10Trial = {
            day: 0, morningDone: false, afternoonDone: false, exploredToday: false, nightAction: '',
            patientEvent: false, setsuFollowup: false, records: {}, hypotheses: {}, tried: {}, seen: {}
        };
        return f.day10Trial;
    }
    function active() { return game().dayCount >= 3 && game().dayCount < 10; }
    function beginDay() {
        const s = state();
        const f = game();
        if (s.day === f.dayCount) return;
        if (f.dayCount === 3) f.irmCount = 0;
        Object.assign(s, { day: f.dayCount, morningDone: false, afternoonDone: false, nightAction: '', tried: {}, person: '', topic: '', pressIndex: 0 });
    }
    function finishDuty() {
        const s = state();
        if (s.morningDone) return false;
        s.morningDone = true;
        return true;
    }
    function finishExploration() {
        const s = state();
        if (!s.isExploring) return;
        s.isExploring = false;
        s.exploredToday = true;
        const f = game();
        f.irmCount = (Number(f.irmCount) || 0) + 1;
        f.advIrmGained = (Number(f.advIrmGained) || 0) + 1;
    }
    function affinity(id) {
        return Number(game().chara_state?.[id]?.affinity) || 0;
    }
    function respond(id, change) {
        const f = game();
        window.fiaGameState.initialize();
        const person = f.chara_state[id];
        if (person) person.affinity = Math.max(0, Math.min(100, affinity(id) + change));
    }
    function selectTalk(phase) {
        const s = state();
        const authored = dialogue().people[s.person]?.[phase] || [];
        const shared = dialogue().shared[phase];
        const key = phase + '/' + s.person;
        const seen = s.seen[key] || (s.seen[key] = []);
        const unread = Array.from({ length: authored.length + shared.length }, (_, index) => index)
            .filter(index => !seen.includes(index));
        const familiar = affinity(s.person) >= 4;
        const eligible = unread.filter(index => index === 0 || index >= authored.length || familiar);
        const personal = eligible.filter(index => index < authored.length);
        const pool = personal.length ? personal : eligible;
        s.talkPhase = phase;
        s.topicIndex = pool[Math.floor(Math.random() * pool.length)] ?? -1;
    }
    function talkLine(index) {
        const s = state();
        const authored = dialogue().people[s.person]?.[s.talkPhase] || [];
        const shared = dialogue().shared[s.talkPhase] || [];
        const row = authored.concat(shared)[s.topicIndex];
        return row?.[index] ?? (index === 0 ? '' : ['', '', '']);
    }
    function completeTalk() {
        const s = state();
        s.seen[s.talkPhase + '/' + s.person].push(s.topicIndex);
        if (s.talkPhase === 'afternoon') game().kno = (Number(game().kno) || 0) + 1;
    }
    function register(id, day = game().dayCount) {
        if (!Object.hasOwn(records, id)) return;
        const owned = state().records;
        if (owned[id] !== undefined) return;
        owned[id] = day;
        if (id === fact) return;
        if (clueOwner !== owned) {
            clearTimeout(clueTimer);
            document.querySelector('.trial-clue-toast')?.remove();
            pendingClues = [];
            clueOwner = owned;
            clueTimer = undefined;
        }
        pendingClues.push(records[id][0]);
        clueTimer ??= setTimeout(showClueNotice, 0);
    }
    function showClueNotice() {
        clueTimer = undefined;
        const base = document.getElementById('tyrano_base');
        if (game().day10Trial?.records !== clueOwner || !base || !pendingClues.length) {
            pendingClues = [];
            return;
        }
        const acquisitions = pendingClues.map(title => title + '入手').join(' ／ ');
        const toast = el('div', 'trial-clue-toast', '通知　' + acquisitions);
        toast.setAttribute('role', 'status');
        base.append(toast);
        pendingClues = [];
        clueTimer = setTimeout(() => {
            toast.remove();
            showClueNotice();
        }, 2100);
    }
    function hasFact() { return Object.hasOwn(state().records, fact); }
    function armAvailable() {
        const f = game();
        return f.dayCount === 10 || (f.isFullScenario && f.dayCount >= 6 && f.dayCount < 10);
    }
    function reviewArm() {
        const s = state();
        for (const id of cases.arm.nodes) {
            // 改稿前のセーブにも、DAY1の共通本文で見聞きした情報を復元する。
            if (s.records[id] === undefined) s.records[id] = 1;
        }
    }
    function canPress(id) {
        const s = state();
        return s.person === 'setsu' && armAvailable() && Object.hasOwn(cases.arm.recipes, id)
            && s.hypotheses[id] && !s.tried[id] && !(id === 'setsu_knows' && hasFact());
    }
    function resolvePress() {
        const s = state();
        const id = s.pendingHypothesis;
        if (!canPress(id)) { s.pressResult = 'empty'; return; }
        s.nightAction = 'press';
        s.tried[id] = true;
        if (id === 'setsu_knows' && affinity('setsu') >= 4) {
            register(fact);
            s.pressResult = 'success';
            return;
        }
        respond('setsu', -1);
        s.pressResult = id === 'setsu_knows' ? 'refused' : id;
    }
    // 既に示した仮説を除き、選択肢に出す仮説を一件決める。
    function pickPress() {
        const s = state();
        const ids = Object.keys(cases.arm.recipes).filter(canPress);
        s.pressIndex = ids.length ? (Number(s.pressIndex) || 0) % ids.length : 0;
        s.pendingHypothesis = ids[s.pressIndex] || '';
    }
    function takeSetsuFollowup() {
        const s = state();
        if (!hasFact() || s.setsuFollowup) return false;
        s.setsuFollowup = true;
        return true;
    }

    function el(tag, className, value) {
        const node = document.createElement(tag);
        if (className) node.className = className;
        if (value !== undefined) node.textContent = value;
        return node;
    }
    function button(label, action) {
        const item = el('button', 'trial-button', label);
        item.type = 'button';
        item.onclick = action;
        return item;
    }
    function open() {
        const panel = document.getElementById('day10-trial-overlay');
        caseId = panel?.classList.contains('trial-corridor') ? 'corridor' : 'arm';
        if (caseId === 'arm' && armAvailable()) reviewArm();
        lines = [];
        firstPort = drag = null;
        notice = '';
        view = panel?.classList.contains('trial-reasoning') || caseId === 'corridor' ? 'board' : 'records';
        render();
    }
    function close(keepDialogue) {
        document.getElementById('day10-trial-overlay')?.remove();
        if (caseId === 'corridor' && !keepDialogue) {
            kag.layer.getLayer('message1', 'fore').find('.trial-corridor-dialogue').remove();
            kag.chara.getCharaNameArea().updatePText(kag.stat.charas.kiichi?.jname || '古虫 紀一');
        }
        lines = [];
        firstPort = drag = null;
    }
    function card(id, owner) {
        const [title, detail, source] = records[id];
        const node = el('article', 'trial-card');
        node.append(el('strong', '', title), el('p', '', detail), el('small', '', 'DAY ' + owner + ' ／ ' + source));
        return node;
    }
    function pickPort(id) {
        if (firstPort && firstPort !== id) {
            const previous = firstPort;
            firstPort = null;
            connect(previous, id);
            return;
        }
        firstPort = firstPort === id ? null : id;
        notice = '';
        if (caseId === 'corridor') {
            const panel = document.getElementById('day10-trial-overlay');
            for (const port of panel.querySelectorAll('.trial-port')) {
                port.classList.toggle('is-selected', port.name === firstPort);
                port.setAttribute('aria-pressed', String(port.name === firstPort));
            }
            updateCorridorGuide(panel, firstPort);
            return;
        }
        render();
    }
    function updateCorridorGuide(panel, source) {
        if (caseId !== 'corridor') return;
        const solved = state().hypotheses.corridor_unknown;
        const message = solved
            ? 'SYSTEM-323>　選択肢に戻ると、新しい行動を選べます。'
            : source
                ? 'SYSTEM-323>　もう一方の接続点へドラッグして放すか、順にクリックしてください。'
                : '';
        showCorridorDialogue(message);
        for (const port of panel.querySelectorAll('.trial-port')) {
            port.classList.toggle('trial-guide-port', !solved && (!source || port.name !== source));
            port.classList.toggle('trial-guide-target', !solved && !!source && port.name !== source);
        }
        panel.querySelector('.trial-header button').classList.toggle('trial-guide-complete', !!solved);
    }
    function showCorridorDialogue(message) {
        // DAY0と同じ話者欄と本文領域を使い、接続中はシナリオを進めない。
        const inner = kag.layer.getLayer('message1', 'fore').find('.message_inner')[0];
        let paragraph = inner.querySelector('.trial-corridor-dialogue');
        if (!paragraph) {
            paragraph = el('p', 'trial-corridor-dialogue');
            paragraph.setAttribute('role', 'status');
            paragraph.style.fontFamily = kag.stat.font.face || kag.config.userFace;
            paragraph.style.fontSize = kag.stat.font.size + 'px';
            paragraph.style.lineHeight = (Number(kag.stat.font.size) + Number(kag.config.defaultLineSpacing)) + 'px';
            inner.append(paragraph);
        }
        if (paragraph.textContent === message && message) return;
        paragraph.textContent = message;
        kag.chara.getCharaNameArea().updatePText(message ? 'System Boot Time:07072345110890' : '');
    }
    function connect(first, second) {
        const key = edge(first, second);
        const recipes = cases[caseId].recipes;
        if (!Object.values(recipes).some(([, required]) => required.includes(key))) {
            notice = caseId === 'corridor'
                ? '紀一「声と血の跡は気になる。でも、この二つじゃ同じ相手のものか分からない」'
                : '紀一「どちらも気になるが、この二つからは同じことを指しているとは言えないな」';
            render();
            return;
        }
        if (!lines.includes(key)) lines.push(key);
        notice = '接続した。';
        for (const [id, [title, required]] of Object.entries(recipes)) {
            if (!state().hypotheses[id] && required.every(item => lines.includes(item))) {
                const s = state();
                s.hypotheses[id] = true;
                if (id === 'setsu_knows') s.pressIndex = 0;
                notice = caseId === 'corridor'
                    ? title + '。新しい行動を選べる。'
                    : 'カルテに仮説を登録 ／ ' + title;
            }
        }
        render();
    }
    function drawBoard(body, panel) {
        const owned = state().records;
        const recordIds = cases[caseId].nodes;
        const grid = el('div', 'trial-grid');
        const svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
        svg.setAttribute('viewBox', '0 0 1000 370');
        svg.setAttribute('preserveAspectRatio', 'none');
        svg.setAttribute('class', 'trial-wires');
        grid.append(svg);
        body.append(grid);
        const coordinates = caseId === 'corridor'
            ? [[220, 185], [750, 185]]
            : [[220, 76], [750, 76], [750, 235], [220, 235], [490, 338]];
        function pathData(a, b) {
            const middle = (a[0] + b[0]) / 2;
            return 'M ' + a.join(' ') + ' C ' + middle + ' ' + a[1] + ', ' + middle + ' ' + b[1] + ', ' + b.join(' ');
        }
        function wire(a, b) {
            const path = document.createElementNS(svg.namespaceURI, 'path');
            path.setAttribute('d', pathData(a, b));
            svg.append(path);
            return path;
        }
        function gridPoint(x, y) {
            const box = grid.getBoundingClientRect();
            return [(x - box.left) / box.width * 1000, (y - box.top) / box.height * 370];
        }
        function anchor(port) {
            const box = port.getBoundingClientRect();
            return gridPoint(box.left + box.width / 2, box.top + box.height / 2);
        }
        const ports = new Map();
        const ids = caseId === 'arm' && hasFact() ? recordIds.concat(fact) : recordIds;
        ids.forEach((id, index) => {
            const known = Object.hasOwn(owned, id);
            const node = el('div', 'trial-node');
            if (caseId === 'arm' && coordinates[index][0] === 750) node.classList.add('trial-node-right');
            node.style.left = coordinates[index][0] / 10 + '%';
            node.style.top = coordinates[index][1] / 3.7 + '%';
            const label = el('div', 'trial-node-label');
            label.append(el('strong', '', known ? records[id][0] : '？？？'));
            if (known && caseId !== 'corridor') label.append(el('small', '', records[id][1]));
            node.append(label);
            if (known && id !== fact) {
                const port = button('●', () => pickPort(id));
                port.classList.add('trial-port');
                port.classList.toggle('is-selected', firstPort === id);
                port.setAttribute('aria-pressed', String(firstPort === id));
                port.setAttribute('aria-label', records[id][0] + 'の接続点');
                port.name = id;
                ports.set(id, port);
                port.onpointerdown = event => {
                    if (event.button !== 0 || drag) return;
                    drag = { port, pointerId: event.pointerId, x: event.clientX, y: event.clientY, path: null };
                };
                node.append(port);
            }
            grid.append(node);
        });
        grid.onpointermove = event => {
            if (drag?.pointerId !== event.pointerId) return;
            const start = anchor(drag.port);
            const end = gridPoint(event.clientX, event.clientY);
            if (drag.path) {
                drag.path.setAttribute('d', pathData(start, end));
                return;
            }
            if (Math.hypot(event.clientX - drag.x, event.clientY - drag.y) < 5) return;
            drag.path = wire(start, end);
            drag.path.classList.add('is-dragging');
            updateCorridorGuide(panel, drag.port.name);
        };
        const cancelDrag = event => {
            if (drag?.pointerId !== event.pointerId) return;
            drag.path?.remove();
            drag = null;
            updateCorridorGuide(panel, firstPort);
        };
        grid.onpointercancel = grid.onpointerleave = cancelDrag;
        grid.onpointerup = event => {
            if (drag?.pointerId !== event.pointerId) return;
            const source = drag.port;
            const drewWire = !!drag.path;
            cancelDrag(event);
            if (!drewWire) return;
            const target = document.elementFromPoint(event.clientX, event.clientY)?.closest('.trial-port');
            if (target && target !== source) {
                firstPort = null;
                connect(source.name, target.name);
            } else {
                render();
            }
        };
        for (const key of lines) {
            const [left, right] = key.split('/');
            wire(anchor(ports.get(left)), anchor(ports.get(right)));
        }
        if (lines.length) {
            const list = el('ul', 'trial-lines');
            for (const key of lines) {
                const [a, b] = key.split('/');
                list.append(el('li', '', records[a][0] + ' ／ ' + records[b][0]));
            }
            body.append(list);
        }
    }
    function render() {
        const panel = document.getElementById('day10-trial-overlay');
        if (!panel) return;
        const s = state();
        const isCorridor = caseId === 'corridor';
        const isDay10 = panel.classList.contains('trial-day10');
        if (!isCorridor && !armAvailable()) view = 'records';
        const header = el('header', 'trial-header');
        const exitLabel = isCorridor || panel.classList.contains('trial-reasoning') ? '選択肢に戻る' : '閉じる';
        const title = isCorridor ? cases.corridor.title : isDay10 ? cases.arm.title : '診療記録';
        header.append(el('div', '', 'SYSTEM-323 ／ ' + title), button(exitLabel, () => {
            const showConclusion = isCorridor && !!s.hypotheses.corridor_unknown;
            close(showConclusion);
            if (isCorridor) {
                s.corridorReviewed = true;
                if (showConclusion) kag.layer.getFreeLayer().hide();
                kag.cancelWeakStop();
                kag.ftag.startTag('jump', { storage: '01.ks', target: showConclusion ? '*corridorConclusion' : '*corridorChoices' });
            } else if (isDay10) {
                kag.cancelWeakStop();
                kag.ftag.startTag('jump', { storage: '10.ks', target: '*armChoices' });
            } else if (!kag.stat.current_scenario.endsWith('lib.ks')) {
                kag.cancelWeakStop();
                kag.ftag.startTag('jump', { storage: 'daily.ks', target: panel.classList.contains('trial-reasoning') ? '*pressMenu' : '*resumeInterview' });
            }
        }));
        const tabs = el('nav', 'trial-tabs');
        const availableTabs = isCorridor ? [] : [['records', '情報一覧']];
        if (!isCorridor && armAvailable()) {
            availableTabs.push(['board', '古虫の右腕 ／ 証拠接続']);
            if (game().dayCount !== 10) availableTabs.push(['chart', '世紬 ／ カルテ']);
            if (game().dayCount === 10 && view === 'chart') view = 'records';
        }
        for (const [id, label] of availableTabs) {
            const tab = button(label, () => {
                view = id;
                firstPort = null;
                notice = '';
                render();
            });
            tab.setAttribute('aria-pressed', String(view === id));
            tabs.append(tab);
        }
        const body = el('div', 'trial-body');
        panel.replaceChildren(header, tabs, body);
        if (view === 'board') drawBoard(body, panel);
        if (view === 'records') {
            const ids = Object.keys(s.records).filter(id => Object.hasOwn(records, id));
            for (const id of ids) body.append(card(id, s.records[id]));
            if (!ids.length) body.append(el('p', '', '取得した情報はまだない。'));
        }
        if (view === 'chart') {
            body.append(el('h2', '', '仮説'));
            const saved = Object.entries(cases.arm.recipes).filter(([id]) => s.hypotheses[id]);
            for (const [id, [title, required]] of saved) {
                if (!s.hypotheses[id]) continue;
                const row = el('article', 'trial-card');
                row.append(el('strong', '', title));
                for (const key of required) {
                    const [a, b] = key.split('/');
                    row.append(el('p', '', records[a][0] + ' ／ ' + records[b][0]));
                }
                body.append(row);
            }
            if (!saved.length) body.append(el('p', '', '登録済みの仮説はない。'));
            body.append(el('h2', '', '確定事項'));
            body.append(Object.hasOwn(s.records, fact) ? card(fact, s.records[fact]) : el('p', '', '確定した事項はない。'));
        }
        if (isCorridor) {
            updateCorridorGuide(panel, firstPort);
        } else if (notice) {
            const feedback = el('div', 'trial-notice', notice);
            feedback.setAttribute('role', 'status');
            panel.append(feedback);
        }
    }
    function restore() {
        const library = document.getElementById('day10-lib-records');
        if (library && !game().isFullScenario) library.textContent = '情報一覧';
        if (library) library.onclick = () => {
            if (document.getElementById('day10-trial-overlay')) return;
            const overlay = el('div', '', '');
            overlay.id = 'day10-trial-overlay';
            library.closest('.library-device, .lib-device, [role="region"]')?.after(overlay);
            if (!overlay.isConnected) kag.layer.getFreeLayer()[0].append(overlay);
            open();
        };
        if (document.getElementById('day10-trial-overlay')) open();
    }

    window.fiaDay10Trial = {
        active, state, beginDay, finishDuty, finishExploration, affinity, respond, register,
        selectTalk, completeTalk, canPress, resolvePress, open, restore,
        pickPress,
        pressTitle: () => cases.arm.recipes[state().pendingHypothesis]?.[0] || '',
        personName: () => people[state().person] || '',
        talkLine, hasFact, armAvailable, reviewArm, takeSetsuFollowup,
        solvedCorridor: () => !!state().hypotheses.corridor_unknown
    };
})();
