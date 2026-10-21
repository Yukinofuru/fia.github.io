; 遭遇用の共通表示・報酬マクロ。本文や場面の分岐はroom_1～3.ksに記載する。
*define
[iscript]
// 時間制限の時計だけを管理する。時間切れのジャンプ先はKS側が指定する。
(function () {
    const kag = TYRANO.kag;
    let timerId = null;
    function stop() {
        if (timerId !== null) clearInterval(timerId);
        timerId = null;
        $('#encounter-timer').remove();
    }
    function restore() {
        stop();
        const state = kag.stat.f.encounter;
        if (!state || !state.timer || state.remainingMs === null) return;
        const label = $('<div id="encounter-timer"></div>');
        kag.layer.getFreeLayer().append(label);
        let previous = performance.now();
        const update = () => label.text('制限時間' + Math.max(0, state.remainingMs / 1000).toFixed(2) + '秒');
        update();
        timerId = setInterval(function () {
            const now = performance.now(), elapsed = now - previous;
            previous = now;
            if (kag.stat.f.encounter !== state || !state.timer) { stop(); return; }
            // Tips・セーブ画面では時計を止め、再開後は保存した残り時間を使う。
            if (kag.stat.current_scenario !== state.timer.storage || !kag.stat.is_strong_stop || !document.querySelector('#encounter-timer')) return;
            // 通常の出現演出を最後の選択肢まで見せてから、選択時間を数える。
            const revealing = Array.from(document.querySelectorAll('.encounter-choice')).some(function (button) {
                return button.getAnimations().some(function (animation) {
                    return (animation.animationName === 'show-btn' || animation.animationName === 'show-btn-disabled') && animation.playState !== 'finished';
                });
            });
            if (revealing) return;
            state.remainingMs = Math.max(0, state.remainingMs - elapsed);
            update();
            if (state.remainingMs === 0) {
                const destination = state.timer;
                state.timer = null;
                stop();
                kag.ftag.nextOrderWithLabel(destination.target, destination.storage);
            }
        }, 10);
    }
    window.fiaEncounterTimer = { stop: stop, restore: restore };
})();
[endscript]

[macro name="encounterInit"]
[eval exp="f.encounter = {code:mp.code, values:{score:0,trust:0}, isResolved:false, timer:null, remainingMs:null}"]
[eval exp="f.encounterHistory = f.encounterHistory || {}; f.encounterHistory[mp.code] = true"]
[cm]
[uiDestroy]
@layopt layer="message0" visible=false
@layopt layer="message1" visible=true
[current layer="message1"]
[uiSetMenu]
[loadcss file="./data/others/css/encounter.css"]
[bg2 storage="black.png" time="0" wait="true" left="180" top="80" width="1440" height="900"]
[endmacro]

[macro name="encounterClear"]
[ui_hideChoices]
@layopt layer="message0" visible=false
@layopt layer="message1" visible=true
[eval exp="window.fiaEncounterTimer.stop(); if (f.encounter) { f.encounter.timer = null; f.encounter.remainingMs = null; }"]
[cm]
[free layer="0" name="encounter-warning"]
[free layer="0" name="encounter-warning-timer"]
[current layer="message1"]
[endmacro]

[macro name="encounterTimer"]
[eval exp="f.encounter.timer = {storage:mp.storage,target:mp.target}; f.encounter.remainingMs = Number(mp.time)"]
[eval exp="window.fiaEncounterTimer.restore()"]
[endmacro]

[macro name="encounterWin"]
[if exp="!f.encounter.isResolved"]
    [eval exp="f.encounter.isResolved = true; f.irmCount += Number(mp.materials); f.advIrmGained = (f.advIrmGained || 0) + Number(mp.materials)"]
    [eval exp="f.ins = Math.max(0, f.ins - Number(mp.insLoss)); window.fiaReference.unlockMonster(f.encounter.code)"]
    [if exp="mp.survivor !== ''"]
        [eval exp="f.rescuedPeople = f.rescuedPeople || []; f.rescuedPeople.push({name:mp.survivor,encounter:f.encounter.code}); f.survivorCount = (f.survivorCount || 0) + 1"]
    [endif]
[endif]
[uiUpdateIns]
[endmacro]

[macro name="encounterDead"]
[eval exp="f.encounter.isResolved = true"]
[endmacro]
[return]
