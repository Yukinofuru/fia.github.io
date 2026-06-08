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

[image name="boot_frame" layer="message1" storage="ui_frame.png" left="0" top="0" width=1920 height=1200 opacity=255 zindex="101" time=100 wait=true]

;メッセージウィンドウの設定
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true
[current layer="message0"]

; 背景(mask.png)をbg2領域に表示
[bg2 storage="black.png" time=100 wait=false left=180 top=80 width=1440 height=900]

;起動シークエンス演出
;Configの速度を適用（デフォルト動作）
[resetdelay]
[current layer="message0"]

\SYSTEM-323x[r][r]
蠑募ｯｼ隶ｾ螟?ｷｲ蜷ｯ蜉ｨ[r][r]
譌ｶ髣ｴ菫｡諱ｯ蜉?霓ｽ?壹:[wait time=200] 螳梧[r]
譌ｶ遨ｺ譛ｯ蠑丞刈霓ｽ?壹:[wait time=200] 螳梧[r]
荳ｭ譫｢逾樒ｻ冗ｳｻ扈溯ｿ樊磁?壹:[wait time=200] 螳梧[r]
譌ｶ髣ｴ霍ｯ郤ｿ霓ｨ霑ｹ隶｡邂暦ｼ壹:[wait time=200] 螳梧[r]
--[r]
[wait time=200]
[cm]
蠑?蟋狗ｳｻ扈溯?譽?[r][r]
荳ｻ菴鍋函蜻ｽ菴灘ｾ∵｣?豬?...[wait time=200] CUE2600 縲?[r]
隶ｰ蠢?黒蜈?｣?豬?...[wait time=200] Nation2Nation-80 縲?[r]
譌ｶ蠎丞ｹｲ謇ｰ邉ｻ扈滓｣?豬?...[wait time=200] Juno-101縲?[r]
--[r]
[wait time=500]
[cm]
内核起動...[r]
[wait time=1000]

[jump target="*boot"]
[s]

*boot
[cm]
@layopt layer=1 visible=false
@layopt layer="message1" visible=true

[free name="boot_frame" layer="message1" time="1000" wait=true]
[current layer="message1"]
[chara_ptext name="System Boot Time:07072345110890"] 
SYSTEM-323>　記録を再生しますか？[r]

[link storage="daily.ks" target="*addDay"]【１】はい[endlink][r]
[link target="*title"]【２】いいえ[endlink][r]
[s]

*title
[iscript]
    location.href="./index.html";
[endscript]