; ========================================================
; 交流パート共通
; ========================================================

*start
[fadeoutbgm time=500]
[playbgm storage="daily.m4a"]
[cm]
[uiDestroy]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true

; CSS読み込み
[loadcss lev="1" file="./data/others/css/medical_monitor.css"]

; 背景表示
[bg2 storage="my_room.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[eval exp="sf.currentPlaceName = '交流'"]
[uiSetPlace]

[iscript]
// キャラクターのデフォルトの居場所定義
window.CoopLocations = {
    setsu: "医務室前",
    airan: "訓練場",
    ito: "宿舎",
    ayase: "作戦司令室",
    akehiru: "資料室",
    tota: "食堂",
    momona: "中庭",
    syuuichi: "訓練場"
};
tf.targetId = "";
[endscript]

[html]
<div class="medical-container" id="coop-select-ui">
    <div class="medical-screen" style="justify-content: center; align-items: center; display: flex; flex-direction: column;">
        <div class="panel-area" style="width: 75%; height: 90%;">
            <div class="panel-title" style="font-size: 40px; text-align: center; border-bottom: 2px solid var(--border-color); padding-bottom: 10px; margin-bottom: 20px; color: #aaffcc;">COOPERATION</div>
            
            <!-- スクロール可能な患者リスト -->
            <div class="part-select" id="coop-list" style="overflow-y: auto; flex-grow: 1; max-height: 500px; gap: 8px; margin-bottom: 20px;">
                <!-- JSで動的生成 -->
            </div>

            <!-- 下部ボタン群 -->
            <div style="display: flex; flex-direction: column; gap: 10px; margin-top: auto;">
                <button class="execute-btn" id="btn-talk" disabled style="width: 100%;">TALK</button>
                <button class="execute-btn" id="btn-back" style="width: 100%; border-color: #aaa; color: #aaa;">RETURN</button>
            </div>
        </div>
    </div>
</div>
[endhtml]

[iscript]
(function(){
    var chars = sf.chars || [];
    var listContainer = $("#coop-list");
    var btnTalk = $("#btn-talk");
    var selectedId = null;

    chars.forEach(function(c){
        // 死亡している場合は除外
        if(c.alive === false || c.alive === "false" || c.alive === 0 || c.alive === "0" || !c.alive) return;
        
        // 百七 (momona) の加入制限チェック
        if (c.id === 'momona') {
            var dayCount = sf.dayCount || 0;
            if (dayCount < 10) return;
        }

        var loc = window.CoopLocations[c.id] || "不明";
        var item = $('<button class="med-btn part-btn" style="width: 100%; text-align: left; margin-bottom: 12px; padding: 20px; display: flex; justify-content: space-between; align-items: center;"></button>');
        
        var nameSpan = $('<span></span>').text(c.name).css('font-size', '32px');
        var locSpan = $('<span></span>').text(loc).css({'font-size': '24px', 'color': '#88ccaa'});
        
        item.append(nameSpan).append(locSpan);
        
        item.on('click', function(){
            $(".part-btn").removeClass("selected");
            $(this).addClass("selected");
            selectedId = c.id;
            btnTalk.prop("disabled", false);
        });
        
        listContainer.append(item);
    });

    btnTalk.on("click", function(){
        if(selectedId){
            tyrano.plugin.kag.variable.tf.targetId = selectedId;
            $("#coop-select-ui").remove();
            tyrano.plugin.kag.ftag.startTag("jump", {target: "call_sequence"});
        }
    });

    $("#btn-back").on("click", function(){
        $("#coop-select-ui").remove();
        tyrano.plugin.kag.ftag.startTag("jump", {storage: "daily.ks", target: "*night"});
    });

})();
[endscript]
[s]

*call_sequence
[uiDestroy]
@layopt layer=message1 visible=true
[current layer="message1"]

[iscript]
var c = sf.chars.find(function(i){ return i.id === tf.targetId; });
tf.targetName = c.name;
tf.scenarioFile = "coop_" + tf.targetId + ".ks";
sf.currentPlaceName = window.CoopLocations[tf.targetId] || "不明";
[endscript]

[uiSetPlace]

[call storage=&tf.scenarioFile target="*start"]

[jump storage="daily.ks" target="*night"]
[s]
