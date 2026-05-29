; ========================================================
; 診療パート
; ========================================================

*start_medic
[fadeoutbgm time=500]
[playbgm storage="medic.m4a"]
[cm]
[uiDestroy]
@layopt layer=message1 visible=true
@layopt layer=message0 visible=false

; CSS読み込み (共通)
[loadcss lev="1" file="./data/others/css/medical_monitor.css"]
[loadcss lev="1" file="./data/others/css/crt_overlay.css"]

; キャラクター設定データ読み込み
[loadjs storage="../others/medic_data.js"]

; 背景表示
[bg2 storage="bg_room/room_e.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[eval exp="sf.currentPlaceName = '診療室'"]
[uiSetPlace]

; 初期化ブロック
[iscript]
// medic_data.js から静的データを取得
var staticData = window.MedicData || [];

// セーブデータ(sf.medicChars)が未定義、あるいはデータ形式が古い場合は初期化
if (typeof sf.medicChars === 'undefined' || !sf.medicChars) {
    sf.medicChars = [];
}

// 既存データとstaticデータを同期
staticData.forEach(function(s){
    var exists = sf.medicChars.find(function(d){ return d.id === s.id; });
    var char_global = sf.chars.find(function(c){ return c.id === s.id; });
    var global_intimacy = char_global ? char_global.intimacy : 0;
    var global_alive = char_global ? char_global.alive : true;
    var global_info = char_global ? (char_global.info || 0) : 0;

    if(!exists){
        sf.medicChars.push({
            id: s.id,
            jname: s.jname,
            erosion: 10,
            trust: global_intimacy,
            status: global_alive ? '' : 'dead',
            info: global_info
        });
    } else {
        exists.trust = global_intimacy;
        if(!global_alive) exists.status = 'dead';
        exists.info = global_info;
    }
});

tf.targetId = "";
tf.targetChar = null;
[endscript]
[jump target="*start"]
[s]

*start
[cm]
[uiDestroy]
@layopt layer=message1 visible=true
@layopt layer=message0 visible=false

; HTMLコンテナ表示 (患者リストと詳細)
[html]
<div class="medical-container" id="patient-select-ui">
    <div class="medical-screen">
        
        <!-- 左側：カルテ画面 (患者詳細表示) -->
        <div class="chart-area">
            <div class="chart-header" style="font-size: 24px; border-bottom: 2px solid var(--text-primary); padding-bottom: 10px; margin-bottom: 20px;">
                MEDICAL RECORD : <span id="ui-patient-name">SELECT PATIENT</span>
            </div>
            
            <!-- スクロール可能な詳細テキストエリア -->
            <div class="log-area" id="patient-detail" style="flex-grow: 1; padding: 20px; font-size: 20px; line-height: 1.6; background: rgba(0, 0, 0, 0.5); overflow-y: auto;">
                <div style="padding-top: 150px; text-align: center; color: rgba(102, 205, 171, 0.5);">
                    SELECT PATIENT FROM REGISTRY
                </div>
            </div>
        </div>

        <!-- 右側：操作パネル (患者リスト & 呼出ボタン) -->
        <div class="panel-area">
            <div class="panel-title" style="font-size: 24px; text-align: center; border-bottom: 1px solid var(--border-color); padding-bottom: 10px; margin-bottom: 20px;">PATIENT REGISTRY</div>
            
            <!-- スクロール可能な患者リスト -->
            <div class="part-select" id="patient-list" style="overflow-y: auto; flex-grow: 1; max-height: 480px; gap: 8px; margin-bottom: 20px;">
                <!-- JSで動的生成 -->
            </div>

            <!-- 下部ボタン群 -->
            <div style="display: flex; flex-direction: column; gap: 10px; margin-top: auto;">
                <button class="execute-btn" id="btn-call" disabled style="width: 100%;">CALL PATIENT</button>
                <button class="execute-btn" id="btn-back" style="width: 100%; border-color: #aaa; color: #aaa;">RETURN</button>
            </div>
        </div>
        
    </div>
</div>
[endhtml]

; UIロジック
[iscript]
(function(){
    var staticData = window.MedicData || [];
    var dynamicData = sf.medicChars;
    var listContainer = $("#patient-list");
    var detailContainer = $("#patient-detail");
    var btnCall = $("#btn-call");
    var selectedId = null;

    staticData.forEach(function(s, idx){
        // 百七 (momona) の加入制限チェック (sf.dayCount >= 10 でないと選択肢に出ない)
        if (s.id === 'momona') {
            var dayCount = sf.dayCount || 0;
            if (dayCount < 10) {
                return; // 完全にスキップして選択肢から非表示にする
            }
        }

        var d = dynamicData.find(function(dd){ return dd.id === s.id; });
        if(!d) return; 

        var item = $('<button class="med-btn part-btn" style="width: 100%; text-align: left; margin-bottom: 4px;"></button>');
        item.text(s.name);
        
        // Check for dead status
        if(d.status === 'dead') {
            return;
        }

        item.on('click', function(){
            $(".part-btn").removeClass("selected");
            $(this).addClass("selected");
            selectedId = s.id;
            
            $("#ui-patient-name").text(s.name);
            
            var contentHtml = 
                '<div class="desc-scroll-area">' +
                    '<h2 style="border-bottom: 2px solid #66cdaa; margin-bottom: 20px;">' + s.name + '</h2>' +
                    '<div style="margin-bottom: 20px;">' +
                        '<div style="font-size: 24px;">' +
                        '【主人公の印象】<br>' + 
                        '<span style="font-size: 18px; color: #aaffcc;">' +
                        (function(){
                            var impText = "不明";
                            if(s.impression_list){
                                s.impression_list.forEach(function(imp){
                                    if((d.info || 0) >= imp.threshold) impText = imp.text;
                                });
                            }
                            return impText;
                        })() +
                        '</span></div>' +
                    '</div>' +
                    '<div style="margin-bottom: 20px; padding: 10px; border: 1px solid rgba(102, 205, 171, 0.3); background: rgba(0, 20, 0, 0.3);">' + 
                        (s.profile || 'No Profile Data') + 
                    '</div>';

            // 基本情報の表示 (desc_list)
            if(s.desc_list){
                var descHtml = '<h3 style="border-bottom: 1px dashed #66cdaa; margin: 20px 0 10px 0;">基本情報</h3>';
                s.desc_list.forEach(function(desc){
                    if((d.info || 0) >= desc.trust){
                        descHtml += '<div style="margin-bottom: 15px; font-size: 18px;">' + desc.text + '</div>';
                    } else {
                        descHtml += '<div style="margin-bottom: 15px; font-size: 18px; color: #666;">【基本情報 解放条件: 情報度 ' + desc.trust + '】</div>';
                    }
                });
                contentHtml += descHtml;
            }

            // 過去情報の表示 (past_list)
            if(s.past_list){
                var pastHtml = '<h3 style="border-bottom: 1px dashed #66cdaa; margin: 20px 0 10px 0;">過去の記録</h3>';
                s.past_list.forEach(function(past){
                    if((d.info || 0) >= past.trust){
                        pastHtml += '<div style="margin-bottom: 15px;">' +
                                        '<div style="color: #aaffcc; font-size: 18px;">[' + past.title + ']</div>' +
                                        '<div style="font-size: 18px;">' + past.text + '</div>' +
                                       '</div>';
                    } else {
                        pastHtml += '<div style="margin-bottom: 15px; font-size: 18px; color: #666;">[' + past.title + ' 解放条件: 情報度 ' + past.trust + ']</div>';
                    }
                });
                contentHtml += pastHtml;
            }

            // 尋問情報の表示 (アンロック済みのみ)
            if(s.interrogation_data){
                var intHtml = '<h3 style="border-bottom: 1px dashed #66cdaa; margin: 20px 0 10px 0;">INVESTIGATION REPORT</h3>';
                ['past', 'secret', 'traitor'].forEach(function(k){
                    var info = s.interrogation_data[k];
                    if(info){
                         if(info.unlocked){
                            intHtml += '<div style="margin-bottom: 10px;">' +
                                        '<div style="color: #ffcc66;">[' + info.title + ']</div>' +
                                        '<div style="padding: 5px; background: rgba(50, 50, 0, 0.3);">' + info.text + '</div>' +
                                       '</div>';
                         } else {
                            intHtml += '<div style="margin-bottom: 10px; opacity: 0.5;">' +
                                        '<div style="color: #888;">[LOCKED]</div>' +
                                       '</div>';
                         }
                    }
                });
                contentHtml += intHtml;
            }
                
            contentHtml += '</div>';

            detailContainer.hide().html(contentHtml).fadeIn(200);
            btnCall.prop("disabled", false);
        });
        
        listContainer.append(item);
    });

    btnCall.on("click", function(){
        if(selectedId){
            tyrano.plugin.kag.variable.tf.targetId = selectedId;
            $("#patient-select-ui").remove();
            tyrano.plugin.kag.ftag.startTag("jump", {target: "call_sequence"});
        }
    });

    $("#btn-back").on("click", function(){
        $("#patient-select-ui").remove();
        tyrano.plugin.kag.ftag.startTag("jump", {storage: "daily.ks", target: "*night"});
    });

})();
[endscript]
[s]

;-----------------------------------------------------------
; 呼び出しシークエンス
;-----------------------------------------------------------
*call_sequence
[uiDestroy]
@layopt layer=message1 visible=true
[current layer="message1"]

[iscript]
// ターゲット情報取得
var t_id = tf.targetId;
var s_data = window.MedicData.find(function(i){ return i.id === t_id; });
var d_data = sf.medicChars.find(function(i){ return i.id === t_id; });

tf.targetChar = {
    id: t_id,
    jname: s_data.jname,
    erosion: d_data.erosion,
    trust: d_data.trust,
    info: d_data.info || 0
};
tf.targetName = tf.targetChar.jname;
tf.talkTarget = ""; tf.scenarioFile = "medic_" + t_id + ".ks";
[endscript]

[chara_ptext name="kiichi"]
#古虫 紀一
端末を操作し、[emb exp="tf.targetName"] を呼び出す。[r]
……応答を待つ。[l][r]

[call storage=&tf.scenarioFile target="*enter_room"]

[jump target="*action_menu"]

;-----------------------------------------------------------
; アクションメニュー
;-----------------------------------------------------------
*action_menu
[cm]
[link target="*checkup_action"]【１】診療[endlink][r]
[link target="*counseling_action"]【２】カウンセリング[endlink][r]
[link target="*interrogate_action"]【３】尋問[endlink][r]
[s]

;-----------------------------------------------------------
; 診療（Checkup）
;-----------------------------------------------------------
*checkup_action
[cm]
[chara_ptext name="kiichi"]
#古虫 紀一
診療を行う。容態を確認しよう。[l][r]

; 個別シナリオへ
[call storage=&tf.scenarioFile target="*checkup"]

[jump target="*end_turn"]
[s]

;-----------------------------------------------------------
; カウンセリング（Counseling）
;-----------------------------------------------------------
*counseling_action
[cm]
[chara_ptext name="kiichi"]
#古虫 紀一
カウンセリングを行う。話を聞いてみよう。[l][r]

; 個別シナリオへ
[call storage=&tf.scenarioFile target="*counseling"]

[jump target="*end_turn"]
[s]

;-----------------------------------------------------------
; 尋問（Interrogate）
;-----------------------------------------------------------
*interrogate_action
[cm]
[chara_ptext name="kiichi"]
#古虫 紀一
尋問を開始する。自白剤を用いて情報を引き出そう。[l][r]

; 個別シナリオへ直接移行！
[call storage=&tf.scenarioFile target="*interrogate"]

[jump target="*end_turn"]
[s]

;-----------------------------------------------------------
; ターン終了
;-----------------------------------------------------------
*end_turn
[cm]

[link target="*finish_day"]診療を終えて一日を終了する[endlink][l][r]
[s]

*finish_day
[cm]

; ロスト判定チェック
[if exp="tf.isDangerState"]
    ; もし危険状態で、かつ侵食度がまだ高いまま(治療していない)ならロスト
    [iscript]
    var char_data = sf.medicChars.find(function(c){ return c.id === tf.targetId; });
    tf.isDead = (char_data.erosion >= 80); // 80以上ならロスト確定などのルール
    [endscript]
    
    [if exp="tf.isDead"]
        ……処置が遅すぎたようだ。[l][r]
        [emb exp="tf.targetName"] の生体反応が消失した。[p]
        
        [iscript]
        // キャラクターを死亡状態にする
        var char_data = sf.medicChars.find(function(c){ return c.id === tf.targetId; });
        if(char_data) char_data.status = 'dead';
        // sf.chars も死亡状態にする
        var char_global = sf.chars.find(function(c){ return c.id === tf.targetId; });
        if(char_global) char_global.alive = false;
        [endscript]
    [endif]
[endif]

[jump storage="daily.ks" target="*goSleep"]
[s]
