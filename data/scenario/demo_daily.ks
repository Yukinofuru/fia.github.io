; DAY3〜9は探索か治療のいずれか一回。帰還後は終了のみ。
*start
[if exp="f.dayCount >= 10"]
    [jump storage="0_10.ks" target="*start"]
[endif]
[if exp="f.dayCount < 3"]
    [jump storage="daily.ks" target="*start"]
[endif]
[iscript]
if (window.endBattleMode) window.endBattleMode();
if (f.demoActionDay !== f.dayCount) {
    f.demoActionDay = f.dayCount;
    f.demoAction = '';
    f.isDemoActionDone = false;
    f.isDemoExplored = false;
    f.isDemoCareDone = false;
}
[endscript]
[fadeoutbgm time="500"]
[cm]
[uiDestroy]
[endnolog]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[fxMaskLight]
[font color="#66cdaa"]
[uiUpdateParam]
[uiUpdateIns]
[loadcss file="./data/others/css/daily_button.css"]
[uiSetMenu]
[bg2 storage="my_room.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[playbgm storage="daily.m4a"]
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[if exp="f.dayCount == 3 && !f.hasSeenDailyTutorial && !f.isDemoActionDone"]
    [call storage="daily_tutorial.ks" target="*start"]
    [jump target="*start"]
[endif]
[jump target="*menu"]
[s]

*menu
[cm]
#
[if exp="f.isDemoActionDone"]
    #kiichi
    「今日はもう寝ようか？」[r]
    [link target="*sleep"]【1】はい[endlink][r]
[elsif exp="!f.demoAction"]
    [button name="daily-btn" graphic="coop_button.png" x=235 y=489 width=174 height=244.5 target="*unavailable"]
    [button name="daily-btn" graphic="study_button.png" x=182 y=691 width=150 height=195 target="*unavailable"]
    [button name="daily-btn" graphic="adv_button.png" x=464 y=580 width=108 height=154.5 target="*explore"]
    [button name="daily-btn" graphic="care_button.png" x=590 y=609 width=318 height=277.5 target="*care"]
[endif]
[s]

*unavailable
[cm]
#kiichi
今はこんなことをしている場合じゃない[p]
[jump target="*menu"]
[s]

*explore
[if exp="f.demoAction || f.isDemoActionDone"]
    [jump target="*menu"]
[endif]
[cm]
#kiichi
「探索に行こうか？」[r]
[link target="*beginExplore"]【1】はい[endlink][r]
[link target="*menu"]【2】いいえ[endlink][r]
[s]

*beginExplore
[if exp="f.demoAction || f.isDemoActionDone"]
    [jump target="*menu"]
[endif]
[eval exp="f.demoAction = 'explore'"]
[jump storage="adv.ks" target="*start"]
[s]

*explorationDone
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
[jump target="*start"]
[s]

*care
[if exp="f.demoAction || f.isDemoActionDone"]
    [jump target="*menu"]
[endif]
[cm]
#kiichi
「今の物資は[emb exp="f.irmCount"]個だ。怪我人の治療に行こうか？」[r]
[link target="*beginCare"]【1】はい[endlink][r]
[link target="*menu"]【2】いいえ[endlink][r]
[s]

*beginCare
[if exp="f.demoAction || f.isDemoActionDone"]
    [jump target="*menu"]
[endif]
[eval exp="f.demoAction = 'care'"]
[if exp="f.irmCount > 0"]
    [eval exp="f.irmCount -= 1"]
    [jump storage="care3-9.ks" target="*startBgm"]
[else]
    [cm]
    #kiichi
    患者の看護と応急処置をした[p]
    [jump target="*careDone"]
[endif]
[s]

*careDone
[eval exp="f.isDemoCareDone = true; f.isDemoActionDone = true"]
[jump target="*start"]
[s]

*sleep
[if exp="!f.isDemoActionDone"]
    [jump target="*menu"]
[endif]
[cm]
#kiichi
「……もう寝よう」[p]
[jump storage="daily.ks" target="*addDay"]
[s]
