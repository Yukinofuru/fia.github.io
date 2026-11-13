; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_akehiru.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- v2CoopH1 ----
*v2CoopH1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_h1')"]
; 場所：資料室→静かな廊下。共通期間、古虫は男性だと認識。
; 過去篇参照：第2・13・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
明昼は資料室の椅子を一つ、窓際へ引いた。俺が書類を置こうとすると、その椅子を足で遠ざける。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「仕事を増やしに来たんですか。でしたら、座る場所を間違えていますよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。少し休もうかと」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「結構なことですねえ。では、その手に持っているものは？」[p]
#
俺は書類を元の棚へ戻した。戻ってくると、明昼の隣だけが空いている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちは何をしてた？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「読書です。見れば分かるでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、逆さだぞ」[p]
#
明昼が表紙を確かめた。俺の見間違いだった。机を挟んで見ていたせいだ。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「お疲れのようで。僕にまで診断させないでください」[p]
#
言い返す元気もなく、背を預ける。少しして、窓の眩しい所だけ、彼が紙を立てて隠した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ありがとう」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「本が読みにくかっただけですよ」[p]
#
紙は、俺の側に立ったままだった。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2CoopH2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_h2')"]
; 過去篇参照：第1・2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
明昼の膝に、古い本が開かれていた。俺が覗き込むと、手のひらで頁を押さえられる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「人の持ち物を、勝手に読む癖があるんですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪い。何の本か気になった」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「聞けば済むことでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、何を読んでる？」[p]
#
明昼は本から顔を上げた。表紙を見せるまでに、わざとらしいほど間を置く。[p]
[jump target="*v5HReply"]


*v5HBookContinue
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v5_h_book_continue')"]
; 過去篇参照：第2・13・15話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
頁には、庭を囲んだ古い家が載っていた。縁側に面した部屋を指すと、明昼が鼻で笑う。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここなら、静かに本を読めそうだな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruSmile]
「台所に近いですよ。料理をする人次第でしょうねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなに音がするか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「鍋が焦げるだけで済めば、静かな方です」[p]
#
冗談だと思って顔を見ると、本人は図面を見ていた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「台所で何か起きると、全員が同じ廊下へ出てくるんですよ。邪魔な家でした」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「詳しいな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……似た家に、住んでいましたから」[p]
#
彼は頁の角を直した。続きを待っても、次の説明は来ない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺なら、この部屋にする」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「隣がうるさいでしょうね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その時は、一緒に文句を言えばいい」[p]
#
明昼が小さく吹き出した。すぐに咳払いへ変わったが、聞こえなかったふりはしなかった。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2CoopH3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_h3')"]
; 過去篇参照：第12・16・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
明昼の帰りを待っていると、通路の向こうから刀の鞘が見えた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そこで何を？　通行の邪魔ですよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「戻ってくる頃かと思って」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕なら、一人で帰れますけど」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「知ってる。顔を見てから戻ろうと思った」[p]
#
彼は俺の横を通り過ぎかけ、足を止めた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……怪我なら、していませんよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それだけを見に来たんじゃない」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、腹でも減ったんですか。僕を待っても、食事は出てきませんが」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒に食べには行けるだろ」[p]
#
明昼が一度、手元の刀を見た。留め具を直してから歩き出す。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ついて来るなら、早くしてください。冷めますよ」[p]
#
さっきより遅い歩幅だった。俺が並ぶと、ようやくいつもの速さに戻った。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2CoopH4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_h4')"]
; 個別で姫彗本人の名を知った後。
; 過去篇参照：第1・18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
二人きりになってから、教わった名を呼んだ。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「姫彗」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……何です？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、そう呼んでも大丈夫か」[p]
#
彼女は廊下の方を確かめた。俺は続けて呼ばず、返事を待つ。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「呼んでから確認するんですねえ。順番を考えてください」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪い」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……今は、構いませんよ」[p]
#
名を口にすると、彼女がこちらを見る。声を上げれば誰にでも聞こえる場所だったから、俺は近くへ寄った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「大切なものを預けた顔をしないでください。僕の名前ですよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。お前が、俺に教えてくれた」[p]
#
明昼は何か言いかけ、唇を閉じた。代わりに、隣の席を空けてくれる。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2CoopH5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_h5')"]
; 過去篇参照：第1・18・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
俺が立ち上がると、姫彗の指が袖に掛かった。すぐに離れたが、引っ掛けただけには見えなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か忘れた？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「別に。用事があるなら、どうぞ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今はない」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「でしたら、いちいち立たなくてもいいでしょう」[p]
#
座り直すと、彼女は本を開いた。俺の袖には、もう触れていない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここでいいか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「座る場所くらい、自分で決めてください」[p]
#
言いながら、膝の本を少しずらした。俺が肩を寄せても、頁はめくられなかった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……君は、じっとしているのが下手ですねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「練習中だ」[p]
#
今度は俺から動かずにいた。しばらくして、彼女の肩の力が抜けた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v2CoopH6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_h6')"]
; 過去篇参照：第18・24・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「外へ出たら、何をするつもりです？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まず、皆が無事に戻れたか確かめる」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「その後です。仕事の手順を聞いた覚えはありません」[p]
#
考えても、すぐには出てこない。姫彗は呆れた顔で待っていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前は？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「会いに行きたい家族はいますよ。長いこと、顔を見ていませんから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も一緒に行っていいか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「話が早すぎませんか。先方の都合というものがあるでしょう」[p]
#
断られたと思ったところで、彼女が続けた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……まず、連絡を取ってからです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、その返事を待つ間は？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「休んだらどうです。僕にも付き合えと言うなら、なおさら」[p]
#
俺は頷いた。誰がどれだけ働くかではなく、帰ってから会う日の話をした。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v6CoopAkehiruNormal4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_akehiru_normal4')"]
; 過去篇参照：第19・22・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
資料室で、明昼が報告書を並べていた。俺も日付順に積むと、すぐに二枚だけ抜かれる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「書いた日と、起きた日は違いますよ。ここ、読んでください」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当だ。慣れてるな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「紙を触る仕事も、していましたから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「討伐だけじゃなかったのか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君は、僕が一日中刀を振っていると思っていたんですか」[p]
#
次の紙を渡すと、今度は受け取ってもらえた。端を揃えて、向きを変える。何度か続けると、手を伸ばす場所が決まってきた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「二人だと早いな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「間違いを直す時間がなければ、もっと早かったでしょうねえ」[p]
#
それでも、俺が帰ろうとすると残りの半分を渡された。明日の分まで、一緒に終わらせた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v6CoopAkehiruNormal5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_akehiru_normal5')"]
; 過去篇参照：第12・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
明昼の読んでいる本に、雪の写真があった。次の頁へ進まず、その一枚だけを見ている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「雪、好きなのか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ええ。汚れる前なら」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「外で遊んだり？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕は、窓から見せてもらう方でしたねえ」[p]
#
写真の雪だるまは、少し傾いていた。明昼の指が、その脇をなぞる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今なら、自分で作れるな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「何故、僕が寒い中へ？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見る方だけがいい？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……出来がよければ、窓くらい開けますよ」[p]
#
俺が作ることになっていた。文句を言うと、彼は写真をもう一度こちらへ向ける。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「見本はあります。あとは、君の腕次第ですね」[p]
[chara_hide name="akehiru" time="200"]
[return]


*v6CoopAkehiruNormal6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_akehiru_normal6')"]
; 過去篇参照：第13・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
休むと言って座ったのに、俺は三度も時計を見た。明昼が本を閉じる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「時間を見ているだけで回復するなら、便利なんですけどねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「気になるんだよ。何もしていないと」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「分かりますよ。僕も、昔は寝ていろと言われるたびに抜け出していましたから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それで？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「廊下で倒れました。聞きたかった答えですか」[p]
#
笑いかけて、やめた。明昼が先に笑う。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruSmile]
「そこは笑って結構です。実に間抜けでしたので」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、今日は二人とも座ってる」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君の監視まで引き受けたつもりはありませんが」[p]
#
彼は本を開き直した。俺が時計へ顔を向けると、閉じた側の表紙で、そっと視界を塞がれた。[p]
[chara_hide name="akehiru" time="200"]
[return]


*v6DateAkehiru1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_akehiru1')"]
[eval exp="f.storyV6.dateCurrent='v6_date_akehiru1'"]
; 親密度A。相手を罵倒するだけではなく、本人が古虫を選ぶ行動を置く。
; 過去篇参照：第2・13・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
食事を済ませて戻ると、明昼が器を一つ、隣の席から退けた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「そこ、空きましたよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「空けてくれたのか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「見れば分かることを、聞き直さないでください」[p]
#
俺が座ると、彼は包みを開いた。菓子が二つ入っている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「珍しいな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「いただきものです。一人で食べるには多かったので」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「二つだろ」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「数えられるようで、何よりです」[p]
#
笑いながら受け取ると、明昼は俺が食べるまで自分の分に手をつけなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「甘い」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「感想が雑ですねえ。ほかには？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒に食べると、落ち着く」[p]
#
彼は包みの角を折り直した。きれいに折れていた所を、もう一度。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……食べ物の感想を聞いたんですけど」[p]
#
それきり、もう一つの席を片づけようとはしなかった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6DateAkehiru2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_akehiru2')"]
[eval exp="f.storyV6.dateCurrent='v6_date_akehiru2'"]
; 親密度B。場所：資料室。大きな秘密を暴く場面にしない。
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
同じ本へ手を伸ばし、指が触れた。明昼が先に引っ込める。俺も手を止めた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「先に取って結構ですよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪い。驚かせたか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……いちいち、大事にしなくていいんですが」[p]
#
彼は怒っているようにも見えた。ただ、本を取ろうとはしなかった。[p]
[link storage="coop_akehiru.ks" target="*v6DateAkehiru2Back"]「じゃあ、次から声をかける」[endlink][r]
[link storage="coop_akehiru.ks" target="*v6DateAkehiru2Name"]「明昼」と呼び、もう一度手を差し出す[endlink][r]
[s]


*v6DateAkehiru2Back
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_akehiru2_back')"]
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、次から声をかける」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「本を取るたびに、許可を求めるつもりですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前の手に触れそうな時だ」[p]
#
明昼は少し黙った。それから本を持ち上げ、俺の膝へ載せる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……これは、どうぞ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ありがとう。返す時も声をかける」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「律儀ですねえ。聞こえる所にいますから、大声は結構です」[p]
#
明昼は隣に座り直した。本を返すまで、その席から離れなかった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6DateAkehiru2Name
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_akehiru2_name')"]
; 過去篇参照：第1・18話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruBlush]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明昼」[p]
#
返事を待ってから、掌を上にして差し出した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、もう少し触れていたい。嫌だったら、このままでいい」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……君は、逃げ道を作ったつもりなんでしょうね」[p]
#
俺が手を戻そうとすると、指先が載った。掴まれるほどではない。けれど、今度は彼からだった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「引っ込めるのが早いんですよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪い」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「謝るなら、今度は動かないでください」[p]
#
手を握り込まずに待った。しばらくすると、彼の指が、俺の掌に収まった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6DateAkehiru3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_akehiru3')"]
[eval exp="f.storyV6.dateCurrent='v6_date_akehiru3'"]
; 親密度C。共通なら呼称は明昼、姫彗開示後なら本人の名へ差分。
; 過去篇参照：第18・24・25話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
明昼が本を閉じた。そろそろ帰るのかと思い、俺も立ち上がる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……まだ時間はあるでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「帰るのかと思った」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「本を閉じただけですよ。何でも終わったことにしないでください」[p]
#
座り直すと、彼は膝の上で手を組んだ。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何をしようか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「別に、何かをしなくても」[p]
#
言葉が止まる。いつもの嫌味が続くと思っていた俺は、返事を待った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……もう少し、ここにいてもらえますか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「用事があるなら、言ってくださいね。勝手に待って、腹を立てるのも馬鹿みたいですから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、お前といる用事がある」[p]
#
明昼は顔を背けた。それでも、俺が帰る時刻を、もう一度だけ確かめた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="akehiru" time="200"]
[return]


*v6CoopOfferAkehiru
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_offer_akehiru')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{};f.storyDatesSeen=f.storyDatesSeen||{}"]
[if exp="f.storyV6.dateCandidate==='v6_date_akehiru1' && !f.storyDatesSeen.v6_date_akehiru1"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_akehiru.ks" target="*v6DateAkehiru1"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_akehiru2' && !f.storyDatesSeen.v6_date_akehiru2"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_akehiru.ks" target="*v6DateAkehiru2"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_akehiru3' && !f.storyDatesSeen.v6_date_akehiru3"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_akehiru.ks" target="*v6DateAkehiru3"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_akehiru.ks" target="*v6CoopNormalAkehiru"]今日は、普段の交流にする[endlink][r]
[s]


; source:9160

; ---- v6CoopNormalAkehiru ----
*v6CoopNormalAkehiru
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_normal_akehiru')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{}"]
[if exp="!f.storyCoopSeen.akehiru_normal1"]
    [call target="*v2CoopH1"]
    [eval exp="f.storyCoopSeen.akehiru_normal1=true"]
[elsif exp="!f.storyCoopSeen.akehiru_normal2"]
    [call target="*v2CoopH2"]
    [eval exp="f.storyCoopSeen.akehiru_normal2=true"]
[elsif exp="!f.storyCoopSeen.akehiru_normal3"]
    [call target="*v2CoopH3"]
    [eval exp="f.storyCoopSeen.akehiru_normal3=true"]
[elsif exp="!f.storyCoopSeen.akehiru_normal4"]
    [call target="*v6CoopAkehiruNormal4"]
    [eval exp="f.storyCoopSeen.akehiru_normal4=true"]
[elsif exp="!f.storyCoopSeen.akehiru_normal5"]
    [call target="*v6CoopAkehiruNormal5"]
    [eval exp="f.storyCoopSeen.akehiru_normal5=true"]
[elsif exp="!f.storyCoopSeen.akehiru_normal6"]
    [call target="*v6CoopAkehiruNormal6"]
    [eval exp="f.storyCoopSeen.akehiru_normal6=true"]
[else]
    ; この通常期の初回本文は全て既読。既読の再訪差分を使い、未経験の約束を足さない。
[endif]
[return]

; source:9187

; ---- v5HReply ----
*v5HReply
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v5_h_reply')"]
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「昔の家の間取りを見ていたんですよ。随分、余計な廊下がありますねえ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「よく知ってる家なのか？」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「家の話をするとは言ってませんけど。本を見たいんでしょう？」[p]
#
問いを重ねかけてやめた。彼が押さえているのは、本の頁だった。[p]
[link storage="coop_akehiru.ks" target="*v5HReplyBack"]「じゃあ、本の話だけにする」[endlink][r]
[link storage="coop_akehiru.ks" target="*v5HReplyPlain"]「何が面白いのか、教えてくれ」[endlink][r]
[s]


*v5HReplyBack
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v5_h_reply_back')"]
; 過去篇参照：第2・15話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、本の話だけにする」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「切り替えが早いですね。拗ねるかと思いましたよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当に帰れと言われたわけじゃないし」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「都合のいい解釈ですねえ」[p]
#
それでも明昼は、隣の荷物をどけた。俺が座ると、自分の指で隠していた図を出す。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「汚さないでくださいね。ここでは、次の一冊が簡単に手に入りませんから」[p]
[jump target="*v5HReplyJoin"]


*v5HReplyPlain
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v5_h_reply_plain')"]
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何が面白いのか、教えてくれ」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「家より、僕の感想の方に興味が？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前がわざわざ読んでる理由が気になる」[p]
#
明昼は一度、こちらを見た。それから本へ目を戻す。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
[akehiruBlush]
「……物好きですねえ。図面なら、まだ素直に説明できるんですが」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「図面からでもいい」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「では、こちらへ。首を伸ばされると、落ち着かないので」[p]
[jump target="*v5HReplyJoin"]


*v5HReplyJoin
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v5_h_reply_join')"]
; 過去篇参照：第2・15話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[akehiruSmile]
[akehiruShow]
#
明昼は本を二人の間へ寄せた。空いていた椅子の背を、指で一度叩く。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「遠くから眺めて分かった顔をされても困ります。見るなら、ここでどうぞ」[p]
[jump target="*v5HBookContinue"]


