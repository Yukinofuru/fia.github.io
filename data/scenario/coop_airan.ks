; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_airan.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- v2CoopA1 ----
*v2CoopA1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_a1')"]
; 場所：備品庫→診療室前。共通期間、DAY15負傷前または回復後。
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
藍爛は診療室の棚から外した金具を、布の上へ並べていた。俺を見ると、立ち上がりかける。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そのままでいい。何をしてるんだ？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「棚が引っ掛かるので、少し直せないかと思いまして。……勝手に外して、すみません」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「使えなくなったわけじゃないんだろ。俺も、手伝っていいか」[p]
#
藍爛が道具を一つ選んだ。差し出しかけ、また手元へ戻す。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「あの、ここを押さえていただけますか。やり方は、私が」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教えてくれ」[p]
#
言われた向きへ金具を回す。違う所へ力をかけると、藍爛が首を振った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「反対です。こちらを、少しだけ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こうか。いつも俺が使う時より、難しいな」[p]
#
彼女が小さく笑った。元へ取り付け、二人で棚を開け閉めする。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSmile]
「引っ掛からなくなりました」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教えてくれて、助かった」[p]
#
今度は、立ち上がって謝られなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*v2CoopA2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_a2')"]
; 場所：食堂→食器棚。a1がなくても読める導入差分可。
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#
藍爛は、食事の一口分だけを脇へ残していた。食べられないのかと尋ねると、慌てて首を振る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「好きなので、最後にと思ったんです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、最初に食べる方だな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、途中で楽しみがなくなってしまいませんか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこまでは考えてなかった」[p]
#
自分の器を見て、二人で笑った。藍爛は残した一口を、まだ食べない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう少し、話しながら食べる？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSmile]
「はい。……急がなくても、大丈夫ですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、大丈夫」[p]
#
彼女が自分で箸を進めるのを待った。最後の一口を食べ終えると、好きな味が残っている、と小さく教えてくれる。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんも、一度、取っておいてみませんか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、次はそうする」[p]
[chara_hide name="airan" time="200"]
[return]


*v2CoopA3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_a3')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
備品庫の入口で、藍爛に呼び止められた。小さな金具を持ち、俺の返事を待っている。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「こちらを、押さえていただけますか。一人でも出来るのですが……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。どこを持つ？」[p]
#
言い終える前に引き受けると、彼女は少しだけ驚いた。俺は手を出さず、持つ場所を聞く。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSurprise]
「ここです。私が離しても、まだ動かさないでください」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった」[p]
#
言われた通りに待つ。彼女が締め直し、ようやく、もう大丈夫ですと顔を上げた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「助かりました」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「また呼んでくれ。返事は、その時にするから」[p]
#
片づけを終えても、彼女は扉へ向かわなかった。空いた椅子を、もう一つこちらへ向ける。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、もう一つ。少し、お話ししていきませんか」[p]
#
今度も、持ち物を探すより先に頷いた。[p]
[chara_hide name="airan" time="200"]
[return]


*v2CoopA4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_a4')"]
; 個別。怪物露見後、本人が姿と距離を選べる安全な場所。
; 過去篇参照：第25・27・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
藍爛が、椅子を少し遠ざけた。俺が見ていることに気づくと、手を止める。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「すみません。お声は、ちゃんと聞こえるのですが」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこが落ち着くなら、そこで話そう」[p]
#
椅子を引く音に彼女の肩が動いたので、俺も一度止まった。自分の席を指してから、ゆっくり座る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……嫌だから、離したわけではないんです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。今日、話しやすい所を決めてくれ」[p]
#
彼女は少し考え、椅子の向きだけを変えた。俺の顔がよく見える角度だった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「この向きがいいです。古虫さんは、座りにくくありませんか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「大丈夫」[p]
#
話し始めてから、もう一度だけ席を直した。さっき決めたことを、変えても構わなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*v2CoopA5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_a5')"]
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「外へ出たら、お店を見てみたいです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を見たい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「食べ物を。誰かの分ではなくて、自分で選んでみたくて」[p]
#
彼女は言い終えてから、俺を見た。許可を求めるような目だった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いいな。俺も選ぶ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「別々のものにしませんか。二つ、味が分かりますから」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう分けるつもりか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……古虫さんが、お嫌でなければ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「楽しみが増えた」[p]
#
藍爛が、ようやく笑った。甘いものから見たいと言ったので、俺は別の売り場を後へ回した。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSmile]
「迷ったら、もう少し歩いてから決めてもいいでしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何周でも、付き合うよ」[p]
[chara_hide name="airan" time="200"]
[return]


*v2CoopA6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_a6')"]
; 過去篇参照：第25・27・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
藍爛の所へ来たが、持っていたのは自分の飲み物だけだった。彼女が俺の手元を確かめる。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「何か、お困りですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。会いたくて来た」[p]
#
藍爛は返事を探すように口を開いた。道具へ伸びかけた手が、膝へ戻る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……何も用意していなくても、いいですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、何も考えてなかった」[p]
#
それを聞いて、彼女が小さく笑った。椅子を出してから、今度は俺より先に話し始める。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanSmile]
「今日は、窓から見えたもののお話をしても」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞きたい」[p]
#
俺の知らない時間を、彼女が教えてくれる。何の役に立つ話か、二人とも考えなかった。[p]
[chara_hide name="airan" time="200"]
[return]


*v6CoopAiranNormal4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_airan_normal4')"]
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
藍爛と、外した部品を分けていた。同じ形に見えても、厚みや穴の位置が違う。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こっちは、どこへ置く？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……私も、まだ分からないです」[p]
#
彼女は急いで答えを探しかけた。俺は手元の布へ、一つだけ離して置く。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、分からない分も作ろう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「残してしまっても？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「間違った所へ置くより、探す時に困らないだろ」[p]
#
藍爛が頷き、もう一つの部品を隣へ置いた。全部を知っているわけではない、と言ってから、使い方を一つ説明してくれる。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「こちらは、分かります」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教えてくれ」[p]
#
作業は、そこからまた進んだ。[p]
[chara_hide name="airan" time="200"]
[return]


*v6CoopAiranNormal5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_airan_normal5')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
食器を片づけた後、藍爛がほつれた布を見つけた。針を持ってくると言うので、俺もついていく。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「縫い物も出来るのか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「母に、少し教わりました。でも、まだ揃わなくて」[p]
#
見せてもらうと、確かに縫い目の幅が違っていた。それでも、引っ張った端はほどけない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ちゃんと留まってる」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「母も、そう言います。取れたら、また縫えばいいと」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、教えてもらっていいか」[p]
#
彼女は針を一本選び、俺へ持ち手を向けた。いきなり代わって縫おうとはしない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、ここから。少しずつで、大丈夫です」[p]
#
縫い終わる頃には、彼女の布より俺の布の方が、ずっと曲がっていた。[p]
[chara_hide name="airan" time="200"]
[return]


*v6CoopAiranNormal6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_airan_normal6')"]
; 過去篇参照：第28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#
藍爛と、診療室の棚を確かめに来た。直した金具は、まだきちんと動いている。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「使っていただけているんですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も、毎日使ってる」[p]
#
彼女が取っ手へ指を添えた。閉めた後、もう一度だけ開く。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「気になる所、ある？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。ここだけ、少し取りにくそうで。……でも、今日は道具がありません」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「場所を覚えておいて、また来よう」[p]
#
藍爛はすぐには動かなかった。いつものように、今すぐ直さなくてもいいのか確かめている。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、帰りに少し、別の所も見ていきませんか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いいよ。どこへ？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「窓のある方へ。今日は、そちらへ行きたいです」[p]
[chara_hide name="airan" time="200"]
[return]


*v6DateAiran1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_airan1')"]
[eval exp="f.storyV6.dateCurrent='v6_date_airan1'"]
; 親密度A、通常交流経験。場所：食堂の空いている場所。
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#
藍爛が、器を二つ並べていた。手伝う仕事を尋ねると、少し首を振る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今日は、一緒に食べていただけたらと思いまして」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「誘ってくれたのか。ありがとう」[p]
#
俺が座ると、彼女はようやく自分の席へ戻った。向かいではなく、横に並べた席だった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「どちらが、お好きですか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が先に選んでいいの？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。でも……私の分も、選んでおきました」[p]
#
彼女は片方の器を、自分の前へ寄せた。差し出しかけずに選べたことが、嬉しそうだった。[p]
[link storage="coop_airan.ks" target="*v6DateAiran1Notice"]一緒に食べようと誘ってくれたことに礼を言う[endlink][r]
[link storage="coop_airan.ks" target="*v6DateAiran1Share"]好きな味を、少しずつ分けようと誘う[endlink][r]
[s]


*v6DateAiran1Notice
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_airan1_notice')"]
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanBlush]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こうして誘ってもらえると、嬉しい」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……お食事がまだか、確かめてからにしようと思ったのですが」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その時は、少し待ってもらうよ。俺の都合も聞いてくれたらいい」[p]
#
藍爛が器を見て、それから俺を見た。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「では、次も聞きます。今日は、一緒でよかったです」[p]
#
食べ始める前から、彼女は少し笑っていた。[p]
[jump target="*v6DateAiran1Close"]


*v6DateAiran1Share
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_airan1_share')"]
; 過去篇参照：第2・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanSmile]
[airanShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こっちも、少し食べてみる？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。では、私の方も」[p]
#
藍爛は好きな所を、小さく二つに分けた。一つを俺の器へ置き、残りを自分へ戻す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「好きな分を、全部くれなくていいからな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。一緒に食べたいので、半分にしました」[p]
#
彼女が自分の分を食べるのを見てから、俺も箸を取った。同じ味かを、二人で確かめた。[p]
[jump target="*v6DateAiran1Close"]


*v6DateAiran1Close
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_airan1_close')"]
; 過去篇参照：第25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
食べ終えた途端、藍爛が器へ手を伸ばした。途中で止めて、俺の方を見る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……もう少し、座っていきませんか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。片づけは、その後で一緒にしよう」[p]
#
彼女は頷き、手を膝へ戻した。俺も器を置く。まだそこにいてよい理由を、探さなくて済んだ。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「次に食べてみたいものを、考えていたんです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞かせてくれ」[p]
#
彼女は、今度は俺の好みを尋ねる前に、自分の食べたいものを一つ挙げた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="airan" time="200"]
[return]


*v6DateAiran2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_airan2')"]
[eval exp="f.storyV6.dateCurrent='v6_date_airan2'"]
; 親密度B、デート1既読。場所：室内。負傷直後は延期し、歩行を要しない。
; 過去篇参照：第2・25・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんの好きなものを、もう少し教えていただけますか」[p]
#
模型の話をすると、彼女は紙を持ってきた。現物はないので、線を描いて説明する。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここへ、別の部品を合わせるんだ」[p]
#
覗き込む藍爛の肩が触れた。俺が少し離れると、彼女も紙へ近づく。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見えにくかったか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「いいえ。……今、離れてしまわれたので」[p]
#
説明を止めると、彼女が紙へ目を落とした。俺は椅子を動かす前に、隣を指す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「戻ってもいい？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
[airanBlush]
「はい。こちらで、続きを聞きたいです」[p]
#
肩が触れる所まで戻った。藍爛が、今度は自分から分からない箇所を指す。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「出来上がったら、どこを一番に見てほしいですか」[p]
#
簡単に答えられず、少し考えた。彼女は、線の続きを急かさずに待っていてくれた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="airan" time="200"]
[return]


*v6DateAiran3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_airan3')"]
[eval exp="f.storyV6.dateCurrent='v6_date_airan3'"]
; 親密度C、デート2既読。共通では交際確定の宣言までは行わない。
; 過去篇参照：第25・27・28話。日常場面は本編用の新規会話。
; DAY01〜10と同じ既存立ち絵・表情マクロを使用。
[airanNormal]
[airanShow]
#
帰ろうとすると、服の端が少し引かれた。藍爛の指だった。すぐに離れたが、俺は足を止める。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「すみません。何か、していただきたいわけでは……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう少し、いてもいい？」[p]
#
彼女が頷く。俺は座り直した。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「何もしていないと、ここにいていいのか、時々分からなくなるんです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、藍爛さんと一緒にいたい。今は、それで座ってる」[p]
#
彼女はしばらく返事をしなかった。俺も、すぐ安心した顔になるのを待ちはしない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……今日は、もう少し、ここにいたいです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
#
膝に置かれた手を見て、繋いでもいいかと聞いた。返事を待ってから指を出す。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんも、少し緊張されるんですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「かなり」[p]
#
藍爛が笑った。握る力を、二人で少しずつ緩めた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="airan" time="200"]
[return]


*v6CoopOfferAiran
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_offer_airan')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{};f.storyDatesSeen=f.storyDatesSeen||{}"]
[if exp="f.storyV6.dateCandidate==='v6_date_airan1' && !f.storyDatesSeen.v6_date_airan1"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_airan.ks" target="*v6DateAiran1"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_airan2' && !f.storyDatesSeen.v6_date_airan2"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_airan.ks" target="*v6DateAiran2"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_airan3' && !f.storyDatesSeen.v6_date_airan3"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_airan.ks" target="*v6DateAiran3"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_airan.ks" target="*v6CoopNormalAiran"]今日は、普段の交流にする[endlink][r]
[s]


; source:9078

; ---- v6CoopNormalAiran ----
*v6CoopNormalAiran
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_normal_airan')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{}"]
[if exp="!f.storyCoopSeen.airan_normal1"]
    [call target="*v2CoopA1"]
    [eval exp="f.storyCoopSeen.airan_normal1=true"]
[elsif exp="!f.storyCoopSeen.airan_normal2"]
    [call target="*v2CoopA2"]
    [eval exp="f.storyCoopSeen.airan_normal2=true"]
[elsif exp="!f.storyCoopSeen.airan_normal3"]
    [call target="*v2CoopA3"]
    [eval exp="f.storyCoopSeen.airan_normal3=true"]
[elsif exp="!f.storyCoopSeen.airan_normal4"]
    [call target="*v6CoopAiranNormal4"]
    [eval exp="f.storyCoopSeen.airan_normal4=true"]
[elsif exp="!f.storyCoopSeen.airan_normal5"]
    [call target="*v6CoopAiranNormal5"]
    [eval exp="f.storyCoopSeen.airan_normal5=true"]
[elsif exp="!f.storyCoopSeen.airan_normal6"]
    [call target="*v6CoopAiranNormal6"]
    [eval exp="f.storyCoopSeen.airan_normal6=true"]
[else]
    ; この通常期の初回本文は全て既読。既読の再訪差分を使い、未経験の約束を足さない。
[endif]
[return]

; source:9105
