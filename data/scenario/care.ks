; ========================================================
; 医療パート（ミニゲーム）
; ========================================================

*startBgm
[fadeoutbgm time=500]
[playbgm storage="care.m4a"]
[eval exp="f.carePatientsHandled = 0"]
[jump target="*start"]
[s]

; --- 初期化・セットアップ ---
*start
[cm]
[nolog]
[uiDestroy]
@layopt layer=message1 visible=true
[current layer="message1"]
@layopt layer=message0 visible=false

[bg2 storage="bg_room/room_d.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
; 場所名の表示
[eval exp="sf.currentPlaceName = '病室'"]
[uiSetPlace]

; CSS読み込み
[loadcss lev="1" file="./data/others/css/crt_overlay.css"]
[loadcss lev="1" file="./data/others/css/medical_monitor.css"]

; 背景は暗く
[bg storage="black.png" time="500"]

[eval exp="sf.survivorCount = sf.survivorCount || 0"]
[eval exp="f.carePatientsHandled = f.carePatientsHandled || 0"]
[iscript]
// --- ゲーム変数の初期化 ---

// 患者番号（5桁の乱数）
var pNum = Math.floor(Math.random() * 90000) + 10000;
f.carePatientId = pNum;

// ゲームの進行時間（ターン）
f.careTurn = 0;
f.careMaxTurn = 5;

// 患者の状態をランダム生成
// 1〜6の中から重複なしで3つ選出（表示用）
var visibleParts = [1, 2, 3, 4, 5, 6];
var partNamesMap = {1:"頭部", 2:"胸部", 3:"腹部", 4:"上肢", 5:"下肢", 6:"末梢", 7:"内臓"};
var injLevel = ["軽度", "中等度", "重度"];
var mutLevel = ["初期", "進行中", "末期"];

f.carePatientConditions = [];

// 表示部位3つの生成
for (var k = 0; k < 3; k++) {
    var rIdx = Math.floor(Math.random() * visibleParts.length);
    var pId = visibleParts.splice(rIdx, 1)[0];
    var i = injLevel[Math.floor(Math.random() * injLevel.length)];
    var m = mutLevel[Math.floor(Math.random() * mutLevel.length)];
    
    var cDose = 0;
    if (i === "重度") cDose = 100;
    else if (i === "中等度") cDose = 60;
    else cDose = 30; // 軽度の適量は30mg

    f.carePatientConditions.push({
        part: pId,
        partName: partNamesMap[pId],
        injury: i,
        mutation: m,
        correct_dose: cDose,
        treated: false
    });
}

// 隠し部位（内臓:7）を必ず1つ追加生成
var org_i = injLevel[Math.floor(Math.random() * injLevel.length)];
var org_m = mutLevel[Math.floor(Math.random() * mutLevel.length)];
var org_cDose = 0;
if (org_i === "重度") org_cDose = 100;
else if (org_i === "中等度") org_cDose = 60;
else org_cDose = 30;

f.carePatientConditions.push({
    part: 7,
    partName: partNamesMap[7],
    injury: org_i,
    mutation: org_m,
    correct_dose: org_cDose,
    treated: false
});


// ログ記録の初期化
f.careLogs = [];

window.addLog = function(msg) {
    f.careLogs.unshift("[" + ("0" + f.careTurn).slice(-2) + ":00] " + msg);
    if(f.careLogs.length > 20) f.careLogs.pop();
};

// 初期メッセージ
window.addLog("患者状態：不安定。直ちに処置を開始してください。");
window.addLog("バイタルモニター接続完了。");
window.addLog("システム起動...");

// 内臓(7)はコンソールに表示しない
f.carePatientConditions.forEach(function(c) {
    if (c.part !== 7) {
        window.addLog("[DIAGNOSIS] 【" + c.partName + "】 損傷:" + c.injury + " / 怪異化:" + c.mutation);
    }
});

// バイタルサイン初期化（正常時の乱数ベース）
f.careVitals = {
    hr: Math.floor(Math.random() * 11) + 80,       // 80-90
    bp_sys: Math.floor(Math.random() * 21) + 100,  // 100-120
    bp_dia: Math.floor(Math.random() * 21) + 60,   // 60-80
    spo2: 95 + Math.floor(Math.random() * 5),      // 95-99
    temp: 36.5
};

// ターンごとの累計ペナルティ用
f.careAccumDecay = { hr: 0, bp: 0, spo2: 0 };

f.careSelectedPart = null;
f.careSelectedDose = null;
f.careIsGameOver = false;
f.careIsGameClear = false;
f.careEndReason = "";
[endscript]
[jump target="*draw_ui"]
[s]

; --- UI構築 ---
*draw_ui
[iscript]
$("#medical-ui").remove();
[endscript]
[html]
<div class="medical-container" id="medical-ui">
    <div class="medical-screen">
        
        <!-- 左側：カルテ画面 -->
        <div class="chart-area">
            <div class="chart-header" style="font-size: 20px;">
                ID: <span id="ui-patient-id"></span> | TURN: <span id="ui-turn">0</span>/5 | SURVIVORS: <span id="ui-survivors">0</span>
            </div>
            
            <div class="vital-display">
                <div class="vital-box">
                    <div class="vital-label">HR (bpm)</div>
                    <div class="vital-value" id="ui-hr">--</div>
                </div>
                <div class="vital-box">
                    <div class="vital-label">BP (mmHg)</div>
                    <div class="vital-value" id="ui-bp">--</div>
                </div>
                <div class="vital-box">
                    <div class="vital-label">SpO2 (%)</div>
                    <div class="vital-value" id="ui-spo2">--</div>
                </div>
                <div class="vital-box">
                    <div class="vital-label">TEMP (°C)</div>
                    <div class="vital-value" id="ui-temp">--</div>
                </div>
            </div>
            
            <div class="log-area" id="ui-log"></div>
        </div>

        <!-- 右側：操作パネル -->
        <div class="panel-area">
            <div class="panel-title">TREATMENT PANEL</div>
            
            <div class="part-select">
                <div style="opacity:0.8; margin-bottom:5px;">【 対象部位 (薬液) 】</div>
                <button class="med-btn part-btn" data-part="1">1. 頭部</button>
                <button class="med-btn part-btn" data-part="2">2. 胸部</button>
                <button class="med-btn part-btn" data-part="3">3. 腹部</button>
                <button class="med-btn part-btn" data-part="4">4. 上肢</button>
                <button class="med-btn part-btn" data-part="5">5. 下肢</button>
                <button class="med-btn part-btn" data-part="6">6. 末梢</button>
                <button class="med-btn part-btn" data-part="7">7. 内臓</button>
            </div>

            <div class="dose-select">
                <div style="opacity:0.8; width:100%; margin-bottom:5px;">【 投与量 】</div>
                <button class="med-btn dose-btn" data-dose="30">30mg</button>
                <button class="med-btn dose-btn" data-dose="60">60mg</button>
                <button class="med-btn dose-btn" data-dose="100" style="color:var(--text-danger); border-color:var(--text-danger);">100mg</button>
            </div>

            <div style="display: flex; gap: 10px; margin-top: auto;">
                <button class="execute-btn" id="btn-execute" disabled style="flex: 1;">投与実行</button>
                <button class="execute-btn" id="btn-skip" style="flex: 1; border-color: #aaa; color: #aaa;">様子を見る</button>
            </div>
        </div>
        
    </div>
</div>
[endhtml]

; --- UIイベント・更新処理 ---
[iscript]
(function(){
    var updateUI = function() {
        $("#ui-patient-id").text(f.carePatientId);
        $("#ui-turn").text(f.careTurn);
        $("#ui-survivors").text(sf.survivorCount);
        
        var hrEl = $("#ui-hr");
        hrEl.text(Math.floor(f.careVitals.hr));
        if (f.careVitals.hr < 40 || f.careVitals.hr > 130) hrEl.addClass("danger");
        else hrEl.removeClass("danger");

        var bpEl = $("#ui-bp");
        bpEl.text(Math.floor(f.careVitals.bp_sys) + "/" + Math.floor(f.careVitals.bp_dia));
        if (f.careVitals.bp_sys < 90) bpEl.addClass("danger");
        else bpEl.removeClass("danger");

        var spo2El = $("#ui-spo2");
        spo2El.text(Math.floor(f.careVitals.spo2));
        if (f.careVitals.spo2 < 90) spo2El.addClass("danger");
        else spo2El.removeClass("danger");

        var tempEl = $("#ui-temp");
        tempEl.text(f.careVitals.temp.toFixed(1));
        if (f.careVitals.temp > 38.5) tempEl.addClass("danger");
        else tempEl.removeClass("danger");

        var logHtml = "";
        f.careLogs.forEach(function(msg){
            logHtml += "<div>" + msg + "</div>";
        });
        $("#ui-log").html(logHtml);
        
        var canExecute = (f.careSelectedPart !== null && f.careSelectedDose !== null);
        $("#btn-execute").prop("disabled", !canExecute);
    };

    updateUI();
    window.updateMedicUI = updateUI;

    var $ui = $("#medical-ui");

    $ui.off("click", ".part-btn").on("click", ".part-btn", function(){
        $ui.find(".part-btn").removeClass("selected");
        $(this).addClass("selected");
        f.careSelectedPart = parseInt($(this).data("part"));
        updateUI();
    });

    $ui.off("click", ".dose-btn").on("click", ".dose-btn", function(){
        $ui.find(".dose-btn").removeClass("selected");
        $(this).addClass("selected");
        f.careSelectedDose = parseInt($(this).data("dose"));
        updateUI();
    });

    $ui.off("click", "#btn-execute").on("click", "#btn-execute", function(){
        if(f.careSelectedPart !== null && f.careSelectedDose !== null){
            $ui.find(".med-btn").prop("disabled", true);
            $ui.find(".execute-btn").prop("disabled", true);
            tyrano.plugin.kag.ftag.startTag("jump", {target: "*execute_turn"});
        }
    });

    $ui.off("click", "#btn-skip").on("click", "#btn-skip", function(){
        f.careSelectedPart = 0;
        f.careSelectedDose = 0;
        $ui.find(".med-btn").prop("disabled", true);
        $ui.find(".execute-btn").prop("disabled", true);
        tyrano.plugin.kag.ftag.startTag("jump", {target: "*execute_turn"});
    });
})();
[endscript]

; 入力待ちループ
[s]

; --- ターン実行処理 ---
*execute_turn
[iscript]
var part = f.careSelectedPart;
var dose = f.careSelectedDose;
var v = f.careVitals;

var partNamesMap = {
    1:"頭部", 2:"胸部", 3:"腹部", 4:"上肢", 5:"下肢", 6:"末梢", 7:"内臓"
};

var instantDeath = false;

if (part === 0) {
    // 投与しない（様子を見る）
    window.addLog(">> 投与せず、様子を見た。");
    f.careActionMsg = "何も投与せず、経過を観察した。";
} else {
    var pName = partNamesMap[part];
    window.addLog(">> " + pName + " へ " + dose + "mg 投与しました。");
    f.careActionMsg = pName + " に " + dose + "mg 投与した。";

    // 治療判定
    var cond = f.carePatientConditions.find(function(c){ return c.part === part; });

    if (cond) {
        var beforeDose = cond.administered_dose || 0;
        cond.administered_dose = beforeDose + dose;

        // デバッグ用ログ（後で消してOK）
        // window.addLog("DEBUG: 前の量" + beforeDose + " + 今回" + dose + " = 合計" + cond.administered_dose);

        if (cond.administered_dose > cond.correct_dose) {
            // 過剰投与ペナルティ（即死）
            if (cond.mutation === "末期" && dose === 100) {
                f.careIsGameOver = true;
                f.careEndReason = "怪異化";
                instantDeath = true;
            } else {
                f.careIsGameOver = true;
                f.careEndReason = "細胞増殖";
                instantDeath = true;
            }
        } else if (cond.administered_dose === cond.correct_dose) {
             // 累積投与量が適量に達した場合
             if (cond.mutation === "末期" && dose === 100) {
                f.careIsGameOver = true;
                f.careEndReason = "怪異化";
                instantDeath = true;
            } else {
                cond.treated = true;
                if(cond.part !== 7) window.addLog(pName + " の状態が安定しました。");
                else window.addLog("内臓からの生体反応が安定しました。");
            }
        } else {
            // 適量未満
            window.addLog("投与量が不足しています。");
        }
    } else {
        // 異常のない正常部位への投与は「空打ち」として細胞増殖で即死
        f.careIsGameOver = true;
        f.careEndReason = "細胞増殖";
        instantDeath = true;
    }

    // バイタルの一時回復は廃止（空打ち禁止および毎ターンの乱数基準化のため）
}

// ターン経過
f.careTurn += 1;

// 毎ターンの基準となる正常バイタル（乱数）
var base_hr = Math.floor(Math.random() * 11) + 80;
var base_bp_sys = Math.floor(Math.random() * 21) + 100;
var base_bp_dia = Math.floor(Math.random() * 21) + 60;
var base_spo2 = 95 + Math.floor(Math.random() * 5);

// 内臓が未治療の場合、HRとSpO2のペナルティが毎ターン蓄積する
var orgCond = f.carePatientConditions.find(function(c){ return c.part === 7; });
var turn_decay_hr = 0;
var turn_decay_bp = 0;
var turn_decay_spo2 = 0;

if (orgCond && !orgCond.treated) {
    if (orgCond.injury === "軽度") { turn_decay_hr = 15; turn_decay_bp = 10; turn_decay_spo2 = 3; }
    else if (orgCond.injury === "中等度") { turn_decay_hr = 25; turn_decay_bp = 20; turn_decay_spo2 = 6; }
    else if (orgCond.injury === "重度") { turn_decay_hr = 40; turn_decay_bp = 30; turn_decay_spo2 = 10; }
}

f.careAccumDecay.hr += turn_decay_hr;
f.careAccumDecay.bp += turn_decay_bp;
f.careAccumDecay.spo2 += turn_decay_spo2;

v.hr = base_hr - f.careAccumDecay.hr;
v.bp_sys = base_bp_sys - f.careAccumDecay.bp;
v.bp_dia = base_bp_dia - f.careAccumDecay.bp;
v.spo2 = base_spo2 - f.careAccumDecay.spo2;
v.temp += 0.1;

v.hr = Math.max(0, v.hr);
v.bp_sys = Math.max(0, v.bp_sys);
v.bp_dia = Math.max(0, v.bp_dia);
v.spo2 = Math.min(100, Math.max(0, v.spo2));

// 生存判定・終了判定
if (!instantDeath) {
    if (v.hr <= 0 || v.bp_sys <= 20 || v.spo2 <= 50) {
        f.careIsGameOver = true;
        f.careEndReason = "バイタル喪失（死亡）";
    }

    if (f.careTurn >= f.careMaxTurn && !f.careIsGameOver) {
        // 全治癒判定（4箇所すべて治療済みか）
        var allTreated = true;
        f.carePatientConditions.forEach(function(c){
            if (!c.treated) allTreated = false;
        });

        if (!allTreated) {
            f.careIsGameOver = true;
            f.careEndReason = "未治療による死亡";
        } else {
            f.careIsGameClear = true;
        }
    }
}

window.updateMedicUI();

f.careSelectedPart = null;
f.careSelectedDose = null;
[endscript]

; ボタンの無効化解除 (JS側)
[iscript]
$(".part-btn").removeClass("selected");
$(".dose-btn").removeClass("selected");
$(".med-btn").prop("disabled", false);
$(".execute-btn").prop("disabled", false);
window.updateMedicUI();
[endscript]

[if exp="f.careIsGameOver == true"]
    [jump target="*result_gameover"]
[elsif exp="f.careIsGameClear == true"]
    [jump target="*result_gameclear"]
[endif]
[s]


; --- リザルト処理 ---
*result_gameclear
[cm]
[iscript]
$("#medical-ui").remove();
window.addLog("バイタル安定。全症状の治癒を確認。");
f.carePatientsHandled = (f.carePatientsHandled || 0) + 1;
[endscript]
[current layer="message1"]
@layopt layer=message1 visible=true
#古虫 紀一
処置は完了した。[l][r]
全ての外傷・および内部異常に対処し、患者は一命を取り留めた。[p]

[if exp="f.carePatientsHandled >= 3"]
    [iscript]
    for (var key in f) {
        if (key.indexOf('care_') === 0) {
            delete f[key];
        }
    }
    [endscript]
    今日の治療はこれで終了だ。[l][r]
    現在の生存者数: [emb exp="sf.survivorCount"]人[p]
    [jump storage="daily.ks" target="*night"]
[else]
    次の患者を治療する。[p]
    [jump target="*start"]
[endif]
[s]

*result_gameover
[cm]
[iscript]
$("#medical-ui").remove();
window.addLog("フラットライン。");
f.carePatientsHandled = (f.carePatientsHandled || 0) + 1;
// 生存者数を減らす
sf.survivorCount -= 1;
[endscript]
[current layer="message1"]
@layopt layer=message1 visible=true
#古虫 紀一

[if exp="f.careEndReason == 'バイタル喪失（死亡）'"]
    ピーーーーーーー。[l][r]
    モニターの数値がゼロになり、心停止を告げる音が響く。[l][r]
    患者は死亡した。[p]
[elsif exp="f.careEndReason == '未治療による死亡'"]
    処置は完了した。だが、[l][r]
    数日後、未治療の怪我が原因で患者の死亡が確認された。[p]
[elsif exp="f.careEndReason == '細胞増殖'"]
    ピーーーーーーー。[l][r]
    過剰投与による急速な細胞増殖が発生した。[l][r]
    患者は苦しみながら息絶え、死亡が確認された。[p]
[else]
    怪異化の促進による深刻な変異が発生した。[l][r]
    患者の肉体は瞬く間に異形へと変貌し、やむなく殺処分された。[p]
[endif]

[if exp="f.carePatientsHandled >= 3"]
    [iscript]
    for (var key in f) {
        if (key.indexOf('care_') === 0) {
            delete f[key];
        }
    }
    [endscript]
    今日の治療はこれで終了だ。[l][r]
    現在の生存者数: [emb exp="sf.survivorCount"]人[p]
    [jump storage="daily.ks" target="*night"]
[else]
    遺体を処理して、次の患者の対応に移る。[p]
    [jump target="*start"]
[endif]
[s]
