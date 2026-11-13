; 日付と時間帯の進行。入口: *start / *addDay / *afternoon。本文は日別KS、夜はmedic.ksへ渡す。
; ========================================================
; daily.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day"]
[s]

; ---- begin ----
*begin
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.isFullScenario=true; f.dayCount=11; window.fiaStory.initialize()"]
[jump target="*day"]


; ---- setup ----
*setup
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[cm]
[uiDestroy]
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]
[font color="#66cdaa"]
[uiSetMenu]
[uiUpdateParam]
[uiUpdateIns]
[eval exp="f.currentPlaceName = '拠点'"]
[uiSetPlace]
[bg2 storage="my_room.png" time="0" wait="true" left="180" top="80" width="1440" height="900"]
[return]


; ---- day ----
*day
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call target="*setup"]
[eval exp="window.fiaStory.initialize(); window.fiaStory.setPhase('morning'); window.fiaStory.sync()"]
#
DAY [emb exp="f.dayCount"]。[p]
[if exp="f.dayCount===15"]
    [call storage="15.ks" target="*start"]
    [jump target="*sleep"]
[elsif exp="f.dayCount===20"]
    [jump storage="20.ks" target="*start"]
[else]
    [eval exp="f.dayScenario = ('0' + f.dayCount).slice(-2) + '.ks'"]
    [call storage="&f.dayScenario" target="*start"]
[endif]
[if exp="f.dayCount<6"]
    [call storage="care.ks" target="*draftRoutineMorning"]
[endif]
[eval exp="f.storyV6.dayStarted=f.dayCount"]
[if exp="window.fiaDaily.isEmergencyDay()"]
    [if exp="f.dayCount===12"]
        [call storage="care.ks" target="*v3Emergency12"]
    [else]
        [call storage="care.ks" target="*v3Emergency18"]
    [endif]
    [jump target="*emergency" storage="care.ks"]
[endif]
[jump target="*afternoon"]


; ---- afternoon ----
*afternoon
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call target="*setup"]
[eval exp="window.fiaStory.setPhase('afternoon')"]
[if exp="f.storyV6.dayDone['afternoon'+f.dayCount]"]
    [jump target="*evening" storage="medic.ks"]
[endif]
[if exp="f.dayCount>=6 && !f.storyV6.isRouteBreak"]
    [jump target="*fieldAfternoonIntro"]
[endif]
; 既存の自室4ボタンを使用。行動は追加しない。
[loadcss file="./data/others/css/daily_button.css"]
[button name="daily-btn" graphic="coop_button.png" x=235 y=489 width=174 height=244.5 storage="coop.ks" target="*cooperation"]
[button name="daily-btn" graphic="study_button.png" x=182 y=691 width=150 height=195 storage="care.ks" target="*teaching"]
[button name="daily-btn" graphic="adv_button.png" x=464 y=580 width=108 height=154.5 target="*explore"]
[if exp="f.dayCount>=6"]
    [button name="daily-btn" graphic="care_button.png" x=590 y=609 width=318 height=277.5 storage="daily.ks" target="*fieldEducation"]
[else]
    [button name="daily-btn" graphic="care_button.png" x=590 y=609 width=318 height=277.5 storage="care.ks" target="*extraCare"]
[endif]
[s]


; ---- station ----
*station
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
[cm]
#
脱出のための資料を広げた。[r]
[if exp="!f.storyV6.checks.hasStationDiagram"]
    [link storage="daily.ks" target="*hasStationDiagram"]設備図と現物の差を整理する[endlink]　
[endif]
[if exp="!f.storyV6.checks.hasStationPower"]
    [link storage="daily.ks" target="*hasStationPower"]電源の点検記録を確保する[endlink]　
[endif]
[if exp="window.fiaStory.hasEvidence('L1') && !f.storyV6.checks.hasResearchCompared"]
    [link storage="daily.ks" target="*research"]研究資料と投薬・所見の履歴を照合する[endlink]　
[endif]
[if exp="f.storyV6.hasDay15Rescue && !f.storyV6.checks.isWorldPrepared"]
    [link storage="daily.ks" target="*worldPrepare"]回収した記録から、全員の退路を組み直す[endlink]　
[endif]
[link storage="daily.ks" target="*afternoon"]戻る[endlink]　
[s]


; ---- hasStationDiagram ----
*hasStationDiagram
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.prepareStation('hasStationDiagram')"]
#
設備図を整理し、現地で確認する箇所を残した。[p]
[jump target="*usedAfternoon"]

; ---- hasStationPower ----
*hasStationPower
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.prepareStation('hasStationPower')"]
#
電源の確認記録を受け取った。自分の担当範囲と照らし合わせる。[p]
[jump target="*usedAfternoon"]

; ---- research ----
*research
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.compareResearch()"]
#
投薬の記録と、研究室で得た資料を並べた。助かった後の変化も、切り離せなかった。[p]
[jump target="*usedAfternoon"]

; ---- worldPrepare ----
*worldPrepare
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.prepareWorld()"]
#
記録と、移動する人の名を照合した。一人が残る前提の退路を、組み直した。[p]
[jump target="*usedAfternoon"]

; ---- study ----
*study
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.study()"]
#
記録を読み、知識と精神を鍛えた。[p]
[jump target="*usedAfternoon"]

; ---- rest ----
*rest
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
#
以前、秀一と模型の話をした時のことを思い出した。[p]
[call storage="coop_syuuichi.ks" target="*draftSyuuichiMemory"]
#
あの椅子へ、今の秀一が座ることはない。[p]
道具を置き、休む時間を取った。[p]
[jump target="*usedAfternoon"]

; ---- usedAfternoon ----
*usedAfternoon
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.dayDone['afternoon'+f.dayCount]=true"]
[jump target="*evening" storage="medic.ks"]


; ---- explore ----
*explore
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.dayDone['afternoon'+f.dayCount]=true"]
[jump storage="adv.ks" target="*start"]

; ---- explorationDone ----
*explorationDone
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.dayDone['afternoon'+f.dayCount]=true"]
[jump target="*evening" storage="medic.ks"]


; ---- sleep ----
*sleep
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[cm]
[eval exp="f.storyV6.dayDone[f.dayCount]=true; f.dayCount+=1; f.ins=8"]
[jump target="*day"]


; ---- routeInterval ----
*routeInterval
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[if exp="f.dayCount >= f.storyV6.nextDay || f.dayCount < 21"]
    [return]
[endif]
[eval exp="f.storyV6.isRouteBreak=true"]
[if exp="window.fiaStory.hasFreeAfternoon() && !f.storyV6.dayDone['afternoon'+f.dayCount]"]
    [call target="*afternoon"]
[else]
    [call target="*evening" storage="medic.ks"]
[endif]
[eval exp="f.storyV6.isRouteBreak=false; f.dayCount+=1"]
[jump target="*routeInterval"]


; ---- chooseRoute ----
*chooseRoute
[iscript]
tf.uiMenuChoices = [];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[cm]
#
扉の向こうに、待っている人がいる。[r]
[iscript]
tf.uiMenuChoices.push({text:"藍爛と話す",target:"*chooseAiran"});
[endscript]
[iscript]
tf.uiMenuChoices.push({text:"明昼と話す",target:"*chooseAkehiru"});
[endscript]
[if exp="tf.uiMenuChoices.length > 0"]
    [ui_showChoices layout="encounter" storage="daily.ks" fontSize="30" text1="&tf.uiMenuChoices[0] ? tf.uiMenuChoices[0].text : ''" target1="&tf.uiMenuChoices[0] ? tf.uiMenuChoices[0].target : ''" text2="&tf.uiMenuChoices[1] ? tf.uiMenuChoices[1].text : ''" target2="&tf.uiMenuChoices[1] ? tf.uiMenuChoices[1].target : ''" text3="&tf.uiMenuChoices[2] ? tf.uiMenuChoices[2].text : ''" target3="&tf.uiMenuChoices[2] ? tf.uiMenuChoices[2].target : ''" text4="&tf.uiMenuChoices[3] ? tf.uiMenuChoices[3].text : ''" target4="&tf.uiMenuChoices[3] ? tf.uiMenuChoices[3].target : ''" text5="&tf.uiMenuChoices[4] ? tf.uiMenuChoices[4].text : ''" target5="&tf.uiMenuChoices[4] ? tf.uiMenuChoices[4].target : ''" text6="&tf.uiMenuChoices[5] ? tf.uiMenuChoices[5].text : ''" target6="&tf.uiMenuChoices[5] ? tf.uiMenuChoices[5].target : ''" text7="&tf.uiMenuChoices[6] ? tf.uiMenuChoices[6].text : ''" target7="&tf.uiMenuChoices[6] ? tf.uiMenuChoices[6].target : ''" text8="&tf.uiMenuChoices[7] ? tf.uiMenuChoices[7].text : ''" target8="&tf.uiMenuChoices[7] ? tf.uiMenuChoices[7].target : ''" text9="&tf.uiMenuChoices[8] ? tf.uiMenuChoices[8].text : ''" target9="&tf.uiMenuChoices[8] ? tf.uiMenuChoices[8].target : ''" text10="&tf.uiMenuChoices[9] ? tf.uiMenuChoices[9].text : ''" target10="&tf.uiMenuChoices[9] ? tf.uiMenuChoices[9].target : ''" text11="&tf.uiMenuChoices[10] ? tf.uiMenuChoices[10].text : ''" target11="&tf.uiMenuChoices[10] ? tf.uiMenuChoices[10].target : ''" text12="&tf.uiMenuChoices[11] ? tf.uiMenuChoices[11].text : ''" target12="&tf.uiMenuChoices[11] ? tf.uiMenuChoices[11].target : ''"]
[endif]
[s]

; ---- chooseAiran ----
*chooseAiran
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.hasAkehiruAffinity=false"]
[return]

; ---- chooseAkehiru ----
*chooseAkehiru
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.isAiranQualified=false"]
[return]


; ---- earlyStart ----
*earlyStart
[if exp="window.fiaDay10Trial.active()"]
    [jump target="*morning"]
[elsif exp="f.dayCount >= 10"]
    [jump storage="10.ks" target="*start"]
[else]
    [jump target="*start"]
[endif]

; ---- earlyExplorationDone ----
*earlyExplorationDone
[if exp="window.fiaDay10Trial.active()"]
    [jump target="*earlyTrialExplorationDone"]
[endif]
[if exp="!f.isDemoExplored"]
    [iscript]
    f.isDemoExplored = true;
    f.isDemoActionDone = true;
    f.treatedCount += 3;
    [endscript]
    [cm]
    #kiichi
    夜が更けるまで治療を続けた[p]
[endif]
[jump target="*earlyStart"]
[s]


; ---- addDay ----
*addDay
[free_filter layer="base"]
[eval exp="f.dayCount = (f.dayCount || 0) + 1"]
[eval exp="f.ins = 8"]
[uiUpdateIns]
[fadeoutbgm time="500"]
[cm]
[uiDestroy]
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]
[fxMaskLight]
[font color="#66cdaa"]
[uiUpdateParam]
[uiSetMenu]

[iscript]
let BASE_DAY_OF_YEAR = 188; // 基準日: 07/07 (通算188日目)
let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// 指定した日数オフセットから日付文字列(mm, dd)を計算する関数
function calcDateString(offset) {
    // 年を越えても、基準と同じ平年365日の暦で繰り返す。
    let remaining = ((BASE_DAY_OF_YEAR + offset - 1) % 365 + 365) % 365 + 1;
    let m = 0;
    for (let i = 0; i < 12; i++) {
        if (remaining <= monthDays[i]) { m = i + 1; break; }
        remaining -= monthDays[i];
    }
    let d = remaining;
    return {
        month: (m < 10 ? '0' + m : '' + m),
        day:   (d < 10 ? '0' + d : '' + d)
    };
}

let oldOffset = f.dayCount - 2;
let newOffset = f.dayCount - 1;

let oldDate = calcDateString(oldOffset);
let newDate = calcDateString(newOffset);

// 前日と当日の月を別々に保持し、月替わりも正しく表示する
f.oldMonth     = oldDate.month;
f.displayMonth = newDate.month;
f.oldDay       = oldDate.day;
f.displayDay   = newDate.day;
[endscript]

[uiDestroy]
[chara_ptext name=""]
[bg2 storage="date.png" time=500 wait=false left=180 top=80 width=1440 height=900]
[layopt layer=message1 visible=true]
[current layer="message1"]
[backlay]
; --- 1. 前日の月と日を表示する ---
[ptext name="date_month" layer="message1" page="back" text="&f.oldMonth" x="357" y="169" size="410" color="#ffffffff"]
[ptext name="old_day"    layer="message1" page="back" text="&f.oldDay"       x="832" y="169" size="410" color="#ffffffff"]

[trans layer="message1" time=500]
[wt]

; トランジションで停止したパルスメータのアニメーションを再起動する
[xanim name="pulse_line" keyframe="yoko" count="infinite" time="2500" direction="normal" easing="linear"]

; 少し間を置く
[wait time=1000]

; --- 2. 日だけをゆっくりパタッと倒す（時間: 600ミリ秒） ---
[kanim name="old_day" keyframe="flip_out" time=600]
[wait time=600]

; 見えなくなった前日の日を削除
[free name="old_day" layer="message1"]

; --- 3. 新しい月と日をセット ---
[free name="date_month" layer="message1"]
[ptext name="date_month" layer="message1" text="&f.displayMonth" x="357" y="169" size="410" color="#ffffffff"]
[ptext name="date_day" layer="message1" text="&f.displayDay" x="832" y="169" size="410" color="#ffffffff"]

; --- 4. 新しい日をゆっくり起こす（時間: 600ミリ秒） ---
[kanim name="date_day" keyframe="flip_in" time=600]
[wait time=600]

; 変更後の日付を眺める時間
[wait time=2000]

; --- 5. 背景と一緒に月と日をフェードアウトして消す ---
[bg2 storage="black.png" time=500 left=180 top=80 width=1440 height=900 wait="false"]

; 月と日を同時にフェードアウト
[anim name="date_month" opacity="0" time=500]
[anim name="date_day"   opacity="0" time=500]
[wait time=500]

; 透明になったテキストをシステム上から削除
[free name="date_month" layer="message1"]
[free name="date_day"   layer="message1"]
SYSTEM-323>　記録を再生します。[p]
[if exp="f.dayCount == 1"]
    [jump storage="01.ks" target="*start"]
[elsif exp="f.dayCount == 2"]
    [jump storage="02.ks" target="*start"]
[elsif exp="f.dayCount == 3"]
    [jump storage="03.ks" target="*day3"]
[elsif exp="f.dayCount == 4"]
    [jump storage="04.ks" target="*day4"]
[elsif exp="f.dayCount == 5"]
    [jump storage="05.ks" target="*day5"]
[elsif exp="f.dayCount == 6"]
    [jump storage="06.ks" target="*day6"]
[elsif exp="f.dayCount == 7"]
    [jump storage="07.ks" target="*day7"]
[elsif exp="f.dayCount == 8"]
    [jump storage="08.ks"  target="*day8"]
[elsif exp="f.dayCount == 9"]
    [jump storage="09.ks"  target="*day9"]
[elsif exp="f.dayCount == 10"]
    [jump storage="10.ks" target="*start"]
[else]
    [jump target="*start"]
[endif]
[s]

; 既存の選択肢UIから別KSへ渡す中継ラベル。

; DAY3からの序盤日課と、推理・面談の補助ラベル。
*morning
[eval exp="window.fiaDay10Trial.beginDay()"]
[if exp="f.dayCount>=6"]
    [jump target="*afterMorning"]
[endif]
[call storage="daily.ks" target="*setup"]
[eval exp="window.fiaStory.setPhase('morning')"]
[if exp="f.dayCount===3 && !f.hasSeenDay03ActivityGuide"]
    [eval exp="f.hasSeenDay03ActivityGuide=true"]
    [image name="day03-activity-guide" layer="1" folder="image" storage="tutorial/daily_trial.png" x="180" y="80" width="1440" height="810"]
    [layopt layer="1" visible="true"]
    [chara_ptext name="System Boot Time:07072345110890"]
    SYSTEM323>　探索に出ると、治療に必要な物資を探せます。[p]
    SYSTEM323>　物資があれば、１個を使って患者３人を診られます。[p]
    [free name="day03-activity-guide" layer="1"]
[endif]
[font color="#66cdaa" size="30"]
#kiichi
「物資を探しに行くか、医務室で患者を診るか。今日はどっちにしよう」[r]
[loadcss file="./data/others/css/daily_button.css"]
[button name="daily-btn" graphic="adv_button.png" x=464 y=580 width=108 height=154.5 storage="daily.ks" target="*morningExplore"]
[button name="daily-btn" graphic="care_button.png" x=590 y=609 width=318 height=277.5 storage="daily.ks" target="*morningCare"]
[if exp="window.fiaDay10Trial.state().exploredToday"]
    [link storage="daily.ks" target="*dayEnd"]【1】「今日はここまでにする」[endlink]
[endif]
[s]

*morningExplore
[if exp="!f.isFullScenario && (f.dayCount===4 || f.dayCount===5) && f.trialMorningSceneDay!==f.dayCount"]
    [eval exp="f.trialMorningAction='morningExplore'"]
    [jump storage="&(('0' + f.dayCount).slice(-2) + '.ks')" target="&('*day' + f.dayCount + '_event')"]
[endif]
    [if exp="f.dayCount===3 && !f.day3GreetingDone && !window.fiaDay10Trial.state().exploredToday"]
        [eval exp="f.day3MorningAction='explore'"]
        [jump storage="03.ks" target="*day3_0"]
    [endif]
[cm]
#kiichi
[link storage="daily.ks" target="*beginExplore"]【1】「探索を始める」[endlink][r]
[link storage="daily.ks" target="*morning"]【2】「戻る」[endlink]
[s]

*resumeTrialAction
[jump target="&('*' + f.trialMorningAction)"]
[s]

*beginExplore
[eval exp="f.trialEncounterCount = Object.keys(f.encounterHistory || {}).length; f.trialStartingIns=f.ins; window.fiaDay10Trial.state().isExploring=true"]
[jump storage="adv.ks" target="*start"]

*earlyTrialExplorationDone
[if exp="window.fiaDay10Trial.state().isExploring && f.ins>=f.trialStartingIns && Object.keys(f.encounterHistory || {}).length > f.trialEncounterCount"]
    [eval exp="f.kno = (Number(f.kno) || 0) + 1"]
[endif]
[eval exp="window.fiaDay10Trial.finishExploration()"]
[jump target="*returnFromTrialExploration"]

*failedExplore
[iscript]
window.fiaDay10Trial.finishExploration();
window.fiaEncounterTimer?.stop();
window.endBattleMode?.();
f.ins = Math.max(1, Number(f.ins) || 0);
[endscript]
[ui_hideChoices]
[cm]
#
これ以上は進めない。壁に手をついて、来た道を引き返した。[p]

*returnFromTrialExploration
[if exp="f.dayCount<6"]
    [jump target="*morning"]
[endif]
[jump target="*fieldAfternoon"]

*morningCare
[if exp="!(f.irmCount>0)"]
    [cm]
    #kiichi
    「物資が足りない」[p]
    [jump target="*morning"]
[endif]
[if exp="!f.isFullScenario && (f.dayCount===4 || f.dayCount===5) && f.trialMorningSceneDay!==f.dayCount"]
    [eval exp="f.trialMorningAction='morningCare'"]
    [jump storage="&(('0' + f.dayCount).slice(-2) + '.ks')" target="&('*day' + f.dayCount + '_event')"]
[endif]
    [if exp="f.dayCount===3 && !f.day3GreetingDone && !window.fiaDay10Trial.state().exploredToday"]
        [eval exp="f.day3MorningAction='care'"]
        [jump storage="03.ks" target="*day3_0"]
    [endif]
[cm]
#kiichi
「医務室には三人待っている。一人ずつ診ていこう」[r]
[link storage="daily.ks" target="*beginCare"]【1】「治療を始める」[endlink][r]
[link storage="daily.ks" target="*afterMorning"]【2】「スキップ」[endlink][r]
[link storage="daily.ks" target="*morning"]【3】「戻る」[endlink]
[s]

*beginCare
[if exp="f.dayCount>=6 || !(f.irmCount>0)"]
    [jump target="*morning"]
[endif]
[eval exp="f.irmCount-=1"]
[call storage="irm_mix.ks" target="*day"]
[jump target="*afterMorning"]

*afterMorning
[cm]
[call storage="daily.ks" target="*setup"]
[if exp="window.fiaDay10Trial.finishDuty()"]
    [if exp="f.treatedCount>=12 && !window.fiaDay10Trial.state().patientEvent"]
        #
        処置を終えた患者が、夕方には通路の見張りに戻れそうだと教えてくれた。[r]
        [eval exp="window.fiaDay10Trial.state().patientEvent=true; window.fiaDay10Trial.register('patient_shift')"]
        [p]
    [endif]
[endif]
[if exp="f.dayCount>=6 && !window.fiaDay10Trial.state().afternoonDone"]
    [jump target="*fieldAfternoonIntro"]
[endif]
[jump target="*dayEnd"]

; DAY06以降の通常日。治療はシナリオのイベントから呼び出す。
*fieldAfternoonIntro
[if exp="f.irmMixDay && f.irmMixDay.day===f.dayCount && f.irmMixDay.results.filter(result => result.success).length>=3"]
    #kiichi
    「今日の治療のノルマは達成した」[p]
[endif]
[jump target="*fieldAfternoon"]

*fieldAfternoon
[call target="*setup"]
[eval exp="window.fiaStory.setPhase('afternoon')"]
[if exp="f.dayCount===6 && !f.hasSeenDay06AfternoonGuide"]
    [eval exp="f.hasSeenDay06AfternoonGuide=true"]
    [image name="day06-afternoon-guide" layer="1" folder="image" storage="tutorial/day06_afternoon.png" x="180" y="80" width="1440" height="810"]
    [layopt layer="1" visible="true"]
    [chara_ptext name="System Boot Time:07072345110890"]
    SYSTEM323>　午後は、鞄で探索、本で教育、机で訓練ができます。[p]
    SYSTEM323>　教育を選ぶと、救助者が３人増えます。[p]
    SYSTEM323>　訓練では、筋トレでPHI、資料整理でKNOが１上がります。[p]
    [free name="day06-afternoon-guide" layer="1"]
[endif]
[loadcss file="./data/others/css/daily_button.css"]
[button name="daily-btn" graphic="coop_button.png" x=235 y=489 width=174 height=244.5 storage="daily.ks" target="*fieldUnavailable"]
[button name="daily-btn" graphic="study_button.png" x=182 y=691 width=150 height=195 storage="daily.ks" target="*fieldTraining"]
[button name="daily-btn" graphic="adv_button.png" x=464 y=580 width=108 height=154.5 storage="daily.ks" target="*fieldExplore"]
[button name="daily-btn" graphic="care_button.png" x=590 y=609 width=318 height=277.5 storage="daily.ks" target="*fieldEducation"]
#kiichi
「次は何をしよう」[r]
[link storage="daily.ks" target="*fieldAfternoonDone"]【1】「今日はここまでにする」[endlink]
[s]

*fieldUnavailable
[cm]
#kiichi
今はこんなことをしている場合じゃない[p]
[jump target="*fieldAfternoon"]

*fieldExplore
[if exp="!f.isFullScenario && (f.dayCount===6 || f.dayCount===8) && f.trialMorningSceneDay!==f.dayCount"]
    [eval exp="f.trialMorningAction='fieldExplore'"]
    [jump storage="&(('0' + f.dayCount).slice(-2) + '.ks')" target="&('*day' + f.dayCount + '_event')"]
[endif]
[cm]
[if exp="window.fiaDay10Trial.active()"]
    [jump target="*beginExplore"]
[endif]
[jump target="*explore"]

*fieldEducation
[if exp="!f.isFullScenario && (f.dayCount===6 || f.dayCount===8) && f.trialMorningSceneDay!==f.dayCount"]
    [eval exp="f.trialMorningAction='fieldEducation'"]
    [jump storage="&(('0' + f.dayCount).slice(-2) + '.ks')" target="&('*day' + f.dayCount + '_event')"]
[endif]
[cm]
[playbgm storage="daily.m4a" restart="false"]
[bg2 storage="bg_room/room_ai1.png" time=350 wait=true left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName='第十二基地　医務室'; f.treatedCount=(Number(f.treatedCount)||0)+3"]
[uiSetPlace]
#kiichi
みんなに治療方法を教えた[p]
[call target="*setup"]
[jump target="*fieldAfternoonDone"]

*fieldTraining
[if exp="!f.isFullScenario && (f.dayCount===6 || f.dayCount===8) && f.trialMorningSceneDay!==f.dayCount"]
    [eval exp="f.trialMorningAction='fieldTraining'"]
    [jump storage="&(('0' + f.dayCount).slice(-2) + '.ks')" target="&('*day' + f.dayCount + '_event')"]
[endif]
[call target="*setup"]
[playbgm storage="daily.m4a" restart="false"]
#kiichi
どの訓練をするか……[p]
[link storage="daily.ks" target="*fieldTrainPhi"]【1】筋トレ[endlink][r]
[link storage="daily.ks" target="*fieldTrainKno"]【2】資料整理[endlink][r]
[link storage="daily.ks" target="*fieldAfternoon"]【3】戻る[endlink]
[s]

*fieldTrainPhi
[cm]
[eval exp="f.phi=(Number(f.phi)||0)+1"]
[uiUpdateParam]
#kiichi
筋トレをした。[p]
[jump target="*fieldAfternoonDone"]

*fieldTrainKno
[cm]
[eval exp="f.kno=(Number(f.kno)||0)+1"]
[uiUpdateParam]
#kiichi
資料を整理した。[p]
[jump target="*fieldAfternoonDone"]

*fieldAfternoonDone
[if exp="window.fiaDay10Trial.active()"]
    [eval exp="window.fiaDay10Trial.state().afternoonDone=true"]
    [jump target="*dayEnd"]
[endif]
[jump target="*usedAfternoon"]

*dayEnd
[cm]
[mask time="500" color="0x061021"]
[free_filter layer="base"]
[filter layer="base" brightness="43" saturate="65"]
[mask_off time="550"]
[eval exp="window.fiaStory.setPhase('evening')"]
#kiichi
今日も一日が終わった。[r]
[link storage="daily.ks" target="*addDay"]【1】翌日にすすむ[endlink]
[s]

*afternoonTalk
[if exp="window.fiaDay10Trial.active()"]
    [jump target="*dayEnd"]
[endif]
[cm]
[font size="30"]
[eval exp="window.fiaDay10Trial.selectTalk('afternoon')"]
[if exp="window.fiaDay10Trial.state().topicIndex<0"]
    #
    今は話せることが思いつかない。[p]
    [jump storage="coop.ks" target="*cooperation"]
[endif]
[call target="*showPerson"]
[if exp="window.fiaDay10Trial.state().person==='setsu' && window.fiaDay10Trial.takeSetsuFollowup()"]
    [call target="*setsuFollowup"]
[endif]
[call target="*talkSubject"]
[jump target="*replyMenu"]

*showPerson
[if exp="window.fiaDay10Trial.state().person==='airan'"]
    [airanNormal]
    [airanShow]
[elsif exp="window.fiaDay10Trial.state().person==='ito'"]
    [itoNormal]
    [itoShow]
[elsif exp="window.fiaDay10Trial.state().person==='akehiru'"]
    [akehiruNormal]
    [akehiruShow]
[elsif exp="window.fiaDay10Trial.state().person==='setsu'"]
    [setsuNormal]
    [setsuShow]
[elsif exp="window.fiaDay10Trial.state().person==='syuuichi'"]
    [syuuichiNormal]
    [syuuichiShow]
[elsif exp="window.fiaDay10Trial.state().person==='tota'"]
    [totaNormal]
    [totaShow]
[else]
    [ayaseNormal]
    [ayaseShow]
[endif]
[return]

*interview
[call storage="daily.ks" target="*setup"]
[bg2 storage="bg_room/room_ai1.png" time="350" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName='第十二基地　診療室'"]
[uiSetPlace]
[call target="*showPerson"]
[jump target="*resumeInterview"]

*resumeInterview
[if exp="window.fiaDay10Trial.active()"]
    [jump target="*dayEnd"]
[endif]
[cm]
#kiichi
[emb exp="window.fiaDay10Trial.personName()"]と二人きりになった。[r]
[if exp="!window.fiaDay10Trial.state().nightAction"]
    [link storage="daily.ks" target="*nightTalk"]【1】「少し話そう」[endlink][r]
    [link storage="daily.ks" target="*examMenu"]【2】「検査について確認する」[endlink][r]
[else]
    [link storage="daily.ks" target="*pressMenu"]【1】「別の仮説を示す」[endlink][r]
    [link storage="daily.ks" target="*interviewTools"]【2】「記録を確認するか、面談を終える」[endlink]
[endif]
[if exp="!window.fiaDay10Trial.state().nightAction"]
    [link storage="daily.ks" target="*interviewTools"]【3】「仮説や記録を確認する」[endlink]
[endif]
[s]

*interviewTools
[cm]
#kiichi
[link storage="daily.ks" target="*pressMenu"]【1】「仮説を示す」[endlink][r]
[link storage="daily.ks" target="*records"]【2】「記録を開く」[endlink][r]
[link storage="daily.ks" target="*endInterview"]【3】「今日はここまでにする」[endlink]
[s]

*endInterview
[chara_hide name="&window.fiaDay10Trial.state().person"]
[jump storage="daily.ks" target="*addDay"]

*nightTalk
[cm]
[eval exp="window.fiaDay10Trial.selectTalk('night')"]
[if exp="window.fiaDay10Trial.state().topicIndex<0"]
    #
    今夜は静かにしておこう。[p]
    [jump target="*resumeInterview"]
[endif]
[call target="*talkSubject"]
[jump target="*replyMenu"]

*talkSubject
#
[chara_ptext name="&window.fiaDay10Trial.personName()"]
「[emb exp="window.fiaDay10Trial.talkLine(0)"]」[p]
[return]

*replyMenu
#kiichi
[link storage="daily.ks" target="*replyJoin"]【1】「[emb exp="window.fiaDay10Trial.talkLine(1)[0]"]」[endlink][r]
[link storage="daily.ks" target="*replyAsk"]【2】「[emb exp="window.fiaDay10Trial.talkLine(1)[1]"]」[endlink][r]
[link storage="daily.ks" target="*replyLeave"]【3】「[emb exp="window.fiaDay10Trial.talkLine(1)[2]"]」[endlink]
[s]

*replyJoin
[cm]
[eval exp="window.fiaDay10Trial.respond(window.fiaDay10Trial.state().person,2)"]
#
[chara_ptext name="&window.fiaDay10Trial.personName()"]
「[emb exp="window.fiaDay10Trial.talkLine(2)[0]"]」[p]
[jump target="*talkDone"]

*replyAsk
[cm]
[eval exp="window.fiaDay10Trial.respond(window.fiaDay10Trial.state().person,1)"]
#
[chara_ptext name="&window.fiaDay10Trial.personName()"]
「[emb exp="window.fiaDay10Trial.talkLine(2)[1]"]」[p]
[jump target="*talkDone"]

*replyLeave
[cm]
#
[chara_ptext name="&window.fiaDay10Trial.personName()"]
「[emb exp="window.fiaDay10Trial.talkLine(2)[2]"]」[p]
[jump target="*talkDone"]

*talkDone
[eval exp="window.fiaDay10Trial.completeTalk()"]
[if exp="window.fiaDay10Trial.state().talkPhase==='afternoon'"]
    [chara_hide name="&window.fiaDay10Trial.state().person"]
    [jump target="*dayEnd"]
[endif]
[jump target="*endInterview"]

*caseOpening
[cm]
[eval exp="window.fiaDay10Trial.reviewArm()"]
#
仕事を終えて手を洗う。水をすくった右手は、今も思ったとおりに動く。[p]
転移の直後、腕はあった。服の袖は破れていた。拠点で俺は「印持ち」と呼ばれた。綾瀬さんが話していた遺骨とも、何か関係があるんだろうか。[p]
#kiichi
「……あのとき世紬は、何を知っていたんだ？」[p]
#
世紬に聞こうにも、いきなり腕の話をして何が分かるだろう。診療室で会えたら、何を聞くか考え直してみよう。[p]
[return]

*examMenu
[cm]
#kiichi
今夜、この相手に提案する検査はない。[r]
[link storage="daily.ks" target="*resumeInterview"]【1】「戻る」[endlink]
[s]

*records
[cm]
[loadcss file="./data/others/css/day10_trial.css"]
[html]
<div id="day10-trial-overlay" role="region" aria-label="診療記録"></div>
[endhtml]
[eval exp="window.fiaDay10Trial.open()"]
[s]

*pressMenu
[cm]
[if exp="window.fiaDay10Trial.state().person==='setsu' && window.fiaDay10Trial.armAvailable()"]
    [eval exp="window.fiaDay10Trial.pickPress()"]
    [if exp="!window.fiaDay10Trial.state().pendingHypothesis && !window.fiaDay10Trial.state().nightAction"]
        [jump target="*armChoices"]
    [endif]
[endif]
[jump target="*pressHypotheses"]

; 照合前に、踏み込んだ質問をするには根拠が要ると示す。
*armChoices
[ui_showChoices text1="【1】右腕に何が起きたのか聞く" target1="*armAsk" text2="【2】話題を変える" target2="*armBack" text3="【3】右腕と印の記録を見直す" target3="*armReasoning"]
[s]

*armAsk
[ui_hideChoices]
#kiichi
「世紬。俺の右腕に、何が起きたんだ？」[p]
#setsu
「古虫君。いつのことを聞いてるの？」[p]
#
転移の前か、後か。俺が見たことと、世紬が知っていることすら、まだ区別できていない。[p]
[jump target="*armChoices"]

*armReasoning
[ui_hideChoices]
#
傷を負った証拠は袖に残っている。綾瀬さんが俺を印持ちと呼んだとき、世紬は驚かなかった。遺骨の話も合わせて、何を聞けるか考える。[p]
[loadcss file="./data/others/css/day10_trial.css"]
[html]
<div id="day10-trial-overlay" class="trial-reasoning" role="region" aria-label="推理・古虫の右腕"></div>
[endhtml]
[eval exp="window.fiaDay10Trial.open()"]
[s]

*pressHypotheses
[cm]
[if exp="window.fiaDay10Trial.state().person==='setsu' && window.fiaDay10Trial.armAvailable() && window.fiaDay10Trial.state().pendingHypothesis"]
    [eval exp="tf.trialPressText='【1】'+window.fiaDay10Trial.pressTitle()"]
    [ui_showChoices text1="&tf.trialPressText" target1="*armSubmit" text2="【2】別の仮説・記録を見直す" target2="*armReviewMenu" text3="【3】面談に戻る" target3="*armBack"]
    [eval exp="TYRANO.kag.layer.getFreeLayer().find('.btn-top-anim').addClass('choice-secret')"]
    [s]
[endif]
; 登録済み仮説を一件ずつ表示し、台詞の選択肢は最大三つ。
[eval exp="window.fiaDay10Trial.pickPress()"]
#kiichi
[if exp="window.fiaDay10Trial.state().pendingHypothesis"]
    [link storage="daily.ks" target="*resolvePress"]【1】「[emb exp="window.fiaDay10Trial.pressTitle()"]」[endlink][r]
    [link storage="daily.ks" target="*nextPress"]【2】「次の仮説を見る」[endlink][r]
    [link storage="daily.ks" target="*resumeInterview"]【3】「面談に戻る」[endlink]
[else]
    今、この相手に示せる仮説はない。[r]
    [if exp="!window.fiaDay10Trial.state().nightAction"]
        [link storage="daily.ks" target="*pressEmpty"]【1】「それでも尋ねる」[endlink][r]
        [link storage="daily.ks" target="*resumeInterview"]【2】「面談に戻る」[endlink]
    [else]
        [link storage="daily.ks" target="*resumeInterview"]【1】「面談に戻る」[endlink]
    [endif]
[endif]
[s]

*armSubmit
[ui_hideChoices]
[jump target="*resolvePress"]

*armReviewMenu
[ui_hideChoices]
[ui_showChoices text1="【1】別の仮説を見る" target1="*armNext" text2="【2】記録を照合する" target2="*armReasoning" text3="【3】戻る" target3="*armReturnToHypotheses"]
[s]

*armReturnToHypotheses
[ui_hideChoices]
[jump target="*pressMenu"]

*armNext
[ui_hideChoices]
[jump target="*nextPress"]

*armBack
[ui_hideChoices]
[jump target="*resumeInterview"]

*nextPress
[eval exp="window.fiaDay10Trial.state().pressIndex += 1"]
[jump target="*pressMenu"]

*pressSetsu
[eval exp="window.fiaDay10Trial.state().pendingHypothesis='setsu_knows'"]
[jump target="*resolvePress"]
*pressRewound
[eval exp="window.fiaDay10Trial.state().pendingHypothesis='all_rewound'"]
[jump target="*resolvePress"]
*pressDream
[eval exp="window.fiaDay10Trial.state().pendingHypothesis='no_injury'"]
[jump target="*resolvePress"]
*pressWitness
[eval exp="window.fiaDay10Trial.state().pendingHypothesis='knew_recovery'"]
[jump target="*resolvePress"]

*pressEmpty
[cm]
#
何から聞くべきか分からないまま、話は途切れた。[p]
[jump target="*endInterview"]

*resolvePress
[cm]
[eval exp="window.fiaDay10Trial.resolvePress()"]
[if exp="window.fiaDay10Trial.state().pressResult==='success'"]
    #kiichi
    「綾瀬さんが俺を印持ちと呼んだとき、君も知ってるようだった。その印は、腕が戻ったことや遺骨と関係があるのか？」[p]
    #setsu
    「君が印持ちだとは知っていたわ。それで綾瀬さんに同意したの」[p]
    「理由は、もう少し待ってもらえる？」[p]
    #
    確定事項　「世紬は古虫を印持ちだと知っていた」[p]
[elsif exp="window.fiaDay10Trial.state().pressResult==='refused'"]
    #setsu
    「君が何を聞きたいかは分かる。でも、今はその話をするつもりはないわ」[p]
[elsif exp="window.fiaDay10Trial.state().pressResult==='all_rewound'"]
    #setsu
    「全部が戻ったのなら、その袖はどうして破れていたの？」[p]
[elsif exp="window.fiaDay10Trial.state().pressResult==='no_injury'"]
    #setsu
    「夢だったとしても、服の血や破れは残る。君が説明したいのは、そこもでしょう？」[p]
[elsif exp="window.fiaDay10Trial.state().pressResult==='knew_recovery'"]
    #setsu
    「私が君の腕が戻るところを見たなんて、あの場で誰かが言った？」[p]
[endif]
[jump target="*resumeInterview"]

*setsuFollowup
#setsu
「古虫君。あの腕のこと、君はどう思ってる？」[p]
#kiichi
「……ちゃんと動くからって、気にしないようにしてた。まだ、俺にも分からない」[p]
#setsu
「そう。じゃあ、分からないことが増えたら、また二人で話しましょう」[p]
[return]
