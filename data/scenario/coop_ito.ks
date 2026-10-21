; ========================================================
; 交流：一十
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

; 状態管理によるエピソード自動分岐
[dispatch_coop_event chara_id="ito"]
[s]


; ========================================================
; エピソード0 (初回イベント)
; ========================================================
*event0
[cm]
[chara_ptext name="kiichi"]
#kiichi
一十の元を訪れた。彼の冷徹な態度の裏に何があるのか、少しだけ垣間見えた気がする。[l][r]

[link target="*event0_choice1"]【1】彼の冷たい態度について指摘する（親密度 +0）[endlink][r]
[link target="*event0_choice2"]【2】仕事の責任の重さについて語る（親密度 +10）[endlink][r]
[link target="*event0_choice3"]【3】温かい食べ物を差し入れる（親密度 +20）[endlink][r]
[s]

*event0_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*event0_end"]

*event0_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*event0_end"]

*event0_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*event0_end"]

*event0_end
#kiichi
（一十との会話を終えた。少しだけ距離が縮まった気がする）[p]
[jump target="*status_up"]


; ========================================================
; エピソード1 (親密度10以上 ＆ 未読)
; ========================================================
*event1
[cm]
[chara_ptext name="kiichi"]
#kiichi
一十が一人で銃の整備をしているのを見かけた。声をかけてみよう。[p]

[link target="*event1_choice1"]【1】整備の邪魔をしないよう見ている（親密度 +0）[endlink][r]
[link target="*event1_choice2"]【2】整備の手際を褒める（親密度 +10）[endlink][r]
[link target="*event1_choice3"]【3】何か手伝えることはないか聞く（親密度 +20）[endlink][r]
[s]

*event1_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*event1_end"]

*event1_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*event1_end"]

*event1_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*event1_end"]

*event1_end
#kiichi
（一十は淡々と作業を続けながらも、少しだけ話し相手になってくれた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード2 (親密度20以上 ＆ 未読)
; ========================================================
*event2
[cm]
[chara_ptext name="kiichi"]
#kiichi
一十と話をしていると、彼がふと遠くの空を見つめた。[p]

[link target="*event2_choice1"]【1】故郷のことについて尋ねる（親密度 +0）[endlink][r]
[link target="*event2_choice2"]【2】これまでの過酷な戦いについて聞く（親密度 +10）[endlink][r]
[link target="*event2_choice3"]【3】戦いが終わったら何をしたいか聞く（親密度 +20）[endlink][r]
[s]

*event2_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*event2_end"]

*event2_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*event2_end"]

*event2_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*event2_end"]

*event2_end
#kiichi
（彼は少し寂しそうな、だが力強い微笑みを浮かべた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード3 (親密度30以上 ＆ 未読)
; ========================================================
*event3
[cm]
[chara_ptext name="kiichi"]
#kiichi
（一十が何かを警戒している様子だ。慎重に声をかける）[p]

[link target="*event3_choice1"]【1】背後からそっと近づく（親密度 +0）[endlink][r]
[link target="*event3_choice2"]【2】正面から名前を呼ぶ（親密度 +10）[endlink][r]
[link target="*event3_choice3"]【3】危険はないかと真っ先に心配する（親密度 +20）[endlink][r]
[s]

*event3_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*event3_end"]

*event3_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*event3_end"]

*event3_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*event3_end"]

*event3_end
#kiichi
（一十は安堵したように息を吐いた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード5 (親密度40以上 ＆ 未読)
; ========================================================
*event5
[cm]
[chara_ptext name="kiichi"]
#kiichi
（一十との信頼がかなり深まった。彼の秘められた信念について話してみる）[p]

[link target="*event5_choice1"]【1】信じる道を突き進めと言う（親密度 +0）[endlink][r]
[link target="*event5_choice2"]【2】自分もその道を手伝うと伝える（親密度 +10）[endlink][r]
[link target="*event5_choice3"]【3】どんな時も君の味方だと伝える（親密度 +20）[endlink][r]
[s]

*event5_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*event5_end"]

*event5_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*event5_end"]

*event5_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*event5_end"]

*event5_end
#kiichi
（一十の瞳に、強い信頼の光が宿った）[p]
[jump target="*status_up"]


; ========================================================
; エピソード6 (親密度50以上 ＆ 未読)
; ========================================================
*event6
[cm]
[chara_ptext name="kiichi"]
#kiichi
（一十はもう、背中を預けるにふさわしい親友だ）[p]

[link target="*event6_choice1"]【1】これからも共に歩もうと握手を求める（親密度 +0）[endlink][r]
[link target="*event6_choice2"]【2】命をかけてお互いを守ろうと誓う（親密度 +10）[endlink][r]
[link target="*event6_choice3"]【3】深い友情を言葉にして伝える（親密度 +20）[endlink][r]
[s]

*event6_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*event6_end"]

*event6_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*event6_end"]

*event6_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*event6_end"]

*event6_end
#kiichi
（私たちは固い約束を交わした）[p]
[jump target="*status_up"]


; ========================================================
; 日常会話 (フォールバック用)
; ========================================================

*generic_event1
[cm]
[chara_ptext name="kiichi"]
#kiichi
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event2
[cm]
[chara_ptext name="kiichi"]
#kiichi
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event3
[cm]
[chara_ptext name="kiichi"]
#kiichi
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event4
[cm]
[chara_ptext name="kiichi"]
#kiichi
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event5
[cm]
[chara_ptext name="kiichi"]
#kiichi
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]


; ========================================================
; 共通終了処理 ＆ パラメータ上昇
; ========================================================
*status_up
[cm]
[iscript]
// 1. 親密度の加算
var state = f.chara_state[tf.targetId];
if (state) {
    state.affinity = Math.min(100, (state.affinity || 0) + tf.affinityAdd);
    tf.trust = state.affinity;
}

// 2. 既読エピソードのマーク保存
if (tf.currentEpisodeId) {
    if (state) state.viewed[tf.currentEpisodeId] = true;
}

// 3. パラメータ上昇 (一十は体力 PHI)
f.phi = (f.phi || 0) + 1;
tf.paramName = "体力(PHI)";
[endscript]

[emb exp="tf.targetName"] との親密度が上昇した！[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]

[return]