; ========================================================
; 交流：世紬
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="bg_room/room_a.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

[setsuSmile]
[setsuShow]

; 状態管理によるエピソード自動分岐
[dispatch_coop_event chara_id="setsu"]
[s]


; ========================================================
; エピソード0 (初回イベント)
; ========================================================
*event0
[cm]
#kiichi
（世紬との初めての交流イベント。どんな話をしようか？）[p]

[link target="*event0_choice1"]【1】他愛のない日常について話す（親密度 +0）[endlink][r]
[link target="*event0_choice2"]【2】仕事や任務の調子を聞く（親密度 +10）[endlink][r]
[link target="*event0_choice3"]【3】世紬の趣味について尋ねる（親密度 +20）[endlink][r]
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
「ありがとう、少し緊張がほぐれたよ」[p]
#setsu
「ふふ、お疲れ様。いつでも相手をしてあげるわよ」[p]
[jump target="*status_up"]


; ========================================================
; エピソード1 (親密度10以上 ＆ 未読)
; ========================================================
*event1
[cm]
#kiichi
（世紬と少し打ち解けてきた。彼女の術の秘訣について聞いてみようか）[p]

[link target="*event1_choice1"]【1】感覚的にやっているのか聞く（親密度 +0）[endlink][r]
[link target="*event1_choice2"]【2】具体的な制御のコツを聞く（親密度 +10）[endlink][r]
[link target="*event1_choice3"]【3】コツコツと練習したのか聞く（親密度 +20）[endlink][r]
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
#setsu
「術はね、イメージと集中力がすべてよ。君にも見込みはあるわ」[p]
#kiichi
「なるほど……参考にするよ」[p]
[jump target="*status_up"]


; ========================================================
; エピソード2 (親密度20以上 ＆ 未読)
; ========================================================
*event2
[cm]
#kiichi
世紬と少しだけ深い話をした。[l][r]
天才ゆえの視点には、学ぶべきところが多い。[l][r]

[link target="*event2_choice1"]【1】天才の視点は孤独だと思うか（親密度 +0）[endlink][r]
[link target="*event2_choice2"]【2】凡人の苦悩がわかるか（親密度 +10）[endlink][r]
[link target="*event2_choice3"]【3】自分が支えになれるか（親密度 +20）[endlink][r]
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
#setsu
「孤独なんて思ったことはないわよ。ただ、君と話すのは退屈しなくていいわね」[p]
#kiichi
（彼女の言葉に、少しだけ救われた気がした）[p]
[jump target="*status_up"]


; ========================================================
; エピソード3 (親密度30以上 ＆ 未読)
; ========================================================
*event3
[cm]
#kiichi
（世紬との信頼関係が深まってきたのを感じる。過去の事件について少し尋ねてみるか……）[p]

[link target="*event3_choice1"]【1】宮廷術使いだった頃について聞く（親密度 +0）[endlink][r]
[link target="*event3_choice2"]【2】犯した罪の内容について深く聞く（親密度 +10）[endlink][r]
[link target="*event3_choice3"]【3】これからの未来についてどう考えているか聞く（親密度 +20）[endlink][r]
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
#setsu
「過去は過去、未来は未来よ。だけど……君といる未来なら、少しは変えられるかもしれないわね」[p]
[jump target="*status_up"]


; ========================================================
; エピソード5 (親密度40以上 ＆ 未読)
; ========================================================
*event5
[cm]
#kiichi
（世紬の顔が以前よりも穏やかに見える。彼女の受けている呪いのことについて相談に乗ろう）[p]

[link target="*event5_choice1"]【1】身体の具合は平気なのか心配する（親密度 +0）[endlink][r]
[link target="*event5_choice2"]【2】自分に呪いを緩和する手伝いができるか聞く（親密度 +10）[endlink][r]
[link target="*event5_choice3"]【3】呪いに屈せず、一緒に生き抜こうと伝える（親密度 +20）[endlink][r]
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
#setsu
「私のためにそこまで……。ふふ、頼もしい衛生兵さんね。ありがとう、古虫君」[p]
[jump target="*status_up"]


; ========================================================
; エピソード6 (親密度50以上 ＆ 未読)
; ========================================================
*event6
[cm]
#kiichi
（世紬との間に、確固たる絆を感じる。これから先、どんな困難が待ち受けていようとも――）[p]

[link target="*event6_choice1"]【1】最後まで衛生兵として守り抜くと誓う（親密度 +0）[endlink][r]
[link target="*event6_choice2"]【2】お互いに背中を預け合おうと約束する（親密度 +10）[endlink][r]
[link target="*event6_choice3"]【3】心から大切に思っていると伝える（親密度 +20）[endlink][r]
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
#setsu
「あはは、そんなに真面目な顔をしないでよ。……でも、嬉しいわ。私も君を離さないから」[p]
[jump target="*status_up"]


; ========================================================
; 日常会話 (フォールバック用)
; ========================================================

*generic_event1
[cm]
#kiichi
「今日も術について教えてくれないか？」[p]
#setsu
「いいわよ。私も暇だったから」[p]
#kiichi
「助かる」[p]
世紬から術について丁寧に教えてもらった。[p]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event2
[cm]
#kiichi
「今日も術について教えてくれないか？」[p]
#setsu
「いいわよ。私も暇だったから」[p]
#kiichi
「助かる」[p]
世紬から術について丁寧に教えてもらった。[p]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event3
[cm]
#kiichi
「今日も術について教えてくれないか？」[p]
#setsu
「いいわよ。私も暇だったから」[p]
#kiichi
「助かる」[p]
世紬から術について丁寧に教えてもらった。[p]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event4
[cm]
#kiichi
「今日も術について教えてくれないか？」[p]
#setsu
「いいわよ。私も暇だったから」[p]
#kiichi
「助かる」[p]
世紬から術について丁寧に教えてもらった。[p]
[eval exp="tf.affinityAdd = 5"]
[jump target="*status_up"]

*generic_event5
[cm]
#kiichi
「今日も術について教えてくれないか？」[p]
#setsu
「いいわよ。私も暇だったから」[p]
#kiichi
「助かる」[p]
世紬から術について丁寧に教えてもらった。[p]
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

// 3. パラメータ上昇 (世紬は術力 SPI)
f.spi = (f.spi || 0) + 1;
tf.paramName = "術力(SPI)";
[endscript]

親密度が上昇した！（現在: [emb exp="tf.trust"]）[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]

#kiichi
「ありがとう、助かった。またお願いするよ」[p]
#setsu
「ふふ、いつでもいいわ」[p]
#kiichi
充実した時間を過ごした。[p]
[chara_hide name="setsu" wait=false]
[return]