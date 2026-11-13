(() => {
    const parts = {
        head: ['頭部', [1, 1, 0]], chest: ['胸部', [0, 0, 1]],
        abdomen: ['腹部', [1, 1, 0]], rightArm: ['右腕', [1, 0, 0]],
        leftArm: ['左腕', [0, 1, 0]], rightLeg: ['右脚', [0, 0, 1]],
        leftLeg: ['左脚', [0, 2, 0]]
    };
    const levels = { light: ['軽傷', 20], medium: ['中傷', 40], severe: ['重傷', 60] };
    const settings = {
        step: 20, max: 420,
        switches: { A: [1, 1, 0], B: [0, 1, 1], C: [1, 0, 1] },
        initial: units => [units, Math.floor(units / 3), Math.floor(units / 9)]
    };
    const cases = {
        '01': { title: 'チュートリアル', injuries: { rightArm: 'light' }, reaction: '……指が動く。さっきまで、力が入らなかったのに。' },
        '02': { title: '二部位の軽傷', injuries: { leftArm: 'light', rightLeg: 'light' }, reaction: '腕が上がる。右足にも、もう体重をかけられそうだ。' },
        '03': { title: '軽傷と中傷', injuries: { head: 'light', chest: 'medium' }, reaction: '息を吸っても胸が痛まない。頭のぼんやりも取れてきた。' },
        '04': { title: '三部位の複合損傷', injuries: { chest: 'medium', abdomen: 'light', rightArm: 'medium' }, reaction: '息が楽だ。腹の痛みも引いた……右手、握れます。' },
        '05': { title: '重傷を含む複合損傷', injuries: { head: 'severe', chest: 'medium', rightArm: 'light', leftArm: 'medium' }, reaction: '声がはっきり聞こえる。息もできるし……両手とも、動きます。' }
    };
    const keys = Object.keys(settings.switches);
    const wrap = value => ((value % 3) + 3) % 3;
    const same = (a, b) => a.length === b.length && a.every((value, index) => value === b[index]);
    const move = (values, key) => values.map((value, index) => wrap(value + settings.switches[key][index]));
    function problem(amount, selected) {
        const initial = settings.initial(amount / settings.step).map(wrap);
        let target = initial;
        for (const part of selected) {
            parts[part][1].forEach((count, index) => {
                for (let step = 0; step < count; step++) target = move(target, keys[index]);
            });
        }
        if (same(initial, target)) target = keys.map(key => move(initial, key)).find(value => !same(initial, value)) || initial;
        return { initial, target };
    }
    function randomPatients(day, random = Math.random) {
        const available = Object.keys(parts);
        const severity = Object.keys(levels);
        return Array.from({ length: 3 }, (_, index) => {
            const pool = [...available];
            const count = 1 + Math.floor(random() * pool.length);
            const injuries = {};
            for (let part = 0; part < count; part++) {
                const [id] = pool.splice(Math.floor(random() * pool.length), 1);
                injuries[id] = severity[Math.floor(random() * severity.length)];
            }
            const reaction = {
                head: '……頭がはっきりしてきた。',
                chest: '息を吸っても痛くない……。',
                abdomen: '腹の痛みが引いてきました。',
                rightArm: '……右の指が動く。力が戻ってきた。',
                leftArm: '左手が握れます。さっきまで動かなかったのに。',
                rightLeg: '右足に力が戻ってきた。',
                leftLeg: '……左足が動く。ありがとうございます。'
            }[Object.keys(injuries)[0]];
            return { id: 'DAY' + day + '-' + (index + 1), title: '患者 ' + (index + 1) + ' / 3', injuries, reaction };
        });
    }
    function answer(patient) {
        const injuries = (typeof patient === 'string' ? cases[patient] : patient).injuries;
        return { amount: Object.values(injuries).reduce((total, level) => total + levels[level][1], 0),
            selected: Object.keys(injuries) };
    }
    function shortest(initial, target) {
        const queue = [[initial, 0]];
        const visited = new Set([initial.join()]);
        for (const [values, steps] of queue) {
            if (same(values, target)) return steps;
            for (const key of keys) {
                const next = move(values, key);
                if (!visited.has(next.join())) {
                    visited.add(next.join());
                    queue.push([next, steps + 1]);
                }
            }
        }
        return null;
    }
    function errors(session) {
        const correct = answer(session.patient || session.id);
        const result = [];
        if (session.amount !== correct.amount) result.push('IR-M本体量が必要量と一致していない。');
        if (!same([...session.selected].sort(), [...correct.selected].sort())) result.push('指示薬が負傷部位と過不足なく一致していない。');
        if (!same(session.values, session.target)) result.push('ゲージが目標値と一致していない。');
        return result;
    }
    window.fiaMixRules = { parts, levels, settings, cases, keys, same, move, problem, answer, shortest, errors, randomPatients };
})();
