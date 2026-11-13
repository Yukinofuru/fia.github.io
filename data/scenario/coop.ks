; 交流の進行。入口: *start / *cooperation。通常はmedic.ksの夜へ、個別の合間はreturnで戻る。
; ========================================================
; coop.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*cooperation"]
[s]

; ---- cooperation ----
*cooperation
[if exp="window.fiaDay10Trial.active()"]
    [jump storage="daily.ks" target="*dayEnd"]
[endif]
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
[call target="*setup" storage="daily.ks"]
[eval exp="window.fiaStory.setPhase('afternoon')"]
; 相手選択画面には直前の会話の話者名を残さない。
#
[loadcss file="./data/others/css/character_directory.css"]
[loadjs storage="medic_registry.js"]
[layopt layer="message1" visible="true"]
[html]
<div id="coop-select-ui" class="fia-directory directory-phone" role="region" aria-label="交流の連絡先">
    <header class="directory-header">
        <div><small>CONTACTS</small><h1>連絡先</h1></div>
        <div class="directory-date"></div>
    </header>
    <div class="directory-body">
        <aside class="directory-roster" aria-label="連絡先一覧">
            <div class="directory-roster-heading"><span>連絡先一覧</span><span class="directory-count"></span></div>
            <div class="directory-list"></div>
        </aside>
        <article class="directory-detail" aria-label="連絡先の覚え書き"></article>
    </div>
    <footer class="directory-footer">
        <p>名前を選び、会いに行く。</p>
        <div class="directory-actions">
            <button type="button" class="directory-back" >戻る</button>
            <button type="button" class="directory-action"  disabled>会いに行く</button>
        </div>
    </footer>
</div>
[endhtml]
[iscript]
window.fiaMedicRegistry.restoreCoop();
[endscript]
[s]

; ---- coopBack ----
*coopBack
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*afternoon" storage="daily.ks"]


; ---- coopAiran ----
*coopAiran
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('airan')"]
[if exp="f.storyV6.route!=='common' && !f.storyV6.dateCandidate"]
    [eval exp="window.fiaStory.routeCoop()"]
    [call storage="&window.fiaStory.storage(f.storyV6.pendingLabel)" target="&window.fiaStory.label(f.storyV6.pendingLabel)"]
[else]
    [call storage="coop_airan.ks" target="*v6CoopOfferAiran"]
[endif]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- coopIto ----
*coopIto
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('ito')"]
[if exp="f.storyV6.route!=='common' && !f.storyV6.dateCandidate"]
    [eval exp="window.fiaStory.routeCoop()"]
    [call storage="&window.fiaStory.storage(f.storyV6.pendingLabel)" target="&window.fiaStory.label(f.storyV6.pendingLabel)"]
[else]
    [call storage="coop_ito.ks" target="*v6CoopOfferIto"]
[endif]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- coopAkehiru ----
*coopAkehiru
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('akehiru')"]
[if exp="f.storyV6.route!=='common' && !f.storyV6.dateCandidate"]
    [eval exp="window.fiaStory.routeCoop()"]
    [call storage="&window.fiaStory.storage(f.storyV6.pendingLabel)" target="&window.fiaStory.label(f.storyV6.pendingLabel)"]
[else]
    [call storage="coop_akehiru.ks" target="*v6CoopOfferAkehiru"]
[endif]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- coopSetsu ----
*coopSetsu
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('setsu')"]
[if exp="f.storyV6.route!=='common' && !f.storyV6.dateCandidate"]
    [eval exp="window.fiaStory.routeCoop()"]
    [call storage="&window.fiaStory.storage(f.storyV6.pendingLabel)" target="&window.fiaStory.label(f.storyV6.pendingLabel)"]
[else]
    [call storage="coop_setsu.ks" target="*v6CoopOfferSetsu"]
[endif]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- coopMomona ----
*coopMomona
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('momona')"]
[if exp="f.storyV6.route!=='common' && !f.storyV6.dateCandidate"]
    [eval exp="window.fiaStory.routeCoop()"]
    [call storage="&window.fiaStory.storage(f.storyV6.pendingLabel)" target="&window.fiaStory.label(f.storyV6.pendingLabel)"]
[else]
    [call storage="coop_momona.ks" target="*v6CoopOfferMomona"]
[endif]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- coopTota ----
*coopTota
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('tota')"]
[call target="*supportMenu"]
[call storage="&window.fiaStory.storage('draft_'+f.storyV6.target+(f.storyV6.supportTopic==='meeting'?'_meeting':'_free_talk'))" target="&window.fiaStory.label('draft_'+f.storyV6.target+(f.storyV6.supportTopic==='meeting'?'_meeting':'_free_talk'))"]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- coopAyase ----
*coopAyase
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.chooseCoop('ayase')"]
[call target="*supportMenu"]
; 会話IDから実在する人物別KSとラベルをそれぞれ取得する。
[call storage="&window.fiaStory.storage('draft_'+f.storyV6.target+(f.storyV6.supportTopic==='meeting'?'_meeting':'_free_talk'))" target="&window.fiaStory.label('draft_'+f.storyV6.target+(f.storyV6.supportTopic==='meeting'?'_meeting':'_free_talk'))"]
[eval exp="window.fiaStory.completeCoop()"]
#
[emb exp="f.dailyGrowthText"][p]
[if exp="f.storyV6.isRouteBreak"]
    [return]
[endif]
[jump target="*evening" storage="medic.ks"]


; ---- supportMenu ----
*supportMenu
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どんな時間にしよう。[r]
[link storage="coop.ks" target="*supportFree"]仕事から離れて、普段の話をする[endlink]　
[link storage="coop.ks" target="*supportMeeting"]相手自身の話を聞く[endlink]　
[s]

; ---- supportFree ----
*supportFree
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.supportTopic='free'"]
[return]

; ---- supportMeeting ----
*supportMeeting
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.supportTopic='meeting'"]
[return]

; 既存の選択肢UIから別KSへ渡す中継ラベル。
