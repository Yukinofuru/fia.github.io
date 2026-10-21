;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;

;make.ks はロード時にcallとして呼ばれるため、return必須です。
[iscript]
if (window.fiaGameState) window.fiaGameState.initialize();
if (window.syncBattleMode) window.syncBattleMode();
if (window.fiaCare) window.fiaCare.restore();
if (window.fiaChoices) window.fiaChoices.restorePasswordInput();
if (window.fiaEncounterTimer) window.fiaEncounterTimer.restore();
[endscript]
[uiUpdateParam]
[return]
