; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_setsu.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftMeetSetsuEntry ----
*draftMeetSetsuEntry
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_entry')"]
; 過去篇参照：第11・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今夜は、わたしが質問される方なのね」[p]
#
世紬は器具より先に、俺の顔を見た。自分で椅子を引き、膝へ手を置く。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「嫌なことは、途中でも言ってくれ」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。では、難しい顔ばかりしないでもらえる？　大変な病人になった気がするわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんな顔してたか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少しだけ。君も、ここへ座って」[p]
#
俺が腰を下ろすと、世紬は、ようやく、と笑った。[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuTalk1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_talk1')"]
; 過去篇参照：第2・16・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君の好きなものを、一つ教えて」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「未来で知るより、俺に聞く方が早い？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「早さを競っているわけではないの。君が話したがるものを、聞きたいのよ」[p]
#
模型の話を始めると、世紬は分からない言葉のたびに尋ねた。知っているふりはしない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こんな所から説明して、退屈じゃないか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。続きを聞いてから、驚きたいわ」[p]
#
途中で指を動かして説明すると、彼女も真似をした。全然違う形になり、二人で笑った。[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuTalk2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_talk2')"]
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「好きな食べ物は？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「甘いもの。辛いものも、悪くないわね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「作る方は？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……今日は、厳しい質問が多いのね」[p]
#
世紬は困った顔を作ってみせた。少しして、自分から続きを話す。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「昔、お粥へ少し味を足したら、帰ってくれと言われたわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「病人に出したのか？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「本当の分は別に用意していたのよ。そこまで疑うなんて、ひどいでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そいつが怒るのも、分かる気がする」[p]
#
世紬が声を上げて笑った。誰の話かを尋ねなくても、叱られた時の顔は想像できた。[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuExam
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_exam')"]
; 過去篇参照：第17・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSerious]
[setsuShow]
#
今日調べたい項目を説明すると、世紬は襟元へ手を添えた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSerious]
「服を脱ぐ検査は、今日は遠慮したいわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。脈と体温を確かめても？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。それなら、お願い」[p]
#
彼女が手を差し出した。触れる前に声をかけ、返事を聞いてから確認する。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「疲れが強くなるのは、いつ頃だ？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「動いた後ね。少し休むと楽になるけれど、毎回同じではないの」[p]
#
聞き取れた経過を、測れた値と分けて書いた。見せてもらっていない場所について、空欄を埋めることはしなかった。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……分からない所が、残っていてもいいの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、診られた範囲の記録だ。全部を見たことには出来ない」[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuFinding1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_finding1')"]
; 過去篇参照：第17・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSerious]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この不調は、俺がここへ来る前から続いていた？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。君が来たから始まったのではないわ」[p]
#
先に否定されて、自分が何を心配していたか気づいた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺のせいだと思ってる顔をしてたか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し。何でも自分の仕事にしてしまうのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いつからか、話せる範囲を聞きたい」[p]
#
世紬は考え、今話してもよい所だけを選んで答えた。俺は、聞いていない原因を推測で書き足さない。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今日は、そこまででもいいかしら」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。次に聞く前にも、確かめる」[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuFinding2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_finding2')"]
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSad]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、どうすると楽だ？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「治す方法ではなくて？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それも探したい。でも、今夜つらいのを放っておく理由にはならない」[p]
#
世紬は目を伏せた。しばらくして、肩から少し力を抜く。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSad]
「座っている時間を、短くしたいわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「横になるか。話を続けるのは、平気？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。君が嫌でなければ」[p]
#
俺は椅子を動かした。何でもない話なら出来る、と言うと、彼女は小さく笑う。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSmile]
「では、それをお願い。今は、どんなお話でも嬉しいわ」[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuPress
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_press')"]
; 過去篇参照：第14・17・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSerious]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この記録と説明を、もう一度確かめたい」[p]
#
世紬は示された箇所を読んだ。俺が続きを尋ねる前に、顔を上げる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「知っていたのに話さなかった、と聞きたいの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まず、その時どこにいて、実際に何を見たかを」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……ええ。その順番で聞いて」[p]
#
俺は問いを分けた。現場で見たこと。人から聞いたこと。未来視の話なのかも、混ぜずに確かめる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「未来を見たことがあるからといって、今、隠れた所で起きたことまで答えられるわけではないのよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分からない所は、分からないと教えてくれ」[p]
#
彼女の声が硬くなった理由を、嘘の証拠にはしなかった。説明の出所から、一つずつ聞き直す。[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuClose
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_close')"]
; 過去篇参照：第2・17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「もう、先のことは聞かなくていいの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、世紬と話したい」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしと話しているでしょう？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か役立つ返事を、もらおうとせずに」[p]
#
世紬は、しばらく俺を見ていた。それから少しだけ、困ったように笑う。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuNormal]
「では、何をお話ししようかしら。相談に答える方が、慣れているのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日、面白かったことは？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……君が、その質問をしてくれたこと」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それじゃ、続きが作れないな」[p]
#
彼女が笑った。俺も、もう一つ話題を探した。まだ質問されていない答えを、彼女に用意してもらう必要はなかった。[p]
[chara_hide name="setsu" time="200"]
[return]


*draftMeetSetsuEnd
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_setsu_end')"]
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今日は、ここまでね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「疲れたか？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し。でも、もう少し話したい気もするの」[p]
#
彼女は自分から席を立った。俺も紙を閉じる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「続きは、次に取っておきましょう。君にも、休んでもらわないと」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。今度は、そっちから呼んでくれてもいい」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。その時の用事を、考えておくわ」[p]
[chara_hide name="setsu" time="200"]
[return]


*v2MeetYBoundary
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_y_boundary')"]
; 共通期間。未来視を事件の答えを出す万能手段にしない。
; 過去篇参照：第14・17・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSerious]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「未来の話と、その時に見たことは、別に聞く」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたしがどこにいたかも、確かめて」[p]
#
世紬は、俺の作った質問の一覧へ目を落とした。彼女の欄も、他の人と同じ形だ。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「答えられないと言ったら、驚く？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「驚くことはあると思う。でも、知らないことを埋めてもらうつもりはない」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……そう。では、分からない時には、そう言わせてね」[p]
#
彼女は紙を返した。俺も、返事を待たずに空欄へ答えを入れるのをやめた。[p]
[chara_hide name="setsu" time="200"]
[return]


*v2MeetYRequest
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_y_request')"]
; 診療の許可とは別の、頼れることを話す単位。
; 過去篇参照：第13・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSerious]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしが頼むと、君は何でもしてしまうでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「出来ないこともある。先に言ってくれた方が、相談は出来る」[p]
#
世紬は少し考えた。俺の手元へ目を落とし、いつもの笑顔を引っ込める。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSerious]
「今夜は、長く座っていたくないの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、先に休む場所を決めよう」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「話の途中でも？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「途中だから、続けられるようにしたい」[p]
#
彼女が頷いた。俺は何を取ってくるか決める前に、どこなら楽かを尋ねた。[p]
[chara_hide name="setsu" time="200"]
[return]


*draftRefuseSetsu
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_refuse_setsu')"]
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……ごめんなさい。今夜は、そこまでは話せないわ」[p]
#
柔らかい声だった。笑っているから構わない、とは受け取らなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。別のことにしよう」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSmile]
「ええ。聞いてくれて、ありがとう」[p]
[chara_hide name="setsu" time="200"]
[return]


*draftStressSetsu
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_stress_setsu')"]
; 過去篇参照：第14・17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSad]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し、待って。今は、うまく答えを選べないの」[p]
#
世紬は笑おうとしたが、息を整える方が先になった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「急がなくていい。今の質問は置いておく」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSad]
「……ええ。そうしてもらえると、助かるわ」[p]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_01')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「湯気って、見てると飽きないな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。今度は、どちらへ流れるかしら。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「先に分かるのか？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「当ててほしいの？　わたしは、君と見ている方が楽しいわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_01=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_02')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「椅子、うるさかった？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。来てくれたと分かったわ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「足音だけで、分かるんだな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「扉の前で止まってから、ノックしたでしょう。入ってよいか、毎回迷っているの？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_02=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_03')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・16話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「説明、早すぎたか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し。でも、君が楽しそうで止めにくかったの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どこから、聞き直す？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「最初に出てきた部品の名前から。ふふ、思ったより前だったでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_03=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_04')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、呼んだ？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。紀一君、と。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か用か。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「用を聞く前に、一度こちらを見てもらいたかったの。……見てくれたから、もういいわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_04=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_05')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第13・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「器を片づけていいか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「まだ少し残っているわ。急ぐ用事でもあるの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。冷めたかと思って。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、飲み終えるまでお話ししましょう。温かい時より、ゆっくり飲めるもの。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_05=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_06')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第13・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次の仕事が気になるんだよ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。今、三度目に時計を見たわ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「数えてたのか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「こちらへ顔が戻るのを待っていたのよ。あと少し、わたしに時間をくれる？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_06=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_07')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・16話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「模型の話、どこまでしたっけ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「接着した所を、もう一度外したお話まで。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこを覚えてたか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。完成した所も、聞かせて。失敗したまま終わるのは、わたしも気になるわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_07=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_08')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっきと、答えが違ったな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。飲んでみたら、今日はもう少し薄い方がよかったの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、替えようか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ありがとう。わたしでも、試さないと分からないことはあるのよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_08=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_09')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、何か落ちたな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「器かしら。割れていなければよいけれど。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見に行く？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたしは触らずに見てくるわ。そう約束させられたことがあるの。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_09=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_10')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう読み終わったのか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。同じ所を二度読んでいたの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「先が気にならない？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「気になるわ。でも、好きな所を読み返す時間まで、急いでしまいたくないのよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_10=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_11')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、言いかけた？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。どこから話そうか、少し迷っていたの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待ってる。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、温かいうちに飲んでいて。わたしも、考えながらいただくわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_11=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_12')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第13・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「両手で持つと、そんなに温かいのか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。君も、こちらを持ってみる？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当だ。指まで温まる。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ふふ。術の説明をするより、伝わるのが早かったわね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_12=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_13')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「自信があるんだな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたし、術には自信があるもの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ以外は？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……何を試させようとしているの？　君も、なかなか意地悪ね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_13=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_14')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を考えていた？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君は、どんな顔で話す人なのかと思って。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、目の前にいるだろ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。だから、見ているの。名前を知っているだけでは、分からないでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_14=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_15')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・16話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この影、何に見える？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君が先に答えて。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「魚かな。そっちは？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしは鳥だと思ったわ。二人で同じものを見ても、違うのね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_15=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_16')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第16・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日も助かった。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「どのお返事が、一番役に立ったかしら。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「答えじゃなくて、話を聞いてもらったこと。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……そう。では、それなら、また頼みに来てね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_16=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_17')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第13・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、持ってこようか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、その椅子をこちらへ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これくらいでいい？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。そこへ座って、もう少し話して。頼み事は、まだ続いているのよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_17=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_18')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・17話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「楽しかったことって、どんな時に思い出す？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「誰かが、似たことを言った時かしら。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今も？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。台所へ入らない方がいいと言われた時の顔を、思い出していたわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_18=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon19
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_19')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第16・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺、同じ相槌ばかりだったか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「時々、お返事だけが先に来るの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪い。もう一度、聞かせてくれ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。次は、わたしが聞いたことにも、答えてちょうだいね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_19=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_20')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、失敗ばかりだった。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしにもあるわ。味を直そうとして、もっと濃くしてしまったり。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を足したんだ？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……それを聞くと、君も食べてくれなくなりそうね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_20=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_21')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここに来てから、時間が早かった。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたしも、時計を見て驚いたわ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「未来で見てても？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「紀一君。今のお話まで、答え合わせにしなくてもよいでしょう？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_21=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon22
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_22')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この中で、一つだけもらうなら？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し考えさせて。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「珍しいな。即答するかと思った。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君に一口あげられるものがよいかと考えていたの。わたし一人の分では、ないでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_22=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon23
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_23')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「用がなくても、また来ていいか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたしの暇な時なら。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「忙しい時は、ちゃんと言ってくれ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「もちろん。その代わり、来てほしい時も、ちゃんと呼ぶわよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_23=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuCommon24
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_common_24')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「長く話しすぎたな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。でも、楽しかったわ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続きは、今度でもいい？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたしも、聞いてもらいたい話を一つ、用意しておくわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_common_24=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_01')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、君のことも聞きたい。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。聞かれると、何を話せばよいか迷ってしまうのね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「急がなくていい。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……ありがとう。相談のお返事を考える時とは、少し違うの。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_01=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_02')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第13・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここへ置けば、取りやすいか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「もう少し、こちらへお願い。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次は覚えておく。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。でも、違う場所がよい日には、また言わせてね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_02=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_03')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「話さないと、退屈じゃないか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君は、ここにいて退屈？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。今は、このままでいい。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしもよ。……こういうお返事は、すぐに言えるのね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_03=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_04')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第14・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、平気だと言う前に迷っただろ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。心配させたくなくて。君も、同じことをするでしょう？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「する。だから、聞き直した。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……では、少し疲れたわ。今日は、こちらへ座っていてくれる？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_04=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_05')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第17・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「先のことが分からないと、怖い？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「怖いわよ。知っていれば平気というものでも、ないけれど。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、次にどうなるか全部は分からない。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。では、今、二人で決められることから、お話ししましょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_05=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_06')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・13・17話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「話したい思い出は、あるか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしを、よく叱る人がいたの。食事も、外へ出る時も。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「嫌だった？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「当時は、少し。でも、今は、楽しかった所から思い出したいわ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_06=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_07')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、その話は置いておこうか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……ええ。今は、そうしてもらえると助かるわ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を聞きたい？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君が今日見たものを。わたしの知らない所の話を、君から聞かせて。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_07=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_08')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺がいない間、何を考えてた？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「戻ったら何を聞こうかと、いくつか考えていたの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「決まったか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今、決め直している所。君が、思ったより嬉しそうに来てくれたから。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_08=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_09')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・13・17話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「昔は、皆で食事をしていたんだな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。誰かが怒って、誰かが笑っていたわ。静かに食べた記憶が、少ないの。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「覚えてる料理は？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……わたしが作ったもののお話は、少し待ってもらおうかしら。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_09=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_10')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第17・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この紙、きれいに写し直そうか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。考え直した所も、残しておいて。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「読みにくくない？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し。でも、君がすぐに諦めなかったことは、こちらの方が分かるでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_10=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_11')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう一度聞くよ。今は、どうしたい？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしの返事を、待ってくれる？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。今の君に聞いてる。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……まだ、ここにいたいわ。もう少し、お話をして。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_11=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_12')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第13・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し休む？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。でも、君の声は聞いていてもよいかしら。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「途中で眠っても、構わないよ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ありがとう。起きた後、どこまで聞いたか尋ねても、笑わないでね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_12=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_13')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuBlush]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「手、冷たいな。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。……今日は、そのまま握っていてほしいわ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。痛くないか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「大丈夫。聞いてもらえると、わたしも答えやすいのね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_13=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_14')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の笑い方、いつもと違った。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君が、わたしにも失敗があると知って驚くからよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ、聞いていない失敗もある？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。ただし、全部聞いたら、わたしを敬ってくれなくなりそうね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_14=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_15')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第13・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「困っていたら、先に言ってほしい。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、今、一つお願いしても？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞くよ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「もう少し、近くへ座って。それから……君が困っている時も、同じように話してね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_15=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_16')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒に行きたい所を、考えてた。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。聞かせて。まず、どんな場所なの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ、行けるか分からない。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「それでも聞きたいわ。着くまでのことを話すのも、楽しそうでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_16=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_17')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そろそろ戻らないと。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。分かっていたのに、まだ話したいのね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続きから、また聞いてくれるか。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「もちろん。わたしの話も残しておくから、そちらも忘れないで。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_17=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6ChatSetsuRoute18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_setsu_route_18')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また来るよ。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。次は、わたしから呼んでもよい？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待ってる。」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、君が休める時を教えて。用事がある方が、誘いやすいのでしょう？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_setsu_route_18=true"]
[chara_hide name="setsu" time="200"]
[return]


