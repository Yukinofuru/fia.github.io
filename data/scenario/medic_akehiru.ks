; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_akehiru.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftMeetAkehiruEntry ----
*draftMeetAkehiruEntry
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_entry')"]
; 過去篇参照：第1・11・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#
明昼は椅子へ座る前に、机の上を見た。何を使うのか、確かめているようだった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「今夜は何です？　座った途端に腕を掴まれるのは、御免ですよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「先に説明する。話だけで終えてもいい」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「随分、親切ですねえ。では、説明を聞いてから決めます」[p]
#
彼は刀を自分の側へ置いた。俺は手元の紙を、彼からも読める向きに直す。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……それ、君の字ですか。読ませる気はあります？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、書き直す」[p]
#
返事を聞いた明昼が、ようやく背を椅子へ預けた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruTalk1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_talk1')"]
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「休んでいる時は、何をしてる？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「今は、君のお相手を。実に有意義ですねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が来る前の話だ」[p]
#
明昼は、膝の本へ視線を落とした。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruSmile]
「読んでいましたよ。寝ていろと言われることの多い家だったので、本くらいは」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おとなしく寝てたのか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「さあ。君は、そう見えますか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見えない」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、聞くまでもないでしょう」[p]
#
彼が少し笑った。どんな家かまで尋ねる代わりに、本の話を聞いた。今度は、表紙を隠されなかった。[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruTalk2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_talk2')"]
; 過去篇参照：第1・2・14・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「寝つきはどうだ？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君がそれを聞きますか。昨夜も起きていたでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の分も答える。先に、そっちを聞かせてくれ」[p]
#
明昼は机の端を見た。しばらくして、指を止める。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「眠った後に、嫌な夢を見ることはありますよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どんな夢かも、聞いていいか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「今日は、結構です」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。目が覚めた後は？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「水を飲んで、少し待ちます。明るくなれば、また人の声がしますから」[p]
#
夢の内容は書かなかった。目が覚めてから、すぐ眠れるとは限らない。そのことだけを確かめた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruExam
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_exam')"]
; 過去篇参照：第1・5・11・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#
どこを、何のために確かめるか説明した。明昼は最後まで聞いてから、袖を少し上げる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「脈と体温までです。それ以上は、また聞いてください」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。触るぞ」[p]
#
返事を待ち、手首へ指を置く。皮膚の表面だけを見て済ませず、息を整える様子も記録した。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruJito]
「新しく傷でも作ってみますか。観察しやすいでしょうねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「しない。傷を増やしに呼んだんじゃない」[p]
#
明昼の目が、俺の手から顔へ移った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……そうですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の確認で分かることだけ書く。分からない所は、分からないままにする」[p]
#
終わったと伝えると、彼は自分で袖を戻した。話さなかった事情までは、この所見から決められない。[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruFinding1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_finding1')"]
; 過去篇参照：第1・5・13・16話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「傷が塞がった後も、痛みや疲れは残るか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「残りますよ。君は、傷が見えなくなったら痛くないんですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。外から分からない分、聞かないと判断できない」[p]
#
彼は少し黙り、袖口を直した。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「血を使った後にふらつくこともあります。骨が戻れば、すぐ走れるというわけではありません」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どのくらい休めば戻る？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「毎回同じなら、僕も楽なんですがねえ」[p]
#
俺は決まった時間を書き込むのをやめた。痛み、食事、休めた時間。その都度、本人に確かめる欄を作る。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……帰すまでの用事を、増やしましたね」[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruFinding2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_finding2')"]
; 過去篇参照：第12・13・23話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「怪我以外で、動けなくなったことは？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ありますよ。何故、そこで意外そうな顔をするんです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「再生があっても、別なんだな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「風邪も引きますし、血を失いすぎれば倒れます。毒だって、好きで飲めるわけではありません」[p]
#
明昼は笑った。俺は笑わず、今夜の具合を聞き直す。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruSmile]
「昔、歩けると言い張って、廊下で倒れたこともあります。君への注意には、ちょうどいい話でしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も気をつける。そっちが同じ顔をしてたら、止めていいか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「止めるだけで済むうちに、言ってくださいね」[p]
#
傷の有無とは別に、動ける状態かを確かめる。彼にも、確認してから書き足した。[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruPress
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_press')"]
; 過去篇参照：第1・18・22・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「今度は尋問ですか。面談という言い方は、便利ですねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この記録と、前に聞いた説明を確かめたい」[p]
#
関係する箇所だけを示す。明昼は紙を引き寄せ、最初から読み直した。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「誰が、いつ書いたものです？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこも含めて照合してる。紙に書いてあるから正しい、とは決めてない」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……では、僕の返事も、紙の都合に合わせて直さないでくださいよ」[p]
#
俺は元の記録を残し、その隣に別の欄を作った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「答えない所は、未確認にする」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「結構です。何を知りたいのか、一つずつどうぞ」[p]
#
言い方のきつさだけで答えを決めず、示した記録についての説明を聞いた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruClose
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_close')"]
; 過去篇参照：第2・18・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「調べ物は、ここまでにする。もう少し、話していかないか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕にまだ用事が？　質問は終わったんでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒にいたいのは、用事にならないか」[p]
#
明昼は紙へ落としていた視線を上げた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruBlush]
「……君は、そういうことを急に言いますね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、言わないと帰りそうだったから」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「帰るのを止めるために、何でも言うんですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前相手に、嘘で粘るのは難しそうだ」[p]
#
彼は口元を少しだけ緩めた。刀を取り上げかけた手が、膝へ戻る。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「でしたら、続きを。せっかく聞いたんですからねえ」[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftMeetAkehiruEnd
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_akehiru_end')"]
; 過去篇参照：第18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「もう、おしまいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今夜はここまで。また話せる時に、頼みたい」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「勝手に時間を決めないでくださいよ。僕にも都合がありますから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次も先に聞く」[p]
#
明昼は頷きかけ、いつもの顔に戻った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。聞かれれば、返事くらいはします」[p]
#
彼が立つのを待って、机の紙を閉じた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2MeetHExampermit
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_h_exampermit')"]
; 診療への同意を確かめる段階。性別の開示を必須の見返りにしない。
; 過去篇参照：第1・11・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「触られるのが嫌なら、今の具合だけ聞くことも出来る」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「断った相手に、交渉ですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を断られたのか、取り違えたくない。今夜は話すのも嫌なら、やめる」[p]
#
明昼は少し考えた。俺は器具を片づけ、返事を待つ。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……話す分には。身体のことを全部知った顔は、しないでくださいね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「あと、書いたことは見せてください。後から訂正するのは、面倒なので」[p]
#
俺は紙をこちらだけへ向けず、聞いた言葉を確かめながら記録した。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2MeetHWait
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_h_wait')"]
; 日常の話題。交流h3既読なら帰還待ちの続き、未読なら今夜の予定の話。
; 過去篇参照：第14・17・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「戻ってこない人を待っていると、何かしなきゃと思う」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「それで、君までいなくなるんですか」[p]
#
返事に詰まった。明昼は、今度は笑わなかった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruSerious]
「間に合わなかった時のことなら、僕にもありますよ。動ければ違ったと、何度考えたか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今も？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。考えたところで、あの時の手が届くわけではないんですがねえ」[p]
#
彼は掌を見て、ゆっくり閉じた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……だから、今動ける時まで、同じ真似はしたくないんですよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が出るなら、先に知らせる」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「帰る時刻も。待つ方にだって、することがありますから」[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftRefuseAkehiru
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_refuse_akehiru')"]
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruJito]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……そこまで話すつもりはありません」[p]
#
笑みは残っていたが、彼は椅子を少し引いた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。その話はやめる」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruJito]
「ええ。聞き方を変えれば通る、とは思わないでくださいね」[p]
[chara_hide name="akehiru" time="200"]
[return]


*draftStressAkehiru
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_stress_akehiru')"]
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSerious]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「欲しい返事を言えば、ここから出られますか」[p]
#
冗談の調子に戻そうとして、戻っていない。俺は紙から手を離した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「無理に答えなくていい。少し間を置こう」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……そうしてください。今は、君の説明も頭に入りません」[p]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_01')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・15話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここ、静かでいいな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。君が来るまでは、本の続きを読めていました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が帰るまで、待ってくれる？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……一頁分くらいなら。長々と前置きはしないでくださいね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_01=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_02')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第12・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっきは助かった。何か礼をしたい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、ちゃんと食事を。君が倒れると、こちらへ仕事が回ります。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちも一緒に食べるか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「何故、僕まで。……まだ残っているなら、付き合いますけど。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_02=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_03')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第19・22話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruJito]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この字、読めるか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「努力はしましたよ。読む方の努力に頼りすぎではありませんか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「前の仕事でも、こんな字を読んでた？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「もっとひどいものも。だからといって、改善しなくていいとは言ってませんよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_03=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_04')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し暇になった。何をすればいいんだろう。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「休むという選択肢は、ご存じない？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前は、休めと言われたら休んでたのか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……僕の失敗から学ぶ賢さくらいは、持っていてください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_04=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_05')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第11・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなに疲れた顔をしてる？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。元気だと言い張る人ほど、似た顔になりますねえ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「身に覚えがあるような言い方だな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ありますよ。君も同じ失敗をするなら、先に座ってください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_05=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_06')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本、返しに来た。栞はそのままだ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そこは、君が読み終えた所でしょう。感想も置いていったらどうです。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞きたいのか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「変な所へ挟まれた栞の理由くらいは、知りたいので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_06=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_07')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どっちを食べる？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「作ったのは誰です？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「先に、それを確かめるのか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。料理は、見た目だけで判断すると危険なこともあるんですよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_07=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_08')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第1・11話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「上の物、取ろうか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。取って、こちらへ置いてください。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、素直だな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「頼んだら頼んだで、その顔ですか。次は黙って受け取ってもらえます？」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_08=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_09')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「昔から、そんなに嫌味を言ってたのか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「もっと素直だったと言ったら、信じます？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ちょっと、想像できない。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「でしょうねえ。では、君が信じられるくらいの話からにしましょうか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_09=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_10')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruJito]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の、冗談か？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。君を困らせるために、真顔で言いました。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪趣味だな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君の返事が思ったより真面目で、少し申し訳なくなりましたよ。少しだけ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_10=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_11')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第3・16話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「前にも、そこへ足を出すなと言われたな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。覚えているなら、何故また同じ場所へ？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「考えながら動くの、難しいんだよ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「知っています。だから今、覚えているうちに、もう一度だけどうぞ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_11=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_12')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第5・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「模型は、部品を揃える所から楽しいんだ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「組み上がる前から、そんな顔をするんですねえ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前は、出来上がった所だけ見たい？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「途中を見ないと、どこで間違えたか笑えないでしょう。説明を続けてください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_12=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_13')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第11・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何なら、話したい？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「今は、君が普通に話してくれれば結構です。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「普通って、難しいな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、さっきから聞きたそうな本の話を。顔に出ていますよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_13=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_14')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・15話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「黙っていると、気まずくないか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕は本を読めるので、別に。君は？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か喋らなきゃと思ってしまう。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そうですか。では、読み終わったら呼びます。それまで、少し休んでいたらどうです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_14=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_15')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・14話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「足音で、俺だと分かったのか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「扉の前で、一度止まるでしょう。ノックするか、毎回迷ってるんですか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「忙しそうなら、やめようと思って。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「来たなら、聞いてください。こちらで返事をしますから。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_15=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_16')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「袖、引っ掛かってるぞ。取ろうか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「待ってください。自分で外せます。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。持ってる本だけ、受け取る。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……ええ。そちらをお願いします。破れないように、引っ張らないでくださいね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_16=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_17')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第18・22話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっき、話を遮って悪かった。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「で、僕がどこまで話したかは覚えています？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「理由を言おうとしてた所だ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、そこから。返事を考えるのは、最後まで聞いてからにしてください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_17=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_18')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第11・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちも、休んだ方がよくないか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「人の顔を覗き込んで診断するのは、君の得意技ですか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「疲れているように見えただけだ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……少しだけですよ。そんな顔をしなくても、今日は座っているつもりです。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_18=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon19
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_19')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第22・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、その記録だけじゃ決められないと思う。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、ほかに何を見たいんです？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「書いた人の話を聞きたい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「結構です。反対するなら、その先まで言ってください。その方が話しやすいので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_19=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_20')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第19・22話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruJito]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「細かい所まで、よく気づくな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「あとで直す方が、面倒ですからねえ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「誰かに教わったのか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「仕事で困れば、覚えますよ。君も、この日付の間違いは忘れないでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_20=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_21')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第12・16話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いつも、先に出口を確かめるんだな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「帰るつもりがありますから。君は？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あるよ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「でしたら、入ってきた扉くらい覚えておいてください。僕を案内係にしないように。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_21=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon22
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_22')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第1・22話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっきの言い方、直させてくれ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「元の言葉まで消えるわけではありませんよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かってる。だから、違う所をちゃんと話したい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……ええ。では、聞きます。今度は、最後までどうぞ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_22=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon23
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_23')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日も、ここで会える？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「会いたいんですか。それとも、僕の勤務表を作りたいんですか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「会いたい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、そう言ってください。……時間が分かったら、先に知らせます。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_23=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruCommon24
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_common_24')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺ばかり話してたな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。君の模型について、随分詳しくなりましたよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「退屈じゃなかった？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「退屈なら、本を開いていたでしょう。今、閉じているのが見えませんか。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_common_24=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_01')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「呼ぶと、ちゃんと顔を向けてくれるな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「用も言わずに眺めていたら、君が困るでしょう。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、返事が聞きたかった。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……なら、聞こえる所にいるうちに、呼んでくださいね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_01=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_02')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、仕事の話を置いてきた。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「結構。では、僕の仕事を探すのもやめてください。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんな顔してたか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「しましたよ。僕が本を閉じたら、何か頼めると思ったでしょう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_02=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_03')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第18・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ありがとう。さっきは、嬉しかった。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……そんなに、大したことをしましたか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺には、そうだった。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そうですか。では、一度くらいは、そのまま聞いておきますよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_03=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_04')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第22・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これ、どう思う？　先にお前の意見を聞きたい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「聞いてから、自分でも考えるんでしょうね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。だから、相談してる。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「なら、こちらを。君が見落とした所を、先に一つ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_04=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_05')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、したいことはある？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そこへ座って、窓を塞がないでください。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それだけでいいのか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。……今日は、そのくらいで、ちょうどいいので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_05=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_06')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第5・22話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「昨日の話、ここだけ聞き直していいか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「覚えていましたか。途中で眠っているのかと思いましたよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「覚えてたから、考え直した。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……では、どこを変えたんです？　僕も、もう一度読んでみます。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_06=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_07')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第11・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「取ってほしいものがあれば、言ってくれ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、その本を。あと、水もお願いします。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「思ったより、あるな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「頼めと言ったのは君でしょう。嫌なら、先に返事を変えてください。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_07=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_08')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruBlush]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、顔を見てもいいか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「断ったら、どこを見るつもりです？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「窓でも見てる。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……こちらで結構ですよ。そんなに真剣に、許可を待たなくても。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_08=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_09')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の話、笑ってくれたな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。君にも、あんな失敗があるんだと思って。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また、話そうか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君が無事で済んだ話なら。聞く前から心配するようなものは、結構です。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_09=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_10')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、休むことにした。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。それなら、立ち上がって元気の証明をするのはやめましょう。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなことまで、しそうに見える？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……昔、それをした馬鹿がいますからねえ。君には、座っていてほしいんですよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_10=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_11')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「答えにくかったら、待つよ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君は、待っている間まで真面目な顔をするんですね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「急がせてる？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「いいえ。……返事を選んでいるだけです。もう少し、そのままで。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_11=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_12')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、そっちから話してくれ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「まとまっていなくても？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の話だって、そうだろ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。実に。……でしたら、人の話の時だけ、結論を急がないでくださいね。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_12=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_13')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第16・18・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の、直してほしい所は？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「自分の怪我だけ、軽く数える所ですかねえ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前も、やるだろ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。だから、君まで同じことをするのは困るんですよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_13=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_14')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第14・17・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、この時刻までに戻る。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「遅れるなら、先に知らせてください。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待っててくれるのか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……待つ方にも、予定を立てさせてくださいね。君だけの時間ではないので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_14=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_15')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第1・18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「自分の名前を書くのって、慣れるものかな。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕は、自分の字で書いた方がいいですね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「誰かに書いてもらうより？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。どう書くかまで、人に決められたくはありませんから。……君の字は、まず読めるようにしてほしいですが。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_15=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_16')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「帰ったら、何をしたいか考えてた。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「まだ決まっていなかったんですか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「会いたい人がいるなら、一緒に予定を立てたい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……こちらの返事を待つくらいには、ゆっくり決めてくださいね。置いていかれるのは、好きではないので。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_16=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_17')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、そろそろ戻るよ。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そうですか。では、この話は途中ですね。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「忘れない。続きから聞きたい。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。……次に来てから、前置きを思い出すような真似は、しないでくださいよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_17=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6ChatAkehiruRoute18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_akehiru_route_18')"]
; 前提：本人の個別ルート入り後、会話可能な状態。変身中で発話出来ない等の状態では呼ばない。
; 過去篇参照：第2・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「来てよかった。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……ええ。僕も、悪くありませんでしたよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の返事、覚えていていいか。」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君の記憶にまで、注文はしません。……忘れられるよりは、ましですから。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_akehiru_route_18=true"]
[chara_hide name="akehiru" time="200"]
[return]


