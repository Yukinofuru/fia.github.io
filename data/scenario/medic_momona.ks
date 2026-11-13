; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_momona.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftMeetMomonaEntry ----
*draftMeetMomonaEntry
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_entry')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaJito]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「呼んだなら、ちゃんと話しなさいよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「座る前から、怒ってるな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「怒らせないようにすればいいでしょ」[p]
; DAY15で加入後、会える状態の場合のみ。dayCount>=10という旧条件だけで出さない。
[chara_hide name="momona" time="200"]
[return]


; 自称天才の仕事を見る
; 前提なし。能力だけでなく過程を見る。

; source:3887

; ---- draftMeetMomonaTalk1 ----
*draftMeetMomonaTalk1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_talk1')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「ほら、出来た」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「天才だな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「もっと心を込めて言って」[p]
#
手元には、やり直した跡がいくつもあった。指さすと、彼女は少しだけ顔をしかめた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを直したから、うまくいったんだな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
[momonaSmile]
「……分かってるじゃない」[p]
[chara_hide name="momona" time="200"]
[return]


; 欲しい物の話をする
; 前提なし。かわいい物を好む人物設定に基づく日常。

; source:3905

; ---- draftMeetMomonaTalk2 ----
*draftMeetMomonaTalk2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_talk2')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「これ、色が違ったら、もっといいのに」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「使い勝手は変わらないだろ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「変わるわよ。使う時の気分が」[p]
#
言い返そうとして、昔の模型を思い出した。俺も、使わない色の部品をわざわざ塗り替えた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……それは、分かるかもしれない」[p]
[chara_hide name="momona" time="200"]
[return]


; 本人が許す範囲を確認する
; 同意・関係条件。クローン・稼働限界を一度で確定しない。

; source:3921

; ---- draftMeetMomonaExam ----
*draftMeetMomonaExam
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_exam')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSerious]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「勝手に変なことを書かないでよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見つかったことと、俺の予想は分ける」[p]
#
説明した範囲を、彼女が自分でも確かめる。許された項目から記録した。[p]
; 具体的な所見は設定・カルテと照合。未確定の余命を診断しない。
[chara_hide name="momona" time="200"]
[return]


; 本人が気にしているか尋ねる
; 前提：対応する検査所見または本人の訴え。

; source:3934

; ---- draftMeetMomonaFinding1 ----
*draftMeetMomonaFinding1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_finding1')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSerious]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「このこと、気になっていたか？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「気にならないわけ、ないでしょ」[p]
#
強い声の後で、百七が少しだけ目を伏せた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうか。知っていることがあれば、俺にも教えてくれ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……アンタも、分かったことは隠さないでよ」[p]
[chara_hide name="momona" time="200"]
[return]


; 似ている人物との関係を聞く
; 前提：古虫が実際に類似を見たこと。コピーという判断と本人の説明を分ける。

; source:3950

; ---- draftMeetMomonaFinding2 ----
*draftMeetMomonaFinding2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_finding2')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaJito]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「また、その話？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「嫌なら、今はやめる」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……話すなら、最後まで聞きなさいよ。途中で、かわいそうって顔しないで」[p]
#
頷くと、百七が少しだけ姿勢を変えた。[p]
; 深い事情を語る量は関係とストレスで分ける。
[chara_hide name="momona" time="200"]
[return]


; 連盟での行動を確かめる
; 本人が連盟側の事情を知る設定と、取得済み情報が必要。所属のみで犯行を断定しない。

; source:3965

; ---- draftMeetMomonaPress ----
*draftMeetMomonaPress
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_press')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSerious]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシが、全部決めてたと思ってるの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「決めたことと、命じられたことを、分けて聞きたい」[p]
#
百七はしばらく俺を睨んだ。その後で、紙の一点を指す。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……そこから。順番に言うから、勝手に先へ進めないで」[p]
[chara_hide name="momona" time="200"]
[return]


; 次に一緒にしたいことを聞く
; 親密な会話。稼働限界や幸運喪失を必要条件にしない。

; source:3979

; ---- draftMeetMomonaClose ----
*draftMeetMomonaClose
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_close')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アンタ、あそこに付き合いなさいよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どこだよ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「出られたら決める。今、約束だけ」[p]
#
俺が迷っていると、彼女は少しだけ声を落とした。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……一緒に、行くでしょ？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。俺も、行きたい」[p]
[chara_hide name="momona" time="200"]
[return]



; source:3995

; ---- draftMeetMomonaEnd ----
*draftMeetMomonaEnd
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_momona_end')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「もう？　今、話してた所なのに」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続きは、また聞く」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「忘れないでよ。アタシの方は覚えてるから」[p]
[chara_hide name="momona" time="200"]
[return]


; source:4010

; ---- v2MeetMRecord ----
*v2MeetMRecord
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_m_record')"]
; 前提：L1取得、百七本人が話せる関係。コピー開示の核心は個別で本人から。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSerious]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この記録について、聞いてもいいか。答えたくない所は、止めてくれ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「全部をアタシのことだと、思わないで」[p]
#
最初に、そう言われた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「名前が似ている物も、区別して残す」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「似てるんじゃないわ。そうやって、まとめて扱うの」[p]
#
彼女は記録の表題を指した。個人の名より先に、対象の分類が置かれている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これは記録を書いた側の分け方だな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……そこが分かるなら、次も話せる」[p]
; 取得：記録の分類の意味についての本人説明。出自の全貌・寿命の確定ではない。
[chara_hide name="momona" time="200"]
[return]


; source:4316

; ---- v2MeetMPreference ----
*v2MeetMPreference
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_m_preference')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今夜は、質問ばっかりにしないでよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、俺が答える」[p]
#
百七が少し考え、好きな物を聞いた。[p]
答えると、その理由まで求められた。自分がいつも相手へしていることだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「理由まで、考えてなかったな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「好きだから、でもいいわよ」[p]
#
彼女は得意そうに言った。俺もそのまま答えた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「覚えとく。次に違ったら、また聞く」[p]
#
カルテへ書かない話を、彼女が自分で覚えた。[p]
[chara_hide name="momona" time="200"]
[return]


; source:4336

; ---- draftRefuseMomona ----
*draftRefuseMomona
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_refuse_momona')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaJito]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこは、アンタが勝手に決めていい所じゃないから」[p]
#
百七は怒った顔を隠さなかった。それ以上聞くなら、何を確かめたいのか説明しなければならない。[p]
[chara_hide name="momona" time="200"]
[return]


; source:4428

; ---- draftStressMomona ----
*draftStressMomona
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_stress_momona')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaAngry]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今、答えてるでしょう。先へ先へ、話を持っていかないで」[p]
[chara_hide name="momona" time="200"]
[return]


; source:4459

; ---- v6ChatMomonaCommon01 ----
*v6ChatMomonaCommon01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_01')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どこに座る？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「こっち。アンタは、隣。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう決まってるんだな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「聞いたの、アンタでしょ。ちゃんと答えてあげたのよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_01=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6257

; ---- v6ChatMomonaCommon02 ----
*v6ChatMomonaCommon02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_02')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うまく出来たな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「どこが？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「最後の所。やり直しただろ。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこ見てたなら、いいわ。適当に褒めたら、怒るから。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_02=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6274

; ---- v6ChatMomonaCommon03 ----
*v6ChatMomonaCommon03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_03')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「食事の見た目、また気にしてる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「見る時間も、食べる時間に入るでしょ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そう言われると、確かに。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「でしょ。最初から、そう言いなさい。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_03=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6291

; ---- v6ChatMomonaCommon04 ----
*v6ChatMomonaCommon04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_04')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この印、誰の？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシ。可愛いでしょ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かりやすい。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「可愛い、も言いなさいよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_04=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6308

; ---- v6ChatMomonaCommon05 ----
*v6ChatMomonaCommon05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_05')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaJito]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また、最初から？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「駄目な所だけ、変えたの。全部同じじゃないわよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、前の紙も残すか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「分かってるじゃない。そっち、押さえて。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_05=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6325

; ---- v6ChatMomonaCommon06 ----
*v6ChatMomonaCommon06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_06')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、ここまででいい？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「逃げるの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「寝る時間だ。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……なら、続きの紙はアタシが持つ。次に知らない顔したら、怒るわよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_06=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6342

; ---- v6ChatMomonaCommon07 ----
*v6ChatMomonaCommon07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_07')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の好きな物、覚えてる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「覚えてるわよ。アンタは？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が聞かれる番か。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「当たり前でしょ。一方的に覚えさせる気？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_07=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6359

; ---- v6ChatMomonaCommon08 ----
*v6ChatMomonaCommon08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_08')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その言い方、分かる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「分からない。説明して。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「すぐ聞くんだな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「聞けば分かるんでしょ。黙って分かった顔するより、早いじゃない。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_08=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6376

; ---- v6ChatMomonaCommon09 ----
*v6ChatMomonaCommon09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_09')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、モモって言った？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……言ってない。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこ、すぐ引くのも腹が立つわね。もう、次の話。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_09=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6393

; ---- v6ChatMomonaCommon10 ----
*v6ChatMomonaCommon10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_10')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「外で何を見たい？　一つだけ。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「一つ？　じゃあ、最初に見る物、でいい？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それなら。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「次の次まで、ちゃんと覚えておいてよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_10=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6410

; ---- v6ChatMomonaCommon11 ----
*v6ChatMomonaCommon11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_11')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し、静かになったな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アンタが疲れた顔してたから。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「気を遣ってくれたのか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「返事する元気、残ってるか見てただけ。今、あるって分かった。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_11=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6427

; ---- v6ChatMomonaCommon12 ----
*v6ChatMomonaCommon12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_common_12')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また、話を聞いていいか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「聞くだけじゃなくて、アンタの話も持ってきて。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今日、アタシに聞かれなかったこと。一つくらい、あるでしょ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_common_12=true"]
[chara_hide name="momona" time="200"]
[return]

; source:6446

; ---- v6ChatMomonaRoute01 ----
*v6ChatMomonaRoute01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_01')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この印、書き直した？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「前より、アタシっぽくしたの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どこが違う？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「ちゃんと見なさい。説明させて、楽しようとしない。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_01=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7387

; ---- v6ChatMomonaRoute02 ----
*v6ChatMomonaRoute02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_02')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaJito]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「昨日と、言うことが違うな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今日の方が、いいと思ったの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「変えていいんだな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「当たり前でしょ。アンタも、言いたいことが変わったら言いなさいよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_02=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7404

; ---- v6ChatMomonaRoute03 ----
*v6ChatMomonaRoute03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_03')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「覚えてない所を、また聞いていい？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシに当てさせる質問じゃなければ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒に、今の話をしたい。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、最初にそう言いなさい。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_03=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7421

; ---- v6ChatMomonaRoute04 ----
*v6ChatMomonaRoute04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_04')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の顔、得意そうだな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「勝ったんだから、当然でしょ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう一回、やる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「いいわよ。今度勝っても、その顔、ちゃんと見せてね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_04=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7438

; ---- v6ChatMomonaRoute05 ----
*v6ChatMomonaRoute05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_05')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し、手を貸してくれ。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「どこ？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを、押さえてて。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「はい。……それだけでいいのよ。黙って困ってるより、ずっと。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_05=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7455

; ---- v6ChatMomonaRoute06 ----
*v6ChatMomonaRoute06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_06')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaAngry]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何で、そんなに怒った？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アンタが、勝手に決めたから。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「助けようと思って。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシが何をしたいかも、聞いてからにしなさいよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_06=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7472

; ---- v6ChatMomonaRoute07 ----
*v6ChatMomonaRoute07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_07')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、まだ捨てないのか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「失敗した所が、書いてあるから。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見たくなくならない？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「見たくないのと、次に必要なのは、別でしょ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_07=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7489

; ---- v6ChatMomonaRoute08 ----
*v6ChatMomonaRoute08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_08')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「急いだ方が、いいか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「何をするか、決めてから。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「時間が気になった。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「気にしてるだけで、使い切るつもり？　ほら、次を一つ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_08=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7506

; ---- v6ChatMomonaRoute09 ----
*v6ChatMomonaRoute09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_09')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これ、気に入った？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシが選んだんだから、気に入るに決まってる。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、いいと思った。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……それは、最初に言ってよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_09=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7523

; ---- v6ChatMomonaRoute10 ----
*v6ChatMomonaRoute10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_10')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また、変な顔してた？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「してた。何を言えばいいか、迷ってる顔。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「よく分かるな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「毎回見せられてるの。今日は、さっさと言ってみなさい。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_10=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7540

; ---- v6ChatMomonaRoute11 ----
*v6ChatMomonaRoute11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_11')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここに座ってて、いい？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「駄目なら、空けてないわよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ありがとう。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……いちいち、そんな顔で言わないで。こっちまで、落ち着かない。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_11=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7557

; ---- v6ChatMomonaRoute12 ----
*v6ChatMomonaRoute12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_12')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次、一つだけ試せるなら？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「さっき駄目だった所を、少し変える。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「別のことじゃなくて？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「まだ、終わったことにしてないもの。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_12=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7574

; ---- v6ChatMomonaRoute13 ----
*v6ChatMomonaRoute13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_13')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「頼むのって、慣れないな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「断られるのが嫌なの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それも、ある。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、断られた時も聞きなさいよ。勝手に、全部駄目だった顔しないで。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_13=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7591

; ---- v6ChatMomonaRoute14 ----
*v6ChatMomonaRoute14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_14')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日の予定、俺が一つ決めてもいいか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「やっと、自分から言ったわね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞く前から、嬉しそうだな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「まだ内容を聞いてないでしょ。変なのだったら、文句は言う。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_14=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7608

; ---- v6ChatMomonaRoute15 ----
*v6ChatMomonaRoute15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_15')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaBlush]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の、覚えておいてほしい。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「何回でも言って。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また言うと、しつこいって怒られそうだ。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「怒るのと、聞かないのは、別。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_15=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7625

; ---- v6ChatMomonaRoute16 ----
*v6ChatMomonaRoute16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_16')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「帰ってきた時、何て言えばいいかな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「ただいま、でいいでしょ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちは？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「おかえり。……予行演習、終わり。今度は、ちゃんと戻ってきて。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_16=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7642

; ---- v6ChatMomonaRoute17 ----
*v6ChatMomonaRoute17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_17')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日も、一緒に考えよう。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「その次も。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「決まってるんだな。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「決めるの、これからでしょ。二人で。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_17=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7659

; ---- v6ChatMomonaRoute18 ----
*v6ChatMomonaRoute18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_momona_route_18')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、ここで終わりにするか。」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「一つ、聞いてない。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今日、アタシと話してどうだったか。……ちゃんと答えてよね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_momona_route_18=true"]
[chara_hide name="momona" time="200"]
[return]

; source:7681
