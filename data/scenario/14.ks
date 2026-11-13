; DAY14の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 14.ks / DAY14 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day14Briefing"]
[return]

; ---- v2Day14Briefing ----
*v2Day14Briefing
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day14_briefing')"]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「古虫君と藍爛君は、四番プラットフォーム付近を頼む」[p]
#
図面の上に担当範囲が引かれた。ホーム。キオスク。駅員室と、その裏の設備。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「主電源を入れる前の確認だ。破損箇所、ガス設備、回線の状態を写真に残す。現地で動かす必要はない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、電気の専門じゃありません」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「専門の判断が要る箇所を、判断できる形で持ち帰ってくれればいい」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「図との違いは、私も確認します」[p]
#
藍爛の手元には、もう書き込みがあった。俺が読むと、彼女は横から紙を回してくれた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「修理まで抱え込まないこと。俺も、勝手に動かさない」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。二人とも、ですね」[p]
#
綾瀬が集合と連絡の予定を説明する。帰りの道を確認してから、紙を畳んだ。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「帰ったら、迷った所を教え合おうぜ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「迷う前提か」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「迷わなかったら、そっちが自慢する番だ」[p]
#
藍爛が真面目に図を見直した。冗談を、本気の仕事へ戻してしまう人だった。[p]
俺は写真機の紐を確かめ、彼女の書き込みをもう一度読んだ。[p]
[return]

; source:3180
