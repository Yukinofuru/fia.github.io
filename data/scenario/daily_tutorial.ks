; 既存のエンジン・UI補助。入口と復帰先は各ラベルの処理を参照。
; ========================================================
; daily_tutorial.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- 初期設定 ----
; DAY3のDaily行動選択前に一度だけ表示。

; ---- start ----
*start
[cm]
[uiDestroy]
[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]
[image name="daily-tutorial-guide" layer="1" folder="image" storage="tutorial/daily_guide.png" x="0" y="0" width="1920" height="1200"]
[layopt layer="1" visible="true"]
[loadcss file="./data/others/css/daily_tutorial.css"]
[glink name="daily-tutorial-next" text="次へ" x="1510" y="1095" width="300" height="70" face="Tegomin" size="32" target="*finish"]
[s]


; ---- finish ----
*finish
[eval exp="f.hasSeenDailyTutorial = true"]
[cm]
[freeimage layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[return]
