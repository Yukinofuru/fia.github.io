; DAY24の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 24_airan.ks / DAY24 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v4AAftermonster"]
[s]

; ---- v4AAftermonster ----
*v4AAftermonster
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=24"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v4_a_aftermonster')"]
#
雨天を倒した後も、鎖を押さえる人々は動けなかった。[p]
彼女が何に反応するかを、誰も分かっていない。[p]
俺は、最初に何をするかを選んだ。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"離れた場所から呼び、反応した物を確かめる",target:"*v4AResponse"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"今後を引き受けるため、皆と移動先を相談する",target:"*v4AHome"});
[endscript]
[ui_showChoices layout="encounter" storage="24_airan.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11622

; ---- v4AResponse ----
*v4AResponse
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_response')"]
[eval exp="f.v4.a.isResponseChecked=true"]
#
名前を呼ぶ。腕を動かす。俺が普段話す速さまで、声を落とす。[p]
鎖を引く力が、わずかに変わった。[p]
; 変化の有無は関係・既読の記憶・状態へ。全員に同じ呼び方をすれば反応する仕組みではない。
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「今、止まったか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう一度、確かめたい」[p]
#
近づく前に、止めてもらう位置を決めた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"反応を確かめながら、本人へ近づく",target:"*v4AReach"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"古虫が近づいた後を、東太たちと分担し直す",target:"*v4ASupport"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"今は近づかず、運ぶ方法と暮らす場所を作る",target:"*v4AHome"});
[endscript]
[ui_showChoices layout="encounter" storage="24_airan.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11639

; ---- v4ASupport ----
*v4ASupport
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_support')"]
#
俺が近づいた後、誰が彼女を支えるかを聞いた。[p]
東太が、最初の作戦で決めたことを指した。共有していなかった場合は、今、出来る範囲で言い直す。[p]
俺が動けなくなれば、誰が声をかけるか。藍爛が戻らなければ、どこで休めるか。[p]
一人がうまくやれば済む話にしなかった。[p]
[eval exp="f.v4.a.hasReturnShared=true"]
[jump target="*v4AResponse"]


; source:11648

; ---- v4AReach ----
*v4AReach
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_reach')"]
[if exp="f.canAiranReturn && f.v4.a.hasWishHeard && f.v4.a.isResponseChecked && f.v4.a.hasReturnShared"]
    #
    彼女が俺を見る。[p]
    人の姿でないからといって、その動きを全部知らない物へ変えたくなかった。[p]
    東太へ合図し、止められる範囲の中で、もう一歩近づいた。[p]
    [jump target="*endATrue" storage="ending_airan.ks"]
[else]
    #
    今の反応だけで、安全だとは言えなかった。[p]
    俺が近づこうとすると、鎖が強く鳴る。[p]
    東太が止めた。俺は、その手を振り払わなかった。[p]
    引き受けるという約束を、今ここで一緒に死ぬことへ変えたくなかった。[p]
    [jump target="*v4AHome"]
[endif]


; source:11664

; ---- v4AHome ----
*v4AHome
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_home')"]
#
どこへ行けば、彼女を置いて帰る話にならずに済むかを、皆と考えた。[p]
明昼が、連絡を続けられる場所を挙げた。東太が、最初に必要な物を分けた。[p]
俺は、その手伝いを受け取った。[p]
; 親密さだけでなく、変化後の行動と今の状態を経てNormalへ。引取りを放置の選択にしない。
[jump target="*endANormal" storage="ending_airan.ks"]

; source:11676
