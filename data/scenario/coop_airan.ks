; ========================================================
; 交流：藍爛
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

; 状態管理によるエピソード自動分岐
[dispatch_coop_event chara_id="airan"]
[s]


; ========================================================
; エピソード0 (初回イベント)
; ========================================================
*event0
[cm]
[chara_ptext name="kiichi"]
#kiichi
藍爛の元を訪れた。彼女の好戦的な態度は相変わらずだが、少しだけ話を聞いてくれた。[l][r]

[link target="*event0_choice1"]【1】彼女の武器について聞く（親密度 +0）[endlink][r]
[link target="*event0_choice2"]【2】最近の戦闘の調子を聞く（親密度 +10）[endlink][r]
[link target="*event0_choice3"]【3】ケガは無いか心配する（親密度 +20）[endlink][r]
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
（藍爛と少し打ち解けたような気がする）[p]
[jump target="*status_up"]


; ========================================================
; エピソード1 (親密度10以上 ＆ 未読)
; ========================================================
*event1
[cm]
[chara_ptext name="kiichi"]
#kiichi
藍爛の訓練の様子を見に行ってみよう。[p]

[link target="*event1_choice1"]【1】力任せに振るのを指摘する（親密度 +0）[endlink][r]
[link target="*event1_choice2"]【2】重心の置き方をアドバイスする（親密度 +10）[endlink][r]
[link target="*event1_choice3"]【3】素直にそのパワーを褒める（親密度 +20）[endlink][r]
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
（藍爛は少し嬉しそうにしている）[p]
[jump target="*status_up"]


; ========================================================
; エピソード2 (親密度20以上 ＆ 未読)
; ========================================================
*event2
[cm]
[chara_ptext name="kiichi"]
#kiichi
藍爛と一緒に少し運動をして汗を流した。[l][r]
彼女の純粋な一面に触れた気がする。[l][r]

[link target="*event2_choice1"]【1】疲れたから休もうと言う（親密度 +0）[endlink][r]
[link target="*event2_choice2"]【2】まだまだ動けるぞと意気込む（親密度 +10）[endlink][r]
[link target="*event2_choice3"]【3】彼女の体力に感服する（親密度 +20）[endlink][r]
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
（充実した時間だった）[p]
[jump target="*status_up"]


; ========================================================
; エピソード3 (親密度30以上 ＆ 未読)
; ========================================================
*event3
[cm]
[chara_ptext name="kiichi"]
#kiichi
（藍爛が少し沈んだ顔をしている。どう声をかけようか）[p]

[link target="*event3_choice1"]【1】黙って隣に座る（親密度 +0）[endlink][r]
[link target="*event3_choice2"]【2】温かい飲み物を渡す（親密度 +10）[endlink][r]
[link target="*event3_choice3"]【3】何があったか優しく尋ねる（親密度 +20）[endlink][r]
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
（藍爛は少しだけ表情を緩めた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード5 (親密度40以上 ＆ 未読)
; ========================================================
*event5
[cm]
[chara_ptext name="kiichi"]
#kiichi
（藍爛との信頼がずいぶん深まった。彼女の過去について話してみるか）[p]

[link target="*event5_choice1"]【1】無理に話さなくていいと言う（親密度 +0）[endlink][r]
[link target="*event5_choice2"]【2】自分を信じてほしいと伝える（親密度 +10）[endlink][r]
[link target="*event5_choice3"]【3】どんな彼女でも受け入れると誓う（親密度 +20）[endlink][r]
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
（心を通わせられた気がした）[p]
[jump target="*status_up"]


; ========================================================
; エピソード6 (親密度50以上 ＆ 未読)
; ========================================================
*event6
[cm]
[chara_ptext name="kiichi"]
#kiichi
（藍爛はもう、こちらに全幅の信頼を置いている）[p]

[link target="*event6_choice1"]【1】これからも頼りにしていると言う（親密度 +0）[endlink][r]
[link target="*event6_choice2"]【2】必ず平和な未来を掴もうと約束する（親密度 +10）[endlink][r]
[link target="*event6_choice3"]【3】ずっと隣で見守っていると伝える（親密度 +20）[endlink][r]
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
（固い約束を交わした）[p]
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

// 3. パラメータ上昇 (藍爛は技術 KNO)
f.kno = (f.kno || 0) + 1;
tf.paramName = "技術(KNO)";
[endscript]

[emb exp="tf.targetName"] との親密度が上昇した！[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]

[return]