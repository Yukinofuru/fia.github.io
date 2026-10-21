; 初回の治療前にのみ表示。患者の生成・ターン進行は呼び出し元で行う。
*start
[cm]
[uiDestroy]
[freeimage layer="1"]
[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]
[image name="care-tutorial-guide" layer="1" folder="image" storage="tutorial/care_guide.png" x="0" y="0" width="1920" height="1200"]
[layopt layer="1" visible="true"]
[loadcss file="./data/others/css/care_tutorial.css"]
[glink name="care-tutorial-next" text="次へ" x="1510" y="1095" width="300" height="70" face="Tegomin" size="32" target="*details"]
[s]

*details
[cm]
[freeimage layer="1"]
[image name="care-tutorial-details" layer="1" folder="image" storage="tutorial/care_details.png" x="0" y="0" width="1920" height="1200"]
[layopt layer="1" visible="true"]
[glink name="care-tutorial-next" text="戻る" x="64" y="1095" width="300" height="70" face="Tegomin" size="32" target="*start"]
[glink name="care-tutorial-next" text="次へ" x="1510" y="1095" width="300" height="70" face="Tegomin" size="32" target="*finish"]
[s]

*finish
[eval exp="f.hasSeenCareTutorial = true"]
[cm]
[freeimage layer="1"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[return]
