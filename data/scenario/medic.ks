; カウンセリングの進行。入口: *start / *evening。人物本文をcallし、終了後はdaily.ksの*sleepへ渡す。
; ========================================================
; medic.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*evening"]
[s]

; ---- evening ----
*evening
[if exp="window.fiaDay10Trial.active()"]
    [jump storage="daily.ks" target="*dayEnd"]
[endif]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call target="*setup" storage="daily.ks"]
[eval exp="window.fiaStory.setPhase('evening')"]
[if exp="f.dayCount===12 && !f.storyV6.dayDone.evening12"]
    [call storage="12.ks" target="*v2Day12Evening"]
    [eval exp="f.storyV6.dayDone.evening12=true"]
[endif]
[if exp="f.storyV6.dayDone['meeting'+f.dayCount]"]
    [jump storage="daily.ks" target="*sleep"]
[endif]
[fadeoutbgm time="500"]
[playbgm storage="medic.m4a"]
; 相手選択画面には直前の会話の話者名を残さない。
#
[loadcss file="./data/others/css/character_directory.css"]
[loadjs storage="medic_registry.js"]
[bg2 storage="bg_room/room_e.png" time="1000" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '診療室'"]
[uiSetPlace]
; 共通UIもmessage1にあるため、名簿表示中もレイヤー全体は隠さない。
[layopt layer="message1" visible="true"]
[html]
<div id="patient-select-ui" class="fia-directory directory-medical" role="region" aria-label="カウンセリングのカルテと名簿">
    <header class="directory-header">
        <div><small>COUNSELING RECORD</small><h1>カルテ・名簿</h1></div>
        <div class="directory-date"></div>
    </header>
    <div class="directory-body">
        <aside class="directory-roster" aria-label="面談対象者の名簿">
            <div class="directory-roster-heading"><span>名簿</span><span class="directory-count"></span></div>
            <div class="directory-list"></div>
        </aside>
        <article class="directory-detail" aria-label="選択した人物のカルテ"></article>
    </div>
    <footer class="directory-footer">
        <p>名簿から選び、カルテを確認して呼び出す。</p>
        <div class="directory-actions">
            <button type="button" class="directory-back" id="btn-back">今夜は休む</button>
            <button type="button" class="directory-action" id="btn-call" disabled>呼び出す</button>
        </div>
    </footer>
</div>
[endhtml]
[iscript]
window.fiaMedicRegistry.restore();
[endscript]
[s]


; ---- v2MeetingStart ----
*v2MeetingStart
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meeting_start')"]
[jump storage="medic.ks" target="*meeting"]

; source:4145

; ---- v2MeetingMenu ----
*v2MeetingMenu
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meeting_menu')"]
[jump storage="medic.ks" target="*meeting"]

; source:4153

; ---- v2MeetingRepeat ----
*v2MeetingRepeat
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meeting_repeat')"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その話は、前にも聞いた。新しく変わったことは、あるか？」[p]
#
同じ答えをもう一度書き写すためだけには、聞かなかった。[p]
; 変化がなければ既知表示。無料閲覧と新質問の区別はメニューで提示し、既読反復の報酬は付けない。
[return]

; source:4165

; ---- meetAiran ----
*meetAiran
[layopt layer="message1" visible="true"]
[current layer="message1"]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.startMeeting('airan',false)"]
[call storage="medic_airan.ks" target="*draftMeetAiranEntry"]
[jump target="*meeting"]


; ---- meetIto ----
*meetIto
[layopt layer="message1" visible="true"]
[current layer="message1"]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.startMeeting('ito',false)"]
[call storage="medic_ito.ks" target="*draftMeetItoEntry"]
[jump target="*meeting"]


; ---- meetAkehiru ----
*meetAkehiru
[layopt layer="message1" visible="true"]
[current layer="message1"]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.startMeeting('akehiru',false)"]
[call storage="medic_akehiru.ks" target="*draftMeetAkehiruEntry"]
[jump target="*meeting"]


; ---- meetSetsu ----
*meetSetsu
[layopt layer="message1" visible="true"]
[current layer="message1"]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.startMeeting('setsu',false)"]
[call storage="medic_setsu.ks" target="*draftMeetSetsuEntry"]
[jump target="*meeting"]


; ---- meetMomona ----
*meetMomona
[layopt layer="message1" visible="true"]
[current layer="message1"]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.startMeeting('momona',false)"]
[call storage="medic_momona.ks" target="*draftMeetMomonaEntry"]
[jump target="*meeting"]


; ---- meeting ----
*meeting
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
[cm]
[eval exp="window.fiaStory.initialize()"]
#
[emb exp="f.storyV6.targetName"]との面談　残り[emb exp="f.storyV6.remaining"]行動。[r]
[if exp="f.storyV6.remaining <= 0 || !window.fiaStory.available(f.storyV6.target)"]
    [jump target="*meetingEnd"]
[endif]
[link storage="medic.ks" target="*talkTopics"]日常の話をする[endlink]　
[link storage="medic.ks" target="*examTopics"]診療項目を選ぶ[endlink]　
[link storage="medic.ks" target="*findingTopics"]所見・経験について聞く[endlink]　
[link storage="medic.ks" target="*pressTopics"]取得した証拠について確かめる[endlink]　
[link storage="medic.ks" target="*closeTopics"]親密な時間を過ごす[endlink]　
[link storage="medic.ks" target="*meetingRecords"]記録を見る（行動消費なし）[endlink]　
[link storage="medic.ks" target="*meetingEnd"]今夜の面談を終える[endlink]　
[s]


; ---- talkTopics ----
*talkTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.setCategory('talk')"]
[jump target="*topics"]


; ---- examTopics ----
*examTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.setCategory('exam')"]
[jump target="*topics"]


; ---- findingTopics ----
*findingTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.setCategory('finding')"]
[jump target="*topics"]


; ---- pressTopics ----
*pressTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.setCategory('press')"]
[jump target="*topics"]


; ---- closeTopics ----
*closeTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.setCategory('close')"]
[jump target="*topics"]


; ---- topics ----
*topics
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
[cm]
[eval exp="window.fiaStory.menu()"]
#
話題を選ぶ。既読の話題では新しい情報・親密度を得ない。[r]
[if exp="f.storyV6.menuItems.length>0"]
    [link storage="medic.ks" target="*pick0"][emb exp="(f.storyV6.menuItems[0].title)"][endlink]　
[endif]
[if exp="f.storyV6.menuItems.length>1"]
    [link storage="medic.ks" target="*pick1"][emb exp="(f.storyV6.menuItems[1].title)"][endlink]　
[endif]
[if exp="f.storyV6.menuItems.length>2"]
    [link storage="medic.ks" target="*pick2"][emb exp="(f.storyV6.menuItems[2].title)"][endlink]　
[endif]
[if exp="f.storyV6.menuItems.length>3"]
    [link storage="medic.ks" target="*pick3"][emb exp="(f.storyV6.menuItems[3].title)"][endlink]　
[endif]
[if exp="f.storyV6.menuItems.length>4"]
    [link storage="medic.ks" target="*pick4"][emb exp="(f.storyV6.menuItems[4].title)"][endlink]　
[endif]
[if exp="f.storyV6.menuItems.length>5"]
    [link storage="medic.ks" target="*pick5"][emb exp="(f.storyV6.menuItems[5].title)"][endlink]　
[endif]
[if exp="f.storyV6.menuItems.length===0"]
    今は選べる話題がない。[r]
[endif]
[if exp="f.storyV6.page+1<f.storyV6.totalPages"]
    [link storage="medic.ks" target="*nextTopics"]次の話題[endlink]　
[endif]
[if exp="f.storyV6.page>0"]
    [link storage="medic.ks" target="*previousTopics"]前の話題[endlink]　
[endif]
[link storage="medic.ks" target="*meeting"]戻る[endlink]　
[s]

; ---- nextTopics ----
*nextTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.page+=1"]
[jump target="*topics"]

; ---- previousTopics ----
*previousTopics
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.page-=1"]
[jump target="*topics"]


; ---- pick0 ----
*pick0
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.select(0,false)"]
[jump target="*performAction"]


; ---- pick1 ----
*pick1
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.select(1,false)"]
[jump target="*performAction"]


; ---- pick2 ----
*pick2
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.select(2,false)"]
[jump target="*performAction"]


; ---- pick3 ----
*pick3
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.select(3,false)"]
[jump target="*performAction"]


; ---- pick4 ----
*pick4
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.select(4,false)"]
[jump target="*performAction"]


; ---- pick5 ----
*pick5
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.select(5,false)"]
[jump target="*performAction"]


; ---- performAction ----
*performAction
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[if exp="!f.storyV6.selectionResult"]
    [jump target="*meeting"]
[endif]
[if exp="f.storyV6.selectionResult==='consent'"]
    [jump target="*confirmExam"]
[endif]
[call storage="&window.fiaStory.storage(f.storyV6.pendingLabel)" target="&window.fiaStory.label(f.storyV6.pendingLabel)"]
[eval exp="window.fiaStory.completeAction()"]
[jump target="*meeting"]

; ---- confirmExam ----
*confirmExam
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の状態を、許可された範囲で確認してもいいか」[r]
[link storage="medic.ks" target="*consentExam"]同意を確かめて、診療を始める[endlink]　
[link storage="medic.ks" target="*cancelExam"]今は診療をやめる（消費なし）[endlink]　
[s]

; ---- consentExam ----
*consentExam
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectionResult=window.fiaStory.consent()"]
[jump target="*performAction"]

; ---- cancelExam ----
*cancelExam
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.selectedAction=null;f.storyV6.isExamPending=false"]
[jump target="*meeting"]

; ---- meetingRecords ----
*meetingRecords
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call target="*records" storage="lib.ks"]
[jump target="*meeting"]

; ---- meetingEnd ----
*meetingEnd
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="&window.fiaStory.storage('draft_meet_'+f.storyV6.target+'_end')" target="&window.fiaStory.label('draft_meet_'+f.storyV6.target+'_end')"]
[eval exp="window.fiaStory.finishMeeting()"]
[jump target="*sleep" storage="daily.ks"]

; 既存の選択肢UIから別KSへ渡す中継ラベル。
