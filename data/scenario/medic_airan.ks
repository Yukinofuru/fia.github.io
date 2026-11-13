; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_airan.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftMeetAiranEntry ----
*draftMeetAiranEntry
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_entry')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
藍爛は扉の前で一度止まり、俺の返事を聞いてから入ってきた。椅子を指すと、机の道具を見ている。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今日は、何をお話しすればいいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「先に決めてこなくていい。座る場所は、ここで平気か」[p]
#
彼女が頷いた。俺も腰を下ろして、記録する紙を見せる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「書いたことは、一緒に確かめよう。話せない所は、そう教えてくれ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。分からないことも、そう言っていいでしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もちろん」[p]
#
彼女はようやく、俺の方へ顔を向けた。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranTalk1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_talk1')"]
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを出たら、何を食べたい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「皆さんと同じもので、大丈夫です」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「大丈夫かじゃなくて、好きな方を聞いてる。すぐに決めなくてもいいけど」[p]
#
藍爛は少し考えた。誰かの顔色を確かめるように俺を見てから、口を開く。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「甘いものを、選んでみたいです。並んでいる所を見てから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も迷いそうだな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんも、決まっていないんですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。見てから決めたい」[p]
#
彼女が少し笑った。どれがよいか決める前に、店でどんなふうに選ぶかの話になった。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranTalk2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_talk2')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「お手伝いを頼むほどではないと、思ってしまって」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どんなことだ？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「少し持っていてほしい時などです。一人で出来るなら、その方がと思って」[p]
#
俺も、道具を取りに戻るのを面倒がって、無理な持ち方をしたことがある。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「頼まれて困る時は、そう答えるよ。先に聞いてもらった方が、助かることもある」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、古虫さんも、聞いてください」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺にも言ってるな」[p]
#
彼女は少し迷ってから、頷いた。俺は笑って、手元の紙を一枚押さえてもらった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSmile]
「これくらいでも、よいんですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。今、助かった」[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranExam
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_exam')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSerious]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「立つ時にふらつくことがあると聞いた。今日は、どこまで確かめてもいい？」[p]
#
使う道具と手順を、先に説明した。藍爛は一つずつ聞き、最後に手首を出す。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「脈と体温なら、お願いします」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「触るぞ。途中でも、止めてほしければ言ってくれ」[p]
#
返事を聞いてから指を置く。彼女が腕を固くした時は、いったん止めて顔を見る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……大丈夫です。今、少し驚いただけで」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続けても？」[p]
#
頷いてもらってから、確認を再開した。測れた値と、本人の訴えを分けて残す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今夜、確認できたのはここまで。原因は、これだけでは決められない」[p]
#
藍爛は紙を読んだ。終わったと伝えるまで、手を出し続けてもらうことはしなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranFinding1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_finding1')"]
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSerious]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ふらつく感じは、ここへ来る前にもあった？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。ただ、いつからかは、はっきりしなくて」[p]
#
藍爛の指が膝の上で重なった。俺は、まだ日付を書き込まなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分からないまま残しておく。今、無理に思い出さなくていい」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……答えられなくても、よいんでしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「覚えていない時期と、今つらいことは別に確かめられるから」[p]
#
彼女は、今の具合なら話せますと言った。俺はその返事を聞いてから、次に聞くことを選び直した。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranFinding2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_finding2')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSad]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「知られたら、手伝わせてもらえなくなるかと思ったんです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「休んだ方がいい時は、そう言う。でも、何も任せないために聞いてるんじゃない」[p]
#
藍爛は頷いたが、指を組んだままだった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「何もしていないと、次に何をすればいいか、分からなくなってしまって」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「休む時も、どう過ごすか一緒に相談しようか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……少し、お話ししていてもいいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。俺が話す番でもいい」[p]
#
彼女が小さく息を吐いた。一度で安心したことにはせず、今夜してほしいことを、もう一つ聞いた。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranPress
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_press')"]
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSerious]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この記録と、前に聞いた時間が合わない。もう一度、ここだけ確かめたい」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……私が、間違えてしまったんでしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ決めていない。記録した人の方を、確かめる必要もある」[p]
#
藍爛の手が固く握られた。俺は紙を近づけすぎず、彼女からも読める所で止める。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「直接見たことか、後から聞いたことかも、分けて教えてほしい」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。分からない所は、そう言います」[p]
#
聞き直すたびに、彼女は少し時間をかけた。答えの早さや怯えた顔を、嘘の証拠にはしなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranClose
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_close')"]
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「あの、何かお話しした方が」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、俺から話してもいいか。聞いてほしい失敗がある」[p]
#
道具を探していたのに、自分で持っていた話をした。藍爛は真面目に聞き、途中で口元を隠す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこは、笑ってほしくて話した」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……すみません。少し、可笑しくて」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、気づいた時は笑ったよ」[p]
#
彼女が手を下ろした。今度は、隠さずに笑ってくれる。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSmile]
「私にも、似たことがありました。聞いていただいても？」[p]
#
俺は頷いた。紙を取るより先に、彼女へ顔を向けた。[p]
[chara_hide name="airan" time="200"]
[return]


*draftMeetAiranEnd
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_airan_end')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、ここまでにしよう」[p]
#
藍爛は立ち上がりかけ、椅子を直す前に俺を見た。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……続きは、またお話ししてもいいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。話せる時に、また聞かせてくれ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。その時は、先に声をかけます」[p]
#
彼女は自分の荷物だけを持った。俺の机まで片づけてもらう必要はなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*v2MeetAPhoto
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_a_photo')"]
; DAY15後、藍爛が面談可能な状態。前提：P12とK32を実際に取得。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSerious]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こちらは切れた形で、もう一方は崩れている、と話していたな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。こちらは、縁が残っています。もう片方は、同じ形には見えませんでした」[p]
#
藍爛は写真を指した。俺は、彼女が示す場所を一つずつ確かめる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何かで壊したのかもしれないな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……すみません。何を使ったのかまでは、分かりません」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこは、俺が今考えたことだ。見えたことと、分けて書く」[p]
#
俺は紙へ二つの欄を作った。彼女の説明を読み返し、違っている所があれば直してほしいと頼む。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ここは、見た順番を変えてもよいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。その方が、分かりやすい」[p]
#
彼女はもう一度写真を動かし、自分の言葉で説明し直した。[p]
[chara_hide name="airan" time="200"]
[return]


*v2MeetAAftercare
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_a_aftercare')"]
; DAY15後、本人が話せる状態。身体を検査する行動ではなく、本人の経験を聞く行動。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あの時、どうして俺を押した？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「気がついたら、動いていました。古虫さんが、危ないと思って」[p]
#
問い詰める形になっていないか、声を確かめた。彼女は俺の手元を見ている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「助けてくれて、ありがとう。でも、藍爛さんが傷つくのも怖かった」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……すみません」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「謝ってほしくて、聞いたんじゃない。両方あったことを、伝えたかった」[p]
#
藍爛はしばらく黙った。それから、俺の顔を見る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、古虫さんが傷つくのは怖いです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうだな。俺にも言ってくれて、ありがとう」[p]
#
どちらかが傷つけば済むという話にはせず、次に危険を知らせる時のことを、一緒に考えた。[p]
[chara_hide name="airan" time="200"]
[return]


*draftRefuseAiran
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_refuse_airan')"]
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSad]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……ごめんなさい。それは、今は話せません」[p]
#
彼女は続きを待つように、肩を固くした。俺は紙から手を離す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。その話は置いておこう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい」[p]
#
笑って取り繕ってもらうことも、断った理由を続けて説明してもらうことも、求めなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*draftStressAiran
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_stress_airan')"]
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSad]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「少し、待ってください。今、どこからお話しすればいいか、分からなくて」[p]
#
膝の上で、指が強く重なっていた。俺は次の問いを口にするのをやめる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「急がなくていい。今の質問は、一度置いておこう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……ありがとうございます」[p]
#
すぐに落ち着いたことにはせず、彼女の返事を待った。[p]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_01')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その紙、折り直してるな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。端を揃えると、しまいやすいので。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の分も、教えてもらっていいか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「もちろんです。まず、こちらの角を重ねてください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_01=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_02')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この字、読める？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。ただ、こちらは少し迷いました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「名前だけは、読みやすく書いたつもりなんだ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんのお名前は、すぐ分かりました。何度も拝見しましたので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_02=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_03')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「入ってきたの、気づかなかった。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「驚かせてしまいましたか。次は、先にお呼びします。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、いきなり後ろから声をかけないようにする。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。そうしていただけると、助かります。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_03=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_04')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「器の向きを、変えたんだな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。取っ手がこちらだと、次の方が取りやすいかと。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当だ。使う方から見ると、分かるな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、誰かに教えていただいてから、気づきました。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_04=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_05')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これ、探してた？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。見つけてくださったんですね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺もよくなくすから、置く所を決めたい。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、ここはいかがですか。古虫さんからも、よく見えますので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_05=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_06')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうやって、物の場所を覚えてる？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「使った時のことを、思い出すことが多いです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「名前じゃなくて？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。誰と使ったかも。……今日の分は、古虫さんと棚の所ですね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_06=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_07')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一口が、小さいんだな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「少しずつだと、長く楽しめますので。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「取っておく方なんだな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。古虫さんは、好きな所から食べられるんですか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_07=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_08')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これは、うまく直らなかった？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。動くようにしようとして、逆に外れてしまって。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どこからやり直せそうだろう。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「一緒に見ていただけますか。出来なかった所を、先にお話しします。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_08=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_09')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の音、気になったか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。……扉が開いただけでしたね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も振り返った。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「同じものを見ている方がいると、少し落ち着きます。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_09=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_10')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「借りた布、ここでいいか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。畳んでくださったんですね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「形が、ちょっと違うけど。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「分かります。私も、最初は母と同じ形にならなくて。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_10=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_11')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その椅子、座りにくくないか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「少しだけ。でも、足の置き方を変えれば。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こっちを、一度試してみる？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ありがとうございます。……こちらの方が、楽です。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_11=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_12')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第6話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「花、好きなのか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。名前を知らないものでも、見つけると気になります。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今度、見つけたら教えてくれ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。摘む前に、お呼びしてもいいですか。一緒に見ていただきたいので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_12=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_13')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、ゆっくり書いてみた。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。とても読みやすいです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「急いでいた所は、まだ残ってるけどな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「そこだけ、聞き直してもよいでしょうか。決めつけずに読みたいので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_13=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_14')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「同じ物を、二度数えてしまった。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私もあります。途中で話しかけられると、分からなくなって。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、邪魔したか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「いいえ。今日は、お話しする方をしていました。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_14=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_15')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「端に座ることが、多いな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「何かあれば、すぐに動けますから。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、そのまま話していていいよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。では、もう少し、こちらへ座り直しても。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_15=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_16')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この道具の名前、覚えにくいよな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。使う所と形を、先に覚えていました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も最初は、そんな感じだった。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんにも、そういう時があったんですね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_16=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_17')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっき、何か言いかけた？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「お忙しそうで、後にしようと思ったのですが。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今なら、聞けるよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では……何から話そうとしたのか、少し考えさせてください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_17=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_18')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第6・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「模型の話、してもいいか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。うまく出来た時は、誰に見せたくなるのでしょう。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見たいと言ってくれた人には、たぶん。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……では、私にも、見せていただきたいです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_18=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon19
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_19')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何も持っていないと、手が落ち着かない。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、布を畳みたくなります。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「似てるな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。今日は、置いたままでお話ししてみませんか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_19=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_20')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第6・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「丸いものと四角いもの、どっちが好き？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「見るだけでも、よいんでしょうか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。役に立つかは、考えなくていい。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、丸い方です。角を揃えなくても、落ち着きますので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_20=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_21')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今のは、謝らなくていい所だよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「すみま……ありがとうございます。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「無理に変えなくても、構わないけど。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「変えてみたかったんです。助けていただいたので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_21=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon22
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_22')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺、怖い顔をしてたか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「考え事を、されているのかと思いました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「話を聞いてた。こっちを見ても、平気だよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。では、続きも聞いていただいてよいでしょうか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_22=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon23
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_23')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第6・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日、したいことはある？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「借りたものをお返しして……それ以外なら。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ以外も、聞きたい。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「窓のある所を、少し歩いてみたいです。今日は通らなかったので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_23=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranCommon24
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_common_24')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「長く話してしまったな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、まだ続くかと思っていました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続けたかった？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。古虫さんは、いかがでしたか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_common_24=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_01')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・27話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、呼んだ声、聞こえた？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。古虫さんが呼んでくださいました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ちゃんと届いていたなら、よかった。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……もう一度、お願いしてもいいですか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_01=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_02')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、そっちに座りたい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。こちらなら、お顔が見えますので。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いつもと、少し違うな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今日は、自分で選んでみたかったんです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_02=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_03')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「使わない分は、しまっておこうか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。出したままだと、そちらばかり見てしまって。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、話をしよう。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ありがとうございます。……今日は、何のお話からにしましょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_03=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_04')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「言いにくかったら、頷くだけでもいい。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今は、言いたいです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待ってる。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……今日、お会いできて嬉しいです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_04=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_05')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、何も片づかなかったな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私は、一緒にいられました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それで、よかった？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。もう少し、と思ってしまうくらいには。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_05=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_06')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の話、続けたくなかったか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「少し、怖くなりました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、止めよう。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。止めても、こちらにいてよいでしょうか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_06=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_07')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「手元ばかり、見ていたな。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「何か持っている方が、落ち着く時がありまして。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、そのままでもいいよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、古虫さんの方を見ていても、よいですか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_07=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_08')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また、最後の一口を残してる。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今日は、もう少し取っておきたいんです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、先に食べた。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、私が食べ終えるまで、少し待っていただいても。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_08=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_09')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、手を貸せる？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「その紙を、こちらへお願いします。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これだけでいい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。それだけでも、お願いしてみたかったんです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_09=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_10')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「前とは、考えが変わった？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。変わってしまっても、大丈夫でしょうか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の方を聞きたい。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……では、私も一緒に選びたいです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_10=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_11')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、何か言おうとした？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「来てくださって嬉しいです、と。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も嬉しい。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。今日は、合っているか聞く前に、言ってみたかったんです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_11=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_12')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教えてくれて、ありがとう。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「聞かれたらお話ししようと、思っていたんです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が聞く前でも、言ってくれていいよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。次は、先に声をかけてみます。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_12=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_13')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・27話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「外へ出たら、何を見たい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「人が、普通に歩いている所を。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「特別な場所ではなくて？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。急がずに、その中を一緒に歩いてみたいです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_13=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_14')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その字、俺の真似か。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。少しだけ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「読みにくい所まで、真似しなくていいぞ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「そこは、私の書き方にしました。両方に似ていても、よいでしょうか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_14=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_15')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・27話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、俺が待つ方だった。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「お待たせしました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう、戻ってきたからいいよ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……では、ただいまと言ってもいいですか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_15=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_16')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日、したいことを一つだけ。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「お話が途中でも、終わりにしてみたいです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続きが気にならない？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「気になります。でも、また会う時のことを、考えられますから。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_16=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_17')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の言葉、聞こえた？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。でも、もう一度聞きたくなってしまって。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「同じ言葉でいい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんが、今もそう思ってくださるなら。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_17=true"]
[chara_hide name="airan" time="200"]
[return]


*v6ChatAiranRoute18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_airan_route_18')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日の用事は、明日考えてもいいか。」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。一つだけ、今お願いしてもよいでしょうか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何だ？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「明日も、お話ししたいです。何をするかは、また一緒に考えたいです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_airan_route_18=true"]
[chara_hide name="airan" time="200"]
[return]


