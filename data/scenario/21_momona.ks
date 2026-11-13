; DAY21の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 21_momona.ks / DAY21 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3M21"]
[s]

; ---- v3M21 ----
*v3M21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=21"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_m21')"]
; 章開始時に一度だけ初期化。
#
百七は、雨天のいる方へ行くと言った。[p]
残る時間が短くても、一瞬だけ届けばいい。その一瞬で、俺を守れるなら、と。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それを、俺が喜ぶと思うか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「喜ぶ必要はないでしょ。生きればいいの」[p]
#
一十の言葉が重なり、俺は顔を上げた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の後のことを、お前だけで決めるな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アンタが、自分の後を考えないからでしょ！」[p]
#
怒鳴り合ってから、どちらも黙った。[p]
百七が先に座った。図面を、俺の方へ押す。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、一緒に考えなさいよ」[p]
[jump target="*v4MPrepare"]


; source:10711

; ---- v4MPrepare ----
*v4MPrepare
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_prepare')"]
#
百七が、地図の端へ自分の位置を書いた。[p]
俺の位置は、後ろだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の方の仕事も、決めたい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「勝手についてくるよりは、いいわ」[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"互いの合図と、失敗した時の合流先を作る",target:"*v4MPrepareShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"百七を守るため、古虫が独自に動けるようにする",target:"*v4MPrepareProtect"});
[endscript]
[ui_showChoices layout="encounter" storage="21_momona.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11887

; ---- v4MPrepareShared ----
*v4MPrepareShared
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_prepare_shared')"]
[eval exp="f.v4.m.hasSharedPlan=true;f.v4.m.hasRetreat=true"]
#
合図を、二人で言い直した。[p]
どちらかが動けなくなっても、相手がどこへ行くかを分かるようにした。[p]
百七は、自分が届かなかった時の話もした。[p]
成功する顔のまま、失敗した後を捨ててはいなかった。[p]
[jump target="*v3M22Capture" storage="22_momona.ks"]


; source:11896

; ---- v4MPrepareProtect ----
*v4MPrepareProtect
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_prepare_protect')"]
[eval exp="f.v4.m.hasSharedPlan=false;f.v4.m.hasRetreat=false"]
#
俺が別に動ければ、彼女を助ける手が増えると思った。[p]
百七は、何をするかを尋ねた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「状況を見て、決める」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「それ、アタシからは、何も分からないってことでしょ」[p]
#
俺は言い直すことも出来た。それでも、自分が動く余地を残したい気持ちがあった。[p]
[jump target="*v3M22Capture" storage="22_momona.ks"]


; source:11909
