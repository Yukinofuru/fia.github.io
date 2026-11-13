; DAY25の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 25_momona.ks / DAY25 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3M25"]
[s]

; ---- v3M25 ----
*v3M25
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_m25')"]
#
向こう側で、百七が俺を待っていた。[p]
彼女に掴んでもらえばいい。今までと同じように、引いてもらえばいい。[p]
そう思う前に、俺は手を伸ばした。[p]
; Trueは自発的な信頼と実行可能な突破計画。Normalは今の突破を断念しても、二人の退路を確保した場合。
[jump target="*v4MCrossing"]

; source:10797

; ---- v4MCrossing ----
*v4MCrossing
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_crossing')"]
#
百七のいる方へ、手を出そうとした。[p]
準備した合図を、使えるか。失敗した時に、二人が戻れる場所は残っているか。[p]
いま彼女を信じることは、根拠のない成功を祈ることではなかった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"合図を返し、自分から手を伸ばす",target:"*v4MExecute"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"突破を中止し、確保した方へ二人で退く",target:"*v4MWithdraw"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"百七を先へ行かせ、自分の位置を知らせない",target:"*v4MSeparate"});
[endscript]
[ui_showChoices layout="encounter" storage="25_momona.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11987

; ---- v4MExecute ----
*v4MExecute
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_execute')"]
[if exp="f.v4.m.hasSharedPlan && f.v4.m.hasAfterShared && f.v4.m.hasAutonomyRespected"]
    [jump target="*endMTrue" storage="ending_momona.ks"]
[elsif exp="f.v4.m.hasRetreat"]
    #
    合図が、合わなかった。[p]
    百七は手を出したまま、今は戻る方だと叫んだ。[p]
    俺は、自分の決意を成功したことへ変えず、その声を聞いた。[p]
    [jump target="*endMNormal" storage="ending_momona.ks"]
[else]
    #
    手は出した。だが、その先にどこへ動くかを、互いに伝えていなかった。[p]
    百七が、別の足場を探す。[p]
    ; その場で退路を作る猶予がある条件なら撤退、なければBad。無根拠な信頼の台詞だけで成功しない。
    [jump target="*endMBad" storage="ending_momona.ks"]
[endif]


; source:12004

; ---- v4MWithdraw ----
*v4MWithdraw
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_withdraw')"]
[if exp="f.v4.m.hasRetreat"]
    [jump target="*endMNormal" storage="ending_momona.ks"]
[else]
    #
    ; 到達理由：退路の未確保。
    退こうとした方へ、道が残っていなかった。[p]
    失敗した時の話をしなかったことが、今、二人を止めていた。[p]
    [jump target="*endMBad" storage="ending_momona.ks"]
[endif]


; source:12015

; ---- v4MSeparate ----
*v4MSeparate
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_separate')"]
[eval exp="f.v4.m.failure='separation'"]
#
自分が残ればいいと思った。[p]
百七の返事を待たず、手を離した。[p]
[jump target="*endMBad" storage="ending_momona.ks"]

; source:12029
