; DAY16の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 16.ks / DAY16 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day16Morning"]
[call target="*v2Day16Report"]
[return]

; ---- v2Day16Morning ----
*v2Day16Morning
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day16_morning')"]
#
百七が食事の容器を睨んでいた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「もう少し、どうにかならないの」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「味か？　量か？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「見た目」[p]
#
富山が自分の分を見た。見比べても、違いはなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「入れ物を変えるか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そういう提案、嫌いじゃないわ」[p]
#
藍爛の座る場所が一つ空いている。俺はそちらを見てから、百七へ戻った。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「食べたら行くんでしょ。アタシも挨拶する」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「相手が話せる時だけな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「分かってるわよ。そこまで、子供じゃない」[p]
#
文句を言いながら、彼女は残さず食べた。[p]
[return]


; source:3207

; ---- v2Day16Report ----
*v2Day16Report
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day16_report')"]
#
回収した写真を、見つけた順に並べた。[p]
切断されたケーブル。隠し区画。研究記録。どれも一枚ずつは事実だった。並べれば一つの答えになるとは、まだ言えない。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「爆発が、今回の潜入者の仕業だと？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ、そこまでは。設備の破壊と、残っていた古い記録は、時期が違うかもしれません」[p]
#
自分の撮った写真を、もう一度見た。怖かった物ほど、先に意味をつけたくなる。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「その区別を、残してくれ」[p]
#
藍爛の現在の状態は、別の紙に書いた。事件の証拠の間に、患者の記録を挟まなかった。[p]
[return]


; source:3223
