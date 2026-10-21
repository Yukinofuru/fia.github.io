;===========================================================
; 診療パート：秀一
;===========================================================

;-----------------------------------------------------------
;入室時の反応（信頼度5段階）
;-----------------------------------------------------------
*enter_room
[cm]
[uiSetMenu]

[iscript]
var state = f.chara_state[tf.targetId] || { affinity: 0, info: 0, erosion: 10 };
tf.trust = state.affinity;
[endscript]

[chara_ptext name="秀一"]
#秀一
[if exp="tf.trust >= 80"]
    「{秀一：ここに親愛・信頼度極高（80以上）の入室会話}」[r]
    秀一は非常にリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 60"]
    「{秀一：ここに高信頼度（60〜79）の入室会話}」[r]
    秀一はリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 40"]
    「{秀一：ここに中信頼度（40〜59）の入室会話}」[r]
    秀一は淡々と入室してきた。[l][r]
[elsif exp="tf.trust >= 20"]
    「{秀一：ここに低信頼度（20〜39）の入室会話}」[r]
    秀一は少し警戒した様子で入室してきた。[l][r]
[else]
    「{秀一：ここに敵対・信頼度極低（20未満）の入室会話}」[r]
    秀一は強い警戒心を露わにして入室してきた。[l][r]
[endif]
[return]


; -----------------------------------------------------------
; カウンセリング (カウンセリングイベント/日常会話)
; -----------------------------------------------------------

; --- カウンセリングイベント0 (初回) ---
*counseling_0
[cm]
#kiichi
「（カウンセリング初回イベント。彼を精神的にリラックスさせよう）」[p]

[link target="*counseling_0_choice1"]【1】隊員たちの訓練状況について聞く（親密度 +0）[endlink][r]
[link target="*counseling_0_choice2"]【2】隊長としての重圧を気遣う（親密度 +10）[endlink][r]
[link target="*counseling_0_choice3"]【3】彼の真面目で責任感の強い姿勢を称賛する（親密度 +20）[endlink][r]
[s]

*counseling_0_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*counseling_0_end"]

*counseling_0_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*counseling_0_end"]

*counseling_0_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*counseling_0_end"]

*counseling_0_end
#kiichi
（秀一は少し驚いたようだが、真摯に礼を言ってくれた）[p]
[jump target="*counseling_status_up"]


; --- カウンセリングイベント1 (親密度10以上 ＆ 未読) ---
*counseling_1
[cm]
#kiichi
「（カウンセリングイベント1。彼の剣術と生き方のポリシーについて尋ねる）」[p]

[link target="*counseling_1_choice1"]【1】剣術の厳しさを問う（親密度 +0）[endlink][r]
[link target="*counseling_1_choice2"]【2】自分自身の身体も大切にするよう諭す（親密度 +10）[endlink][r]
[link target="*counseling_1_choice3"]【3】彼のようなブレない強さを学びたいと伝える（親密度 +20）[endlink][r]
[s]

*counseling_1_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*counseling_1_end"]

*counseling_1_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*counseling_1_end"]

*counseling_1_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*counseling_1_end"]

*counseling_1_end
#kiichi
（秀一は少し照れくさそうに笑い、彼らしい真面目な決意を話した）[p]
[jump target="*counseling_status_up"]

; ※ counseling_2, 3, 5, 6 はcounseling_1にジャンプさせます
*counseling_2
[cm]
#kiichi
「（カウンセリングイベント2。彼との距離が少し縮まった気がする。さらに話を聞いてみよう）」[p]

[link target="*counseling_2_choice1"]【1】無難な日常の雑談をする（親密度 +0）[endlink][r]
[link target="*counseling_2_choice2"]【2】最近の睡眠や疲労について気遣う（親密度 +10）[endlink][r]
[link target="*counseling_2_choice3"]【3】秀一の考え方や強さに共感を示す（親密度 +20）[endlink][r]
[s]

*counseling_2_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*counseling_2_end"]

*counseling_2_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*counseling_2_end"]

*counseling_2_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*counseling_2_end"]

*counseling_2_end
#秀一
「{秀一：ここにカウンセリング会話（レベル2：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


*counseling_3
[cm]
#kiichi
「（カウンセリングイベント3。彼の深い内面に少しだけ触れてみよう）」[p]

[link target="*counseling_3_choice1"]【1】気分転換の方法について話す（親密度 +0）[endlink][r]
[link target="*counseling_3_choice2"]【2】かつての思い出や過去について尋ねる（親密度 +10）[endlink][r]
[link target="*counseling_3_choice3"]【3】自分が全力で秀一を支えたいと伝える（親密度 +20）[endlink][r]
[s]

*counseling_3_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*counseling_3_end"]

*counseling_3_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*counseling_3_end"]

*counseling_3_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*counseling_3_end"]

*counseling_3_end
#秀一
「{秀一：ここにカウンセリング会話（レベル3：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


*counseling_5
[cm]
#kiichi
「（カウンセリングイベント5。彼が抱える重い責任や葛藤について聞いてみよう）」[p]

[link target="*counseling_5_choice1"]【1】無言で話が終わるのを待つ（親密度 +0）[endlink][r]
[link target="*counseling_5_choice2"]【2】無理をしすぎないように優しく諭す（親密度 +10）[endlink][r]
[link target="*counseling_5_choice3"]【3】運命を分かち合う覚悟があると固く誓う（親密度 +20）[endlink][r]
[s]

*counseling_5_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*counseling_5_end"]

*counseling_5_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*counseling_5_end"]

*counseling_5_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*counseling_5_end"]

*counseling_5_end
#秀一
「{秀一：ここにカウンセリング会話（レベル5：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


*counseling_6
[cm]
#kiichi
「（カウンセリングイベント6。彼との間に揺るぎない絶対の信頼が築かれたことを実感する）」[p]

[link target="*counseling_6_choice1"]【1】たわいもない近況について話す（親密度 +0）[endlink][r]
[link target="*counseling_6_choice2"]【2】これまで一緒に歩んできた時間を振り返る（親密度 +10）[endlink][r]
[link target="*counseling_6_choice3"]【3】何があっても最後まで共に戦い抜くと約束する（親密度 +20）[endlink][r]
[s]

*counseling_6_choice1
[eval exp="tf.affinityAdd = 0"]
[jump target="*counseling_6_end"]

*counseling_6_choice2
[eval exp="tf.affinityAdd = 10"]
[jump target="*counseling_6_end"]

*counseling_6_choice3
[eval exp="tf.affinityAdd = 20"]
[jump target="*counseling_6_end"]

*counseling_6_end
#秀一
「{秀一：ここにカウンセリング会話（レベル6：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


; --- カウンセリング日常会話 (フォールバック用) ---

*counseling_generic5
[cm]
#kiichi
「最近の調子はどうだ？」[l][r]
#秀一
「{秀一：ここにカウンセリング会話（信頼度極高 80以上）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic4
[cm]
#kiichi
「最近の調子はどうだ？」[l][r]
#秀一
「{秀一：ここにカウンセリング会話（信頼度高 60〜79）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic3
[cm]
#kiichi
「最近の調子はどうだ？」[l][r]
#秀一
「{秀一：ここにカウンセリング会話（信頼度中 40〜59）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic2
[cm]
#kiichi
「最近の調子はどうだ？」[l][r]
#秀一
「{秀一：ここにカウンセリング会話（信頼度低 20〜39）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic1
[cm]
#kiichi
「最近の調子はどうだ？」[l][r]
#秀一
「{秀一：ここにカウンセリング会話（信頼度極低 20未満）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]


; --- カウンセリングステータス加算共通処理 ---
*counseling_status_up
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
[endscript]
#kiichi
（秀一とのカウンセリングの時間を過ごした）[p]
信頼度が上がった！（現在: [emb exp="tf.trust"]）[l][r]
[return]


; -----------------------------------------------------------
; 3. 診療 (診療イベント / 通常診療)
; -----------------------------------------------------------

*checkup_generic
[cm]
#kiichi
「少し身体を診させてもらう。……ついでに聞きたいことがあるんだが」[l][r]
#秀一
「君にはまだ秘密ね」[p]
#kiichi
「そうか、わかった」[p]
#kiichi
（警戒されてしまい、診療を断られた……）[p]
[return]

*checkup_1
[cm]
#kiichi
「少し身体を診させてもらう。……ついでに聞きたいことがあるんだが」[l][r]
#秀一
「特に変わりはないようだ」[l][r]
[complete_checkup_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（診察を終え、カルテの情報が少し開示された）[p]
[return]

*checkup_2
[cm]
#kiichi
「少し身体を診させてもらう。……ついでに聞きたいことがあるんだが」[l][r]
#秀一
「{秀一：ここに診療・情報開示会話（信頼度高 60〜79）}」[l][r]
[complete_checkup_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（診察を終え、カルテの情報がさらに開示された）[p]
[return]

*checkup_3
[cm]
#kiichi
「少し身体を診させてもらう。……ついでに聞きたいことがあるんだが」[l][r]
#秀一
「{秀一：ここに診療・情報開示会話（信頼度極高 80以上）}」[l][r]
[complete_checkup_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（診察を終え、カルテの全情報が開示された）[p]
[return]

*checkup_info3
[cm]
#kiichi
「診察させてくれ」[p]
#秀一
「診察ですか。私の身体データは開示されている通りです。特に異常はありません」[p]
#kiichi
（診察を行い、特に異常が無いことを確認した）[p]
[return]


; -----------------------------------------------------------
; 4. 尋問 (尋問イベント / 通常尋問後)
; -----------------------------------------------------------

*interrogate_generic
[cm]
#kiichi
（尋問はすべて完了している。これ以上の自白剤は不要だ）[p]
[return]

*interrogate_1
[cm]
[eval exp="tf.correctChoice = 'B'"]

#kiichi
「秀一、この『特別な薬』を投与する。腕を出してくれ」[l][r]
#秀一
「{秀一：ここに不審がる、または拒絶する会話}」[l][r]
#kiichi
（なんとか相手を納得させなければ……。どの言い訳を使う？）[p]

[link target="*interrogate_choice_a"]【1】「{秀一に対する言い訳パターンA}」[endlink][r]
[link target="*interrogate_choice_b"]【2】「{秀一に対する言い訳パターンB}」[endlink][r]
[link target="*interrogate_choice_c"]【3】「{秀一に対する言い訳パターンC}」[endlink][r]
[s]

*interrogate_choice_a
[cm]
[if exp="tf.correctChoice == 'A'"]
    [jump target="*interrogate_good"]
[else]
    [jump target="*interrogate_bad_a"]
[endif]

*interrogate_choice_b
[cm]
[if exp="tf.correctChoice == 'B'"]
    [jump target="*interrogate_good"]
[else]
    [jump target="*interrogate_bad_b"]
[endif]

*interrogate_choice_c
[cm]
[if exp="tf.correctChoice == 'C'"]
    [jump target="*interrogate_good"]
[else]
    [jump target="*interrogate_bad_c"]
[endif]

; --- 失敗パターンA ---
*interrogate_bad_a
#秀一
「{秀一：言い訳Aに対する失望・拒絶・怒りの会話}」[l][r]
[jump target="*interrogate_fail"]

; --- 失敗パターンB ---
*interrogate_bad_b
#秀一
「{秀一：言い訳Bに対する失望・拒絶・怒りの会話}」[l][r]
[jump target="*interrogate_fail"]

; --- 失敗パターンC ---
*interrogate_bad_c
#秀一
「{秀一：言い訳Cに対する失望・拒絶・怒りの会話}」[l][r]
[jump target="*interrogate_fail"]

; --- 失敗共通処理（ペナルティ：信頼度ゼロ） ---
*interrogate_fail
[iscript]
var state = f.chara_state[tf.targetId];
if (state) {
    state.affinity = 0; 
    tf.trust = 0;
}
[endscript]
#kiichi
秀一は完全に心を閉ざしてしまった……。[p]
[return]

; --- 成功パターン（適切な言い訳） ---
*interrogate_good
#秀一
「{秀一：言い訳に納得する、あるいは痛いところを突かれて屈する会話}」[l][r]
#kiichi
（薬が回り、秀一の意識が混濁し始めた……！）[l][r]

[iscript]
// 情報と引き換えに信頼度が大きく下がる（例：-30）
var state = f.chara_state[tf.targetId];
if (state) {
    state.affinity = Math.max(0, (state.affinity || 0) - 30); 
    tf.trust = state.affinity;
}
[endscript]

[complete_interrogate_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#秀一
「{秀一：自白剤によって漏らしてしまう核心的な情報・本音の会話}」[l][r]
#kiichi
（決定的な証拠となる情報を聞き出し、カルテ情報を開示した！現在: [emb exp="tf.trust"]）[l][r]
[return]


*interrogate_2
[cm]
#kiichi
「薬の追加投与を行う」[p]
#秀一
「またですか。まあ、必要なら構いませんが」[p]
[complete_interrogate_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（尋問情報レベル2が解放された！）[p]
[return]


*interrogate_3
[cm]
#kiichi
「最後の薬液投与を行う」[p]
#秀一
「これで最後ですね。私の知る秘密、すべてお伝えしましょう」[p]
[complete_interrogate_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（尋問情報レベル3が解放された！）[p]
[return]


*interrogate_info3
[cm]
#kiichi
（すでに尋問はすべて完了している。これ以上の自白剤は不要だ）[p]
[return]