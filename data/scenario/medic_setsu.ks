;===========================================================
; 診療パート：世紬
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

[setsuSmile]
[setsuShow]
#setsu
[if exp="tf.trust >= 80"]
    「{世紬：ここに親愛・信頼度極高（80以上）の入室会話}」[r]
    世紬は非常にリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 60"]
    「{世紬：ここに高信頼度（60〜79）の入室会話}」[r]
    世紬はリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 40"]
    「{世紬：ここに中信頼度（40〜59）の入室会話}」[r]
    世紬は淡々と入室してきた。[l][r]
[elsif exp="tf.trust >= 20"]
    「こんばんは、古虫君。元気にしてたかしら？」[p]
    #kiichi
    「まあまあだ」[p]
[else]
    「こんばんは、古虫君。調子はどう？」[p]
    #kiichi
    「まあまあだ」[p]
[endif]
[return]


; -----------------------------------------------------------
; カウンセリング (カウンセリングイベント/日常会話)
; -----------------------------------------------------------

; --- カウンセリングイベント0 (初回) ---
*counseling_0
[cm]
#kiichi
「（カウンセリング初回イベント。最近の精神的な調子について聞いてみよう）」[p]

[link target="*counseling_0_choice1"]【1】無難に世間話をする（親密度 +0）[endlink][r]
[link target="*counseling_0_choice2"]【2】体調や呪いの苦痛について聞く（親密度 +10）[endlink][r]
[link target="*counseling_0_choice3"]【3】世紬の話を聞き手として受け止める（親密度 +20）[endlink][r]
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
「いろいろ大変なんだな……」[p]
#setsu
「心配しなくても大丈夫よ。君がいてくれるんだから」[p]
[jump target="*counseling_status_up"]


; --- カウンセリングイベント1 (親密度10以上 ＆ 未読) ---
*counseling_1
[cm]
#kiichi
「（カウンセリングイベント1。最近眠れているか聞いてみよう）」[p]

[link target="*counseling_1_choice1"]【1】眠れないなら薬を出すと提案する（親密度 +0）[endlink][r]
[link target="*counseling_1_choice2"]【2】ハーブティーを勧める（親密度 +10）[endlink][r]
[link target="*counseling_1_choice3"]【3】隣にいて落ち着くまで話に付き合う（親密度 +20）[endlink][r]
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
#setsu
「君と話していると、心が安らぐわ。ふふ、不思議な衛生兵さんね」[p]
[jump target="*counseling_status_up"]

; ※ counseling_2, 3, 5, 6 はプレースホルダーとしてcounseling_1にジャンプさせます
*counseling_2
[cm]
#kiichi
「（カウンセリングイベント2。彼女との距離が少し縮まった気がする。さらに話を聞いてみよう）」[p]

[link target="*counseling_2_choice1"]【1】無難な日常の雑談をする（親密度 +0）[endlink][r]
[link target="*counseling_2_choice2"]【2】最近の睡眠や疲労について気遣う（親密度 +10）[endlink][r]
[link target="*counseling_2_choice3"]【3】世紬の考え方や強さに共感を示す（親密度 +20）[endlink][r]
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
#世紬
「{世紬：ここにカウンセリング会話（レベル2：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


*counseling_3
[cm]
#kiichi
「（カウンセリングイベント3。彼女の深い内面に少しだけ触れてみよう）」[p]

[link target="*counseling_3_choice1"]【1】気分転換の方法について話す（親密度 +0）[endlink][r]
[link target="*counseling_3_choice2"]【2】かつての思い出や過去について尋ねる（親密度 +10）[endlink][r]
[link target="*counseling_3_choice3"]【3】自分が全力で世紬を支えたいと伝える（親密度 +20）[endlink][r]
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
#世紬
「{世紬：ここにカウンセリング会話（レベル3：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


*counseling_5
[cm]
#kiichi
「（カウンセリングイベント5。彼女が抱える重い責任や葛藤について聞いてみよう）」[p]

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
#世紬
「{世紬：ここにカウンセリング会話（レベル5：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


*counseling_6
[cm]
#kiichi
「（カウンセリングイベント6。彼女との間に揺るぎない絶対の信頼が築かれたことを実感する）」[p]

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
#世紬
「{世紬：ここにカウンセリング会話（レベル6：選択肢決定後の会話）}」[l][r]
[jump target="*counseling_status_up"]


; --- カウンセリング日常会話 (フォールバック用) ---

*counseling_generic5
[cm]
#kiichi
「それで、最近の調子はどうだ？」[l][r]
#setsu
「{世紬：ここにカウンセリング会話（信頼度極高 80以上）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic4
[cm]
#kiichi
「それで、最近の調子はどうだ？」[l][r]
#setsu
「{世紬：ここにカウンセリング会話（信頼度高 60〜79）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic3
[cm]
#kiichi
「それで、最近の調子はどうだ？」[l][r]
#setsu
「{世紬：ここにカウンセリング会話（信頼度中 40〜59）}」[l][r]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic2
[cm]
#kiichi
「それで、最近の調子はどうだ？」[l][r]
#setsu
「そうね、私は元気よ。君の方こそ、顔色悪いんじゃない？」[p]
#kiichi
「そうだろうか？」[p]
#setsu
「今日はカウンセリングを休んで、ベッドで寝ていてもいいわよ」[p]
#kiichi
「だが……俺は……」[p]
#setsu
「君が倒れたら、困るもの。ほら、布団に入って横になりなさい」[p]
#kiichi
「おい、ちょっと……」
（初明に強引に布団に寝かされたが、自然と眠気が……）[p]
[eval exp="tf.affinityAdd = 5"]
[jump target="*counseling_status_up"]

*counseling_generic1
[cm]
#kiichi
「それで、最近の調子はどうだ？」[l][r]
#setsu
「こっちもまあまあよ。君の方こそ、疲れてない？」[p]
#kiichi
「まあ、確かにそうだな」[p]
#setsu
「時間はあるから、私に話してみて」[p]
#kiichi
「そうだな、最近……」[p]
（何故か自分が世紬に話していた）[p]
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
（世紬とカウンセリングの時間を過ごした）[p]
信頼度が上がった！（現在: [emb exp="tf.trust"]）[l][r]
[chara_hide name="setsu"]
[return]


; -----------------------------------------------------------
; 3. 診療 (診療イベント / 通常診療)
; -----------------------------------------------------------

*checkup_generic
[cm]
#kiichi
「少し診察させてくれないか?」[p]
#setsu
「君にはまだ秘密ね」[p]
#kiichi
「そうか、わかった」[p]
#kiichi
（警戒されてしまい、診療を断られた……）[p]
[chara_hide name="setsu"]
[return]

*checkup_1
[cm]
#kiichi
「少し診察させてくれないか?」[p]
#setsu
「特に変わりはないようだ」[l][r]
[complete_checkup_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（診察を終え、カルテの情報が少し開示された）[p]
[chara_hide name="setsu"]
[return]

*checkup_2
[cm]
#kiichi
「少し診察させてくれないか?」[p]
#setsu
「{世紬：ここに診療・情報開示会話（信頼度高 60〜79）}」[l][r]
[complete_checkup_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（診察を終え、カルテの情報がさらに開示された）[p]
[chara_hide name="setsu"]
[return]

*checkup_3
[cm]
#kiichi
「少し診察させてくれないか?」[p]
#setsu
「{世紬：ここに診療・情報開示会話（信頼度極高 80以上）}」[l][r]
[complete_checkup_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（診察を終え、カルテの全情報が開示された）[p]
[chara_hide name="setsu"]
[return]

*checkup_info3
[cm]
#kiichi
「診察させてくれ」[p]
#setsu
「ふふ、もう私の身体のことは隅々まで知っているでしょう？」[p]
#kiichi
（診察を行い、特に異常が無いことを確認した）[p]
[chara_hide name="setsu"]
[return]


; -----------------------------------------------------------
; 4. 尋問 (尋問イベント / 通常尋問後)
; -----------------------------------------------------------

*interrogate_generic
[cm]
#kiichi
（尋問はすべて完了している。これ以上薬を投与する必要はないだろう）[p]
[chara_hide name="setsu"]
[return]

*interrogate_1
[cm]
[eval exp="tf.correctChoice = 'B'"]

#kiichi
「世紬、健康維持の為にも薬を投与するがいいか？」[p]

#setsu
「構わないわ。でも、裏切り者か知りたいなら、そんな方法を使わなくてもいいのに。[l][r]
まあ、面白そうだから考えていた言い訳、聞かせて頂戴」[p]

#kiichi
「なんだ、もうわかってたのか。それなら、どう言い訳をしようか」[p]

[link target="*interrogate_choice_a"]【1】「君の命が危ないんだ。すぐに治療させてくれ」[endlink][r]
[link target="*interrogate_choice_b"]【2】「裏切り者を見つけるためだ。疑いを晴らすためにも協力してくれ」[endlink][r]
[link target="*interrogate_choice_c"]【3】「囚人兵なのに命令が聞けないのか！？」[endlink][r]
[s]

*interrogate_choice_a
[cm]
#setsu
「ふふ、情熱的で悪くは無いわね。でも、他の人だったら怒られていたと思うわ」[p]
#kiichi
「確かにそうかもしれない」[p]
#setsu
「痛いのは嫌だから、君の聴きたいこと話してあげる」[p]
[jump target="*interrogate_1_success"]

*interrogate_choice_b
[cm]
#setsu
「正直で、人によっては協力してくれるかもしれないわね。[l][r]
親密度の信頼も買って、君の聴きたいこと話してあげる」[p]
#kiichi
「確かにそうかもしれない」[p]
[jump target="*interrogate_1_success"]

*interrogate_choice_c
[cm]
#setsu
「囚人兵相手にはそれで正解ね。でも、やるなら徹底的にやらないと意味が無いと思うけど？」[p]
#kiichi
「確かにそうかもしれない」[p]
#setsu
「言葉だけ厳しくしても、優しさは隠しきれてないわね。ふふ、君のやさしさに免じて話してあげる」[p]
[jump target="*interrogate_1_success"]

*interrogate_1_success
[complete_interrogate_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（薬が回り、世紬の意識が混濁し始めた。尋問情報レベル1が解放された！）[p]
[chara_hide name="setsu"]
[return]


*interrogate_2
[cm]
#kiichi
「薬の追加投与を行う」[p]
#setsu
「またあの変な薬？まあ、君の頼みなら聞いてあげるわ」[p]
[complete_interrogate_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（尋問情報レベル2が解放された！）[p]
[chara_hide name="setsu"]
[return]


*interrogate_3
[cm]
#kiichi
「最後の薬液投与を行う」[p]
#setsu
「これが最後ね。私の隠された秘密、すべて教えてあげる」[p]
[complete_interrogate_episode chara_id="&tf.targetId" episode_id="&tf.currentEpisodeId"]
#kiichi
（尋問情報レベル3が解放された！）[p]
[chara_hide name="setsu"]
[return]


*interrogate_info3
[cm]
#kiichi
（すでに尋問はすべて完了し、彼女の真実は開示されている。これ以上の薬は不要だ）[p]
[chara_hide name="setsu"]
[return]