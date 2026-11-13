; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_setsu.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- v2CoopY1 ----
*v2CoopY1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_y1')"]
; 共通期間。未来視と病状の核心を必須会話へ集中させず、本人を知る時間。
; 過去篇参照：第2・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「あら、紀一君。今日は何の相談かしら」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「相談じゃなくても、来ていいだろ」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。では、お客様ね。立ったままでいさせるわけにはいかないわ」[p]
#
世紬は椅子を出した。向かいへ座ろうとすると、自分の隣を指す。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「そこでは、また面談のようでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちがいいのか？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「わたしが誘っているのよ。少しは、嬉しそうにしてもらえる？」[p]
#
言われた通り、隣に座った。彼女は俺の手元を覗く。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「本当に手ぶらなのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か持ってくればよかったか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。書類を持ってきたら、取り上げようと思っていたの」[p]
#
しまった、と言う顔をしてみせる。俺が笑うと、世紬も満足そうに笑った。[p]
[chara_hide name="setsu" time="200"]
[return]


*v2CoopY2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_y2')"]
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#
世紬が飲み物へ何か足そうとしていた。包みの色が気になり、つい声をかける。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、何だ？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し、味を変えようかと思って」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少しって、どのくらい」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「まあ。明昼君と同じことを聞くのね」[p]
#
差し出された容器を受け取り、先に匂いを確かめた。彼女が楽しそうに眺めている。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「まだ何も入れていないわよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「疑ったみたいで悪い」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいの。先に聞いてくれる人がいると、失敗を減らせるでしょう？」[p]
#
俺は包みを机へ戻した。今日はそのまま飲もう、と言うと、世紬が少しだけ口を尖らせる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、次は君の好きな味を教えて。先に聞いておくわ」[p]
[chara_hide name="setsu" time="200"]
[return]


*v2CoopY3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_y3')"]
; 過去篇参照：第2・13話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「術なら、大抵のことは出来るんだよな」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。試してみたいことでもあるの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。苦手なことはあるのかと思って」[p]
#
世紬は少し考えた。それから、ごく自信ありげに答える。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「以前、台所へ入るのを止められたことがあるわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一度だけ？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「回数まで聞くなんて、厳しいのね」[p]
#
話を聞くと、鍋を焦がしただけでは済んでいなかったらしい。止めた人の話をする時だけ、彼女は少し楽しそうだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「止めてくれる人がいたんだな」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。わたしの言い分を、最後まで聞いてくれなかったの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「たぶん、聞いてたらまた何か足しただろ」[p]
#
彼女が目を丸くした。それから、昔の誰かを見るように、俺を見て笑った。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSmile]
「……そうね。それも、言われたわ」[p]
[chara_hide name="setsu" time="200"]
[return]


*v2CoopY4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_y4')"]
; 個別。本人の同意を得た看病の合間。
; 過去篇参照：第13・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#
寝台のそばへ置いた水を、世紬が自分で動かした。俺は慌てて手を出しかける。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「少し、待っていて」[p]
#
彼女は器を掴みやすい向きへ回した。それから手を離す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちの方がよかった？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。何でも置いてもらえるのは楽だけれど、こうしたいということもあるの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次も、先に聞く」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ふふ。よい返事ね。では、一つお願いしてもいいかしら」[p]
#
何か取ってこようと腰を浮かせると、首を振られた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「まだ、頼んでいないわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……悪い」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「そこへ座って。少し話してから、休みたいの」[p]
#
今度は聞き終えてから動いた。世紬は、上出来、と言って目を細めた。[p]
[chara_hide name="setsu" time="200"]
[return]


*v2CoopY5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_y5')"]
; 過去篇参照：第2・13・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今日は、何でもない一日にしたいわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何をすればいい？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「最初から難しい顔をしないこと、かしら」[p]
#
食べたい物を一つずつ挙げた。世紬の案は、三つ続けて菓子だった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、食事か？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「誰にも見つからなければ、そういうことに出来るでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、俺が聞いてる」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、共犯になってもらおうかしら」[p]
#
半分は普通の食事にする、と相談がまとまった。約束を取りつけた世紬が、少し疲れた顔をする。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続きは、休んでからにしよう」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。起きたら、献立を変えていてもいい？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また相談してくれ」[p]
#
彼女は頷き、目を閉じた。起きた後に話すことが、一つ決まった。[p]
[chara_hide name="setsu" time="200"]
[return]


*v2CoopY6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_y6')"]
; 過去篇参照：第17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#
世紬が手を差し出した。俺が握ると、指先が冷たい。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「驚いた？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し。温めてもいいか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。今日は、お願いしたいわ」[p]
#
力を込めすぎないように、両手で包んだ。彼女は珍しく、俺の手だけを見ている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か気になる？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。こうしてもらう時、わたしは何を返せるかと、考えてしまったの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、返さなくていい」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……君にまで、言われるのね」[p]
#
世紬が少し笑った。指を引かずに、握り直す。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuBlush]
「では、もう少し。このお願いは、聞いてくれる？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
#
何を治せるかは分からないまま、手を温めた。彼女も、それ以上の約束は求めなかった。[p]
[chara_hide name="setsu" time="200"]
[return]


*v6CoopSetsuNormal4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_setsu_normal4')"]
; 過去篇参照：第2・16・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#
模型を作る時の話をすると、世紬が紙を引き寄せた。俺の説明だけでは、形を思い浮かべにくいらしい。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「未来で見れば、完成した所も分かるんじゃないか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君は、作る前に完成品を渡されたい？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それは、違うな」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「でしょう。わたしは、君がどこで迷うのかも聞きたいの」[p]
#
継ぎ目を消そうとして、別の所を壊した話までしてしまった。彼女は途中から、出来上がりより失敗の方を詳しく聞く。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「楽しそうだな」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSmile]
「ええ。君の話は、君に聞くのが一番面白いもの」[p]
#
俺は描き損ねた線を消し、続きを描いた。彼女は完成を急がせなかった。[p]
[chara_hide name="setsu" time="200"]
[return]


*v6CoopSetsuNormal5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_setsu_normal5')"]
; 過去篇参照：第2・13・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#
世紬が、いつも同じ器を選んでいることに気づいた。取っ手のない、小さなものだ。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、気に入ってるのか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「両手で持てるでしょう。温かいものを入れると、よく分かるの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「便利だから？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「それもあるわ。でも、見ているだけでも悪くないでしょう？」[p]
#
器を机へ置き、少し回す。似た形はあっても、同じではない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当だ。縁が、少し違う」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「作る人も、毎回同じには出来ないのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の模型にも、そう言ってくれ」[p]
#
世紬が笑った。まだ見てもいないのに褒めてしまっては、持ってきてもらう楽しみが減るそうだ。[p]
[chara_hide name="setsu" time="200"]
[return]


*v6CoopSetsuNormal6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_setsu_normal6')"]
; 過去篇参照：第13・16・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今日は、何をしたくない？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「妙な聞き方だな」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「したいことを聞くと、君はまた仕事を探しそうだから」[p]
#
俺は少し考えた。世紬は、返事を知っているような顔をせずに待っている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、誰かの役に立つ理由を考えたくない」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「まあ。では、わたしも一つ」[p]
#
彼女は机の上の書類を閉じた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「先のことを相談されるのを、お休みにしたいわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、どっちもしない」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。何をして過ごそうかしら」[p]
#
二人で窓の外を眺めた。話題がなくなると、世紬が先に欠伸を隠した。俺も見なかったふりをして、背を預ける。[p]
[chara_hide name="setsu" time="200"]
[return]


*v6DateSetsu1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_setsu1')"]
[eval exp="f.storyV6.dateCurrent='v6_date_setsu1'"]
; 親密度A、通常交流経験。共通の私的な時間。未来視の真相開示は前倒ししない。
; 過去篇参照：第2・16・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「今日は、予習をしないで来たの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何の？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君と何を話すか。先に考えすぎると、本番でつまらないでしょう」[p]
#
世紬は隣の席を空けた。俺が座ると、飲み物の好みを一つずつ聞いてくる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いつものでいいよ」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「それでは、聞いた甲斐がないわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、今日は少し薄く」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。その答えなら、用意していなかった」[p]
#
彼女は嬉しそうに頷く。俺も、いつもよりゆっくり飲んだ。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「世紬も、分からない方が楽しい時があるんだな」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「あるわよ。わたしを、何だと思っていたの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何でも知ってる人」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、今日は一つ覚えて帰って。わたしも、君に驚かされたいの」[p]
#
返事を考える俺の顔を、彼女は楽しそうに見ていた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6DateSetsu2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_setsu2')"]
[eval exp="f.storyV6.dateCurrent='v6_date_setsu2'"]
; 親密度B、デート1既読。相手の病状の診察とは別の接触。
; 過去篇参照：第2・17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#
世紬が肩の糸くずを取ってくれた。礼を言っても、その手は離れない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ、ついてる？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。もう取れたわ」[p]
#
彼女は平然としていた。俺が手元を見ると、ようやく少し笑う。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSmile]
「困るなら、そう言ってね。わたしも、何でも分かるわけではないもの」[p]
[link storage="coop_setsu.ks" target="*v6DateSetsu2Ask"]「困らない。もう少し、そのままで」[endlink][r]
[link storage="coop_setsu.ks" target="*v6DateSetsu2Wait"]手を離さずにいる彼女を、静かに待つ[endlink][r]
[s]


*v6DateSetsu2Ask
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_setsu2_ask')"]
; 過去篇参照：第2・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuBlush]
[setsuShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「困らない。もう少し、そのままで」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。よい返事ね」[p]
#
得意そうに言ったのに、目が合うと彼女は一度、視線を落とした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうした？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuBlush]
「……君が、そんなに真面目に言うと思わなかったの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、触れていたいから」[p]
#
世紬の手が、肩から腕へ下りた。俺が受けると、今度は指を握ってくる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「では、こちらにしましょう。わたしも、そうしたかったの」[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6DateSetsu2Wait
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_setsu2_wait')"]
; 過去篇参照：第17・21話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuNormal]
[setsuShow]
#
動かずにいると、世紬の指が俺の服を少し掴んだ。俺はその手を見てから、彼女を見る。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……何も言わないのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「離してほしいとは、思ってないから」[p]
#
世紬は、いつものように笑おうとした。けれど、少し遅れた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuSad]
「わたし、君を待たせているのかしら」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、一緒にいるんだろ」[p]
#
肩に置かれた手が緩んだ。離れるのかと思ったが、そのまま俺の手を探してきた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6DateSetsu3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_setsu3')"]
[eval exp="f.storyV6.dateCurrent='v6_date_setsu3'"]
; 親密度C、デート2既読。本人は望みつつ、その時間を約束することに抵抗がある。
; 過去篇参照：第17・21・24話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[setsuSmile]
[setsuShow]
#
世紬が、俺の帰る時刻を尋ねた。まだ余裕があると答えると、時計をもう一度見る。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「疲れたなら、休んでくれ。帰った方がいいか？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「いいえ。……帰ってほしくなくて、聞いたの」[p]
#
言い終えてから、彼女は困ったように笑った。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
[setsuBlush]
「欲張りになると、次も同じように来てもらいたくなるでしょう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「来てほしいなら、そう言ってくれ」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「約束してしまっても、いいのかしら」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「会えない日が出来たら、その時に相談しよう。俺だって、勝手に全部は決められない」[p]
#
世紬は、長い約束を求めなかった。今日はもう少し、と隣を空ける。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「次は、わたしから呼ぶわ。君の都合も、ちゃんと聞いて」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待ってる」[p]
#
彼女は頷いた。次に何を話すかを考えている顔を、俺はしばらく見ていた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="setsu" time="200"]
[return]


*v6CoopOfferSetsu
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_offer_setsu')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{};f.storyDatesSeen=f.storyDatesSeen||{}"]
[if exp="f.storyV6.dateCandidate==='v6_date_setsu1' && !f.storyDatesSeen.v6_date_setsu1"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_setsu.ks" target="*v6DateSetsu1"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_setsu2' && !f.storyDatesSeen.v6_date_setsu2"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_setsu.ks" target="*v6DateSetsu2"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_setsu3' && !f.storyDatesSeen.v6_date_setsu3"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_setsu.ks" target="*v6DateSetsu3"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_setsu.ks" target="*v6CoopNormalSetsu"]今日は、普段の交流にする[endlink][r]
[s]


; source:9201

; ---- v6CoopNormalSetsu ----
*v6CoopNormalSetsu
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_normal_setsu')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{}"]
[if exp="!f.storyCoopSeen.setsu_normal1"]
    [call target="*v2CoopY1"]
    [eval exp="f.storyCoopSeen.setsu_normal1=true"]
[elsif exp="!f.storyCoopSeen.setsu_normal2"]
    [call target="*v2CoopY2"]
    [eval exp="f.storyCoopSeen.setsu_normal2=true"]
[elsif exp="!f.storyCoopSeen.setsu_normal3"]
    [call target="*v2CoopY3"]
    [eval exp="f.storyCoopSeen.setsu_normal3=true"]
[elsif exp="!f.storyCoopSeen.setsu_normal4"]
    [call target="*v6CoopSetsuNormal4"]
    [eval exp="f.storyCoopSeen.setsu_normal4=true"]
[elsif exp="!f.storyCoopSeen.setsu_normal5"]
    [call target="*v6CoopSetsuNormal5"]
    [eval exp="f.storyCoopSeen.setsu_normal5=true"]
[elsif exp="!f.storyCoopSeen.setsu_normal6"]
    [call target="*v6CoopSetsuNormal6"]
    [eval exp="f.storyCoopSeen.setsu_normal6=true"]
[else]
    ; この通常期の初回本文は全て既読。既読の再訪差分を使い、未経験の約束を足さない。
[endif]
[return]

; source:9228
