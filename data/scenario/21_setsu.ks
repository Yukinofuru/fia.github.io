; DAY21の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 21_setsu.ks / DAY21 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v2Y21"]
[s]

; ---- v2Y21 ----
*v2Y21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=21"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v2_y21')"]
; 章開始時に一度だけ初期化。
#
全員分の名を確かめた後で、世紬が手を離した。[p]
手すりに預けていた重さが、急に増えたように見えた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「座ろう」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「皆は、もう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、君に言ってる」[p]
#
彼女は俺を見た。笑おうとして、うまくいかなかった。[p]
椅子を持ってきた。運んでいた物を別の人へ頼み、彼女の前へ座った。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君は、いつからそんなに欲張りになったの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今まで、欲しくないふりをしてたのかもしれない」[p]
#
自分の生存も、誰かと過ごす時間も、必要ないと言えば諦めやすかった。[p]
彼女は俺の返事を聞いて、目を伏せた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「私の話は、後でいいわ」[p]
; 元図A「世紬を忘れる」：本人への問いを閉じる枝。魔法による記憶消去と断定しない。
[jump target="*v4YOpen"]


; source:10824

; ---- v4YOpen ----
*v4YOpen
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_open')"]
#
座った世紬へ、何を尋ねるかを考えた。[p]
彼女がしていた仕事を、誰かが引き継がなければならない。それも、本当だった。[p]
けれど、仕事だけを聞いて、身体のことを後へ回せば、また何も知らずに別れるのかもしれない。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"残っている仕事と、皆へ渡す情報から聞く",target:"*v4YRoleFirst"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"本人の状態と、今どうしたいかから聞く",target:"*v4YPersonFirst"});
[endscript]
[ui_showChoices layout="encounter" storage="21_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12038

; ---- v4YPersonFirst ----
*v4YPersonFirst
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_person_first')"]
[eval exp="f.v4.y.hasPersonalHeard=true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、何が一番つらい」[p]
#
世紬は、答えるまでに時間をかけた。[p]
俺は、仕事の話へ逃げなかった。[p]
[jump target="*v2Y22" storage="22_setsu.ks"]


; source:12047

; ---- v4YRoleFirst ----
*v4YRoleFirst
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_role_first')"]
[eval exp="f.v4.y.isRoleFirst=true"]
#
残っている仕事を、一つずつ聞いた。[p]
世紬の説明は、分かりやすかった。俺が分かったと言うと、彼女は次を話した。[p]
自分の状態を尋ねられずに済むことへ、どこか安心しているようにも見えた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「これで、他の人にも渡せるわね」[p]
#
仕事を聞いたことは、間違いではない。[p]
それで全部聞けたことにするかは、別だった。[p]
[jump target="*v4YSecondVisit"]


; source:12060

; ---- v4YSecondVisit ----
*v4YSecondVisit
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_second_visit')"]
; 時間を置いた二度目の訪問。1日の文章量を抑えるための場面省略にはしない。
#
伝えられた仕事を渡してから、もう一度、部屋の前へ来た。[p]
中で、物が小さく倒れる音がした。[p]
呼びかけると、平気だと返ってきた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「何か、聞き忘れたことがあるの？」[p]
#
用事が済んだなら、帰ってもいい声だった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"仕事ではなく、本人のために来たと伝える",target:"*v4YPersonFirst"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"教わった内容を確認し、それ以上は踏み込まずにいる",target:"*v4YFinalRole"});
[endscript]
[ui_showChoices layout="encounter" storage="21_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12074

; ---- v4YFinalRole ----
*v4YFinalRole
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_final_role')"]
#
一つずつ、確認した。[p]
世紬は訂正し、足りない所を付け足した。俺も、分からないまま頷かなかった。[p]
必要な仕事は、進んだ。[p]
彼女が道具を置いた時、その手が震えていた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……これで、大丈夫」[p]
#
何が大丈夫なのかを、最後に尋ねる余地があった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"まだ本人の話を聞いていないと気づき、問いを変える",target:"*v4YPersonFirst"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"引継ぎを終え、彼女の役目へ答えることで別れる",target:"*v4YRoleClose"});
[endscript]
[ui_showChoices layout="encounter" storage="21_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12088

; ---- v4YRoleClose ----
*v4YRoleClose
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_role_close')"]
[eval exp="f.v4.y.hasPersonalHeard=false;f.v4.y.hasClosedPersonal=true"]
#
礼を言って、扉を閉じた。[p]
彼女が何を望んだかではなく、何を残してくれたかを持ち帰った。[p]
; Aは一度の後回しではなく、複数の機会を通して個人への問いを閉じた結果。
[jump target="*endYA" storage="ending_setsu.ks"]


; source:12096
