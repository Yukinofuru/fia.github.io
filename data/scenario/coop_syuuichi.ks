; ========================================================
; 交流：秀一
; ========================================================

*start
[cm]
[uiSetMenu]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]

[dispatch_coop_event chara_id="syuuichi"]
[s]

*event0
[cm]
#kiichi
（秀一との初めての交流イベント）[p]
[link target="*event0_choice1"]【1】そっとしておく（親密度 +0）[endlink][r]
[link target="*event0_choice2"]【2】話しかけてみる（親密度 +10）[endlink][r]
[link target="*event0_choice3"]【3】真剣に向き合う（親密度 +20）[endlink][r]
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
（お互いのことを少し知ることができた）[p]
[jump target="*status_up"]

*event1
[cm]
[chara_ptext name="kiichi"]
#kiichi
秀一の元を訪れた。[l][r]
生真面目な彼と、少しだけ言葉を交わした。[l][r]

[link target="*event1_choice1"]【1】そっとしておく（親密度 +0）[endlink][r]
[link target="*event1_choice2"]【2】話しかけてみる（親密度 +10）[endlink][r]
[link target="*event1_choice3"]【3】真剣に向き合う（親密度 +20）[endlink][r]
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
（少しだけ距離が縮まった気がする）[p]
[jump target="*status_up"]

*event2
[cm]
[chara_ptext name="kiichi"]
#kiichi
秀一と一緒に剣術の型を確認した。[l][r]
彼の実直な姿勢にはいつも背筋が伸びる思いだ。[l][r]

[link target="*event2_choice1"]【1】そっとしておく（親密度 +0）[endlink][r]
[link target="*event2_choice2"]【2】話しかけてみる（親密度 +10）[endlink][r]
[link target="*event2_choice3"]【3】真剣に向き合う（親密度 +20）[endlink][r]
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
（有意義な時間を過ごすことができた）[p]
[jump target="*status_up"]

*event3
[cm]
#kiichi
（秀一との親密なイベント3）[p]
[link target="*event3_choice1"]【1】そっとしておく（親密度 +0）[endlink][r]
[link target="*event3_choice2"]【2】話しかけてみる（親密度 +10）[endlink][r]
[link target="*event3_choice3"]【3】真剣に向き合う（親密度 +20）[endlink][r]
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
（さらに仲が深まった気がする）[p]
[jump target="*status_up"]

*event5
[cm]
#kiichi
（秀一との特別なイベント5）[p]
[link target="*event5_choice1"]【1】そっとしておく（親密度 +0）[endlink][r]
[link target="*event5_choice2"]【2】話しかけてみる（親密度 +10）[endlink][r]
[link target="*event5_choice3"]【3】真剣に向き合う（親密度 +20）[endlink][r]
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
（信頼し合える関係になってきた）[p]
[jump target="*status_up"]

*event6
[cm]
#kiichi
（秀一との絆を深めるイベント6）[p]
[link target="*event6_choice1"]【1】そっとしておく（親密度 +0）[endlink][r]
[link target="*event6_choice2"]【2】話しかけてみる（親密度 +10）[endlink][r]
[link target="*event6_choice3"]【3】真剣に向き合う（親密度 +20）[endlink][r]
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
（固い絆で結ばれた気がする）[p]
[jump target="*status_up"]

*generic_event1
[cm]
[eval exp="tf.affinityAdd = 5"]
[jump target="*generic_event_content"]
*generic_event2
[cm]
[eval exp="tf.affinityAdd = 5"]
[jump target="*generic_event_content"]
*generic_event3
[cm]
[eval exp="tf.affinityAdd = 5"]
[jump target="*generic_event_content"]
*generic_event4
[cm]
[eval exp="tf.affinityAdd = 5"]
[jump target="*generic_event_content"]
*generic_event5
[cm]
[eval exp="tf.affinityAdd = 5"]
[jump target="*generic_event_content"]

*generic_event_content
[chara_ptext name="kiichi"]
#kiichi
[emb exp="tf.targetName"] と時間を過ごした。[l][r]
[jump target="*status_up"]

*status_up
[cm]
[iscript]
// 1. 親密度の加算
var state = f.chara_state[tf.targetId];
if (state) {
    state.affinity = Math.min(100, (state.affinity || 0) + tf.affinityAdd);
    tf.trust = state.affinity;
}

// Save viewed episode to state
if (tf.currentEpisodeId) {
    if (state) state.viewed[tf.currentEpisodeId] = true;
}

// 2. キャラ固有のパラメータ加算
f.phi = (f.phi || 0) + 1;
    tf.paramName = "体力(PHI)";
[endscript]

親密度が上昇した！（現在: [emb exp="tf.trust"]）[l][r]
[emb exp="tf.paramName"] が 1 上昇した。[p]
[return]