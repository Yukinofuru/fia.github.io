; 体験版はroom_1～3の「遭遇！」のみ抽選し、ここから直接移動する。
*start
[fadeoutbgm time=500]
[wait time="500"]
[cm]
[uiDestroy]
@layopt layer="message0" visible=false
@layopt layer="message1" visible=true
[current layer="message1"]
[playbgm storage="adv.m4a"]
[iscript]
f.expeditionDrawCount = 0;
f.expeditionDrawLimit = (f.dayCount >= 3 && f.dayCount <= 10) ? 1 : 3;
f.advIrmGained = 0;
if (window.endBattleMode) window.endBattleMode();
[endscript]
[uiSetMenu]
[bg2 storage="bg_room/room_a.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第12基地廊下'"]
[uiSetPlace]
#kiichi
「探索に行こうか。」[p]
[ui_showChoices layout="encounter" text1="【1】先に進む" target1="*beginExploration" text2="【2】戻る" target2="*return"]
[s]

*beginExploration
[encounterClear]
[jump target="*draw"]
[s]

*draw
[iscript]
f.encounterHistory = f.encounterHistory || {};
tf.encounterRooms = [
    {room:1,code:'O-506'},
    {room:2,code:'O-507'},
    {room:3,code:'C-810'}
].filter(function (entry) { return !f.encounterHistory[entry.code]; });
tf.hasEncounter = tf.encounterRooms.length > 0 && f.expeditionDrawCount < f.expeditionDrawLimit;
if (tf.hasEncounter) {
    const selected = tf.encounterRooms[Math.floor(Math.random() * tf.encounterRooms.length)];
    f.roomNum = selected.room;
    f.encounterHistory[selected.code] = true;
    f.expeditionDrawCount += 1;
}
[endscript]
[if exp="tf.hasEncounter"]
    [if exp="f.roomNum === 1"]
        [jump storage="room_1.ks" target="*start"]
    [elsif exp="f.roomNum === 2"]
        [jump storage="room_2.ks" target="*start"]
    [else]
        [jump storage="room_3.ks" target="*start"]
    [endif]
[else]
    [cm]
    #kiichi
    患者の看護と応急処置をした[p]
    [jump target="*return"]
[endif]
[s]

*between
[encounterClear]
[uiDestroy]
[uiSetMenu]
[iscript]
tf.hasNextEncounter = f.expeditionDrawCount < f.expeditionDrawLimit && ['O-506','O-507','C-810'].some(function (code) { return !f.encounterHistory[code]; });
[endscript]
[if exp="!tf.hasNextEncounter"]
    [jump target="*return"]
[endif]
[ui_showChoices layout="encounter" text1="先に進む" target1="*draw" text2="帰還する" target2="*return"]
[s]

*return
[iscript]
window.fiaEncounterTimer.stop();
[endscript]
[jump storage="demo_daily.ks" target="*explorationDone"]
[s]

; 旧シナリオからの復帰先も、新しい探索管理へ集約する。
*adv_chooseRoom
[jump target="*between"]
*result
[jump target="*return"]

; 選択肢ページの移動では場面の処理や能力判定を実行し直さない。
*encounterChoicesNext
[eval exp="f.choiceContext.page += 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]

*encounterChoicesPrevious
[eval exp="f.choiceContext.page -= 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]
