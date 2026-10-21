; DAY3のDaily行動選択前に一度だけ表示。
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

*finish
[eval exp="f.hasSeenDailyTutorial = true"]
[cm]
[freeimage layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[return]
