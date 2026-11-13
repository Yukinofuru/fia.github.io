; DAY19の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 19.ks / DAY19 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day19Common"]
[return]

; ---- v2Day19Common ----
*v2Day19Common
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day19_common')"]
#
明日の移動に使う名簿を読んだ。[p]
寝台が必要な人。自分で歩く人。道具を運ぶ人。誰かの付き添いをする人。[p]
一つの名前に、役割を一つだけ書くことは出来なかった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「また君の分だけ空欄ですか。自分を数えるのも嫌なんですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「診療の担当だ」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「担当の話なんかしてません。乗る場所です。分かってて逸らさないでください」[p]
#
明昼が紙を返した。笑っていない時には、こういう顔をする。[p]
俺は自分の名前の横に、乗る場所を書いた。[p]
; 午後と夜は通常選択。選んだ相手との別れ際の本文を使い、未選択の約束は回想しない。
#
紙の端が少し足りなかった。別の紙を継ぎ足す。[p]
全員分を書き終えるまで、灯りを消さなかった。[p]
[return]

; source:3294
