; DAY13の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 13.ks / DAY13 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day13Records"]
[return]

; ---- v2Day13Records ----
*v2Day13Records
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day13_records')"]
#
地下鉄の設備図が、共有の机に広げられていた。[p]
紙の端に、藍爛が細い字で疑問を書いている。現物と図が合っていない箇所があるらしい。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「分からないところは、写真を撮って戻るように、と」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「分からないなら、触らなければいいだけでしょう。君には難しいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺を見て言うな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「名指ししてませんよ。心当たりがあるんですね」[p]
#
藍爛が笑いを堪えた。俺がそちらを見ると、咳払いでごまかす。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「笑っていいよ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「すみません。……少しだけ」[p]
#
明昼は、俺が言い返さないのをつまらなそうに見た。先に図面へ目を戻したのは、彼の方だった。[p]
机の上には、脱出のための図がある。俺たちは、その脇でくだらない話をしていた。どちらも今、必要なのだと、少しだけ思えた。[p]
[return]


; source:3142
