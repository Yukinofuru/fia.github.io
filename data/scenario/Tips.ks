; ========================================================
; 情報のリンク
; ========================================================
*start
[stop_keyconfig]
;-----------------------------------------------------------
; 隠しコマンド「0000A2Z6」の監視開始
;-----------------------------------------------------------
[iscript]
// バッファをリセット
window.secretCommandBuffer = "";

// 既存のリスナーがあれば先に削除（重複防止）
if (window.checkSecretCommand) {
    document.removeEventListener('keydown', window.checkSecretCommand);
}

window.checkSecretCommand = function(e) {
    // 特殊キー（Shift, Ctrl等）は無視
    if (e.key.length !== 1 && e.key !== '0') return;
    
    var key = e.key.toUpperCase();
    window.secretCommandBuffer += key;
    
    // 8文字を超えたら古いものを削除
    if (window.secretCommandBuffer.length > 8) {
        window.secretCommandBuffer = window.secretCommandBuffer.slice(-8);
    }
    
    // 「0000A2Z6」と一致したかチェック
    if (window.secretCommandBuffer === "0000A2Z6") {
        document.removeEventListener('keydown', window.checkSecretCommand);
        window.checkSecretCommand = null;
        window.secretCommandBuffer = "";
        // debug.ks へジャンプ
        tyrano.plugin.kag.ftag.startTag("jump", {storage: "debug.ks", target: "*start"});
    }
};

document.addEventListener('keydown', window.checkSecretCommand);
[endscript]

;CSSの読み込み
[loadcss file="data/others/css/library_manager.css"]
[loadcss file="data/others/css/crt_overlay.css"]

[iscript]
// Hide battle cursor if active
if(window.tempHideBattleCursor) window.tempHideBattleCursor();
[endscript]

;JSデータの読み込み
[loadjs storage="../others/library_data.js"]

;スキルポイント変数の初期化
[iscript]
if(sf.skillPoints === undefined) {
    sf.skillPoints = 5; // 初期値
}
// スキル変数の初期化（なければ0初期化）
if(sf.phi === undefined) sf.phi = 0;
if(sf.kno === undefined) sf.kno = 0;
if(sf.luc === undefined) sf.luc = 0;
if(sf.spi === undefined) sf.spi = 0;
[endscript]

;CRTモニター風オーバーレイの追加
[iscript]
var base = $(".tyrano_base");
if (base.find(".crt-noise").length == 0) base.append('<div class="crt-noise"></div>');
if (base.find(".crt-overlay").length == 0) base.append('<div class="crt-overlay"></div>');
[endscript]

[bg2 storage="transparent.png" time=100 wait=true left=160 top=70 width=1480 height=920]
[uiDestroy]
[clearfix]
[nolog]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

;前景レイヤ初期化
[iscript]
$(".layer_camera").empty();
$("#bgmovie").remove();
[endscript]

[hidemenubutton]

;HTMLコンテナ
[html]
<div class="device-container">
    <style>
        /* スキルボタン無効時のカーソル修正 */
        .skill-btn:disabled {
            cursor: default !important;
            opacity: 0.5;
        }
        /* 赤丸斜線が出るのを防ぐ */
        .skill-btn, .footer-btn, .list-item {
            cursor: pointer;
        }
    </style>
    <div class="device-nav">
        <div class="nav-item active" data-tab="stat">SKILL</div>
        <div class="nav-item" data-tab="inv">DATA</div>
        <div class="nav-item" data-tab="data">WORD</div>
        <div class="nav-item" data-tab="radio">CHAT</div>
    </div>

    <!-- SKILL TAB -->
    <div id="tab-stat" class="device-content active">
        <div style="width: 100%; padding: 0 40px;">
            <div class="skill-header">CHARACTER STATUS</div>
            <div class="skill-points-display">SKILL POINTS: <span id="skill-points-val">0</span></div>
            <div id="skill-list-container">
                <!-- JSで生成 -->
            </div>
            <div style="margin-top:20px; font-size: 20px; color: rgba(102, 205, 171, 0.7);">
                <p>PHI: Physical (Damage Reduction)</p>
                <p>KNO: Knowledge (Data Access)</p>
                <p>LUC: Luck</p>
                <p>SPI: Spirit (Unlock Route)</p>
            </div>
        </div>
    </div>

    <!-- DATA (MONSTER) TAB -->
    <div id="tab-inv" class="device-content">
        <div class="col-list" id="monster-list">
            <!-- JSで生成 -->
        </div>
        <div class="col-detail" id="monster-detail">
            <!-- 詳細表示エリア -->
            <div style="padding-top: 200px; text-align: center; color: rgba(102, 205, 171, 0.5);">SELECT DATA</div>
        </div>
    </div>

    <!-- WORD TAB -->
    <div id="tab-data" class="device-content">
        <div class="col-list" id="word-list">
            <!-- JSで生成 -->
        </div>
        <div class="col-detail" id="word-detail">
             <div style="padding-top: 200px; text-align: center; color: rgba(102, 205, 171, 0.5);">SELECT WORD</div>
        </div>
    </div>

    <!-- CHAT TAB -->
    <div id="tab-radio" class="device-content">
        <div class="chat-area">
            <div id="chat-text">Scanning frequency...</div>
        </div>
    </div>

    <div class="device-footer">
        <button class="footer-btn" id="btn-back">CLOSE</button>
    </div>
</div>
[endhtml]

; ロジック制御JS
[iscript]
(function(){
    // データ参照
    var monsters = window.LibraryData.Monster;
    var words = window.LibraryData.Word;
    var chats = window.LibraryData.Chat;

    // --- SKILL TAB ---
    function renderSkills() {
        var container = $("#skill-list-container");
        container.empty();
        
        // パラメータ定義（すべてそのまま表示）
        var skills = [
            {key: "phi", name: "PHI (Physical)"},
            {key: "kno", name: "KNO (Knowledge)"},
            {key: "luc", name: "LUC (Luck)"},
            {key: "spi", name: "SPI (Spirit)"}
        ];

        $("#skill-points-val").text(sf.skillPoints);

        skills.forEach(function(s){
            var val = sf[s.key];
            
            var row = $('<div class="skill-row"></div>');
            row.append('<div class="skill-name">' + s.name + '</div>');
            
            var controls = $('<div></div>');
            controls.append('<span class="skill-value">' + val + '</span>');
            
            var btn = $('<button class="skill-btn">+</button>');
            if (sf.skillPoints <= 0) {
                btn.prop('disabled', true);
            }
            
            btn.on('click', function(){
                if (sf.skillPoints > 0) {
                    sf.skillPoints--;
                    sf[s.key]++;

                    // TyranoScript変数への反映
                    tyrano.plugin.kag.variable.sf.skillPoints = sf.skillPoints;
                    tyrano.plugin.kag.variable.sf[s.key] = sf[s.key];
                    
                    renderSkills(); // 再描画
                    
                }
            });
            
            controls.append(btn);
            row.append(controls);
            container.append(row);
        });
    }

    // --- MONSTER TAB ---
    function renderMonsters() {
        var list = $("#monster-list");
        list.empty();
        
        monsters.forEach(function(m, idx){
            var item = $('<div class="list-item"></div>');
            // 解放レベルチェック (KNOレベル)
            if ((sf.kno || 0) >= m.level) {
                item.text(m.name);
                item.on('click', function(){
                    $(".list-item").removeClass("selected");
                    $(this).addClass("selected");
                    var detail = $("#monster-detail");
                    detail.hide().html(
                        '<h2 style="border-bottom: 2px solid #66cdaa; margin-bottom: 20px;">' + m.name + '</h2>' +
                        '<p>' + m.desc + '</p>'
                    ).fadeIn(200);
                });
            } else {
                item.text("---------------");
                item.addClass("locked");
            }
            list.append(item);
        });
    }

    // --- WORD TAB ---
    function renderWords() {
        var list = $("#word-list");
        list.empty();
        
        words.forEach(function(w){
            var item = $('<div class="list-item"></div>');
            item.text(w.title);
            item.on('click', function(){
                $("#word-list .list-item").removeClass("selected");
                $(this).addClass("selected");
                var detail = $("#word-detail");
                detail.hide().html(
                    '<h2 style="border-bottom: 2px solid #66cdaa; margin-bottom: 20px;">' + w.title + '</h2>' +
                    '<p>' + w.body + '</p>'
                ).fadeIn(200);
            });
            list.append(item);
        });
    }

    // --- CHAT TAB ---
    function updateChat() {
        var chatText = chats[Math.floor(Math.random() * chats.length)];
        var area = $("#chat-text");
        area.fadeOut(200, function(){
            area.text(chatText).fadeIn(200);
        });
    }

    // --- TAB SWITCHING ---
    $(".nav-item").on("click", function(){
        var tabId = $(this).data("tab");
        $(".nav-item").removeClass("active");
        $(this).addClass("active");
        
        $(".device-content").removeClass("active");
        $("#tab-" + tabId).addClass("active");
        
        if(tabId === "stat") renderSkills();
        if(tabId === "inv") renderMonsters();
        if(tabId === "data") renderWords();
        if(tabId === "radio") updateChat();
    });

    // --- CLOSE BUTTON ---
    $("#btn-back").on("click", function(){
        // Note: UpdateParameter is removed to avoid undefined tag error. 
        // The calling scenario should handle UI updates upon return if needed.
        
        // シンプルにジャンプ（ターゲットには*をつける）
        tyrano.plugin.kag.ftag.startTag("jump", {target: "*AwakeGame"});
    });

    // 初期表示
    renderSkills();
})();
[endscript]

[s]

*AwakeGame
[uiDestroy]
[iscript]
// 残っている可能性があるコンテナを強制削除
$(".device-container").remove();
// Restore battle cursor if applicable
if(window.restoreBattleCursor) window.restoreBattleCursor();
// 隠しコマンドリスナーを解除
if (window.checkSecretCommand) {
    document.removeEventListener('keydown', window.checkSecretCommand);
    window.checkSecretCommand = null;
}
window.secretCommandBuffer = "";
[endscript]
@layopt layer=message1 visible=false

;キーコンフィグの有効化
[start_keyconfig]

;コールスタックのクリア
[clearstack]

;メニューボタン再表示
[uiSetMenu]
[endnolog]

;元の画面に戻る際にパラメータUIを更新
[uiUpdateParam]

;ゲーム復帰
[awakegame]
