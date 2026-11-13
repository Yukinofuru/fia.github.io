// スロットごとの進行状態。ロード後は make.ks から initialize を呼ぶ。
(function () {
    const kag = TYRANO.kag;
    const defaults = {
        ins: 8, phi: 0, kno: 0, luc: 0, spi: 0,
        dayCount: 0, skillPoints: 0, initialChoiceStage: 0, treatedCount: 0, irmCount: 4,
        currentPlaceName: '', displayMonth: '', displayDay: '', oldMonth: '', oldDay: '',
        enemyHp: null, targetAlpha: '', targetNum: '', inputAlpha: '', inputNum: '',
        isBattleMode: false, advIrmGained: 0,
        roomNum: 0, cleanRoomCount: 0,
        demoActionDay: 0, demoAction: '', isDemoActionDone: false,
        isDemoExplored: false, isDemoCareDone: false,
        hasSeenCareTutorial: false, hasSeenDailyTutorial: false
    };
    const characters = [
        ['setsu', '初明 世紬', true], ['airan', '青葉 藍爛', true],
        ['ito', '曙 一十', true], ['ayase', '綾瀬 護氏', true],
        ['akehiru', '明昼 優知', true], ['tota', '富山 東太', true],
        ['momona', '百七', true], ['syuuichi', '山本 秀一', false]
    ];

    function bindCharaStates() {
        const game = kag.stat.f;
        game.chara_state = game.chara_state || {};
        game.chars.forEach(function (character) {
            const id = character.id;
            if (!game.chara_state[id]) {
                game.chara_state[id] = {
                    affinity: character.intimacy || 0, erosion: 10,
                    info: character.info || 0, interrogate_info: 0,
                    alive: character.alive !== false, viewed: {}
                };
            }
            const state = game.chara_state[id];
            state.viewed = state.viewed || {};
            Object.entries({ intimacy: 'affinity', alive: 'alive', info: 'info' }).forEach(function (entry) {
                Object.defineProperty(character, entry[0], {
                    enumerable: true, configurable: true,
                    get: function () { return state[entry[1]]; },
                    set: function (value) { state[entry[1]] = value; }
                });
            });
        });
        game.medicChars.forEach(function (character) {
            const state = game.chara_state[character.id];
            if (!state) return;
            Object.entries({ trust: 'affinity', erosion: 'erosion', info: 'info' }).forEach(function (entry) {
                Object.defineProperty(character, entry[0], {
                    enumerable: true, configurable: true,
                    get: function () { return state[entry[1]]; },
                    set: function (value) { state[entry[1]] = value; }
                });
            });
            Object.defineProperty(character, 'status', {
                enumerable: true, configurable: true,
                get: function () { return state.alive ? '' : 'dead'; },
                set: function (value) { state.alive = value !== 'dead'; }
            });
        });
    }

    function initialize() {
        const game = kag.stat.f;
        Object.entries(defaults).forEach(function (entry) {
            if (game[entry[0]] === undefined) game[entry[0]] = entry[1];
        });
        if (!game.chars) {
            game.chars = characters.map(function (entry) {
                return { id: entry[0], name: entry[1], intimacy: 0, alive: entry[2], info: 0, coopCount: 0 };
            });
        }
        game.medicChars = game.medicChars || [];
        bindCharaStates();
        if (window.fiaReference) window.fiaReference.initialize();
    }

    function reset() {
        kag.stat.f = {};
        kag.clearTmpVariable();
        initialize();
        kag.variable.tf.clickCount = 0;
        kag.variable.tf.randNum = 0;
        kag.variable.tf.currentLevel = 0;
    }

    window.bindCharaStates = bindCharaStates;
    window.fiaGameState = { initialize: initialize, reset: reset };
})();
