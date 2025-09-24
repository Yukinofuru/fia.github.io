;一番最初に呼び出されるファイル
[title name="FallingIntoAsh"]
[stop_keyconfig]

[loadcss file="./data/others/css/line.css"]

[iscript]
(function(){

    var base = document.querySelector(".tyrano_base");

    var old = document.getElementById("noise_layer");
    if(old) old.remove();

    var noiseLayer = document.createElement("div");
    noiseLayer.id = "noise_layer";
    noiseLayer.style.position = "absolute";
    noiseLayer.style.top = "0";
    noiseLayer.style.left = "0";
    noiseLayer.style.width = "100%";
    noiseLayer.style.height = "100%";
    noiseLayer.style.pointerEvents = "none";
    noiseLayer.style.zIndex = "2147483647";
    base.appendChild(noiseLayer);

    var canvas = document.createElement("canvas");
    canvas.width = base.clientWidth;
    canvas.height = base.clientHeight;
    canvas.style.width = "100%";
    canvas.style.height = "100%";
    canvas.style.opacity = "0.15"; // 半透明度調整
    noiseLayer.appendChild(canvas);

    var ctx = canvas.getContext("2d");

    // 小さいキャンバスでノイズを作ってパターン化
    var noiseCanvas = document.createElement("canvas");
    noiseCanvas.width = 100;
    noiseCanvas.height = 100;
    var nctx = noiseCanvas.getContext("2d");

    function makeNoise(opacity) {
        var imageData = nctx.createImageData(noiseCanvas.width, noiseCanvas.height);
        var buffer = imageData.data;
        for (var i=0; i<buffer.length; i+=4) {
            var gray = Math.random() * 255;
            buffer[i]   = gray;
            buffer[i+1] = gray;
            buffer[i+2] = gray;
            buffer[i+3] = 255 * opacity;
        }
        nctx.putImageData(imageData, 0, 0);
        return ctx.createPattern(noiseCanvas, "repeat");
    }

    function drawFrame() {
        // ノイズ背景
        var pattern = makeNoise(1.0);
        ctx.fillStyle = pattern;
        ctx.fillRect(0, 0, canvas.width, canvas.height);

        // ランダム水平線
        ctx.globalAlpha = 0.3;
        ctx.fillStyle = "white";
        var lineCount = Math.floor(Math.random() * 2); 
        for (var n=0; n<lineCount; n++) {
            var y = Math.floor(Math.random() * canvas.height);
            var h = Math.random() * 3 + 1;
            ctx.fillRect(0, y, canvas.width, h);
        }

        ctx.globalAlpha = 1.0;
    }

    setInterval(drawFrame, 200);
})();
[endscript]

;ティラノスクリプトが標準で用意している便利なライブラリ群
[loading_log all="default"]
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]
[chara_config talk_focus="brightness"]

[loadcss file="./data/others/css/animbtn.css"]

;=========================================
; 変数定義全般
;=========================================
;ステータス変数の定義
[eval exp="sf.INS = 8"]
[eval exp="sf.PHI = 0"]
[eval exp="sf.KNO = 0"]
[eval exp="sf.LUC = 0"]
[eval exp="sf.SPI = 0"]
[eval exp="sf.day = 0"]
[eval exp="tf.click = 0"]

;=========================================
; マクロ設定
;=========================================
;ホバー時色が変わるマクロ
[macro name="hover_effect"]
[iscript]
$("span[style*='cursor: pointer']").hover(
function(){$(this).css("color","white")},
function(){$(this).css("color","#66cdabff")}
);
[endscript]
[endmacro]

;---------------------------------------------------------------------------------------------------------------------
;乱数のマクロ
[macro name="getrand"]
[iscript]
var max = mp.max || '100'
var min = mp.min || '1'
max = Number(max)
min = Number(min)
tf.rand = min + Math.floor(Math.random() * (max - min + 1))
if (mp['var']) eval(mp['var'] + ' = ' + tf.rand)
[endscript]
[endmacro]

;---------------------------------------------------------------------------------------------------------------------
;menuボタンのマクロ
[macro name="set_menu"]
; 透明なボタンの設置とターゲット、クラス名の設定
[button graphic="transparent.png" enterimg="button_menu.png" role=menu name="menu_btn" x="1650" y="650" width="250" height="50" clickse="pi.ogg"]
[button graphic="transparent.png" enterimg="button_log.png" role=backlog name="log_btn" x="1650" y="710" width="250" height="50" clickse="pi.ogg"]
[button graphic="transparent.png" enterimg="button_lib.png" role="sleepgame" storage="Tips.ks" name="lib_btn" x="1650" y="770" width="250" height="50" clickse="pi.ogg"]
[endmacro]

;---------------------------------------------------------------------------------------------------------------------
;選択肢ウィンドウのマクロ
;選択肢ウィンドウの表示
@layopt layer=1 visible=true
[macro name="set_choose"]
[image storage="Mask_day.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]
;Mask_lightの表示
[image name="Mask_light" storage="Mask_light.png" layer="1" x="0" y="0" time="500" wait="false"]
[xanim name="Mask_light" keyframe="tate" count="infinite" time="3500" direction="normal" easing="linear"]
[endmacro]

;---------------------------------------------------------------------------------------------------------------------
;レイヤーを全て消すマクロ
[macro name="destroy"]
[cm]
[freeimage layer="0"]
[freeimage layer="1"]
[freeimage layer="2"]
[freeimage layer="base"]
[clearfix]
[endmacro]

;---------------------------------------------------------------------------------------------------------------------
;INSメーターを更新するマクロ
[macro name="update_INS"]
[if exp="sf.INS ==8"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_8.png" layer="message0" zindex="101" x="1630" y="75"]
[endif]
[if exp="sf.INS ==7"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_7.png" layer="message0" zindex="101" x="1630" y="75"]
[endif]
[if exp="sf.INS ==6"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_6.png" layer="message0" zindex="101" x="1630" y="75"]
[endif]
[if exp="sf.INS ==5"]
[free name="INS_M" layer="message0" time="100"]
[free name="pulse_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_5.png" layer="message0" zindex="101" x="1630" y="75"]
[image name="pulse_M" storage="INS/pulse_2.png" layer="message0" zindex="98" x="1630" y="74"]
[endif]
[if exp="sf.INS ==4"]
[free name="pulse_M" layer="message0" time="100"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_4.png" layer="message0" zindex="101" x="1630" y="75"]
[image name="pulse_M" storage="INS/pulse_2.png" layer="message0" zindex="98" x="1630" y="74"]
[endif]
[if exp="sf.INS ==3"]
[free name="pulse_M" layer="message0" time="100"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_3.png" layer="message0" zindex="101" x="1630" y="75"]
[image name="pulse_M" storage="INS/pulse_2.png" layer="message0" zindex="98" x="1630" y="74"]
[endif]
[if exp="sf.INS ==2"]
[free name="pulse_M" layer="message0" time="100"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_2.png" layer="message0" zindex="101" x="1630" y="75"]
[image name="pulse_M" storage="INS/pulse_1.png" layer="message0" zindex="98" x="1630" y="74"]
[endif]
[if exp="sf.INS ==1"]
[free name="pulse_M" layer="message0" time="100"]
[free name="INS_M" layer="message0" time="100"]
[image name="INS_M" storage="INS/INS_1.png" layer="message0" zindex="101" x="1630" y="75"]
[image name="pulse_M" storage="INS/pulse_1.png" layer="message0" zindex="98" x="1630" y="74"]
[endif]
[endmacro]

;Mask_lightを表示するマクロ
[macro name="Mask_light"]
[image name="Mask_light" storage="Mask_light.png" layer="1" x="0" y="0"]
[xanim name="Mask_light" keyframe="tate" count="infinite" time="3500" direction="normal" easing="linear"]
[endmacro]

[macro name="update_parameter"]
;ステータスの表示
[free name="PHI" layer="message0" time="100"]
[free name="KNO" layer="message0" time="100"]
[free name="LUC" layer="message0" time="100"]
[free name="SPI" layer="message0" time="100"]
[ptext name="PHI" layer="message0" text="&Math.floor(sf.PHI/6)" x="1840" y="380" size="80" color="#66cdabff" face="VT323"]
[ptext name="KNO" layer="message0" text="&Math.floor(sf.KNO/6)" x="1840" y="440" size="80" color="#66cdabff" face="VT323"]
[ptext name="LUC" layer="message0" text="&sf.LUC" x="1840" y="500" size="80" color="#66cdabff" face="VT323"]
[ptext name="SPI" layer="message0" text="&Math.floor(sf.SPI/6)" x="1840" y="560" size="80" color="#66cdabff" face="VT323"]
[endmacro]

;=========================================
;アニメーション設定
;=========================================
;Mask_lightを動かすアニメーション
[keyframe name="tate"]
[frame p="0%" y="-300"]
[frame p="100%" y="2000"]
[endkeyframe]

;パルスメータを動かすアニメーション
[keyframe name="yoko"]
[frame p="0%" x="0"]
[frame p="100%" x="250"]
[endkeyframe]

;=========================================
; ゲームUI設定一般
;=========================================
;メッセージウィンドウの設定
[position layer="message0" frame="UI_frame.png" left=0 top=0 width=1920 height=1200 opacity=255]
[position layer="message1" frame="Mask.png" left=0 top=0 width=1920 height=1200 opacity=255]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="980" marginl="200" marginr="110" marginb="60"]
[position layer=message1 page=fore margint="100" marginl="200" marginr="200" marginb="100"]

;INSメータの表示
[image name="INS_M" storage="INS/INS_8.png" layer="message0" zindex="101" x="1630" y="75"]
[image name="pulse_M" storage="INS/pulse_3.png" layer="message0" zindex="98" x="1630" y="74"]

;パルスメータを出現
[image name="pulse_line" storage="INS/pulse_line.png" layer="message0" zindex="99" x="1600" y="75"]
[xanim name="pulse_line" keyframe="yoko" count="infinite" time="2500" direction="normal" easing="linear"]

;ステータスの表示
[ptext name="PHI" layer="message0" text="&Math.floor(sf.PHI/6)" x="1840" y="380" size="80" color="#66cdabff" face="VT323"]
[ptext name="KNO" layer="message0" text="&Math.floor(sf.KNO/6)" x="1840" y="440" size="80" color="#66cdabff" face="VT323"]
[ptext name="LUC" layer="message0" text="&sf.LUC" x="1840" y="500" size="80" color="#66cdabff" face="VT323"]
[ptext name="SPI" layer="message0" text="&Math.floor(sf.SPI/6)" x="1840" y="560" size="80" color="#66cdabff" face="VT323"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=34 bold=false x=210 y=920]

;=========================================
; キャラ設定
;=========================================
;キャラクターを宣言
;上官
[chara_new  name="joukan" storage="chara/joukan/normal.png" jname="上官"  ]
;山本 秀一
[chara_new  name="syuuichi"  storage="chara/yamamoto/normal.png" jname="山本 秀一" ]
;怪異
[chara_new  name="orochi"  storage="Orochi.png" jname="怪異" ]
;古虫 紀一
[chara_new  name="kiichi"  storage="Orochi.png" jname="古虫 紀一" ]

;キャラクターの表情登録
;joukan
[chara_face name="joukan" face="normal" storage="chara/joukan/normal.png"]
[chara_face name="joukan" face="happy" storage="chara/joukan/happy.png"]
[chara_face name="joukan" face="dead" storage="chara/joukan/dead.png"]
[chara_face name="joukan" face="angry" storage="chara/joukan/angry.png"]
;yamamoto
[chara_face name="syuuichi" face="normal" storage="chara/yamamoto/normal.png"]
[chara_face name="syuuichi" face="happy" storage="chara/yamamoto/happy.png"]
[chara_face name="syuuichi" face="dead" storage="chara/yamamoto/dead.png"]
[chara_face name="syuuichi" face="angry" storage="chara/yamamoto/angry.png"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;---------------------------------------------------------------------------------------------------------------------

;タイトル画面へ移動
@jump storage="title.ks"

[s]


