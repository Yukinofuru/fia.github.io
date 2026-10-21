; ========================================================
; 交流：明昼
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

; 状態管理によるエピソード自動分岐
[dispatch_coop_event chara_id="akehiru"]
[s]


; ========================================================
; エピソード0 (初回イベント)
; ========================================================
*event0
[cm]
[chara_ptext name="kiichi"]
#kiichi
明昼の元を訪れた。彼はいつも真面目だ。少し息抜きも必要かもしれない。[l][r]

[link target="*event0_choice1"]【1】仕事の手を休めて休めと言う（親密度 +0）[endlink][r]
[link target="*event0_choice2"]【2】最近の体調を気遣う（親密度 +10）[endlink][r]
[link target="*event0_choice3"]【3】甘い差し入れを渡す（親密度 +20）[endlink][r]
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
（明昼は嬉しそうに微笑んだ。少し距離が縮まった気がする）[p]
[jump target="*status_up"]


; ========================================================
; エピソード1 (親密度10以上 ＆ 未読)
; ========================================================
*event1
[cm]
[chara_ptext name="kiichi"]
#kiichi
明昼が資料を整理している。声をかけてみよう。[p]

[link target="*event1_choice1"]【1】邪魔をしないようそっと見守る（親密度 +0）[endlink][r]
[link target="*event1_choice2"]【2】整理の効率的なコツを教える（親密度 +10）[endlink][r]
[link target="*event1_choice3"]【3】手伝いを申し出る（親密度 +20）[endlink][r]
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
（明昼は照れたように笑いながら、作業を一緒に進めた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード2 (親密度20以上 ＆ 未読)
; ========================================================
*event2
[cm]
[chara_ptext name="kiichi"]
#kiichi
明昼の悩みを聞いた。[l][r]
彼の誠実さは、この部隊にとって貴重なものだ。[l][r]

[link target="*event2_choice1"]【1】あまり深く考えすぎるなと言う（親密度 +0）[endlink][r]
[link target="*event2_choice2"]【2】自分もその悩みを分かち合うと告げる（親密度 +10）[endlink][r]
[link target="*event2_choice3"]【3】彼の誠実さを尊敬していると伝える（親密度 +20）[endlink][r]
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
（明昼は少し救われたような顔をした）[p]
[jump target="*status_up"]


; ========================================================
; エピソード3 (親密度30以上 ＆ 未読)
; ========================================================
*event3
[cm]
[chara_ptext name="kiichi"]
#kiichi
（明昼が何かを一生懸命に隠そうとしている。どう声をかけようか）[p]

[link target="*event3_choice1"]【1】無理に隠さなくてもいいと笑う（親密度 +0）[endlink][r]
[link target="*event3_choice2"]【2】自分には何でも相談してほしいと伝える（親密度 +10）[endlink][r]
[link target="*event3_choice3"]【3】優しく彼の手を握って落ち着かせる（親密度 +20）[endlink][r]
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
（明昼は顔を赤くしながらも、本音を少し漏らしてくれた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード5 (親密度40以上 ＆ 未読)
; ========================================================
*event5
[cm]
[chara_ptext name="kiichi"]
#kiichi
（明昼との信頼がかなり強くなった。彼の抱える不安を少しでも和らげよう）[p]

[link target="*event5_choice1"]【1】衛生兵として体調は保証すると言う（親密度 +0）[endlink][r]
[link target="*event5_choice2"]【2】彼を信じて背中を任せる（親密度 +10）[endlink][r]
[link target="*event5_choice3"]【3】何があっても最後まで守り抜くと伝える（親密度 +20）[endlink][r]
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
（明昼は目に涙を浮かべながら、力強く頷いた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード6 (親密度50以上 ＆ 未読)
; ========================================================
*event6
[cm]
[chara_ptext name="kiichi"]
#kiichi
（明昼はもう、お互いの心が完全に通じ合っている最高の戦友だ）[p]

[link target="*event6_choice1"]【1】これからもずっとよろしくと言う（親密度 +0）[endlink][r]
[link target="*event6_choice2"]【2】二人で必ず生き残ろうと約束する（親密度 +10）[endlink][r]
[link target="*event6_choice3"]【3】深い愛情をそっと口にする（親密度 +20）[endlink][r]
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
（私たちは決して解けない絆を結んだ）[p]
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

// 2. Save viewed episode to state
if (tf.currentEpisodeId) {
    if (state) state.viewed[tf.currentEpisodeId] = true;
}

// 3. パラメータ上昇 (明昼は体力 PHI)
f.phi = (f.phi || 0) + 1;
tf.paramName = "体力(PHI)";
[endscript]

[emb exp="tf.targetName"] との親密度が上昇した！[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]

[return]