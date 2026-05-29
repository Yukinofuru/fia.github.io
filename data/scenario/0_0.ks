; ========================================================
; 冒頭アニメーション
; ========================================================
*start
[fadeoutbgm time=500]
;ログに追加しない指定
[nolog]
;レイヤー全部消す
[uiDestroy]

;CSSの読み込み（CRTモニター風）
[loadcss file="./data/others/css/crt_overlay.css"]
[playbgm storage="noise.m4a"]

;文字色を緑に設定
[deffont color="0x66cdaa"]
[resetfont]

;Mask_lightの表示
[fxMaskLight]

;メッセージウィンドウの設定
[current layer="message1"]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

; 背景(mask.png)をbg2領域に表示
[bg2 storage="mask.png" time=100 wait=false left=180 top=80 width=1440 height=900]

;起動シークエンス演出
;Configの速度を適用（デフォルト動作）
[resetdelay]
[current layer="message0"]

\SYSTEM-323x[r][r]
;[wait time=500]
Boot device started[r][r]
;[wait time=200]
Time information loading:　completed[r]
;[wait time=100]
Space time spell loading:　completed[r]
;[wait time=100]
Central nervous system connection:　completed[r]
;[wait time=300]
Time route trajectory calculation:　completed[r]
--[r][r]
;[wait time=800]
[cm]
Start system check[r][r]
Subject vitals checked...　[wait time=300]CUE2600　OK[r]
Memory unit checked...　[wait time=200]Nation2Nation-80　OK[r]
Temporal interference system checked...　[wait time=400]Juno-101　OK[r][r]
--[r]
[wait time=500]
Kernel starting...[r]
[wait time=1000]

[jump target="*boot"]
[s]

*boot
[cm]
[current layer="message1"]
[chara_ptext name="System Boot Time:07072345110890"] 
SYSTEM-323>　記録を再生しますか？[r]

[link storage="daily.ks" target="*addDay"]【１】はい[endlink][r]
[link target=*title]【２】いいえ[endlink][r]
[s]

*title
 [iscript]
	location.href="./index.html";
 [endscript]