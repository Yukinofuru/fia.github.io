; DAY22の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 22_airan.ks / DAY22 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3A21Raid"]
[s]

; ---- v3A21Raid ----
*v3A21Raid
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=22"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_a21_raid')"]
#
強襲は、途中まで計画通りだった。[p]
道を空ける班と、車両を確保する班が合流した。連盟側の人間を退け、乗り込める場所が出来た。[p]
雨天が現れるまでは。[p]
一つの動きで、通路が閉じた。こちらの攻撃が、届く前に崩される。[p]
東太が俺を下げ、明昼が脇へ回った。二人が動いても、雨天の立つ場所が変わらない。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「そこまでだ」[p]
#
声を聞いて、振り向いた。[p]
死んだと思っていた人間が、そこにいた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「綾瀬、さん……？」[p]
#
彼は訂正するように、自分の名を告げた。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「綾背だ」[p]
[eval exp="window.fiaLibrary.learn('ayaseName')"]
#
藍爛へ近づき、短く耳打ちする。彼女の顔から、血の気が引いた。[p]
; 綾背信頼不足は強制怪異化へ。十分なら研究ノートと自分の過去を告げる。
[if exp="f.hasAyaseTrust"]
    [jump target="*v3A21Notebook"]
[else]
    [jump target="*endABad" storage="ending_airan.ks"]
[endif]


; source:10513

; ---- v3A21Notebook ----
*v3A21Notebook
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a21_notebook')"]
#
綾背が、研究ノートを俺へ渡した。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「私は、君たちを怪異へ変えるつもりだった」[p]
[eval exp="window.fiaLibrary.learn('ayaseResearch')"]
#
驚くより先に、藍爛を見た。彼女は顔を伏せたままだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を、した」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「詳しく話す時間はない。だが、渡すべき物は渡す」[p]
#
綺麗な言葉で赦されようとはしなかった。何を知り、何を隠していたか。短く、取り返せない順に話した。[p]
皆と過ごして考えが変わった、と最後に付け足す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だから、今度は死ねば済むのか」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「済まない。君に、続きを押しつける」[p]
#
綾背は雨天へ向かった。[p]
文字通り、戻る余地を残さない攻撃だった。止められたのは、雨天の動きのほんの一部だけだった。[p]
だが、その一瞬を逃せば、誰も通れなかった。[p]
[jump target="*v4ATransform"]


; source:10537

; ---- v4ATransform ----
*v4ATransform
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_transform')"]
; 綾背が雨天を止めた直後。本人の選択が残っている場合だけ。
#
藍爛が、俺を呼んだ。[p]
さっきまでの作戦のどこにも、彼女が怪物になると書かれてはいなかった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私が、行けば。今なら、届くと思います」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「戻れるのか」[p]
#
彼女は、頷かなかった。[p]
俺は、その沈黙を聞いた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"何が起きるか、何を望むか、短く本人へ確かめる",target:"*v4ATransformAsk"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"その姿にならなくていいと、彼女を止める",target:"*v4ATransformStop"});
[endscript]
[ui_showChoices layout="encounter" storage="22_airan.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11583

; ---- v4ATransformAsk ----
*v4ATransformAsk
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_transform_ask')"]
[eval exp="f.v4.a.isTransformConfirmed=true;f.v4.a.hasWishHeard=true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君が、決めたことなのか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。怖いです。でも、皆と、出たいです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君も、その中に入れてくれ」[p]
#
藍爛は一度、俺を見た。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も。……帰りたいです」[p]
#
別れの言葉だけを受け取らなかった。[p]
[jump target="*v3A21Monster" storage="23_airan.ks"]


; source:11599

; ---- v4ATransformStop ----
*v4ATransformStop
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_transform_stop')"]
[eval exp="f.v4.a.isTransformConfirmed=false"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ほかの手を、考える」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんが残る以外の手は、今、ありますか」[p]
#
俺は、すぐに答えられなかった。[p]
彼女がやろうとしていることを止めて、その代わりに俺が消えればいい。その案しか浮かんでいないことを、見抜かれていた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私のことも、聞いてください」[p]
; 本人の願いを聞く方へ戻れる。ここで善い返答を選ばなかったという理由だけで強制怪異化へ落とさない。
[jump target="*v4ATransformAsk"]


; source:11613
