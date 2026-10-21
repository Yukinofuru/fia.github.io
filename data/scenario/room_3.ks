; 遭遇！C-810：本文・選択肢・分岐はこのKSファイルで編集する。
; 共通の攻撃UI・怪異名入力UIは使用しない。
*start
[encounterInit code="C-810"]
[jump target="*intro"]

*intro
[encounterClear]
#kiichi
俺は妙にじめじめした地下施設を歩いていた。たぶん、放棄された地下シェルターか何かだろう、人が生活していたと思わしき形跡がちらほら見つかった。[p]
[cm]
#kiichi
電気系統も生きているようで、本当に最低限だけ天井灯がついている。それでも暗くて見通せないので、懐中電灯を左右に振りながら歩いていた。[p]
[cm]
#kiichi
暗くて狭いこと以外に、危険を予感させる要素はないように思えたのだが……。[p]
[cm]
#kiichi
俺は何の変哲もない曲がり角を曲がって、懐中電灯を前に向けた。[p]
[cm]
#kiichi
すると、男が何か武器のようなものを構えて立っていた！[p]
[cm]
#kiichi
俺は慌ててブレードを構え、相対する。[p]
[cm]
#kiichi
「お前は誰だ！？」[p]
[cm]
#kiichi
「わ、私は、木下徹（きのしたとおる）です！綴りはただの木の下に、徹底抗戦の徹です。階級など今はありませぬ。ただの、予備役のじじいであります」[p]
[cm]
#kiichi
少し腰が引けていたが、彼は落ち着いてそう答えた。よく見ると、構えていたのは俺の持っているようなブレードではなく、十年くらい前まで軍で使われていた小銃だった。軍服も旧式。[p]
[cm]
#kiichi
頭髪前線の後退著しい、どこにでもいそうなじいさんの顔だった。[p]
[cm]
#kiichi
「……俺は古虫紀一。第03基地第106小隊の、不幸な衛生兵さ」[p]
[cm]
#kiichi
「ひゃくろく？今、106小隊と言いましたかな」[p]
[cm]
#kiichi
「そうだが？」[p]
[cm]
#kiichi
「そんなに多いはずがありませぬ」[p]
[cm]
#kiichi
「あー、昔は小隊が少なくて、一つ一つの小隊規模が大きかったんだっけな」[p]
[cm]
#kiichi
「私は今のことを話しているのです！誤魔化すんでない！」[p]
[cm]
#kiichi
「まあ待てよじいさん、ただのジェネレーション・ギャップだよ。多分俺たち、時代が違うんだ」[p]
[cm]
#kiichi
「なにを、訳の分からないことを！撃ちますぞ！」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="殴ってでも落ち着かせてやる！" target1="*intro_choice0" text2="まあ待て、身分証を見てくれよ" target2="*intro_choice1"]
[s]

*meeting
[encounterClear]
#kiichi
「待てってば。ちょっと、俺の身分証を見てくれよ。今そっちの足元に、するーって投げるから」[p]
[cm]
#kiichi
変に緊張してもいいことはない。あえてフランクな話し方をしながら俺は身分証を取り出し、床を滑らせるようにして彼の方へ投げた。[p]
[cm]
#kiichi
彼は、俺から視線を外すのを嫌がりながらも、ちらり、ちらりと足元を見て、そのうち観念して視線をすっかり下ろし、足でつついて身分証の向きを直して、不可解そうに眺めるのだった。[p]
[cm]
#kiichi
「はて、いくら騙し下手なバケモノでも、未来に作られた身分証を人に見せますかな」[p]
[cm]
#kiichi
「未来から来た人が未来の身分証を見せることはありますよ」[p]
[cm]
#kiichi
「はぁ。もう私もボケたのですか。タイムスリップの夢を見ております」[p]
[cm]
#kiichi
「夢だと思うんなら、夢だと思って俺の話を聞いてくれ」[p]
[cm]
#kiichi
お互いのことを正直に話し合い、本物の人間同士だと確信した俺たちは、この地下シェルターに残された問題について議論を始めた。[p]
[cm]
#kiichi
「もう一度聞くが、木下さんの姪っ子がその、向こうの部屋にいるんだな？」[p]
[cm]
#kiichi
「はい……ですが……」[p]
[cm]
#kiichi
「どう見ても様子が変だと」[p]
[cm]
#kiichi
「あの、一番下へ行く階段はもう見てきましたかな」[p]
[cm]
#kiichi
「ああ、あの、なぜか水浸しで底も見えなくなってた」[p]
[cm]
#kiichi
「春菜（はるな）ちゃんは、あそこで溺れて息絶えたはずだったのです」[p]
[cm]
#kiichi
「どういうことですか」[p]
[cm]
#kiichi
「……忘れもしない、2518年4月14日の悪夢でありました」[p]
[cm]
#kiichi
「て、手短に頼むよ」[p]
[cm]
#kiichi
「結果だけお伝えしますと、あの階段より下にいた人たちはみな、突然湧き出した大量の水にとらわれ、溺れ死んでしまったのです」[p]
[cm]
#kiichi
「なぜ大量の水が？」[p]
[cm]
#kiichi
「それは、誰にも分かりませぬ。今私たちがいるところの、腰まで浸る高さまでそれはもうどばどばと流れてきて、ああ、あのときは、もう……」[p]
[cm]
#kiichi
「あのときは？」[p]
[cm]
#kiichi
「……いえ、じじいの涙など、若者に見せるものではありませぬ」[p]
[cm]
#kiichi
「ああ……話したいことだけ話せばいいんですよ」[p]
[cm]
#kiichi
「とにかく、そのために使い物にならなくなったこの地下壕は放棄され、生き残った皆さんは、別の避難所へ。私は、ここに残って調査を手伝いながら、春奈ちゃんを探すことにしました」[p]
[cm]
#kiichi
「だめになったシェルターに、本部から調査員が派遣されることもあるんだったな」[p]
[cm]
#kiichi
「はい……潜水服を来た特殊部隊が、階下で手掛かりを探しましたが、見つかったご遺体よりも、見つからなかったご遺体の方がずっと多かったのです」[p]
[cm]
#kiichi
「遺体が消えた？」[p]
[cm]
#kiichi
「何か、摂理を越えたことが起こったのは間違いありませぬ。水道管の破裂でも、地盤の崩壊でもなく、ただそこに、突然水が現れ、人を消し去ったとしか思えない状況だったそうです」[p]
[cm]
#kiichi
「ううむ……で、じゃあなんで姪っ子の春奈ちゃんは例の部屋にいるんだ？」[p]
[cm]
#kiichi
「一か月ほど前から、なぜかあの場所にいるのです」[p]
[cm]
#kiichi
「消えたはずなのに？」[p]
[cm]
#kiichi
「……では、あそこまでお連れしましょう。遠くから覗き見るぶんには、安全だと分かっております」[p]
[cm]
#kiichi
ついでに医療物資を拾い集めながら木下さんについていくと、かつて寝室だったと思わしき一室の扉の前にたどり着いた。[p]
[cm]
#kiichi
錆びた蝶番を、ギイイとゆっくり鳴らしながら、扉を開けて覗き込む。[p]
[cm]
#kiichi
かび臭い空気の立ち込めた部屋には、薄汚れたベッドがたくさん。そのうち一台を、懐中電灯でピカッと照らした。[p]
[cm]
#kiichi
「あれが……？」[p]
[cm]
#kiichi
「そうです。春奈ちゃんにそっくりなのです」[p]
[cm]
#kiichi
「……何となく、近づいたらいけない気がするのは俺にも分かります」[p]
[cm]
#kiichi
気の抜けた絵がプリントされたTシャツを着た、ショートカットの女の子がベッドの上でゆるい体育座りをしていた。変なところがあるとすれば、まったくの無表情で、ただ黙ってこっちを見つめていること。[p]
[cm]
#kiichi
適度に瞬きしているのもかえって不気味だ。[p]
[cm]
#kiichi
「これだけか？春奈ちゃんが俺らにしてくることって、見てくるだけか？」[p]
[cm]
#kiichi
「食べません、動きません、寝ません、喋りません。一か月前からずっとです。それに、私が動くと、首を回して目で追います」[p]
[cm]
#kiichi
「目で追う？」[p]
[cm]
#kiichi
俺は試しに、開けた扉の後ろからそろりそろりとカニ歩きをして、木下さんの反対側まで来て、また戻った。[p]
[cm]
#kiichi
その間、春奈ちゃんはまるで監視カメラのように、俺を常に真っ正面に捉えるように首を回して、ただ見つめていたのだ。[p]
[cm]
#kiichi
「こ……こわ」[p]
[cm]
#kiichi
「希望ある未来から来た若者が、これしきで弱音を吐いてどうするのですか！」[p]
[cm]
#kiichi
「ばか、怖がれるときに怖がっておくんだよ！」[p]
[cm]
#kiichi
「春奈ちゃんに何が起こったのか、そもそもあれは春奈ちゃんなのか、分かりますか」[p]
[cm]
#kiichi
「分かんないな……多分、もう……その、人間ではなくなっていると思うが。飲まず食わずでずっとああしてるんだから」[p]
[cm]
#kiichi
「もとのように、治せませんか……？」[p]
[cm]
#kiichi
「木下さんが春奈ちゃんの叔父でもなければ、無理だと即答しているところだな」[p]
[cm]
#kiichi
「私は、叔父ですが」[p]
[cm]
#kiichi
「それでも無理だと言わざるを得ないな。すまない。もうあれはALTまでいっている」[p]
[cm]
#kiichi
「おると？」[p]
[cm]
#kiichi
「要するに、もはや人間とは見なされない、人間に戻る見込みはない者に付けられる無慈悲な記号だよ」[p]
[cm]
#kiichi
「なぜそこまで言い切れるのです」[p]
[cm]
#kiichi
「俺個人の経験でも、全世界で共有された知識でも、人間が、人間でない性質を獲得したら、元に戻ることは絶対にないからだ」[p]
[cm]
#kiichi
「……」[p]
[cm]
#kiichi
「”正常な遺体”に戻すことなら、できる場合もあるが」[p]
[cm]
#kiichi
「……ならば、出来る限りのことは尽くしましょう」[p]
[cm]
#kiichi
「ああ」[p]
[cm]
[jump target="*reasonIntro"]

*reasonIntro
[encounterClear]
#kiichi
もちろん、無策でアレに突っ込むのは無謀だ。できれば怪異名を特定して一番いい対処法を知りたいところだが、それが無理でも、せめてアレの性質について最低限分かることはないだろうか？[p]
[cm]
[if exp="f.encounter.values.asked1 && f.encounter.values.asked2 && f.encounter.values.asked3"]
[jump target="*decision"]
[endif]
[ui_showChoices layout="encounter" fontSize="38" text1="&(!f.encounter.values.asked1) ? ('木下さんはなぜまだここにいるのか？') : ''" target1="*reasonIntro_choice0" text2="&(!f.encounter.values.asked2) ? ('階下の洪水と関係あると思うか？') : ''" target2="*reasonIntro_choice1" text3="&(!f.encounter.values.asked3) ? ('階下の洪水から逃げ延びた人はなんて言ってた？') : ''" target3="*reasonIntro_choice2"]
[s]

*question1
[encounterClear]
#kiichi
「ところで、事故調査も分からずじまいで、皆ここから出ていったはずだろ？なんで木下さんはまだここにいるんだ」[p]
[cm]
#kiichi
「それが……他にもう、行くあてもなくてですね」[p]
[cm]
#kiichi
「使える避難所はないのか？」[p]
[cm]
#kiichi
「無いわけではありませぬ。ただ、収容人数はどこもとっくに限界を越えております。もう、守りたい人も守る力もない老人が、女子供を押しのけて行くのも忍びない」[p]
[cm]
#kiichi
「だからって水浸しの廃墟に残るかい？」[p]
[cm]
#kiichi
「この上の階なら、かび臭いですがまだ辛うじて暮らせました。水も地道に排水して、ここまで減らしました」[p]
[cm]
#kiichi
「そこまでしてなぜ……」[p]
[cm]
#kiichi
「棄てられた地下壕にも、仕事はあります。新たな怪異の巣窟になるかもしれないでしょう。私が残って、毎日の生存報告を電信するのです」[p]
[cm]
#kiichi
「いわゆる、”シェルターの墓守”を引き受けたってわけか」[p]
[cm]
#kiichi
「そういうことです……」[p]
[cm]
#kiichi
人類が怪異に反撃する術を持たず、侵略されていたこの時代ではよくあった話だ。放棄されたシェルターをいつか奪還する日が来たとしても、そこが悪魔の巣にでもなっていれば、何の情報も知らずに踏み入った兵士がバタ[p]
[cm]
#kiichi
バタ死ぬかもしれない。だから誰かがそこに残って監視し、地上への扉を頑強に閉じておく。何かあれば、情報を持ち帰って逃げ出す。逃げられないなら、最期の通信をして殉死する。[p]
[cm]
#kiichi
俺なら絶対引き受けたくない役回りだが。[p]
[cm]
#kiichi
「それに、まだ春奈ちゃんのことを諦めきれませんでした。もう他に、親戚も家族もいないのです。それはあの子にとっても同じこと」[p]
[cm]
#kiichi
「消えたはずなのに？」[p]
[cm]
#kiichi
「消えたら、現れるかもしれないでしょう。いつかひょっこり顔を出して、”じいじ、久しぶり”って」[p]
[cm]
#kiichi
「木下さん、そりゃ、死に際に見る夢だよ」[p]
[cm]
#kiichi
「私にはもうそれしか夢がなかったのです」[p]
[cm]
#kiichi
「……で、今外の方はどうなってるんだ」[p]
[cm]
#kiichi
「通信は途絶、タナトリウム計測器も壊れ、一歩も外に出られませぬ」[p]
[cm]
#kiichi
「最後に外へ出たのはいつだ」[p]
[cm]
#kiichi
「確か……春奈ちゃんがここに現れるより、一週間前だったでしょうか」[p]
[cm]
#kiichi
「どんな様子だった」[p]
[cm]
#kiichi
「通信が途絶えたので、電波塔を見に行ったのですが、まるで巨人に殴られたようにひしゃげていました。防護服もすぐボロボロになって、タナトリウムのつんざく匂いがしてきましたので、命からがら、逃げ帰ったのです[p]
[cm]
#kiichi
。それっきりですよ」[p]
[cm]
#kiichi
「もちろん、その間シェルターの入り口はしっかり閉じていたんだよな」[p]
[cm]
#kiichi
「バケモノどもに見つからないように、巧妙に偽装してあります。帰ってから隅々まで見回りましたが、何も侵入していなかったと思います」[p]
[cm]
#kiichi
「うーん……」[p]
[cm]
#kiichi
ずっとこっちを見てくる不気味な春奈ちゃんに、俺は懐中電灯を当て続ける。よく見ると、髪や瞳に光沢が生じている。光を反射するのなら、幻や幽霊の類である可能性は低いな。[p]
[cm]
#kiichi
さて、ここまでで分かったことは……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんはタナトリウム汚染が進んでからここに現れたから、タナトリウムと関係している可能性が高い。" target1="*question1_choice0" text2="春奈ちゃんはどこかから侵入したとは考えにくい。だから、突然転移してきた可能性が高い。" target2="*question1_choice1" text3="勘違いして進めたくないので判断を避ける" target3="*question1_choice2"]
[s]

*question2
[encounterClear]
#kiichi
「春奈ちゃんがここに現れたのは、あの洪水と関係あると思いますか？」[p]
[cm]
#kiichi
「……？どういう意味の質問ですかな」[p]
[cm]
#kiichi
「いや、だから、あの洪水を引き起こした超常現象と、消えたはずの春奈ちゃんがここにいるのと、関係ありますかって」[p]
[cm]
#kiichi
「関係あるかって、えぇ…？」[p]
[cm]
#kiichi
「んーっ。つまり、例えば怪異要覧だったら同じ項目、同じ番号の中で一緒に説明されてるような、一続きの超常現象だと思うかって聞いてるんですよ」[p]
[cm]
#kiichi
「あぁ、そういうことですか」[p]
[cm]
#kiichi
「どうですか」[p]
[cm]
#kiichi
「まったく分かりませぬ」[p]
[cm]
#kiichi
「そうですか！」[p]
[cm]
#kiichi
「君は十年後から来たから、怪異のこともよく分かっているでしょうが、私の時代ではせいぜい、きちんと調べられた怪異は50や100種類ほどですよ」[p]
[cm]
#kiichi
「俺が習った怪異要覧は2000番台まであったけどな」[p]
[cm]
#kiichi
「そんなに」[p]
[cm]
#kiichi
「多すぎるから結局覚えられないんだが」[p]
[cm]
#kiichi
「はは……困ったものですな」[p]
[cm]
#kiichi
「だからヒントがたくさんないと思い出せないんだよ。何でもいいから思いつくこと教えてくれよ」[p]
[cm]
#kiichi
「そうですな……私も一人でいろいろと考えておりました。あの子の正体は何か、なぜ消えて、また現れたのか」[p]
[cm]
#kiichi
「どういう筋書きならあり得そうか？」[p]
[cm]
#kiichi
「洪水のどさくさに紛れてバケモノに誘拐され、あんな風に放り捨てられてしまったとか」[p]
[cm]
#kiichi
「他には」[p]
[cm]
#kiichi
「洪水は関係なく、ただ、愛おしい故人に化けて出る魔物だとか」[p]
[cm]
#kiichi
「まだ何かないか」[p]
[cm]
#kiichi
「それくらいしか思いつきませぬ」[p]
[cm]
#kiichi
「与太話でもいいから、ヒントになれば何でもいいからさ」[p]
[cm]
#kiichi
「溺れて亡くなられた方々の無念が、春奈ちゃんの形になったものかと」[p]
[cm]
#kiichi
「怪異は死人の気持ちなんてまったく配慮してくれないと思うが」[p]
[cm]
#kiichi
「しかし、どれが正しいか、正しいものがあるかなんて、分かりませんよ」[p]
[cm]
#kiichi
「いや、経験則を当てはめればいい」[p]
[cm]
#kiichi
「経験則とな」[p]
[cm]
#kiichi
「怪異が人間を襲う意図。わざわざ異世界からコンニチワしてきやがった目的。そういうのの研究も、盛んにされてきたが、だいたい皆口をそろえてこう言うんだ。[p]
[cm]
#kiichi
どうも人間のことを、搾取すべき資源として見ている奴が多いと」[p]
[cm]
#kiichi
「ならば、あれは何なのです？」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="洪水にさらわれた人間を材料にした罠" target1="*question2_choice0" text2="愛おしい故人に化けた魔物" target2="*question2_choice1" text3="溺死した人々の無念が実体化したもの" target3="*question2_choice2"]
[s]

*question3
[encounterClear]
#kiichi
「下の階で洪水が起こったとき、逃げ延びた人はいるのか？」[p]
[cm]
#kiichi
「ええ、この階に居た皆さんは無事でしたけど」[p]
[cm]
#kiichi
「そうじゃなくて、下の階にいたけど、洪水を目撃して、この階まで逃げてきたっていう人だよ」[p]
[cm]
#kiichi
「ああ……一人だけいました」[p]
[cm]
#kiichi
「その時のことをなんて言ってたんだ？」[p]
[cm]
#kiichi
「洪水が起こる前、おかしなことは無かったかと聞きますと、何か……ヒステリー？のようなものを起こした女性が、いたんだと」[p]
[cm]
#kiichi
「それ、詳しく」[p]
[cm]
#kiichi
「さあ、何が何やらで、その方が言うには、突然めちゃくちゃな早口で訳の分からないことを喋っているのが聞こえて、部屋の奥に目をやると、女性がそれを言っていて、皆ぎょっとしていたんだと。[p]
[cm]
#kiichi
その直後、ざぱーん、どばばばばーっ。幸い扉のすぐ近くにいたのでとにかく逃げに逃げて、でも追いつかれて、鼻と口を閉じて耐えていたら、ここに流れ着いたんだと」[p]
[cm]
#kiichi
「じゃあ、何だったんだその早口って」[p]
[cm]
#kiichi
「さあ……地震の前にナマズが暴れるようなものですかな」[p]
[cm]
#kiichi
「古代の迷信を持ち出すんじゃなくてさ」[p]
[cm]
#kiichi
「いえ、まったく分からないのです。その女性が誰だったのかも、何を喋っていたのかも」[p]
[cm]
#kiichi
「誰だったのかも分からないのか」[p]
[cm]
#kiichi
「何せ、大人数が暮らしていたもので、しかも目撃者は彼だけでしたから……」[p]
[cm]
#kiichi
「どう考えても、洪水と無関係じゃなさそうだよな。それに普通の人間が突然めちゃくちゃな早口で喋りだすことがあるか？」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="その目撃者が噓を言っていて、彼が洪水を引き起こして自分だけ生き残ったという可能性を心に留める" target1="*question3_choice0" text2="その女性が洪水を予感して何か必死に伝えようとしていた可能性を心に留める" target2="*question3_choice1" text3="その女性は異常な人間で、洪水を引き起こした原因である可能性を心に留める" target3="*question3_choice2"]
[s]

*decision
[encounterClear]
#kiichi
「えっと……古池さんでしたか」[p]
[cm]
#kiichi
「古虫だよ」[p]
[cm]
#kiichi
「古虫さん、そろそろ何か分かりましたか？」[p]
[cm]
[if exp="f.encounter.values.score + f.kno >= 10"]
[jump target="*best"]
[else]
[if exp="f.encounter.values.score + f.kno >= 5"]
[jump target="*middle"]
[else]
[jump target="*mistaken"]
[endif]
[endif]

*best
[encounterClear]
#kiichi
「倫理規定だ」[p]
[cm]
#kiichi
「りん……何ですと？」[p]
[cm]
#kiichi
「まったく倫理的じゃないが、倫理規定という名前の怪異がいるんだ。番号は忘れたが」[p]
[cm]
#kiichi
「それで間違いないのですね？」[p]
[cm]
#kiichi
「いろいろ迷うこともあったが、この状況にぴったり当てはまるのは倫理規定だけだ」[p]
[cm]
#kiichi
「で、では、春奈ちゃんは……」[p]
[cm]
#kiichi
「確実に”正常な遺体”に戻せる」[p]
[cm]
#kiichi
木下さんは、少しの間ぽかんとして、そして深くうなだれた。それでも、覚悟を決めてくれたようだ。[p]
[cm]
#kiichi
「……いえ、それが一番です。どうやって戻すのですか。私にできることはありますか」[p]
[cm]
#kiichi
「いや、木下さんは、万が一のことがあったら一目散に上の階へ逃げてくれ。先に逃げていてもいい。俺が一人でやるから」[p]
[cm]
#kiichi
「いえ、私にも何か手伝わせてください。それだけのために、ずっとここで耐えていたのです」[p]
[cm]
#kiichi
「ううん……この注射を、首筋に刺すだけなんだ。一人でできるし、一人でしかやれない。木下さんは見届けるだけでいい」[p]
[cm]
#kiichi
「分かりました。信じていますよ」[p]
[cm]
#kiichi
「ああ」[p]
[cm]
#kiichi
俺は軍服に仕込んでいたソーラインの注射器をそっと取りだし、満杯に入っていることを確認する。[p]
[cm]
#kiichi
そして心の準備と深呼吸。これはとにかく急いで決着を付けなきゃいけないものだから、慌てて手が滑ったら命取りだ。[p]
[cm]
#kiichi
春奈ちゃんに接近したら、下の階で洪水が起こった直前のことのように、とんでもない早口で定型文を喋り始めるはずだ。[p]
[cm]
#kiichi
それを喋り終えたら大洪水が起きてしまう。とにかく、至急、注射をぶち込め！[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんの部屋へ突入する！" target1="*best_choice0"]
[s]

*bestUrgent
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="首にソーラインを打つ" target1="*bestUrgent_choice0"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*bestUrgent_timeout" time="3000"]
[s]

*bestTimeout
[encounterClear]
#kiichi
ええい何を迷っている！？やれ！！[p]
[cm]
[jump target="*endingA"]

*middle
[encounterClear]
#kiichi
「分かったことと言えば……あー、何というか、うん」[p]
[cm]
#kiichi
「はっきり言ってくだされ」[p]
[cm]
#kiichi
「正直言って、あれが何の怪異によるものかは、俺には突き止められない」[p]
[cm]
#kiichi
「そんなっ。未来から来たという話は嘘だったのですか」[p]
[cm]
#kiichi
「未来でも無理なものは無理なんだよ。まだ情報が足りていないやつとか、複雑で分かりにく過ぎるやつとか、ごまんといる。兵士はバタバタ死んでいる」[p]
[cm]
#kiichi
「何とかならないのですか！」[p]
[cm]
#kiichi
「春奈ちゃんはここから動かないんだろ？普通なら、触らぬ神に祟りなしということで、お前を連れて出ていくところだが…」[p]
[cm]
#kiichi
「それくらいならば、いつか私の声に答えてくれるまで、私は一人でもここに留まります」[p]
[cm]
#kiichi
「だよな。じゃあ俺が独りで出ていこうかとなるわけだが、木下さん、ここにいても独りで死ぬだけだと思うぜ」[p]
[cm]
#kiichi
「元より、生きてこの地下壕から出ていくことなど考えておりませぬ」[p]
[cm]
#kiichi
「俺に、お前を見殺しにしろってか？」[p]
[cm]
#kiichi
「見殺しなどではありませぬ。若者は……老人の未練になど付き合わず、救うべき人を救いに行ってくだされ」[p]
[cm]
#kiichi
さあ、どうしたものか。[p]
[cm]
#kiichi
元人間の怪異、あるいは人間に化けた怪異というのは、尋問して、見破って、ソーラインを適当なところに注射するという一般的な対処法が通じれば楽だ。だが実際には通じない場合も多い。[p]
[cm]
#kiichi
のんきに注射なんかしてる間に殺されたら元も子もないし、そもそも注射が効かなかったり、刺す部位を間違えたら意味が無かったりする。[p]
[cm]
#kiichi
それにこの春奈ちゃんは、階下で起こった洪水と関係しているかもしれない。洪水……はぁ洪水か。この疲れ切った頭でもぱっと思い出せるくらい知識を叩き込んでおけばよかったなぁ。[p]
[cm]
#kiichi
とにかく、俺は目の前の春奈ちゃんに対する正しい対処法が分からない。運が良ければ上手くいくかもしれないが、そんなの自殺行為の言い換えに過ぎない。[p]
[cm]
#kiichi
さあ、俺はどうしたい？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="まずいことになったら全力で逃げればいい。とにかく近づいてみよう" target1="*middle_choice0" text2="もっと見込みのある未来のために、老人と別れていく" target2="*middle_choice1"]
[s]

*approach
[encounterClear]
#kiichi
「まあ、やれるだけのことはやってみるよ」[p]
[cm]
#kiichi
俺はとりあえずソーライン注射器を取り出して構え、春奈ちゃんの部屋の真ん前に立った。[p]
[cm]
#kiichi
「ええっ、無理はおやめください」[p]
[cm]
#kiichi
「春奈ちゃんを救ってほしいんじゃなかったのかよ」[p]
[cm]
#kiichi
「ですが、あなたが命をなげうってまでやることでは！」[p]
[cm]
#kiichi
「うん、馬鹿やってるのは分かるよ。合理的じゃない。でもな知ってるか、三十六計逃げるに如かずだ。幸い、俺たちには確実な退路がある」[p]
[cm]
#kiichi
「しかし、何かあったとき逃げ切れる保証は？」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんも確実に逃げられるよう、俺の基地と繋がった扉の前で待機していてもらう" target1="*approach_choice0" text2="俺独りだと不安だ。一緒に逃げ出せるよう、すぐそばで待機していてもらう" target2="*approach_choice1"]
[s]

*approachAfter
[encounterClear]
#kiichi
「わ、分かりました。本当にいいのですね？」[p]
[cm]
#kiichi
「化け物としてじゃなく、せめて人間の春奈ちゃんとして逝かせてやりたいだろ？やってみる価値はあるよ」[p]
[cm]
#kiichi
「……任せましたよ」[p]
[cm]
#kiichi
「ああ」[p]
[cm]
#kiichi
木下さんには所定の位置に待機していてもらった。俺は春奈ちゃんの部屋に一歩踏み入り、そろりそろり近づいていく……。[p]
[cm]
#kiichi
２歩。[p]
[cm]
#kiichi
３歩。[p]
[cm]
#kiichi
４歩。[p]
[cm]
[jump target="*urgent"]

*urgent
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="逃げる！！！" target1="*urgent_choice0" text2="腕にソーライン" target2="*urgent_choice1" text3="喉にソーライン" target3="*urgent_choice2" text4="話を聞き取る" target4="*urgent_choice3"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*urgent_timeout" time="3000"]
[s]

*leave
[encounterClear]
#kiichi
「俺は衛生兵だから……基地に帰らなきゃ、治療を待ってる人が大勢いるんだ」[p]
[cm]
#kiichi
「ならば、なおさらです」[p]
[cm]
#kiichi
木下さんは真っ直ぐ俺の前に向き直り、本当に説得しようとしているようだ。[p]
[cm]
#kiichi
「いや、そんな、木下さん。俺だってまだ悩む時間はあるし」[p]
[cm]
#kiichi
「では、悩むのがよろしい。しかし私は、古虫くんがいかなる選択をしようとも、心の中でさえ責めることはないと約束します」[p]
[cm]
#kiichi
「それにほら、一旦基地に帰ってもさ、また戻ってこれるかもしれないだろ。もっと知識と道具と人員のある状態で」[p]
[cm]
#kiichi
「古虫くん、君、さっき自分で言ったことを覚えていますか。君が来た扉はそういう性質のものではないと」[p]
[cm]
#kiichi
「そうだったな……」[p]
[cm]
#kiichi
俺の身の上話をしたときに伝えたことだ。端的に言えば、今いるような異空間から基地へ戻る分には全く問題ないが、再び基地からこっちに戻ってくるのにはリスクが伴う。[p]
[cm]
#kiichi
基地で一日過ごしただけでこっちで1年経っていたり、全く別の異空間に繋がってしまったりするのだ。それを阻止するには、この異空間を歪めている怪異を無力化しなければならないのだが……[p]
[cm]
#kiichi
「要するに、あからさまに怪異になってるアレを放置して俺が出ていったら、救出しに戻ってこれる可能性は低い」[p]
[cm]
#kiichi
「いいのです……救ってあげなさい、君の仲間を」[p]
[cm]
#kiichi
と言いながら、俺と一緒に帰る気もないのかこのじいさんは。全く、未練が強すぎるな。[p]
[cm]
#kiichi
……これ以上人を見殺しにしたくない俺の未練も強すぎるけれど。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="危険を冒してでも怪異に挑む" target1="*leave_choice0" text2="無謀なことはせず一人で帰る" target2="*leave_choice1"]
[s]

*mistaken
[encounterClear]
#kiichi
「それが……ううん、全く考えがまとまらないんだ。情報と情報の、関係が分からない。何か判断するには情報が足りなすぎるな」[p]
[cm]
#kiichi
本当はそれだけではなかった。ここ最近体も頭も休まる暇がなかったし、怪異のことを復習する時間も足りなかった。[p]
[cm]
#kiichi
今なら国語の初歩的な問題でも間違えてしまいそうな……それくらい参っていたのだ。[p]
[cm]
#kiichi
「まあ、だからほら、本人に聞いてみるのが一番じゃないのか？」[p]
[cm]
#kiichi
「お、お待ちなさい！私はずっと、この距離から近づいたことはないのです！近寄ったら何が起こるか！」[p]
[cm]
#kiichi
「だいいち、近寄っちゃいけないのも、そんな気がするってだけで根拠も無いだろう？」[p]
[cm]
#kiichi
「しかしどう見てもあの様子、それに飲まず食わずで寝もしない。どう考えても異常です」[p]
[cm]
#kiichi
「まあ見てなって」[p]
[cm]
#kiichi
過度に心配せず、俺はとんとん拍子で春奈ちゃんの部屋に上がりこむ。[p]
[cm]
#kiichi
すると突然、春奈ちゃんは異常に早口で何か唱え始めた！[p]
[cm]
[jump target="*death3"]

*runAlone
[encounterClear]
#kiichi
何も分からん！逃げるしかねぇ！！[p]
[cm]
#kiichi
俺はぎゅるんと足腰をねじって一目散に部屋を飛び出し廊下を駆けてゆく。[p]
[cm]
#kiichi
曲がり角の手前で振り返ったらあーーーっ！しまった！集めておいた医療物資が置き去りだ！[p]
[cm]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="無理無理無理！" target1="*runAlone_choice0" text2="俺の足ならいける！" target2="*runAlone_choice1"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*runAlone_timeout" time="3000"]
[s]

*drop
[encounterClear]
[eval exp="f.encounter.values.hasLostMaterials = true"]
#kiichi
間に合うわけねぇだろうが！諦めろ！[p]
[cm]
[jump target="*endingB"]

*retrieve
[encounterClear]
#kiichi
俺は踵を返して物資の包みを掴み取り、また死に物狂いで逃げ出した！[p]
[cm]
#kiichi
息を切らして階段を上りながら、俺は異変に気付く。後ろからゴォーッという轟きが、危険な速さで迫っている！まずい！[p]
[cm]
[if exp="f.spi >= 4"]
[jump target="*retrieved"]
[else]
[jump target="*death4"]
[endif]

*retrieved
[encounterClear]
#kiichi
あぁあぁあぁやばいやばいやばい！！こんな無茶するんじゃなかった！！こんな馬鹿で死にたくないーーっ！！[p]
[cm]
[jump target="*endingB"]

*runTogether
[encounterClear]
#kiichi
「逃げるぞ木下！！」[p]
[cm]
#kiichi
「はい！！」[p]
[cm]
#kiichi
俺たちは全速力で上の階へ向かって走り出す！木下さんはちゃんと付いてこれているだろうかって、ああ！[p]
[cm]
#kiichi
「だめだ！それじゃ遅いよ！！」[p]
[cm]
#kiichi
木下さんの足腰は予想よりずっと弱かった！あの春奈ちゃんが何をしでかすかは分からないが、何か起これば間に合わないかもしれない……！？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんを信じて俺だけでも先に逃げる" target1="*runTogether_choice0" text2="すっ転んだら誰が助けるんだ！ペースを落として一緒に走る" target2="*runTogether_choice1"]
[s]

*support
[encounterClear]
#kiichi
俺は木下さんを見捨てる勇気がなかった。一人で走ったとて逃げ切れないかもしれんしな！[p]
[cm]
#kiichi
「はっ、はっ、はっ、さ、さきに……」[p]
[cm]
#kiichi
「喋んな！一緒に走るから！」[p]
[cm]
#kiichi
出口のある上の階への階段を上っていると突然、轟音が響いた！下からなにかとてつもなく大きなものが迫ってきている！[p]
[cm]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="肩を担いでやる！！" target1="*support_choice0" text2="すまない！すまない！すまない！！" target2="*support_choice1"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*support_timeout" time="3000"]
[s]

*carry
[encounterClear]
#kiichi
「だめだっ、置いてけェッ」[p]
[cm]
#kiichi
「できるかぁ！！」[p]
[cm]
#kiichi
木下さんは足がもつれて駄目になってやがる。肩を担いで引きずってでも！一緒に逃げるんだ！！[p]
[cm]
[if exp="f.phi >= 3"]
[jump target="*endingD"]
[else]
[jump target="*death5"]
[endif]

*endingA
[encounterClear]
#kiichi
俺は戸惑いと恐怖を振り切って、首筋めがけてソーラインを思い切り注射する！[p]
[cm]
#kiichi
春奈ちゃんはまだ顎をがくがくさせてとんでもない速さで喋っている。いいから早く止まってくれ！[p]
[cm]
#kiichi
残りの液を全て送り込んでもまだ止まらないから、とうとうダメかと思ったが……ピタリと声が止まった。[p]
[cm]
#kiichi
これで終わったのだろうか？[p]
[cm]
#kiichi
「春奈！春奈ぁっ！」[p]
[cm]
#kiichi
「うおっと」[p]
[cm]
#kiichi
急に木下さんが部屋に飛び込んできた。[p]
[cm]
#kiichi
「春奈……どうしたんだ一体、おい、しっかりしなさい！何があったのか、じいじに話してごらんなさい！」[p]
[cm]
#kiichi
衛生兵なんて仕事をしているせいで、乱暴に注射することを数秒ためらってしまったが、最初から注射器を構えていたおかげで間に合ったようだ。と、俺は一人で反省していた。[p]
[cm]
#kiichi
「おい古虫くん、春奈はどうなったんだ、大丈夫なのか」[p]
[cm]
#kiichi
至って真剣に、縋るような目で老兵は俺に問う。何て言ってやればいいのか……[p]
[cm]
#kiichi
「まず……手を合わせましょうか」[p]
[cm]
#kiichi
それしか言葉を持ち合わせていなかった俺は、諦めるように呟き、目を閉じ、手を合わせて祈った。[p]
[cm]
#kiichi
しばらく経ってから、か弱い「ぱっ」という音がようやく聞こえた。聞き覚えがあった。しわだらけの、骨の浮き出た手と手を合わせ、祈りをささげる老人を、あちこちで見たことがあったから。[p]
[cm]
#kiichi
こうして死者を弔うことができるだけでも、この世界ではよほど幸福なことに違いない……[p]
[cm]
#kiichi
俺たちはシェルターに残っていた医療物資を回収し、春奈ちゃんの遺体も基地に連れ帰った。あそこで作るよりはマシな墓を用意してやろう。[p]
[cm]
#kiichi
果たして、C-810、倫理規定とは、あの早口な定型文の中に含まれている語句から付けられた通称だった。[p]
[cm]
#kiichi
まず最初に、春奈ちゃんと同じような特徴を持った人間型の罠が地下施設などに現れ、大量の水を出現させて人を溺れさせ、消し去る。[p]
[cm]
#kiichi
そして恐らくは、その消し去った人間に異常な仕掛けを施して、また近くに出現させて、同じことを繰り返すのだ。[p]
[cm]
#kiichi
どうも仕掛け人は、地球人を取引契約上の資源だとしか思っていないらしい。[p]
[cm]
#kiichi
しかも、その悪質な取引も、彼らなりの倫理規定に沿ったものなのだと、犠牲者の口から喋らせているのだ。[p]
[cm]
[encounterWin materials="2" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*endingC
[encounterClear]
#kiichi
とにかくこの滅茶苦茶喋っている喉！これに異常があると踏んだ俺は喉をめがけて容赦なく注射針をぶち込む！[p]
[cm]
#kiichi
全く痛がる様子がないどころか、むしろ加速さえしているように聞こえる！意味あるのかよこれ？[p]
[cm]
#kiichi
だめか？無理か？もう時限爆弾みたいなもんなのか？今か今かと、「逃げろ！」と叫ぶ機会をうかがっているうちに……[p]
[cm]
#kiichi
ピタリと止んだ。[p]
[cm]
#kiichi
春奈ちゃんは……何も喋らなくなって、だらんと脱力してベッドに崩れ落ちたのだった。[p]
[cm]
#kiichi
「春奈！春奈ぁっ！」[p]
[cm]
#kiichi
「うおっと」[p]
[cm]
#kiichi
急に木下さんが部屋に飛び込んできた。[p]
[cm]
#kiichi
「春奈……どうしたんだ一体、おい、しっかりしなさい！何があったのか、じいじに話してごらんなさい！」[p]
[cm]
#kiichi
そう……春奈ちゃんに何が起こっていたのか、その最大のヒントとなる語句を、さっきの長台詞の中から辛うじて聞き取ることができた。[p]
[cm]
#kiichi
「おい古虫くん、春奈はどうなったんだ、大丈夫なのか」[p]
[cm]
#kiichi
至って真剣に、縋るような目で老兵は俺に問う。ううむ。最初から結論を伝えるのは酷だな。それ以外のことから先に話そう。[p]
[cm]
#kiichi
「今やっと、これが何の怪異によるものか、分かったかもしれません」[p]
[cm]
#kiichi
「え……では、何だというのですか」[p]
[cm]
#kiichi
「恐らく……倫理規定と通称される怪異です。番号は忘れましたが」[p]
[cm]
#kiichi
「はて、倫理規定？」[p]
[cm]
#kiichi
「さっき、滅茶苦茶喋ってたじゃないですか。その中に、なんちゃら、動物、倫理規定っていう、ぞっとするような言葉がありまして」[p]
[cm]
#kiichi
「それがどうしたのです」[p]
[cm]
#kiichi
「奴らの言い訳でしょう。このシェルターで洪水をおこし、人をさらい、春奈ちゃんをこんな状態で送り返したことへの」[p]
[cm]
#kiichi
木下さんは、ぽかんとして俺の方を見ていた。いや全く、胸糞悪い仕組みをしているのだ、これは。[p]
[cm]
#kiichi
「おい、私が聞きたいのは、春菜は……」[p]
[cm]
#kiichi
「俺の注射によって、”正常な遺体”に戻りました。こうする他なかったし、最初からこれが倫理規定のせいだと分かっていても、これ以上のことはできなかったのです」[p]
[cm]
#kiichi
俺たちはシェルターに残っていた医療物資を回収し、春奈ちゃんの遺体も基地に連れ帰った。あそこで作るよりはマシな墓を用意してやろう。[p]
[cm]
#kiichi
果たして、C-810、倫理規定とは、あの早口な定型文の中に含まれている語句から付けられた通称だった。[p]
[cm]
#kiichi
まず最初に、春奈ちゃんと同じような特徴を持った人間型の罠が地下施設などに現れ、大量の水を出現させて人を溺れさせ、消し去る。[p]
[cm]
#kiichi
そして恐らくは、その消し去った人間に異常な仕掛けを施して、また近くに出現させて、同じことを繰り返すのだ。[p]
[cm]
#kiichi
どうも仕掛け人は、地球人を取引契約上の資源だとしか思っていないらしい。[p]
[cm]
#kiichi
しかも、その悪質な取引も、彼らなりの倫理規定に沿ったものなのだと、犠牲者の口から喋らせているのだ。[p]
[cm]
[encounterWin materials="2" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*endingD
[encounterClear]
#kiichi
下から迫りくる得体のしれない何かに、俺は怖気づくことはない。人の命を救おうとするときにだけ、湧いてくる力がある！[p]
[cm]
#kiichi
だが、最後にどうしたのか、一瞬振り返って何が見えたのかは覚えていない。気付けば俺たちは、基地の扉の前で重なり合って倒れていた。[p]
[cm]
#kiichi
老人のくさい息と、苦しそうに収縮する腹の感触から離れることもできない。[p]
[cm]
#kiichi
しばらく、互いに一言も発することはできなかった。[p]
[cm]
#kiichi
しかし何だか、面白そーな顔をして上から覗き込んでいる顔が一人。いつの間にやら、初明が傍に来ていたのだった。[p]
[cm]
#kiichi
俺は大きな大きなため息を吐いて、じっと睨みつける。[p]
[cm]
#kiichi
「何だよ、何とか言ってくれよ。命がけで、助けてきたんだぞ、この、木下さんを、なあ？」[p]
[cm]
#kiichi
「どいて、ください……苦しい……」[p]
[cm]
#kiichi
「ああ悪かった。うん……しょっと」[p]
[cm]
#kiichi
「はあぁぁ……助かったよ、本当にありがとう、古池くんよ……」[p]
[cm]
#kiichi
「感謝してるなら……古虫ですよ俺は……覚えてください……」[p]
[cm]
#kiichi
「大手柄じゃない、古池くん。久しぶりの、無傷の生存者よ」[p]
[cm]
#kiichi
初明はにっこり笑う。とても可愛らしいはずなのに、見下ろしながら名前をいじられたせいで腹が立つ。[p]
[cm]
#kiichi
「ああいい……あの、えっと、だから、さっき何か、ゴォーッって迫ってきてたんだが、いいのかあれは」[p]
[cm]
#kiichi
「ものすごい洪水が迫ってきてたから、扉を向こうの空間から断絶しておいたわ。今開けたら、ここも全部流されちゃう」[p]
[cm]
#kiichi
「洪水？水だったのかあれは」[p]
[cm]
#kiichi
「それより、誰ですかあなたは」[p]
[cm]
#kiichi
「私？通りすがりの何でも知ってる人よ」[p]
[cm]
#kiichi
「あの、私の姪が、春奈ちゃんがまだ、あそこに……」[p]
[cm]
#kiichi
「落ち着いてからでいいから、話を聞かせてくれる？」[p]
[cm]
#kiichi
俺たちが体験したことを半分も話さないうちに、初明はこの一連の現象がC-810、「倫理規定」のしわざだと見抜いた。[p]
[cm]
#kiichi
そして、C-810-ALTとなっていた春奈ちゃんは正常な遺体に戻ったはずだが、回収できる見込みはないということ。[p]
[cm]
#kiichi
難しい怪異だった。それでも木下さんは生き延びたし、俺と一緒に逃げ延びたのだから、二人とも最大限に努力したのだ、ということを伝えてくれた。[p]
[cm]
#kiichi
ほどなくして、この扉の前には小さな献花台が設けられた。[p]
[cm]
[encounterWin materials="2" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*endingB
[encounterClear]
#kiichi
俺は死に物狂いで前へ前へ上へ上へと走って走って走りまくって、いつの間にか、いつの間にか……たどり着いていた！出口に！[p]
[cm]
#kiichi
「古池くん！」[p]
[cm]
#kiichi
「古虫だってばァ！かはっ、ぜえ、ぜえ」[p]
[cm]
#kiichi
と、その時既に！大きな大きな轟きが地下シェルター全体を揺るがしていた！[p]
[cm]
#kiichi
「あぁ、ああああ！」[p]
[cm]
#kiichi
「何だよ木下ァ！」[p]
[cm]
#kiichi
「洪水！あのときの！」[p]
[cm]
#kiichi
「マジかよくそったれ！」[p]
[cm]
#kiichi
見ると、けっこう広かったはずの下の階をもう水が埋め尽くしたのか！？鉄砲水がこっちに迫ってきてる！[p]
[cm]
#kiichi
「もうだめだ！」[p]
[cm]
#kiichi
俺は扉を開けて木下をぶっ飛ばし、自分も飛び込んで速やかに閉じ、必死に抑えた！[p]
[cm]
#kiichi
が、意外にも水の衝撃は来なかった。あれ？さっきの鉄砲水は？[p]
[cm]
#kiichi
「古虫くん？古虫くん？」[p]
[cm]
#kiichi
木下さんはうつ伏せにかっこ悪く転んだまま苦しそうに言った。[p]
[cm]
#kiichi
「大丈夫か木下さん」[p]
[cm]
#kiichi
「我々は助かったのか」[p]
[cm]
#kiichi
「……たぶんな」[p]
[cm]
#kiichi
「春菜は……？」[p]
[cm]
#kiichi
「さあ、近づいたら訳の分からないことをベラベラ喋りだしたもんで、俺、ビビッて逃げてしまった」[p]
[cm]
#kiichi
「い、今からでも助けに」[p]
[cm]
#kiichi
木下さんはむくっと起き上がり、またドアノブに手をかけた。[p]
[cm]
#kiichi
「おいちょっと待てよ」[p]
[cm]
#kiichi
「その必要はないわ」[p]
[cm]
#kiichi
「おわっ誰だお前！」[p]
[cm]
#kiichi
知らない女性の声がして俺は首をぎゅるぎゅる回した。が、見覚えのある顔が見つかった。[p]
[cm]
#kiichi
「状況は大体分かったわ。私は初明世紬。あなたは木下さんっていうのね」[p]
[cm]
#kiichi
「あ、ななな、あなたは誰ですか」[p]
[cm]
#kiichi
木下さんは突然のことでろれつが回っていない。[p]
[cm]
#kiichi
「は・つ・あ・か・り、せつ。この古虫くんの仲間で、囚人兵で、凄腕の術使で、何でも知ってる凄い人」[p]
[cm]
#kiichi
「びっくりさせないでくれ初明さん。今の、どこからどこまで見ていて聞いていたんだ」[p]
[cm]
#kiichi
「古池くんと呼ぶ声がドア越しに聞こえた所から」[p]
[cm]
#kiichi
「古虫だってば」[p]
[cm]
#kiichi
「あの、初明さん、春菜が、私の姪がまだ向こうにいるのです。共に助けに行っていただけませんか」[p]
[cm]
#kiichi
「……その必要はない、と言ったのよ」[p]
[cm]
#kiichi
「何が起きたか、分かるのですか」[p]
[cm]
#kiichi
縋るような目で初明を見つめる木下さんが可哀想だった。[p]
[cm]
#kiichi
「古虫くん、ここで問題です」[p]
[cm]
#kiichi
「ひあ？」[p]
[cm]
#kiichi
「地下シェルターみたいな閉所に現れる。近づくと変な取引のことを早口で喋りだす。大量の水を送り付けて、溺れた人を消してしまう。これ、なーんだ」[p]
[cm]
#kiichi
「……あっ、倫理規定か？」[p]
[cm]
#kiichi
「ぴんぽん。正解です。今ようやく気付いたって顔してるね」[p]
[cm]
#kiichi
「なんでお前はさっきの会話だけで分かったんだよ……」[p]
[cm]
#kiichi
「それでね木下さん、姪っ子さんは、古虫くんのおかげで正常に戻って、もとの人間として息を引き取ったはずよ」[p]
[cm]
#kiichi
「……体だけでも」[p]
[cm]
#kiichi
「だって、大洪水の中心にいたのよ。諦めてもらうために、教えてあげてもいいけど」[p]
[cm]
#kiichi
「ズタズタにひしゃげていてもです！指や、服の切れ端だけでも……！あぁ……」[p]
[cm]
#kiichi
木下さんは、がくりと膝から崩れ落ちて息を震わせ始めた。無理もない。弔うための拠り所さえ持って帰れなかったのだから。[p]
[cm]
#kiichi
初明の説明によると、この基地が洪水に巻き込まれるのを防ぐために、とっさに向こうの空間との接続を断ったらしい。[p]
[cm]
#kiichi
俺が必死に扉を抑えていたのにまったく水圧を感じなかったのは、そのとき既に扉は向こうと繋がっていなかったからだ。[p]
[cm]
#kiichi
そして、基地から脱出する経路としても使える見込みがないので、扉はこのまま封鎖するのだそうだ。[p]
[cm]
#kiichi
ならばせめてと、その日のうちに、この扉の前には小さな献花台が設けられた。[p]
[cm]
[eval exp="tf.encounterMaterials = f.encounter.values.hasLostMaterials ? 0 : 2"]
[encounterWin materials="&tf.encounterMaterials" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*endingE
[encounterClear]
#kiichi
気付けば俺は息をぜえはあさせて、基地の扉の前に立っていた。[p]
[cm]
#kiichi
俺は何をした？[p]
[cm]
#kiichi
木下さんは？[p]
[cm]
#kiichi
すぐに再び扉を開けても、さっきより明らかに朽ち果てた地下シェルターの壁面が基地の光に照らして見えるだけだった。[p]
[cm]
#kiichi
くるぶしくらいの高さまで満ちた、薄いタナトリウム臭のする水がじゃあじゃあと基地に流れ込んでくるのを黙って見ているわけにもいかず、また閉めた。[p]
[cm]
#kiichi
俺がここに帰ってものの数秒で、あちらでは時間が経ち過ぎたようだ。[p]
[cm]
#kiichi
俺は何をした？[p]
[cm]
#kiichi
独りで逃げてきたんだ。[p]
[cm]
#kiichi
それは賢明な判断だったかもしれない。共倒れするよりはマシだったかもしれない。しかしそんなことは関係なかった。[p]
[cm]
#kiichi
また俺は、救いたい人を救えなかった。それだけで、溺れるほど哀しかった……[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*endingF
[encounterClear]
#kiichi
ほんとにここまで一人で帰ってきちまったよ。なけなしの医療物資まで押し付けられて。[p]
[cm]
#kiichi
目の前の扉を開ければ基地だ。開けっ放しにして、誰か頼れる人を呼んでもいいが、そういうわけにもいかない。可及的速やかに閉じないとどんな歪みが生じるか分からないから。[p]
[cm]
#kiichi
……未練を振り切れず、振り返ると丁度木下さんが下の階から上がってきていた。[p]
[cm]
#kiichi
「ああ、俺、まだ決められねぇんだ」[p]
[cm]
#kiichi
「いい加減にしなさい！！」[p]
[cm]
#kiichi
えぇっ、何で急に怒るんだ！？[p]
[cm]
#kiichi
でも、チカチカ明滅する天井灯の下で、シワは深く、影は濃い。冷たく厳かに、俺を𠮟っているのだった。[p]
[cm]
#kiichi
「どうしてお前はそこまで割り切れるんだよ？どうして、独りで死んでく決断ができるんだ」[p]
[cm]
#kiichi
「私も現役は衛生兵だったのです」[p]
[cm]
#kiichi
「それと何の関係があるってんだよ」[p]
[cm]
#kiichi
「何を救わないか決められない者に衛生兵が務まりますか」[p]
[cm]
#kiichi
「……」[p]
[cm]
#kiichi
「何を救うかではない。限られた資源、時間、能力をわきまえて、何を救わないか決めるのが、職務ではありませんか」[p]
[cm]
#kiichi
「確かにそうだけど……でもっ」[p]
[cm]
#kiichi
「何だというのですか」[p]
[cm]
#kiichi
「衛生兵とか以前に、人間として、俺は俺を許せねぇよ……ただ方法が分からないからって、優先順位があるからって、目の前の人を見捨てるなんて……」[p]
[cm]
#kiichi
俺は冷酷になりきれない。日々の仕事で、人間性が悲鳴を上げていたのだ。[p]
[cm]
#kiichi
「……そうですか。分かりましたよ。貴方の気持ちは、よく……」[p]
[cm]
#kiichi
すると木下さんは何事もなかったかのように俺の方へ歩いて来て。[p]
[cm]
#kiichi
「そこまで言うのなら仕方ありません。私も、貴方についていきましょう」[p]
[cm]
#kiichi
「考え直してくれたのか！」[p]
[cm]
#kiichi
「ええ」[p]
[cm]
#kiichi
俺は全ての重荷が降りたように、ほっと一息を吐いた。[p]
[cm]
#kiichi
木下さんが朗らかな顔して俺をまっすぐ見ているもんだから、つい、何となく手が伸びて、木下さんはこれを掴み、握手した。[p]
[cm]
#kiichi
「帰ったら、俺は木下さんを連れて帰って大手柄、木下さんは大歓迎ですよ」[p]
[cm]
#kiichi
「ええ……」[p]
[cm]
#kiichi
「春奈ちゃんのことはどうしようか」[p]
[cm]
#kiichi
「墓は無くとも、天に向かって花を供えますとも」[p]
[cm]
#kiichi
……本当はそれでも名残惜しいだろうが、あんなに春奈ちゃんにこだわっていたのが嘘のように言ってのけた。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="一緒に帰りましょう！" target1="*endingF_choice0"]
[s]

*endingFafter
[encounterClear]
#kiichi
俺はドアをがちゃっと開いて基地へ出た。[p]
[cm]
#kiichi
木下さんもドアを越えてこっちに来て、ドアノブを掴み、向こうに戻って、ばたんと閉めた。[p]
[cm]
#kiichi
えっ。[p]
[cm]
#kiichi
「木下さん！おい！おい！！！！」[p]
[cm]
#kiichi
俺はすぐにもう一度ドアを開いたが、そこに木下さんの姿はなかった。代わりに、さっきより明らかに朽ち果てた地下シェルターの壁面が基地の光に照らして見えた。[p]
[cm]
#kiichi
くるぶしくらいの高さまで満ちた、薄いタナトリウム臭のする水がじゃあじゃあと基地に流れ込んでくるのを黙って見ているわけにもいかず、また閉めた。[p]
[cm]
#kiichi
この一瞬で、扉の向こうではあまりにも長い時間が流れてしまったのだ。[p]
[cm]
#kiichi
俺は、もう取り返しがつかないということを悟った。[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*death1
[encounterClear]
#kiichi
相手が戦い慣れていない予備役の老人なら、ブレードを振ってきても避けるのは容易い。2527年の常識から導き出したその瞬間的な判断は、最善ではなくとも最悪なものではないはずだった。[p]
[cm]
#kiichi
しかし、一瞬の判断というのは、知識と経験に基づいていても、目に見える現実を考慮に入れていないこともしばしばある。[p]
[cm]
#kiichi
古虫紀一は、怪異相手にほとんど通用しない時代遅れの銃のことをすっかり忘れていたのである。[p]
[cm]
#kiichi
果たして、2527年の脳は2518年の銃弾で撃ちぬかれた。[p]
[cm]
#kiichi
「まったく、剝がれかけた化けの皮を、必死に取り繕うこともしないのですな。バケモノというのは短絡的で困る」[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

*death2
[encounterClear]
#kiichi
とにかく人に化けた怪異にはこれが効くはず！俺は左腕をめがけてとっさに注射針を突き刺した！[p]
[cm]
#kiichi
止まらない滅茶苦茶な早口を聞きながら、容赦なくソーラインを注ぎこんでいく。[p]
[cm]
#kiichi
……まだか。[p]
[cm]
#kiichi
まだなのか。[p]
[cm]
#kiichi
それにしても一体何を喋ってるんだお前は！？[p]
[cm]
#kiichi
「……代えさせていただきます。まもなく送付致しますので、お受け取りの準備をお願い致します」[p]
[cm]
#kiichi
送付？お受け取り？何のこと？いやしかし、もう喋るのは止まったな。とりあえず一安心……[p]
[cm]
#kiichi
の、はずだった。[p]
[cm]
#kiichi
古虫紀一は、何が起こったのか全く理解できないまま絶大な衝撃を食らい、宙に浮いた。[p]
[cm]
#kiichi
いや、宙に浮いたのではない。[p]
[cm]
#kiichi
息が苦しい。視界が揺らめく。口からボコボコと泡が……[p]
[cm]
#kiichi
これは水か？洪水だ。洪水が起こったのだ……そう悟るのがやっとだった。[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

*death3
[encounterClear]
#kiichi
どど、どどどっど、どうしようどうしよう？[p]
[cm]
#kiichi
でも俺に襲い掛かってくるわけではないのだから、ああ、そうだ！何か伝えようとしているのでは？聞き取らないと！[p]
[cm]
#kiichi
「誠に勝手ではございますが、汎世界動物倫理規定の改訂に伴い」[p]
[cm]
#kiichi
は？何て？はん……どうぶつ？りんりきてい？[p]
[cm]
#kiichi
倫理規定？倫理規定……あっ。[p]
[cm]
#kiichi
アレか。[p]
[cm]
#kiichi
気付いたときにはもう遅い。[p]
[cm]
#kiichi
俺は、瞬時に床から天井へ満たされていく大量の水の絶大な衝撃を食らい、胃へも肺へも飲み込んでしまった。[p]
[cm]
#kiichi
そうか、俺はここで死ぬのか。状況が理解できてしまった。いや、状況を理解する以外にやれることは無いのだ。[p]
[cm]
#kiichi
遠のく意識、重くなる体、鈍く長く永遠にも似た苦痛の中で……[p]
[cm]
#kiichi
次は俺が春奈ちゃんみたいになって、人を溺れさせて殺すのか。[p]
[cm]
#kiichi
そんなの嫌だ。[p]
[cm]
#kiichi
誰か……助け……て……[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

*death4
[encounterClear]
#kiichi
古虫紀一がよほど卓越した運動能力の持ち主であれば、あれは勇気ある決断だったかもしれない。[p]
[cm]
#kiichi
だが、どんなに熟練した兵士であっても、目の前の困難と己の実力とを比べて、正確に判断することは難しい。[p]
[cm]
#kiichi
それでも、自分の実力を実際よりも低く見積もってしまう過ちの方が、逆の過ちよりはいくぶん助かる見込みはあるのだ。[p]
[cm]
#kiichi
彼は、その貴重な教訓を得ることなく波に飲まれてしまった……。[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

*death5
[encounterClear]
#kiichi
古虫紀一にもう少し体力が残っていれば、それは可能だったのかもしれない。[p]
[cm]
#kiichi
だが、転んだ木下を何とか持ち上げて肩に担ぐと、もう前に進む力は尽き果てていた。[p]
[cm]
#kiichi
果たして、彼らは背後から大量の水に叩かれ、転倒し、水流に飲まれ自由を奪われた。[p]
[cm]
#kiichi
それでも古虫は最期まで、一人で逃げるべきだったとは決して思えなかったのである。[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

*introMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="殴ってでも落ち着かせてやる！" target1="*introMenu_choice0" text2="まあ待て、身分証を見てくれよ" target2="*introMenu_choice1"]
[s]

*reasonIntroMenu
[encounterClear]
[if exp="f.encounter.values.asked1 && f.encounter.values.asked2 && f.encounter.values.asked3"]
[jump target="*decision"]
[endif]
[ui_showChoices layout="encounter" fontSize="38" text1="&(!f.encounter.values.asked1) ? ('木下さんはなぜまだここにいるのか？') : ''" target1="*reasonIntroMenu_choice0" text2="&(!f.encounter.values.asked2) ? ('階下の洪水と関係あると思うか？') : ''" target2="*reasonIntroMenu_choice1" text3="&(!f.encounter.values.asked3) ? ('階下の洪水から逃げ延びた人はなんて言ってた？') : ''" target3="*reasonIntroMenu_choice2"]
[s]

*question1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんはタナトリウム汚染が進んでからここに現れたから、タナトリウムと関係している可能性が高い。" target1="*question1Menu_choice0" text2="春奈ちゃんはどこかから侵入したとは考えにくい。だから、突然転移してきた可能性が高い。" target2="*question1Menu_choice1" text3="勘違いして進めたくないので判断を避ける" target3="*question1Menu_choice2"]
[s]

*question2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="洪水にさらわれた人間を材料にした罠" target1="*question2Menu_choice0" text2="愛おしい故人に化けた魔物" target2="*question2Menu_choice1" text3="溺死した人々の無念が実体化したもの" target3="*question2Menu_choice2"]
[s]

*question3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="その目撃者が噓を言っていて、彼が洪水を引き起こして自分だけ生き残ったという可能性を心に留める" target1="*question3Menu_choice0" text2="その女性が洪水を予感して何か必死に伝えようとしていた可能性を心に留める" target2="*question3Menu_choice1" text3="その女性は異常な人間で、洪水を引き起こした原因である可能性を心に留める" target3="*question3Menu_choice2"]
[s]

*bestMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんの部屋へ突入する！" target1="*bestMenu_choice0"]
[s]

*bestUrgentMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="首にソーラインを打つ" target1="*bestUrgentMenu_choice0"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*bestUrgentMenu_timeout" time="3000"]
[s]

*middleMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="まずいことになったら全力で逃げればいい。とにかく近づいてみよう" target1="*middleMenu_choice0" text2="もっと見込みのある未来のために、老人と別れていく" target2="*middleMenu_choice1"]
[s]

*approachMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんも確実に逃げられるよう、俺の基地と繋がった扉の前で待機していてもらう" target1="*approachMenu_choice0" text2="俺独りだと不安だ。一緒に逃げ出せるよう、すぐそばで待機していてもらう" target2="*approachMenu_choice1"]
[s]

*urgentMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="逃げる！！！" target1="*urgentMenu_choice0" text2="腕にソーライン" target2="*urgentMenu_choice1" text3="喉にソーライン" target3="*urgentMenu_choice2" text4="話を聞き取る" target4="*urgentMenu_choice3"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*urgentMenu_timeout" time="3000"]
[s]

*leaveMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="危険を冒してでも怪異に挑む" target1="*leaveMenu_choice0" text2="無謀なことはせず一人で帰る" target2="*leaveMenu_choice1"]
[s]

*runAloneMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="無理無理無理！" target1="*runAloneMenu_choice0" text2="俺の足ならいける！" target2="*runAloneMenu_choice1"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*runAloneMenu_timeout" time="3000"]
[s]

*runTogetherMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんを信じて俺だけでも先に逃げる" target1="*runTogetherMenu_choice0" text2="すっ転んだら誰が助けるんだ！ペースを落として一緒に走る" target2="*runTogetherMenu_choice1"]
[s]

*supportMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="肩を担いでやる！！" target1="*supportMenu_choice0" text2="すまない！すまない！すまない！！" target2="*supportMenu_choice1"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room_3.ks" target="*supportMenu_timeout" time="3000"]
[s]

*endingFMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="一緒に帰りましょう！" target1="*endingFMenu_choice0"]
[s]

; 選択結果の処理（上の選択肢からジャンプする）
*intro_choice0
[encounterClear]
[jump target="*death1"]

*intro_choice1
[encounterClear]
[jump target="*meeting"]

*reasonIntro_choice0
[if exp="!(!f.encounter.values.asked1)"]
[jump target="*reasonIntro"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked1 = true"]
[jump target="*question1"]

*reasonIntro_choice1
[if exp="!(!f.encounter.values.asked2)"]
[jump target="*reasonIntro"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked2 = true"]
[jump target="*question2"]

*reasonIntro_choice2
[if exp="!(!f.encounter.values.asked3)"]
[jump target="*reasonIntro"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked3 = true"]
[jump target="*question3"]

*question1_choice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*reasonIntroMenu"]

*question1_choice1
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*reasonIntroMenu"]

*question1_choice2
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*reasonIntroMenu"]

*question2_choice0
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*reasonIntroMenu"]

*question2_choice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*reasonIntroMenu"]

*question2_choice2
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*reasonIntroMenu"]

*question3_choice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*reasonIntroMenu"]

*question3_choice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*reasonIntroMenu"]

*question3_choice2
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*reasonIntroMenu"]

*best_choice0
[encounterClear]
[jump target="*bestUrgent"]

*bestUrgent_choice0
[encounterClear]
[jump target="*endingA"]

*bestUrgent_timeout
[encounterClear]
[jump target="*bestTimeout"]

*middle_choice0
[encounterClear]
[jump target="*approach"]

*middle_choice1
[encounterClear]
[jump target="*leave"]

*approach_choice0
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = true"]
[jump target="*approachAfter"]

*approach_choice1
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = false"]
[jump target="*approachAfter"]

*urgent_choice0
[encounterClear]
[if exp="f.encounter.values.waitingAlone"]
[jump target="*runAlone"]
[else]
[jump target="*runTogether"]
[endif]

*urgent_choice1
[encounterClear]
[jump target="*death2"]

*urgent_choice2
[encounterClear]
[jump target="*endingC"]

*urgent_choice3
[encounterClear]
[jump target="*death3"]

*urgent_timeout
[encounterClear]
[jump target="*death3"]

*leave_choice0
[encounterClear]
[jump target="*approach"]

*leave_choice1
[encounterClear]
[jump target="*endingF"]

*runAlone_choice0
[encounterClear]
[jump target="*drop"]

*runAlone_choice1
[encounterClear]
[jump target="*retrieve"]

*runAlone_timeout
[encounterClear]
[jump target="*drop"]

*runTogether_choice0
[encounterClear]
[jump target="*endingE"]

*runTogether_choice1
[encounterClear]
[jump target="*support"]

*support_choice0
[encounterClear]
[jump target="*carry"]

*support_choice1
[encounterClear]
[jump target="*endingE"]

*support_timeout
[encounterClear]
[jump target="*endingE"]

*endingF_choice0
[encounterClear]
[jump target="*endingFafter"]

*introMenu_choice0
[encounterClear]
[jump target="*death1"]

*introMenu_choice1
[encounterClear]
[jump target="*meeting"]

*reasonIntroMenu_choice0
[if exp="!(!f.encounter.values.asked1)"]
[jump target="*reasonIntroMenu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked1 = true"]
[jump target="*question1"]

*reasonIntroMenu_choice1
[if exp="!(!f.encounter.values.asked2)"]
[jump target="*reasonIntroMenu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked2 = true"]
[jump target="*question2"]

*reasonIntroMenu_choice2
[if exp="!(!f.encounter.values.asked3)"]
[jump target="*reasonIntroMenu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked3 = true"]
[jump target="*question3"]

*question1Menu_choice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*reasonIntroMenu"]

*question1Menu_choice1
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*reasonIntroMenu"]

*question1Menu_choice2
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*reasonIntroMenu"]

*question2Menu_choice0
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*reasonIntroMenu"]

*question2Menu_choice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*reasonIntroMenu"]

*question2Menu_choice2
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*reasonIntroMenu"]

*question3Menu_choice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*reasonIntroMenu"]

*question3Menu_choice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*reasonIntroMenu"]

*question3Menu_choice2
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*reasonIntroMenu"]

*bestMenu_choice0
[encounterClear]
[jump target="*bestUrgent"]

*bestUrgentMenu_choice0
[encounterClear]
[jump target="*endingA"]

*bestUrgentMenu_timeout
[encounterClear]
[jump target="*bestTimeout"]

*middleMenu_choice0
[encounterClear]
[jump target="*approach"]

*middleMenu_choice1
[encounterClear]
[jump target="*leave"]

*approachMenu_choice0
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = true"]
[jump target="*approachAfter"]

*approachMenu_choice1
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = false"]
[jump target="*approachAfter"]

*urgentMenu_choice0
[encounterClear]
[if exp="f.encounter.values.waitingAlone"]
[jump target="*runAlone"]
[else]
[jump target="*runTogether"]
[endif]

*urgentMenu_choice1
[encounterClear]
[jump target="*death2"]

*urgentMenu_choice2
[encounterClear]
[jump target="*endingC"]

*urgentMenu_choice3
[encounterClear]
[jump target="*death3"]

*urgentMenu_timeout
[encounterClear]
[jump target="*death3"]

*leaveMenu_choice0
[encounterClear]
[jump target="*approach"]

*leaveMenu_choice1
[encounterClear]
[jump target="*endingF"]

*runAloneMenu_choice0
[encounterClear]
[jump target="*drop"]

*runAloneMenu_choice1
[encounterClear]
[jump target="*retrieve"]

*runAloneMenu_timeout
[encounterClear]
[jump target="*drop"]

*runTogetherMenu_choice0
[encounterClear]
[jump target="*endingE"]

*runTogetherMenu_choice1
[encounterClear]
[jump target="*support"]

*supportMenu_choice0
[encounterClear]
[jump target="*carry"]

*supportMenu_choice1
[encounterClear]
[jump target="*endingE"]

*supportMenu_timeout
[encounterClear]
[jump target="*endingE"]

*endingFMenu_choice0
[encounterClear]
[jump target="*endingFafter"]

; 選択肢ページの移動では場面の処理や能力判定を実行し直さない。
*encounterChoicesNext
[eval exp="f.choiceContext.page += 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]

*encounterChoicesPrevious
[eval exp="f.choiceContext.page -= 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]
