; DAY22の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 22_akehiru.ks / DAY22 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3H22Plan"]
[s]

; ---- v3H22Plan ----
*v3H22Plan
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=22"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_h22_plan')"]
#
家の問題を、俺が代わりに解けるとは思わなかった。[p]
姫彗が交渉し、俺が残る人を支える。連絡を切らさず、戻る時刻と、戻れない時に使う別の道を決めた。[p]
一人が全てを負う作戦と、違う形にしたかった。[p]
今の当主がいるからこそ、借りられる力がある。姫彗が今すぐ全てを継承する以外の条件を、交渉へ持ち込んだ。[p]
; 現当主の協力を得る具体的な条件は、この稿での接続案。原案の「当主がいて初めて神の力を借りる」を使う。
香木たちとの繋がりも、使える範囲を本人が確かめた。[p]
俺は囮になる役を申し出た。姫彗が、すぐに顔をしかめる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「また自分が残ればいい？　ほかの台詞、持ってないんですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「戻る所まで決める。俺だけじゃ、変な案になるから、見てくれ」[p]
#
彼女は長く見た後、俺が書き漏らした交代の時刻を足した。[p]
; 囮は帰還・援護・中止条件を伴う作戦。古虫の自己犠牲の反復だけで成功しない。
[jump target="*v4HCheckpoint"]


; source:10665

; ---- v4HCheckpoint ----
*v4HCheckpoint
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_checkpoint')"]
; v3_h22_plan後、実行前。
#
計画の最後に、俺が囮になると書いた。[p]
姫彗が、その下へ線を引いた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「戻る時刻は」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「状況を見て」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「要するに、決めてないんでしょう。格好つけなくて結構です」[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"帰還と中止の合図を決め、仲間へ共有する",target:"*v4HCheckpointReturn"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"戻れなくても皆が行けることを優先する",target:"*v4HCheckpointHold"});
[endscript]
[ui_showChoices layout="encounter" storage="22_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11755

; ---- v4HCheckpointReturn ----
*v4HCheckpointReturn
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_checkpoint_return')"]
[eval exp="f.v4.h.hasReturnPlan=true"]
#
合図を決めた。返事がなければ誰が動くかも、同じ紙へ書いた。[p]
俺が書いた自分の欄へ、姫彗が戻る場所を足した。[p]
[jump target="*v3H24Wait" storage="24_akehiru.ks"]


; source:11762

; ---- v4HCheckpointHold ----
*v4HCheckpointHold
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_checkpoint_hold')"]
[eval exp="f.v4.h.hasReturnPlan=false"]
#
姫彗が、紙を閉じた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君が死ぬのを見送れって？　随分、僕に優しい案ですね」[p]
#
思ったのではない。反対されるのを、考えないようにしていた。[p]
; 囮を単独の自罰へしないため、再検討へ。突き通せば代案の成立条件は得られない。
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"帰る所まで、二人で書き直す",target:"*v4HCheckpointReturn"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"合意を得られないまま、提案の返答を待つ",target:"*uiStoryGo0"});
[endscript]
[ui_showChoices layout="encounter" storage="22_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11775

; 重要選択肢の別KSへの接続。
*uiStoryGo0
[ui_hideChoices]
[jump storage="24_akehiru.ks" target="*v3H24Wait"]
