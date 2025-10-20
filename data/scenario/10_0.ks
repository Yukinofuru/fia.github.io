*start
[cm]
[destroy]
;ログに追加しない指定
[nolog]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[Mask_light]
[image storage="load.png" name="load" layer="message1" x="0" y="0" width="1920" height="1200" time="10" wait="true" zindex=1000]
[wait time=1500]
[free name="load" layer="message1" time="10"]
[font color="#66cdaa"]
SYSTEM-323>　Code 7201 Approved[r]
SYSTEM-323>　Moved to 7/17 and transitioned to exploration phase[r]
[wait time=1500]
[cm]
[image storage="load.png" name="load" layer="message1" x="0" y="0" width="1920" height="1200" time="10" wait="true" zindex=1000]
[wait time=1500]
[free name="load" layer="message1" time="10"]

[font color="#66cdaa"]
[bg2 storage="black.png" time=100 wait=true left=0 top=0 width=1920 height=1800]
SYSTEM-323>　データが莠懃ｩｺ髢捺凾遨ｺノイズにより一部消失しました。[lr]
SYSTEM-323>　07/14/2345縺ｮ險倬鹸繧貞ｾｩ蜈?＠縺ｾ縺吶?。[p]

[endnolog]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[destroy]
[cm]
[jump storage="game_over.ks" target="*start"]