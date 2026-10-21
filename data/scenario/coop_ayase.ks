; ========================================================
; 交流：綾瀬
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

; 状態管理によるエピソード自動分岐
[dispatch_coop_event chara_id="ayase"]
[s]


; ========================================================
; エピソード0 (初回イベント)
; ========================================================
*event0
[cm]
[chara_ptext name="kiichi"]
#kiichi
綾瀬の元を訪れた。彼の合理的な考え方は、時に参考になる。[l][r]

[link target="*event0_choice1"]
【1】合理性について議論する（親密度 +0）[endlink][r]
[link target="*event0_choice2"]【2】最近の部隊の状況を聞く（親密度 +10）[endlink][r]
[link target="*event0_choice3"]【3】疲れを癒やす差し入れをする（親密度 +20）[endlink][r]
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
（綾瀬との対話を終えた。少し話が通じるようになった気がする）[p]
[jump target="*status_up"]


; ========================================================
; エピソード1 (親密度10以上 ＆ 未読)
; ========================================================
*event1
[cm]
[chara_ptext name="kiichi"]
#kiichi
綾瀬が資料室で作業している。声をかけよう。[p]

[link target="*event1_choice1"]
【1】無言で手伝いを申し出る（親密度 +0）[endlink][r]
[link target="*event1_choice2"]【2】最近の調査の進捗について聞く（親密度 +10）[endlink][r]
[link target="*event1_choice3"]【3】肩が凝っていないか聞く（親密度 +20）[endlink][r]
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
（綾瀬は少し驚いた顔をしたが、淡々と指示を出してくれた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード2 (親密度20以上 ＆ 未読)
; ========================================================
*event2
[cm]
[chara_ptext name="kiichi"]
#kiichi
綾瀬が少し考え込んでいる。どう声をかけようか。[p]

[link target="*event2_choice1"]
【1】冷たく「仕事に戻れ」と言う（親密度 +0）[endlink][r]
[link target="*event2_choice2"]【2】温かい飲み物を用意する（親密度 +10）[endlink][r]
[link target="*event2_choice3"]【3】何か悩みがあるのか聞く（親密度 +20）[endlink][r]
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
（綾瀬は少し表情を和らげ、自分の考えを少し話してくれた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード3 (親密度30以上 ＆ 未読)
; ========================================================
*event3
[cm]
[chara_ptext name="kiichi"]
#kiichi
（綾瀬が真剣な顔でこちらを見ている）[p]

[link target="*event3_choice1"]
【1】姿勢を正して用件を聞く（親密度 +0）[endlink][r]
[link target="*event3_choice2"]【2】自分へのダメ出しを覚悟する（親密度 +10）[endlink][r]
[link target="*event3_choice3"]【3】お疲れ様と笑顔で声をかける（親密度 +20）[endlink][r]
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
（綾瀬は微かに口元を緩め、真面目な評価をしてくれた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード5 (親密度40以上 ＆ 未読)
; ========================================================
*event5
[cm]
[chara_ptext name="kiichi"]
#kiichi
（綾瀬との間に深い信頼が構築された。彼の本音を聞き出せるかもしれない）[p]

[link target="*event5_choice1"]
【1】彼の生き方に敬意を表する（親密度 +0）[endlink][r]
[link target="*event5_choice2"]【2】自分も合理的に動くと誓う（親密度 +10）[endlink][r]
[link target="*event5_choice3"]【3】彼の助けになりたいと告げる（親密度 +20）[endlink][r]
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
（綾瀬は静かに、だが深く頷いた）[p]
[jump target="*status_up"]


; ========================================================
; エピソード6 (親密度50以上 ＆ 未読)
; ========================================================
*event6
[cm]
[chara_ptext name="kiichi"]
#kiichi
（綾瀬はもう、言葉を交わさずとも意図を察しあえる最高の仲間だ）[p]

[link target="*event6_choice1"]
【1】今後も彼に従うと言う（親密度 +0）[endlink][r]
[link target="*event6_choice2"]【2】互いの安全を第一にしようと語る（親密度 +10）[endlink][r]
[link target="*event6_choice3"]【3】深い信頼を互いに誓い合う（親密度 +20）[endlink][r]
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
（綾瀬ははっきりと満足そうな笑みを浮かべた）[p]
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

// 3. パラメータ上昇 (綾瀬は体力 PHI)
f.phi = (f.phi || 0) + 1;
tf.paramName = "体力(PHI)";
[endscript]

[emb exp="tf.targetName"] との親密度が上昇した！[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]

[return]