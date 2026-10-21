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
        TYRANO.kag.ftag.startTag("jump", {storage: "debug.ks", target: "*start"});
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
; 用語・要覧データはfirst.ksで読み込み済み

;スキルポイント変数の初期化
[iscript]
if(f.skillPoints === undefined) {
    f.skillPoints = 0; // 初期能力はDAY0直後の選択で加算
}
// スキル変数の初期化（なければ0初期化）
if(f.phi === undefined) f.phi = 0;
if(f.kno === undefined) f.kno = 0;
if(f.luc === undefined) f.luc = 0;
if(f.spi === undefined) f.spi = 0;
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
    <div class="device-nav">
        <div class="nav-item active" data-tab="stat">SKILL</div>
        <div class="nav-item" data-tab="inv">怪異要覧</div>
        <div class="nav-item" data-tab="data">用語一覧</div>
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
        <div class="reference-list-panel">
            <div class="reference-tools">
                <input id="monster-search" type="search" placeholder="怪異を検索" aria-label="怪異を検索">
                <select id="monster-category" aria-label="怪異の分類"><option value="">すべての分類</option></select>
            </div>
            <div class="col-list" id="monster-list"></div>
        </div>
        <div class="col-detail" id="monster-detail">
            <!-- 詳細表示エリア -->
            <div style="padding-top: 200px; text-align: center; color: rgba(102, 205, 171, 0.5);">項目を選択</div>
        </div>
    </div>

    <!-- WORD TAB -->
    <div id="tab-data" class="device-content">
        <div class="reference-list-panel">
            <div class="reference-tools">
                <input id="word-search" type="search" placeholder="用語を検索" aria-label="用語を検索">
                <select id="word-category" aria-label="用語の分類"><option value="">すべての分類</option></select>
            </div>
            <div class="col-list" id="word-list"></div>
        </div>
        <div class="col-detail" id="word-detail">
             <div style="padding-top: 200px; text-align: center; color: rgba(102, 205, 171, 0.5);">項目を選択</div>
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

        $("#skill-points-val").text(f.skillPoints);

        skills.forEach(function(s){
            var val = f[s.key];
            
            var row = $('<div class="skill-row"></div>');
            row.append('<div class="skill-name">' + s.name + '</div>');
            
            var controls = $('<div></div>');
            controls.append('<span class="skill-value">' + val + '</span>');
            
            row.append(controls);
            container.append(row);
        });
    }

    // 用語・怪異は原本JSONと保存済みの解放状態から描画する。
    const renderMonsters = window.fiaReferenceUI.attachPanel('handbook');
    const renderWords = window.fiaReferenceUI.attachPanel('glossary');

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
        TYRANO.kag.ftag.startTag("jump", {target: "*AwakeGame"});
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
