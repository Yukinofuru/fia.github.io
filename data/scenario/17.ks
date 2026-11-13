; DAY17の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 17.ks / DAY17 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day17Common"]
[return]

; ---- v2Day17Common ----
*v2Day17Common
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day17_common')"]
#
通常診療を終える頃、物資の箱が届いた。中身は、注文したものと少し違っていた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「使えそうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「使える物から分ける。誰が運んだ？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「途中で持ち替えている。全員の名は、ここにはない」[p]
#
それを聞いて、俺が何を考えたか、一十には分かったらしかった。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が診た人間もいるぞ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「診たから、何も疑わなくていいわけじゃない」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……そうだな」[p]
#
短い返事だった。俺は箱の記録に、判明している名前と、不明な区間を分けて書いた。[p]
; 所在を確認した事実のみ。全員を一律に容疑者へ格上げしない。
[eval exp="window.fiaStory.evidence('delivery','v2_day17_common')"]
[return]


; source:3245
