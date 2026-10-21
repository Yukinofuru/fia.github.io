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
[loadcss file="./data/others/style.css"]

;=========================================
; 変数定義全般
;=========================================
[loadjs storage="game_state.js"]
[loadjs storage="battle_system.js"]
[loadjs storage="care_system.js"]
[loadjs storage="choice_system.js"]
[loadjs storage="reference_data.js"]
[loadjs storage="library_data.js"]
[loadjs storage="reference_system.js"]
[call storage="encounter_common.ks" target="*define"]
[iscript]
window.fiaGameState.initialize();
[endscript]

; ========================================================
; 各種イベント判定・ディスパッチャーマクロ
; ========================================================

; --- 交流イベントディスパッチャー ---
[macro name="dispatch_coop_event"]
[iscript]
(function(){
    var charaId = mp.chara_id;
    var state = f.chara_state[charaId];
    if (!state) {
        tf.nextLabel = "*generic_event1";
        tf.currentEpisodeId = "";
        return;
    }
    
    var affinity = state.affinity || 0;
    var viewed = state.viewed || {};
    
    // エピソード解放条件定義
    var defs = [
        { id: "0", threshold: 0, label: "*event0" },
        { id: "1", threshold: 10, label: "*event1" },
        { id: "2", threshold: 20, label: "*event2" },
        { id: "3", threshold: 30, label: "*event3" },
        { id: "5", threshold: 40, label: "*event5" },
        { id: "6", threshold: 50, label: "*event6" }
    ];
    
    var nextLabel = "";
    var selectedEpId = "";
    
    for (var i = 0; i < defs.length; i++) {
        var ep = defs[i];
        if (!viewed[ep.id] && affinity >= ep.threshold) {
            nextLabel = ep.label;
            selectedEpId = ep.id;
            break;
        }
    }
    
    // 日常会話フォールバック
    if (!nextLabel) {
        if (affinity < 10) {
            nextLabel = "*generic_event1";
        } else if (affinity < 30) {
            nextLabel = "*generic_event2";
        } else if (affinity < 40) {
            nextLabel = "*generic_event3";
        } else if (affinity < 50) {
            nextLabel = "*generic_event4";
        } else {
            nextLabel = "*generic_event5";
        }
    }
    
    tf.nextLabel = nextLabel;
    tf.currentEpisodeId = selectedEpId;
})();
[endscript]
[jump target="&tf.nextLabel"]
[endmacro]

; --- カウンセリングイベントディスパッチャー ---
[macro name="dispatch_counseling_event"]
[iscript]
(function(){
    var charaId = mp.chara_id;
    var state = f.chara_state[charaId];
    if (!state) {
        tf.nextLabel = "*counseling_generic1";
        tf.currentEpisodeId = "";
        return;
    }
    
    var affinity = state.affinity || 0;
    var viewed = state.viewed || {};
    
    // カウンセリングのエピソード解放条件定義 (coopと同一のルール)
    var defs = [
        { id: "c_0", threshold: 0, label: "*counseling_0" },
        { id: "c_1", threshold: 10, label: "*counseling_1" },
        { id: "c_2", threshold: 20, label: "*counseling_2" },
        { id: "c_3", threshold: 30, label: "*counseling_3" },
        { id: "c_5", threshold: 40, label: "*counseling_5" },
        { id: "c_6", threshold: 50, label: "*counseling_6" }
    ];
    
    var nextLabel = "";
    var selectedEpId = "";
    
    for (var i = 0; i < defs.length; i++) {
        var ep = defs[i];
        if (!viewed[ep.id] && affinity >= ep.threshold) {
            nextLabel = ep.label;
            selectedEpId = ep.id;
            break;
        }
    }
    
    // 日常会話フォールバック
    if (!nextLabel) {
        if (affinity < 10) {
            nextLabel = "*counseling_generic1";
        } else if (affinity < 30) {
            nextLabel = "*counseling_generic2";
        } else if (affinity < 40) {
            nextLabel = "*counseling_generic3";
        } else if (affinity < 50) {
            nextLabel = "*counseling_generic4";
        } else {
            nextLabel = "*counseling_generic5";
        }
    }
    
    tf.nextLabel = nextLabel;
    tf.currentEpisodeId = selectedEpId;
    tf.scenarioFile = "medic_" + charaId + ".ks";
})();
[endscript]
[call storage=&tf.scenarioFile target="&tf.nextLabel"]
[return]
[endmacro]

; --- 診療イベントディスパッチャー ---
[macro name="dispatch_checkup_event"]
[iscript]
(function(){
    var charaId = mp.chara_id;
    var state = f.chara_state[charaId];
    if (!state) {
        tf.nextLabel = "*checkup_generic";
        tf.currentEpisodeId = "";
        return;
    }
    
    var affinity = state.affinity || 0;
    var viewed = state.viewed || {};
    
    // 診療のエピソード定義
    var defs = [
        { id: "m_1", threshold: 20, label: "*checkup_1" },
        { id: "m_2", threshold: 30, label: "*checkup_2" },
        { id: "m_3", threshold: 40, label: "*checkup_3" }
    ];
    
    var nextLabel = "";
    var selectedEpId = "";
    
    for (var i = 0; i < defs.length; i++) {
        var ep = defs[i];
        if (!viewed[ep.id] && affinity >= ep.threshold) {
            nextLabel = ep.label;
            selectedEpId = ep.id;
            break;
        }
    }
    
    if (!nextLabel) {
        var info_level = state.info || 0;
        if (info_level >= 3) {
            nextLabel = "*checkup_info3";
        } else {
            nextLabel = "*checkup_generic";
        }
    }
    
    tf.nextLabel = nextLabel;
    tf.currentEpisodeId = selectedEpId;
    tf.scenarioFile = "medic_" + charaId + ".ks";
})();
[endscript]
[call storage=&tf.scenarioFile target="&tf.nextLabel"]
[return]
[endmacro]

; --- 尋問イベントディスパッチャー ---
[macro name="dispatch_interrogate_event"]
[iscript]
(function(){
    var charaId = mp.chara_id;
    var state = f.chara_state[charaId];
    if (!state) {
        tf.nextLabel = "*interrogate_1";
        tf.currentEpisodeId = "i_1";
        return;
    }
    
    var viewed = state.viewed || {};
    
    // 尋問は段階的に解放
    var defs = [
        { id: "i_1", label: "*interrogate_1" },
        { id: "i_2", label: "*interrogate_2" },
        { id: "i_3", label: "*interrogate_3" }
    ];
    
    var nextLabel = "";
    var selectedEpId = "";
    
    for (var i = 0; i < defs.length; i++) {
        var ep = defs[i];
        if (!viewed[ep.id]) {
            nextLabel = ep.label;
            selectedEpId = ep.id;
            break;
        }
    }
    
    if (!nextLabel) {
        var interrogate_level = state.info || 0;
        if (interrogate_level >= 3) {
            nextLabel = "*interrogate_info3";
        } else {
            nextLabel = "*interrogate_generic";
        }
    }
    
    tf.nextLabel = nextLabel;
    tf.currentEpisodeId = selectedEpId;
    tf.scenarioFile = "medic_" + charaId + ".ks";
})();
[endscript]
[call storage=&tf.scenarioFile target="&tf.nextLabel"]
[return]
[endmacro]

; --- 診療エピソード完了マクロ ---
[macro name="complete_checkup_episode"]
[iscript]
(function(){
    var charaId = mp.chara_id;
    var epId = mp.episode_id;
    var state = f.chara_state[charaId];
    if (state && epId) {
        state.viewed[epId] = true;
        if (epId === "m_1") state.info = 1;
        if (epId === "m_2") state.info = 2;
        if (epId === "m_3") state.info = 3;
    }
})();
[endscript]
[endmacro]

; --- 尋問エピソード完了マクロ ---
[macro name="complete_interrogate_episode"]
[iscript]
(function(){
    var charaId = mp.chara_id;
    var epId = mp.episode_id;
    var state = f.chara_state[charaId];
    if (state && epId) {
        state.viewed[epId] = true;
        if (epId === "i_1") state.info = 1;
        if (epId === "i_2") state.info = 2;
        if (epId === "i_3") state.info = 3;
    }
})();
[endscript]
[endmacro]


;=========================================
; マクロ設定
;=========================================

; ==============================================
; [macro name="uiSetPlace"]
; 現在地名を画面上部に表示する
; ==============================================
[macro name="uiSetPlace"]
    [free name="place" layer="message1" time="100"]
    [ptext layer="message1" text="&f.currentPlaceName" x="200" y="8" size="34" color="#66cdaa" name="place"]
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
    [button graphic="transparent.png" enterimg="button_lib.png" role="sleepgame" storage="lib.ks" name="lib_btn" x="1650" y="770" width="250" height="50"]
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
; INSメーター画像を現在のf.insの値で更新する
; ==============================================
[macro name="uiUpdateIns"]
    [if exp="f.ins == 8"]
        [free name="ins_m" layer="message1" time="100"]
        [free name="pulse_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_8.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_3.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 7"]
        [free name="ins_m" layer="message1" time="100"]
        [free name="pulse_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_7.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_3.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 6"]
        [free name="ins_m" layer="message1" time="100"]
        [free name="pulse_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_6.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_3.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 5"]
        [free name="ins_m" layer="message1" time="100"]
        [free name="pulse_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_5.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_2.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 4"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_4.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_2.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 3"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_3.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_2.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 2"]
        [free name="pulse_m" layer="message1" time="100"]
        [free name="ins_m" layer="message1" time="100"]
        [image name="ins_m" storage="ins/ins_2.png" layer="message1" zindex="101" x="1630" y="75"]
        [image name="pulse_m" storage="ins/pulse_1.png" layer="message1" zindex="98" x="1630" y="74"]
    [endif]
    [if exp="f.ins == 1"]
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
    [ptext name="PHI" layer="message1" text="&f.phi" x="1840" y="380" size="80" color="#66cdabff" face="VT323"]
    [ptext name="KNO" layer="message1" text="&f.kno" x="1840" y="440" size="80" color="#66cdabff" face="VT323"]
    [ptext name="LUC" layer="message1" text="&f.luc" x="1840" y="500" size="80" color="#66cdabff" face="VT323"]
    [ptext name="SPI" layer="message1" text="&f.spi" x="1840" y="560" size="80" color="#66cdabff" face="VT323"]
[endmacro]

; ==============================================
; [macro name="ui_showChoices"]
; パラメータ依存の選択肢を描画する
; @param text1, target1, disable1
; @param text2, target2, disable2
; @param text3, target3, disable3
; @param secret_text1, secret_target1 : 裏コマンドで表示する選択肢
; @param secretMode : appendなら通常3択に裏1択を追加、既定は置換
; @param fontSize : 文字サイズ（既定38）
; @param restore : 保存済みの分岐情報からの再描画専用
; ==============================================
[macro name="ui_showChoices"]
[if exp="mp.layout === 'encounter'"]
    ; 探索用：5択以上は3択＋次の選択肢に分け、各ページを最大4択にする。
    [cm]
    [image name="choice-mask" storage="mask.png" layer="0" x="180" y="80" width="1440" height="900" time="0" wait="false"]
    [ptext layer="0" name="choice-if" text="if" x="250" y="455" size="50" color="#66cdaa"]
    @layopt layer=0 visible=true
    [iscript]
    window.fiaChoices.prepareEncounter(mp);
    [endscript]
    [if exp="tf.encounterChoiceView[0].text"]
        [glink name="&tf.encounterChoiceView[0].className" text="&tf.encounterChoiceView[0].text" storage="&tf.orig_storage" x="550" y="&tf.encounterChoiceView[0].y" width="1000" height="70" size="&tf.choiceFontSize" target="&tf.encounterChoiceView[0].target" face="Tegomin"]
    [endif]
    [if exp="tf.encounterChoiceView[1].text"]
        [glink name="&tf.encounterChoiceView[1].className" text="&tf.encounterChoiceView[1].text" storage="&tf.orig_storage" x="550" y="&tf.encounterChoiceView[1].y" width="1000" height="70" size="&tf.choiceFontSize" target="&tf.encounterChoiceView[1].target" face="Tegomin"]
    [endif]
    [if exp="tf.encounterChoiceView[2].text"]
        [glink name="&tf.encounterChoiceView[2].className" text="&tf.encounterChoiceView[2].text" storage="&tf.orig_storage" x="550" y="&tf.encounterChoiceView[2].y" width="1000" height="70" size="&tf.choiceFontSize" target="&tf.encounterChoiceView[2].target" face="Tegomin"]
    [endif]
    [if exp="tf.encounterChoiceView[3].text"]
        [glink name="&tf.encounterChoiceView[3].className" text="&tf.encounterChoiceView[3].text" storage="&tf.orig_storage" x="550" y="&tf.encounterChoiceView[3].y" width="1000" height="70" size="&tf.choiceFontSize" target="&tf.encounterChoiceView[3].target" face="Tegomin"]
    [endif]
    [iscript]
    window.fiaChoices.layoutEncounter();
    [endscript]
[else]
    [cm]
    ; --- 左側の「if」テキスト ---
    [image name="choice-mask" storage="mask.png" layer="0" x="180" y="80" width="1440" height="900" time="100" wait="false"]
    [ptext layer="0" name="choice-if" text="if" x="250" y="455" size="50" color="#66cdaa"]
    @layopt layer=0 visible=true

    ; --- ワイヤーの描画 ---
    [iscript]
    window.fiaChoices.prepare(mp, 3);

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
    
    const layer = TYRANO.kag.layer.getLayer("0", "fore");
    layer.append($("<div class='retro-window'><div class='retro-close-box'></div></div>"));
    layer.append($("<div class='choice-wires'>" + html + "</div>"));
    [endscript]

    ; --- 隠しボタン (×ボタンのオーバーレイ) ---
    [if exp="tf.hasSecretChoice"]
        [button name="retro-close-btn" graphic="transparent.png" x="1570" y="75" width="40" height="40" storage="first.ks" target="*secret_password_input"]
    [endif]

    ; --- ボタン配置 ---
    [if exp="mp.text1"]
        [if exp="mp.disable1 == 'true' || mp.disable1 == true"]
            [glink name="choice-btn,btn-top-anim,choice-disabled" text="%text1" storage="&tf.orig_storage" x="550" y="263" width="920" height="70" size="&tf.choiceFontSize" target="%target1" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn-top-anim" text="%text1" storage="&tf.orig_storage" x="550" y="263" width="920" height="70" size="&tf.choiceFontSize" target="%target1" face="Tegomin"]
        [endif]
    [endif]

    [if exp="mp.text2"]
        [if exp="mp.disable2 == 'true' || mp.disable2 == true"]
            [glink name="choice-btn,btn-middle-anim,choice-disabled" text="%text2" storage="&tf.orig_storage" x="550" y="423" width="920" height="70" size="&tf.choiceFontSize" target="%target2" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn-middle-anim" text="%text2" storage="&tf.orig_storage" x="550" y="423" width="920" height="70" size="&tf.choiceFontSize" target="%target2" face="Tegomin"]
        [endif]
    [endif]

    [if exp="mp.text3"]
        [if exp="mp.disable3 == 'true' || mp.disable3 == true"]
            [glink name="choice-btn,btn-bottom-anim,choice-disabled" text="%text3" storage="&tf.orig_storage" x="550" y="583" width="920" height="70" size="&tf.choiceFontSize" target="%target3" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn-bottom-anim" text="%text3" storage="&tf.orig_storage" x="550" y="583" width="920" height="70" size="&tf.choiceFontSize" target="%target3" face="Tegomin"]
        [endif]
    [endif]
    [iscript]
    window.fiaChoices.decorateSecretChoices();
    [endscript]
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
    tf.is_secret_branch = false;
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
[ptext name="PHI" layer="message1" text="&Math.floor(f.phi/6)" x="1840" y="380" size="80" color="#66cdabff" face="VT323"]
[ptext name="KNO" layer="message1" text="&Math.floor(f.kno/6)" x="1840" y="440" size="80" color="#66cdabff" face="VT323"]
[ptext name="LUC" layer="message1" text="&f.luc" x="1840" y="500" size="80" color="#66cdabff" face="VT323"]
[ptext name="SPI" layer="message1" text="&Math.floor(f.spi/6)" x="1840" y="560" size="80" color="#66cdabff" face="VT323"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message1" color="white" size=34 bold=false x=210 y=920]

;=========================================
; キャラ設定
;=========================================
; キャラクター定義ファイルを読み込む
[call storage="chara_define.ks"]
;---------------------------------------------------------------------------------------------------------------------

; ==============================================
; 4択の特殊分岐
; ==============================================
; [macro name="ui_showChoices4"]
; パラメータ依存で選択肢を描画する（4つ対応）
; @param text1..4, target1..4, disable1..4, fontSize, restore
; ==============================================
[macro name="ui_showChoices4"]
    [cm]
    ; --- 左側の「if」テキスト ---
    [image name="choice-mask" storage="mask.png" layer="0" x="180" y="80" width="1440" height="900" time="100" wait="false"]
    [ptext layer="0" name="choice-if" text="if" x="250" y="455" size="50" color="#66cdaa"]
    @layopt layer=0 visible=true

    ; --- ワイヤーの描画 ---
    [iscript]
    window.fiaChoices.prepare(mp, 4);

    let html = '';
    
    if (mp.text1) {
        const c1 = (mp.disable1 === 'true' || mp.disable1 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire4-seg-1-1 ' + c1 + '"></div>';
        html += '<div class="html-wire wire4-seg-1-2 ' + c1 + '"></div>';
        html += '<div class="html-wire wire4-seg-1-3 ' + c1 + '"></div>';
    }
    if (mp.text2) {
        const c2 = (mp.disable2 === 'true' || mp.disable2 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire4-seg-2-1 ' + c2 + '"></div>';
        html += '<div class="html-wire wire4-seg-2-2 ' + c2 + '"></div>';
        html += '<div class="html-wire wire4-seg-2-3 ' + c2 + '"></div>';
    }
    if (mp.text3) {
        const c3 = (mp.disable3 === 'true' || mp.disable3 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire4-seg-3-1 ' + c3 + '"></div>';
        html += '<div class="html-wire wire4-seg-3-2 ' + c3 + '"></div>';
        html += '<div class="html-wire wire4-seg-3-3 ' + c3 + '"></div>';
    }
    if (mp.text4) {
        const c4 = (mp.disable4 === 'true' || mp.disable4 === true) ? 'wire-disabled' : '';
        html += '<div class="html-wire wire4-seg-4-1 ' + c4 + '"></div>';
        html += '<div class="html-wire wire4-seg-4-2 ' + c4 + '"></div>';
        html += '<div class="html-wire wire4-seg-4-3 ' + c4 + '"></div>';
    }
    
    const layer = TYRANO.kag.layer.getLayer("0", "fore");
    layer.append($("<div class='retro-window'><div class='retro-close-box'></div></div>"));
    layer.append($("<div class='choice-wires'>" + html + "</div>"));
    [endscript]

    ; --- 隠しボタン (×ボタンのオーバーレイ) ---
    [if exp="tf.hasSecretChoice"]
        [button name="retro-close-btn" graphic="transparent.png" x="1570" y="75" width="40" height="40" storage="first.ks" target="*secret_password_input4"]
    [endif]

    ; --- ボタン配置 ---
    [if exp="mp.text1"]
        [if exp="mp.disable1 == 'true' || mp.disable1 == true"]
            [glink name="choice-btn,btn4-anim-1,choice-disabled" text="%text1" storage="&tf.orig_storage" x="550" y="200" width="920" height="70" size="&tf.choiceFontSize" target="%target1" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn4-anim-1" text="%text1" storage="&tf.orig_storage" x="550" y="200" width="920" height="70" size="&tf.choiceFontSize" target="%target1" face="Tegomin"]
        [endif]
    [endif]

    [if exp="mp.text2"]
        [if exp="mp.disable2 == 'true' || mp.disable2 == true"]
            [glink name="choice-btn,btn4-anim-2,choice-disabled" text="%text2" storage="&tf.orig_storage" x="550" y="340" width="920" height="70" size="&tf.choiceFontSize" target="%target2" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn4-anim-2" text="%text2" storage="&tf.orig_storage" x="550" y="340" width="920" height="70" size="&tf.choiceFontSize" target="%target2" face="Tegomin"]
        [endif]
    [endif]

    [if exp="mp.text3"]
        [if exp="mp.disable3 == 'true' || mp.disable3 == true"]
            [glink name="choice-btn,btn4-anim-3,choice-disabled" text="%text3" storage="&tf.orig_storage" x="550" y="480" width="920" height="70" size="&tf.choiceFontSize" target="%target3" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn4-anim-3" text="%text3" storage="&tf.orig_storage" x="550" y="480" width="920" height="70" size="&tf.choiceFontSize" target="%target3" face="Tegomin"]
        [endif]
    [endif]

    [if exp="mp.text4"]
        [if exp="mp.disable4 == 'true' || mp.disable4 == true"]
            [glink name="choice-btn,btn4-anim-4,choice-disabled" text="%text4" storage="&tf.orig_storage" x="550" y="620" width="920" height="70" size="&tf.choiceFontSize" target="%target4" face="Tegomin"]
        [else]
            [glink name="choice-btn,btn4-anim-4" text="%text4" storage="&tf.orig_storage" x="550" y="620" width="920" height="70" size="&tf.choiceFontSize" target="%target4" face="Tegomin"]
        [endif]
    [endif]
    [iscript]
    window.fiaChoices.decorateSecretChoices();
    [endscript]
[endmacro]

; 個別の情報獲得・遭遇の生還処理から明示的に解放する。
; @param id : glossary.jsonのID
[macro name="tips_unlockTerm"]
    [iscript]
    window.fiaReference.unlockTerm(mp.id);
    [endscript]
[endmacro]
; @param code : handbook.jsonの怪異コード
[macro name="tips_unlockMonster"]
    [iscript]
    window.fiaReference.unlockMonster(mp.code);
    [endscript]
[endmacro]

;タイトル画面へ移動
@jump storage="title.ks"

[s]



; パスワード画面は保存済みの分岐情報から復帰する。
*secret_password_input4
[jump target="*secret_password_input"]

*secret_password_input
[cm]
[iscript]
$('.password-tab-window').remove();
const passwordHtml = "<div class='password-tab-window'><div class='pw-label'>ENTER OVERRIDE KEY:</div><div class='password-close-box'></div><div class='pw-commit-btn'>COMMIT</div></div>";
// 入力欄・決定・閉じるボタンと同じ前面レイヤーに揃える。
TYRANO.kag.layer.getFreeLayer().append($(passwordHtml));
[endscript]
[button name="pw_close" graphic="transparent.png" x="1230" y="270" width="30" height="30" target="*password_cancel"]
[button name="pw_commit" graphic="transparent.png" x="1060" y="440" width="150" height="50" target="*password_check"]
[edit name="f.secret_password" left="710" top="420" width="280" height="50" size="28"]
[iscript]
window.fiaChoices.restorePasswordInput();
[endscript]
[s]

*password_check4
[jump target="*password_check"]
*password_check
[iscript]
// 標準commitの文字列evalを避け、引用符を含む入力もそのまま扱う。
f.secret_password = $(".text_box[name='f.secret_password']").val() || '';
[endscript]
[if exp="f.secret_password == '0000A2Z6'"]
    [eval exp="f.choiceContext.isSecret = true"]
    [jump target="*password_cancel"]
[else]
    [cm]
    [iscript]
    $(".password-tab-window,.text_box[name='f.secret_password']").remove();
    [endscript]
    [eval exp="f.secret_password = ''"]
    [jump target="*secret_password_input"]
[endif]

*password_cancel4
[jump target="*password_cancel"]
*password_cancel
[cm]
[iscript]
$(".password-tab-window,.text_box[name='f.secret_password']").remove();
[endscript]
[eval exp="f.secret_password = ''"]
[jump target="*renderSavedChoices"]

*secret_second_branch
*secret_second_branch4
[eval exp="f.choiceContext.isSecret = true"]
*renderSavedChoices
[ui_hideChoices]
[iscript]
tf.choiceView = window.fiaChoices.visibleChoices();
[endscript]
[if exp="tf.choiceView[3].text != ''"]
    [ui_showChoices4 restore="true" text1="&tf.choiceView[0].text" target1="&tf.choiceView[0].target" disable1="&tf.choiceView[0].disable" text2="&tf.choiceView[1].text" target2="&tf.choiceView[1].target" disable2="&tf.choiceView[1].disable" text3="&tf.choiceView[2].text" target3="&tf.choiceView[2].target" disable3="&tf.choiceView[2].disable" text4="&tf.choiceView[3].text" target4="&tf.choiceView[3].target" disable4="&tf.choiceView[3].disable"]
[else]
    [ui_showChoices restore="true" text1="&tf.choiceView[0].text" target1="&tf.choiceView[0].target" disable1="&tf.choiceView[0].disable" text2="&tf.choiceView[1].text" target2="&tf.choiceView[1].target" disable2="&tf.choiceView[1].disable" text3="&tf.choiceView[2].text" target3="&tf.choiceView[2].target" disable3="&tf.choiceView[2].disable"]
[endif]
[if exp="f.choiceContext.prompt"]
    [current layer="message1"]
    [chara_ptext name="&f.choiceContext.speaker"]
    [emb exp="f.choiceContext.prompt"][r]
[endif]
[s]
