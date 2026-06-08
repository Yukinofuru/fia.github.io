; ========================================================
; 初期設定
; ========================================================

;一番最初に呼び出されるファイル
[title name="FallingIntoAsh"]
[stop_keyconfig]

[loadcss file="./data/others/css/line.css"]
[loadcss file="./data/others/css/crt_overlay.css"]

; CRTオーバーレイ要素の追加
[iscript]
var base = $(".tyrano_base");
if (base.find(".crt-noise").length == 0) {
    base.append('<div class="crt-noise"></div>');
}
if (base.find(".crt-overlay").length == 0) {
    base.append('<div class="crt-overlay"></div>');
}
[endscript]

;ティラノスクリプトが標準で用意している便利なライブラリ群
[loading_log all="default"]
[loadjs storage="config_menu.js"]
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理
[plugin name=uiparts_set]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]
[chara_config talk_focus="brightness"]

[loadcss file="./data/others/css/animbtn.css"]
[loadcss file="./data/others/css/ui_choice_button.css"]

;=========================================
; 変数定義全般
;=========================================
[iscript]
// ステータス変数
sf.ins = 8;
sf.phi = 0;
sf.kno = 0;
sf.luc = 0;
sf.spi = 0;
sf.dayCount = 0;
sf.skillPoints = 5;
sf.survivorCount = 56;
sf.irmCount = 4;

// メニュー・進行用
sf.currentPlaceName = "";
sf.medicChars = [];

// 一時変数初期化
tf.clickCount = 0;
tf.randNum = 0;
tf.currentLevel = 0;

// ゲーム変数
f.ins = sf.ins;
f.phi = sf.phi;
f.roomNum = 0;
f.cleanRoomCount = 0;

// =========================================
// キャラクター親密度・生存管理 (sf.chars)
// =========================================
// intimacy : 親密度（プレイヤーの行動で増減）
// alive    : 生存フラグ (false になったら死亡扱い)
sf.chars = [
    { id: "setsu",    name: "初明 世紬",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "airan",    name: "青葉 藍爛",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "ito",      name: "曙 一十",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "ayase",    name: "綾瀬 護氏",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "akehiru",  name: "明昼 優知",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "tota",     name: "富山 東太",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "momona",   name: "百七",   intimacy: 0, alive: true, info: 0, coopCount: 0 },
    { id: "syuuichi", name: "山本 秀一",   intimacy: 0, alive: false, info: 0, coopCount: 0 }
];
[endscript]

;=========================================
; マクロ設定
;=========================================

; ==============================================
; [macro name="uiSetPlace"]
; 現在地名を画面上部に表示する
; ==============================================
[macro name="uiSetPlace"]
    [free name="place" layer="message1" time="100"]
    [ptext layer="message1" text="&sf.currentPlaceName" x="200" y="8" size="34" color="#66cdaa" name="place"]
[endmacro]

; ==============================================
; [macro name="sysGetRand"]
; 乱数を生成してtf.randNumに格納する
; @param mp.max : 最大値（デフォルト: 100）
; @param mp.min : 最小値（デフォルト: 1）
; @param mp.var : 結果を代入する変数名（省略可）
; ==============================================
[macro name="sysGetRand"]
    [iscript]
    var max = mp.max || '100'
    var min = mp.min || '1'
    max = Number(max)
    min = Number(min)
    tf.randNum = min + Math.floor(Math.random() * (max - min + 1))
    if (mp['var']) eval(mp['var'] + ' = ' + tf.randNum)
    [endscript]
[endmacro]


; ==============================================
; [macro name="uiSetMenu"]
; 右下のメニューボタン群を設置する
; ==============================================
[macro name="uiSetMenu"]
    ; 透明なボタンの設置とターゲット、クラス名の設定
    [button graphic="transparent.png" enterimg="button_menu.png" role=menu name="menu_btn" x="1650" y="650" width="250" height="50"]
    [button graphic="transparent.png" enterimg="button_log.png" role=backlog name="log_btn" x="1650" y="710" width="250" height="50"]
    [button graphic="transparent.png" enterimg="button_lib.png" role="sleepgame" storage="tips.ks" name="lib_btn" x="1650" y="770" width="250" height="50"]
[endmacro]

; ==============================================
; [macro name="uiSetChoose"]
; 選択肢ウィンドウ（Maskオーバーレイ）を表示する
; ==============================================
[macro name="uiSetChoose"]
    [image storage="mask_day.png" layer="0" x="180" y="85" width="1440" height="900" time="100" wait="false"]
    ;mask_lightの表示
    [image name="mask_light" storage="mask_light.png" layer="0" x="0" y="0" time="100"]
    [xanim name="mask_light" keyframe="tate" count="infinite" time="3500" direction="normal" easing="linear"]
    [wait time="100"]
    @layopt layer=0 visible=true
[endmacro]

; ==============================================
; [macro name="uiDestroy"]
; 全レイヤーの画像・テキストをクリアする
; ==============================================
[macro name="uiDestroy"]
    [cm]
    [freeimage layer="0"]
    [freeimage layer="1"]
    [freeimage layer="2"]
    [freeimage layer="base"]
    [clearfix]
    [iscript]
    $(".choice-wires").remove();
    [endscript]
[endmacro]

; ==============================================
; [macro name="uiUpdateIns"]
; INSメーター画像を現在のsf.insの値で更新する
; ==============================================
[macro name="uiUpdateIns"]
    [if exp="sf.ins == 8"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_8.png" layer="message1" zindex="101" x="1630" y="75"]
    [endif]
    [if exp="sf.ins == 7"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_7.png" layer="message1" zindex="101" x="1630" y="75"]
    [endif]
    [if exp="sf.ins == 6"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_6.png" layer="message1" zindex="101" x="1630" y="75"]
    [endif]
    [if exp="sf.ins == 5"]
        [free name="ins_m" layer="message1" time="100"]
        [free name="pulse_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_5.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_2.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="sf.ins == 4"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_4.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_2.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="sf.ins == 3"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_3.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_2.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="sf.ins == 2"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_2.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_1.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="sf.ins == 1"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_1.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_1.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
[endmacro]

; ==============================================
; [macro name="fxMaskLight"]
; 走査線エフェクト（Mask_light）をレイヤー1に表示する
; ==============================================
[macro name="fxMaskLight"]
    [image name="mask_light" storage="mask_light.png" layer="1" x="0" y="0"]
    [xanim name="mask_light" keyframe="tate" count="infinite" time="3500" direction="normal" easing="linear"]
[endmacro]

; ==============================================
; [macro name="uiUpdateParam"]
; ステータスパラメータ（PHI/KNO/LUC/SPI）を画面に表示する
; ==============================================
[macro name="uiUpdateParam"]
    [free name="PHI" layer="message1" time="100"]
    [free name="KNO" layer="message1" time="100"]
    [free name="LUC" layer="message1" time="100"]
    [free name="SPI" layer="message1" time="100"]
    [ptext name="PHI" layer="message1" text="&sf.phi" x="1840" y="380" size="80" color="#66cdabff" face="VT323"]
    [ptext name="KNO" layer="message1" text="&sf.kno" x="1840" y="440" size="80" color="#66cdabff" face="VT323"]
    [ptext name="LUC" layer="message1" text="&sf.luc" x="1840" y="500" size="80" color="#66cdabff" face="VT323"]
    [ptext name="SPI" layer="message1" text="&sf.spi" x="1840" y="560" size="80" color="#66cdabff" face="VT323"]
[endmacro]

; ==============================================
; [macro name="ui_showChoices"]
; パラメータ依存の選択肢を描画する
; @param text1, target1, disable1
; @param text2, target2, disable2
; @param text3, target3, disable3
; ==============================================
[macro name="ui_showChoices"]
    [cm]
    ; --- 左側の「if」テキスト ---
    [image name="choice-mask" storage="mask.png" layer="0" x="180" y="80" width="1440" height="900" time="100" wait="false"]
    [ptext layer="0" name="choice-if" text="if" x="250" y="455" size="50" color="#66cdaa"]
    @layopt layer=0 visible=true

    ; --- ワイヤーの描画 ---
    [iscript]
    let html = '';
    
    if (mp.text1) {
        const c1 = (mp.disable1 === 'true' || mp.disable1 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire-seg-top1 ' + c1 + '"></div>';
        html += '<div class="html-wire wire-seg-top2 ' + c1 + '"></div>';
        html += '<div class="html-wire wire-seg-top3 ' + c1 + '"></div>';
    }
    if (mp.text2) {
        const c2 = (mp.disable2 === 'true' || mp.disable2 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire-seg-mid ' + c2 + '"></div>';
    }
    if (mp.text3) {
        const c3 = (mp.disable3 === 'true' || mp.disable3 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire-seg-bot1 ' + c3 + '"></div>';
        html += '<div class="html-wire wire-seg-bot2 ' + c3 + '"></div>';
        html += '<div class="html-wire wire-seg-bot3 ' + c3 + '"></div>';
    }
    
    const layer = tyrano.plugin.kag.layer.getLayer("0", "fore");
    layer.append($("<div class='retro-window'><div class='retro-close-box'></div></div>"));
    layer.append($("<div class='choice-wires'>" + html + "</div>"));
    [endscript]

    ; --- ボタン配置 ---
    [if exp="mp.text1"]
        [if exp="mp.disable1 == 'true' || mp.disable1 == true"]
            [glink name="choice-btn,btn-top-anim,choice-disabled" text="%text1" x="550" y="263" width="720" height="70" size="38" target="%target1"]
        [else]
            [glink name="choice-btn,btn-top-anim" text="%text1" x="550" y="263" width="720" height="70" size="38" target="%target1"]
        [endif]
    [endif]

    [if exp="mp.text2"]
        [if exp="mp.disable2 == 'true' || mp.disable2 == true"]
            [glink name="choice-btn,btn-middle-anim,choice-disabled" text="%text2" x="550" y="423" width="720" height="70" size="38" target="%target2"]
        [else]
            [glink name="choice-btn,btn-middle-anim" text="%text2" x="550" y="423" width="720" height="70" size="38" target="%target2"]
        [endif]
    [endif]

    [if exp="mp.text3"]
        [if exp="mp.disable3 == 'true' || mp.disable3 == true"]
            [glink name="choice-btn,btn-bottom-anim,choice-disabled" text="%text3" x="550" y="583" width="720" height="70" size="38" target="%target3"]
        [else]
            [glink name="choice-btn,btn-bottom-anim" text="%text3" x="550" y="583" width="720" height="70" size="38" target="%target3"]
        [endif]
    [endif]
[endmacro]

; ==============================================
; [macro name="ui_hideChoices"]
; 選択後のクリーンアップ処理
; ==============================================
[macro name="ui_hideChoices"]
    [cm]
    [free layer="0" name="choice-if"]
    [free layer="0" name="choice-mask"]
    [iscript]
    $('.choice-wires').remove();
    $('.retro-window').remove();
    [endscript]
[endmacro]


;=========================================
; アニメーション設定
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

;日付表示用
[keyframe name="flip_out"]
[frame p="0%" rotateX="0deg" opacity="1"]
[frame p="100%" rotateX="90deg" opacity="0"]
[endkeyframe]

;日付表示用
[keyframe name="flip_in"]
[frame p="0%" rotateX="-90deg" opacity="0"]
[frame p="100%" rotateX="0deg" opacity="1"]
[endkeyframe]

;=========================================
; ゲームUI設定一般
;=========================================
;メッセージウィンドウの設定
[position layer="message1" frame="ui_frame.png" left=0 top=0 width=1920 height=1200 opacity=255]
[position layer="message0" frame="mask.png" left=180 top=80 width=1440 height=900 opacity=255]

; レイヤーの重なり順を調整（message1をmessage0の後ろにする）
[layopt layer="message0" zindex="1"]
[layopt layer="message1" zindex="2"]

;文字が表示される領域を調整
[position layer=message1 page=fore margint="980" marginl="200" marginr="110" marginb="60"]
[position layer=message0 page=fore margint="100" marginl="200" marginr="200" marginb="100"]

;INSメータの表示 (初期8想定)
[image name="ins_m" storage="ins/ins_8.png" layer="message1" zindex="101" x="1630" y="75"]
[image name="pulse_m" storage="ins/pulse_3.png" layer="message1" zindex="98" x="1630" y="74"]

;パルスメータを出現
[image name="pulse_line" storage="ins/pulse_line.png" layer="message1" zindex="99" x="1600" y="75"]
[xanim name="pulse_line" keyframe="yoko" count="infinite" time="2500" direction="normal" easing="linear"]

;ステータスの表示 (初期0想定)
[ptext name="PHI" layer="message1" text="&Math.floor(sf.phi/6)" x="1840" y="380" size="80" color="#66cdabff" face="VT323"]
[ptext name="KNO" layer="message1" text="&Math.floor(sf.kno/6)" x="1840" y="440" size="80" color="#66cdabff" face="VT323"]
[ptext name="LUC" layer="message1" text="&sf.luc" x="1840" y="500" size="80" color="#66cdabff" face="VT323"]
[ptext name="SPI" layer="message1" text="&Math.floor(sf.spi/6)" x="1840" y="560" size="80" color="#66cdabff" face="VT323"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message1" color="white" size=34 bold=false x=210 y=920]

;=========================================
; キャラ設定
;=========================================
; キャラクター定義ファイルを読み込む
[call storage="chara_define.ks"]
;---------------------------------------------------------------------------------------------------------------------

;タイトル画面へ移動
@jump storage="title.ks"

[s]
