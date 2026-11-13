; DAY18の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 18.ks / DAY18 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day18Common"]
[return]

; ---- v2Day18Common ----
*v2Day18Common
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day18_common')"]
#
藍爛が、写真の一枚を指で押さえた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ここです。撮った時、右側にも番号がありました」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「盤の番号か」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。今の図では、同じ場所に二つ書かれています」[p]
#
改訂前と改訂後。線のつながりをなぞると、同じ言葉で違う経路を示す箇所があった。[p]
; 事件接続の創作案：番号の新旧はDAY20の情報源を見分ける補助。実在設備の仕様説明ではない。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「同じ番号を言ったから、同じ場所を知ってるとは限らないんだな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、最初は見落としていました」[p]
#
彼女は写真を戻した。もう一度見直したいと言った。仕事を取り返そうとする声には聞こえなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、ここから一緒に」[p]
#
彼女が頷いた。椅子を、俺の方へ少し寄せた。[p]
[eval exp="window.fiaStory.evidence('numbering','v2_day18_common')"]
[return]


; source:3269
