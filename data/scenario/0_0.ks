*start
;ログに追加しない指定
[nolog]
;レイヤー全部消す
[destroy]

;Mask_lightの表示
[Mask_light]

;メッセージウィンドウの設定
[current layer="message1"]
@layopt layer=message1 visible=true
@layopt layer=1 visible=true

[font color="#66cdabff"]
\SYSTEM-323x[r][r]
Boot device started[r][r]
Time information loading:　completed[r]
Space time spell loading:　completed[r]
Central nervous system connection:　completed[r]
Time route trajectory calculation:　completed[r]
--[r][r]
Start system check[r][r]
Subject vitals checked...　CUE2600　OK[r]
Memory unit checked...　Nation2Nation-80　OK[r]
Temporal interference system checked...　Juno-101　OK[r][r]
--[r]
Kernel starting[r]
[jump target="*Boot2"]
[s]

*Boot2
System Boot Time:07072345110890[r][r]
SYSTEM-323>　リスタートの準備はできていますか？[r][r]
[link storage="0_1.ks"]【１】はい[endlink][r]
[link target=*title]【２】いいえ[endlink][r]
[hover_effect]
[s]


*title
 [iscript]
	location.href="./index.html";
 [endscript]