; ========================================================
; 交流：東太
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

[iscript]
// 選択回数の取得と加算
var c = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(c) {
    c.coopCount = (c.coopCount || 0) + 1;
    tf.currentCoopCount = c.coopCount;
} else {
    tf.currentCoopCount = 1;
}
[endscript]

[if exp="tf.currentCoopCount == 1"]
    [jump target="*event1"]
[elsif exp="tf.currentCoopCount == 3"]
    [jump target="*event2"]
[else]
    [jump target="*generic_event"]
[endif]

*event1
[cm]
[chara_ptext name="kiichi"]
#古虫 紀一
東太の元を訪れた。[l][r]
彼の明るさに少し元気をもらった気がする。[l][r]
[jump target="*status_up"]

*event2
[cm]
[chara_ptext name="kiichi"]
#古虫 紀一
東太の手作り料理を一緒に食べた。[l][r]
過酷な状況でも、こういう時間は大切だ。[l][r]
[jump target="*status_up"]

*generic_event
[cm]
[chara_ptext name="kiichi"]
#古虫 紀一
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[jump target="*status_up"]

*status_up
[cm]
[iscript]
// 親密度上昇、パラメータ上昇
var c = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(c) {
    c.intimacy = (c.intimacy || 0) + 10;
}
sf.phi = (sf.phi || 0) + 1;
tf.paramName = "体力(PHI)";
[endscript]

[emb exp="tf.targetName"] との親密度が上昇した！[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]

[return]
