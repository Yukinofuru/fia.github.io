; ロード後の状態とUIの復元。入口: エンジンからのcall。終了: return。
; ========================================================
; make.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- 初期設定 ----
;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;

;make.ks はロード時にcallとして呼ばれるため、return必須です。
; 旧セーブの白い既定文字色も、通常の本文色へ戻す。
[deffont color="#66cdaa"]
[font color="#66cdaa"]
; 旧セーブで名簿と一緒に隠された共通UIも復元する。
[if exp="$('#patient-select-ui').length > 0 || $('#coop-select-ui').length > 0"]
    [loadcss file="./data/others/css/character_directory.css"]
    [layopt layer="message1" visible="true"]
[endif]
[if exp="$('#day10-trial-overlay').length > 0 || $('#day10-lib-records').length > 0"]
    [loadcss file="./data/others/css/day10_trial.css"]
[endif]
[if exp="$('.irm-guide').length > 0"]
    [loadcss file="./data/others/css/care_tutorial.css"]
[endif]
[iscript]
if (window.fiaLibrary) window.fiaLibrary.initialize();
if (window.fiaStory) window.fiaStory.initialize();
if (window.fiaGameState) window.fiaGameState.initialize();
if (window.fiaDaily) window.fiaDaily.initialize();
if (window.syncBattleMode) window.syncBattleMode();
if (window.fiaMix) window.fiaMix.restore();
if (window.fiaChoices) window.fiaChoices.restorePasswordInput();
if (window.fiaEncounterTimer) window.fiaEncounterTimer.restore();
if (window.fiaLibraryUI) window.fiaLibraryUI.restore();
if (window.fiaDay10Trial) window.fiaDay10Trial.restore();
if (window.fiaMedicRegistry) {
    window.fiaMedicRegistry.restore();
    window.fiaMedicRegistry.restoreCoop();
}
[endscript]
[uiUpdateParam]
[return]
