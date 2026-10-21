// 診療画面の初回表示とセーブ後の再開に共通する操作処理。
(function () {
    function restoreUI() {
        const f = TYRANO.kag.stat.f;
        // ロードごとに現在のセーブスロットへログと操作を結び直す。
        window.addLog = function (message) {
            f.careLogs = f.careLogs || [];
            f.careLogs.unshift('[' + ('0' + f.careTurn).slice(-2) + ':00] ' + message);
            if (f.careLogs.length > 20) f.careLogs.pop();
        };
        const $ui = $('#medical-ui');
        if (!$ui.length || !f.careVitals) return false;
        // Tyrano の保存 HTML は data-* を除去するため、固定の操作盤を再設定する。
        $ui.find('.part-btn').each(function (index) {
            $(this).attr('data-part', index + 1).data('part', index + 1);
        });
        const doses = [30, 60, 100];
        $ui.find('.dose-btn').each(function (index) {
            $(this).attr('data-dose', doses[index]).data('dose', doses[index]);
        });
        const updateUI = function() {
            $("#ui-patient-id").text(f.carePatientId);
            $("#ui-turn").text(f.careTurn);
            $("#ui-survivors").text(f.treatedCount);
            
            const hrEl = $("#ui-hr");
            hrEl.text(Math.floor(f.careVitals.hr));
            if (f.careVitals.hr < 40 || f.careVitals.hr > 130) hrEl.addClass("danger");
            else hrEl.removeClass("danger");
    
            const bpEl = $("#ui-bp");
            bpEl.text(Math.floor(f.careVitals.bp_sys) + "/" + Math.floor(f.careVitals.bp_dia));
            if (f.careVitals.bp_sys < 90) bpEl.addClass("danger");
            else bpEl.removeClass("danger");
    
            const spo2El = $("#ui-spo2");
            spo2El.text(Math.floor(f.careVitals.spo2));
            if (f.careVitals.spo2 < 90) spo2El.addClass("danger");
            else spo2El.removeClass("danger");
    
            const tempEl = $("#ui-temp");
            tempEl.text(f.careVitals.temp.toFixed(1));
            if (f.careVitals.temp > 38.5) tempEl.addClass("danger");
            else tempEl.removeClass("danger");
    
            let logHtml = "";
            f.careLogs.forEach(function(msg){
                logHtml += "<div>" + msg + "</div>";
            });
            $("#ui-log").html(logHtml);
            
            const canExecute = (f.careSelectedPart !== null && f.careSelectedDose !== null);
            $("#btn-execute").prop("disabled", !canExecute);
        };
    
        updateUI();
        window.updateMedicUI = updateUI;
    
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
                TYRANO.kag.ftag.startTag("jump", {target: "*execute_turn"});
            }
        });
    
        $ui.off("click", "#btn-skip").on("click", "#btn-skip", function(){
            f.careSelectedPart = 0;
            f.careSelectedDose = 0;
            $ui.find(".med-btn").prop("disabled", true);
            $ui.find(".execute-btn").prop("disabled", true);
            TYRANO.kag.ftag.startTag("jump", {target: "*execute_turn"});
        });
        return true;
    }
    window.fiaCare = { restore: restoreUI };
})();
