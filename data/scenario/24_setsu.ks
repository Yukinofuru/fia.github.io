; DAY24の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 24_setsu.ks / DAY24 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v2Y24"]
[s]

; ---- v2Y24 ----
*v2Y24
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=24"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v2_y24')"]
#
世紬の身体を支えた時、灰が指に残った。[p]
握れば壊しそうで、離せば倒れてしまう。俺は、どう持てばいいかを本人に聞いた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ここを。……そう」[p]
#
言われた通りに、腕を動かす。[p]
; B「掴めない」は既定の能力・育成条件不足でこの場面から接続。二択表示で任意に失敗を選ばせない。
; 身体を支えることと、世界から彼女を連れ出す術理を同一の筋力判定にしない。
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君が頑張れば、全てが変わると思わせたくないの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でも、何をしても同じだと決めるのも、違うだろ」[p]
#
俺は出来たことを数えた。出来なかったことを、同じ紙へ残した。[p]
全てを叶える力がないことと、望んではいけないことは、同じではない。[p]
; 以下のcanWorldReachは執筆用の仮判定名。正式の育成・救済条件に置き換える。
[if exp="f.canWorldReach"]
    [jump target="*v2Y25" storage="25_setsu.ks"]
[else]
    [jump target="*endYB" storage="ending_setsu.ks"]
[endif]


; source:10934
