; ========================================================
; 交流：世紬
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="bg_room/room_a.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

[setsuSmile]
[chara_show name="setsu" top=140 width=560 height=840]

[iscript]
// 選択回数の取得と加算
var c = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(c) {
    c.coopCount = (c.coopCount || 0) + 1;
    tf.currentCoopCount = c.coopCount;
} else {
    // 取得失敗時は1になる（ここで毎回1になっている可能性大）
    tf.currentCoopCount = 1;
    console.log("【警告】キャラクターが見つかりません。tf.targetId:", tf.targetId);
}
[endscript]

[if exp="tf.currentCoopCount == 1"]
    [jump target="*event1"]
[elsif exp="tf.currentCoopCount == 3"]
    [jump target="*event2"]
[else]
    [jump target="*generic_event"]
[endif]
[s]

*event1
[cm]
#kiichi
（世紬との初めての交流イベント）[p]
[jump target="*status_up"]

*event2
[cm]
#kiichi
世紬と少しだけ深い話をした。[l][r]
天才ゆえの視点には、学ぶべきところが多い。[l][r]
[jump target="*status_up"]

*generic_event
[cm]
#kiichi
「今日も術について教えてくれないか？」[p]
#setsu
「いいわよ。私も暇だったから」[p]
#kiichi
「助かる」[p]
世紬から術について丁寧に教えてもらった。[p]
[jump target="*status_up"]

*status_up
[cm]
[iscript]
// 親密度上昇、パラメータ上昇
var c = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(c) {
    c.intimacy = (c.intimacy || 0) + 10;
}
sf.spi = (sf.spi || 0) + 1;
tf.paramName = "術力(SPI)";
[endscript]

[emb exp="tf.paramName"] が 1 上昇した。[p]

#kiichi
「ありがとう、助かった。またお願いするよ」[p]
#setsu
「ふふ、いつでもいいわ」[p]
#kiichi
充実した時間を過ごした。[p]
[chara_hide name="setsu" wait=false]
[return]