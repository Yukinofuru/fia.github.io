; DAY23の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 23_airan.ks / DAY23 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3A21Monster"]
[s]

; ---- v3A21Monster ----
*v3A21Monster
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=23"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_a21_monster')"]
#
怪物になった藍爛が、雨天へ届いた。[p]
俺たちの誰も近づけなかった場所へ、彼女の力が届いた。[p]
雨天が倒れ、道が開く。[p]
藍爛は、戻らなかった。[p]
鎖が鳴った。彼女を止めるために、助けた仲間たちが力を貸していた。[p]
俺は近づこうとして、東太に止められた。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「近づけば、声が届くってもんでもない」[p]
#
俺はその場で、彼女を呼んだ。[p]
人の声にならない返事が、車内に響いた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞こえてるなら、それでいい。俺は、ここにいる」[p]
; 親密度・使用履歴の条件で到達分岐。低使用履歴などが足りず別の怪異化が進む場合は全体の条件表へ。
[jump target="*v4AAftermonster" storage="24_airan.ks"]

; source:10559
