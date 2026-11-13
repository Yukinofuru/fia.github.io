; DAY21の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 21_airan.ks / DAY21 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3A20Group"]
[s]

; ---- v3A20Group ----
*v3A20Group
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=21"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_a20_group')"]
#
雨天の車両を奪う案を出すと、誰かが笑った。[p]
その笑いには、喜びがなかった。[p]
#隊員
[eval exp="window.fiaLibrary.observe('隊員')"]
「また、こいつについていくのか。狙われてるのは、こいつだろ」[p]
#
返す言葉を、俺は用意していた。失敗した時にも、同じ言葉が言えるのかと思うと、喉が動かない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私が、古虫さんと行きます」[p]
#
藍爛が前へ出た。[p]
#隊員
[eval exp="window.fiaLibrary.observe('隊員')"]
「藍爛ちゃんが言うなら……」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私を信じるから、全部頷いてほしいのではありません。作戦で危ない所を、一緒に確かめてください」[p]
#
彼女は図面を出した。[p]
一人が、車両へ近づく道を指した。別の人が、負傷者を運ぶ順番を変えた。[p]
俺の話を信じるか、信じないかだけではなかった。自分たちで、帰るための計画を作り直していた。[p]
藍爛が俺へ紙を渡した。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんの分も、お願いします」[p]
#
俺は自分の名前を、最後尾へだけ置くのをやめた。[p]
[jump target="*v4APlan"]


; source:10486

; ---- v4APlan ----
*v4APlan
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_plan')"]
#
藍爛が広げた図面へ、東太が進入位置を書き込んだ。[p]
車両を奪えば帰れる。そう言うだけでは、図の上の線は一本も動かなかった。[p]
乗るまで、誰が道を守るか。動けない人を、いつ運ぶか。連盟に見つかった時、どこへ戻るか。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「最初に、何を確保する」[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"車両の確保を先にし、守る班と運ぶ班を分ける",target:"*v4APlanVehicle"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"一度止まれる退路を先にし、そこから車両へ近づく",target:"*v4APlanRefuge"});
[endscript]
[ui_showChoices layout="encounter" storage="21_airan.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11481

; ---- v4APlanVehicle ----
*v4APlanVehicle
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_plan_vehicle')"]
[eval exp="f.v4.a.plan='vehicle_first'"]
#
車両の位置へ丸をつけた。[p]
東太が守り、俺たちが運ぶ。その役割を一つずつ言い、本人の返事を聞いた。[p]
藍爛が、自分はどちらへ行くかを尋ねた。[p]
俺は、危ないから残れと言いかけた。[p]
彼女が何を出来るかを、まだ聞いていなかった。[p]
[jump target="*v4ARole"]


; source:11491

; ---- v4APlanRefuge ----
*v4APlanRefuge
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_plan_refuge')"]
[eval exp="f.v4.a.plan='refuge_first'"]
#
安全な場所を、全てが失敗した時だけの物にしなかった。[p]
途中で休む人を置く。運ぶ人が戻ってくる。次に進めるかを、そこで確かめる。[p]
東太が、確保する人数が要ると言った。俺は人を減らさず、順番を変える案を書いた。[p]
藍爛が、その場所に必要な物を挙げ始める。[p]
[jump target="*v4ARole"]


; source:11500

; ---- v4ARole ----
*v4ARole
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_role')"]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私は、どちらを」[p]
#
言われた仕事を選ぶ声だった。[p]
俺が決めれば、彼女は従うだろう。従ってくれることと、望んだことは、同じではない。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"出来ることと、本人が引き受けたいことを別に聞く",target:"*v4ARoleAsk"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"負傷の状態から仕事を決め、理由を説明する",target:"*v4ARoleOrder"});
[endscript]
[ui_showChoices layout="encounter" storage="21_airan.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11510

; ---- v4ARoleAsk ----
*v4ARoleAsk
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_role_ask')"]
[eval exp="f.v4.a.hasWishHeard=true"]
#
藍爛は、困った顔をした。[p]
出来ることを答えた後、自分がどうしたいかで言葉が止まる。[p]
待った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私が、古虫さんの見えない所も、確かめたいです。全部を、古虫さんが見なくて済むように」[p]
#
彼女が行く所と、戻る所を、一緒に決めた。[p]
[jump target="*v4ABackup"]


; source:11522

; ---- v4ARoleOrder ----
*v4ARoleOrder
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_role_order')"]
[eval exp="f.v4.a.hasWishHeard=false"]
#
怪我の経過から、負担の少ない仕事を渡した。[p]
必要な判断だった。ただ、彼女の返事が、すぐに、はい、だったことが気になった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「嫌だったら、言ってくれ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい」[p]
#
同じ返事だった。今は俺が決め、本人の望みを聞く所は残った。[p]
[jump target="*v4ABackup"]


; source:11535

; ---- v4ABackup ----
*v4ABackup
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_backup')"]
#
作戦が止まった時の話をした。[p]
俺は、最後は自分が残れば、と言いかけた。[p]
東太がこちらを見たので、紙へ戻った。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"退路と交代を全員へ示し、戻る合図を決める",target:"*v4ABackupShare"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"自分が動いて時間を稼ぎ、状況を見て戻る",target:"*v4ABackupPersonal"});
[endscript]
[ui_showChoices layout="encounter" storage="21_airan.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11544

; ---- v4ABackupShare ----
*v4ABackupShare
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_backup_share')"]
[eval exp="f.v4.a.hasReturnShared=true"]
#
誰が合図を出し、誰が返事をするかを決めた。[p]
一人の頑張りで時間が延びると思わず、交代しても続く形を作った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんも、その合図で戻ってください」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった」[p]
[jump target="*v3A21Raid" storage="22_airan.ks"]


; source:11555

; ---- v4ABackupPersonal ----
*v4ABackupPersonal
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_a_backup_personal')"]
[eval exp="f.v4.a.hasReturnShared=false"]
#
俺が動けばいい、と説明した。[p]
東太は、分かったとは言わなかった。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「お前の状況判断は、たまにお前一人を数えない」[p]
#
反論出来なかった。[p]
今すぐ決めない所を残したまま、俺たちは動き出した。[p]
[jump target="*v3A21Raid" storage="22_airan.ks"]


; source:11567
