; 遭遇！O-506：本文・選択肢・分岐はこのKSファイルで編集する。
; 共通の攻撃UI・怪異名入力UIは使用しない。
*start
[encounterInit code="O-506"]
[jump target="*intro"]

*intro
[encounterClear]
#kiichi
俺は僅かに薬品臭のする廃ビルの廊下を歩く。物音一つしないのがかえって不気味だ。[p]
[cm]
#kiichi
だがそのとき、コン…コン…と、硬いブーツで金属の上をゆっくり歩くような音が遠い前方から聴こえてきて、身構える。[p]
[cm]
#kiichi
…それは、踊り場から廊下へ繋がる開きっぱなしのドアを不器用にくぐって現れた。[p]
[cm]
#kiichi
な、なんだこれは！？[p]
[cm]
#kiichi
肉塊を糸で貫いたものが幾重にも重なった奇妙な怪異が、よろよろと俺に向かって歩み寄ってくる。[p]
[cm]
#kiichi
俺は直感する。こいつはまともに戦ってはいけない相手だ！[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="俺は、奴との距離を一定に保って慎重に後ずさりしながら観察することにした。" target1="*intro_choice0" text2="戦う" target2="*intro_choice1" text3="逃げる" target3="*intro_choice2"]
[s]

*observe
[encounterClear]
#kiichi
俺は、奴との距離を一定に保って慎重に後ずさりしながら観察することにした。[p]
[cm]
#kiichi
目を離した一瞬で殺されるのではないかという不安を押しつぶし、決死の覚悟でちらと後ろを見る。退路は確保できている…できているよな！？[p]
[cm]
[if exp="f.luc >= 10"]
[jump target="*lucky"]
[else]
[jump target="*unlucky"]
[endif]

*lucky
[encounterClear]
#kiichi
俺は気付いてしまった。いや、よく気付けたと言うべきか？とにかく、足音は今目の前にいるこいつだけではない！恐らく後方の遠くにももう一体、同じ奴が歩いている！[p]
[cm]
#kiichi
こちらとの距離は不明だが、一目散に逃げるだけでは後ろの奴の餌食になる可能性がある…！[p]
[cm]
[jump target="*question1"]

*unlucky
[encounterClear]
#kiichi
俺はしっかりと退路を確認した。こんなにのろのろ歩いてやがる。いざとなれば逃げることだって可能だ…！[p]
[cm]
[jump target="*question1"]

*question1
[encounterClear]
#kiichi
さあ、早く奴の弱点を見つけなくては。[p]
[cm]
#kiichi
俺は奴の全身を改めて観察する。[p]
[cm]
#kiichi
一体どうなっていやがる？まるで大きな包丁でざっくざっくと切ったような、肉の断面、人の皮膚。それに白い糸が通って数珠繋ぎだ。[p]
[cm]
#kiichi
糸を通された肉の集まりはそれぞれXの字のようにまとまって、不格好にのけぞってよろよろと、しかし明確に俺に向かって歩いてくる。[p]
[cm]
#kiichi
ここから判断するに、まず元人間、つまりALTであるのはいいとして、本体は…[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="Ｏだな。" target1="*question1_choice0" text2="Ｌだな。" target2="*question1_choice1" text3="Ｃだな。" target3="*question1_choice2" text4="Ｐだな。" target4="*question1_choice3" text5="まだ決めつけてはいけないな。" target5="*question1_choice4"]
[s]

*question2
[encounterClear]
#kiichi
まだ距離には余裕がある。もっと確実に特定するため、もう少し観察を続ける。[p]
[cm]
#kiichi
よく見ると、奴の体はX字3枚が中央でぴったりとくっついて、それでひとまとまりになって動いていることが分かる。だが歩行しているのは手前の1枚だけで、残りは引きずられている。[p]
[cm]
#kiichi
あっ…そ、そういうことか？[p]
[cm]
#kiichi
ブロック状の肉だけかと思ったら、頭もまるごと持っていやがる。それも、各X字ごとに一個ずつ。[p]
[cm]
#kiichi
それだけじゃない。はっきり見える手前のX字だけ見ても、足っぽいのを二つ、手っぽいのを二つ、丁度持ってるんだ。[p]
[cm]
#kiichi
ここから判断すると、おそらく…[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="犠牲者の体が、各X字にばらばらに分配されているのでは？" target1="*question2_choice0" text2="犠牲者一人一人が、X字一つずつに対応するのでは？" target2="*question2_choice1" text3="犠牲者の頭のどれかが、奴の本体なのでは？" target3="*question2_choice2"]
[s]

*knowledge
[encounterClear]
#kiichi
だが…まだ決め手に欠ける。なにせ弱点が分からない！落ち着け俺。最後まで見極めるんだ。[p]
[cm]
#kiichi
でもこれ以上見たって分かることはなさそうだぞ…。結局最後は知識頼みかよ！ちくしょう！[p]
[cm]
[if exp="f.encounter.values.correct1 && f.encounter.values.correct2 && f.kno >= 1"]
[jump target="*remember"]
[else]
[jump target="*forget"]
[endif]

*remember
[encounterClear]
#kiichi
そうだ今さっき、ふと「人形」という言葉が頭をよぎったんだ。奴の見た目が人形なんじゃない。多分こいつは「人形の家」シリーズだ。西欧に突然現れたという、巨大な洋館で最初に見つかった怪異の一群だ…。[p]
[cm]
#kiichi
そして！あの悪名高い人形の家シリーズの共通点といったら、本体が何らかの裁縫道具であること！つまりこいつの本体はＯ型で、それに操られたALTを今見ているんだ。[p]
[cm]
[jump target="*identify"]

*forget
[encounterClear]
#kiichi
そうだ今さっき、ふと「人形」という言葉が頭をよぎったんだ。でもこいつ、どう見ても人形じゃないぞ？緊張で頭がうまく働かない。クソッ、これ以上考えても無駄なのか！？[p]
[cm]
[jump target="*decision"]

*identify
[encounterClear]
#kiichi
よ…よし、ああ、よし。ここまで分かれば、あとは落ち着いて対処を思い出していくだけだ。[p]
[cm]
#kiichi
こいつはきっと、O-506、通称「人形の家・赤」に違いない。で、本体は針だ！真っ赤な縫い針！それがあの肉片のどれかに埋まってるんだ。[p]
[cm]
#kiichi
そしてこいつと正面から戦ってはいけないワケは、まず見た目に反して肉も糸も硬すぎること、そして近づいたら針が俺の口の中に瞬間移動してくるからだ。[p]
[cm]
#kiichi
口に入られたらあとはもう一瞬で脳まで貫かれて、グチャグチャにかき混ぜられて死ぬってことだ…！[p]
[cm]
#kiichi
だから、まず口に入ってくるこの性質を逆手に取って…[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="ソーラインを口いっぱいに含む" target1="*identify_choice0" text2="ソーラインを頭のてっぺんに注射する" target2="*identify_choice1"]
[s]

*decision
[encounterClear]
#kiichi
もう奴との距離に余裕がない。決断の時だ。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="&(f.encounter.values.canUseMouth) ? ('ソーラインを口いっぱいに含む') : ''" target1="*decision_choice0" text2="何が何でも逃げる！" target2="*decision_choice1" text3="ソーラインを頭のてっぺんに注射する" target3="*decision_choice2" text4="ソーラインを投げつける" target4="*decision_choice3"]
[s]

*needle
[encounterClear]
#kiichi
俺は無我夢中でソーラインの注射器を開け、自分の口に注いだ！想像を絶する苦み、そして吐き気！[p]
[cm]
#kiichi
震える脚をしっかりと床に立たせ、役に立つかも分からないブレードを構えて、奴を見据えてただ待った…。[p]
[cm]
#kiichi
その時、舌の上に何かが当たる！針だ！針が転移してきたんだ！[p]
[cm]
#kiichi
俺は渾身の力を振り絞ってその針を噛み、へし折った！[p]
[cm]
#kiichi
すると、目の前に迫っていた肉塊が、どさっ……と崩れ落ちた。これで、終わったんだよ…な？[p]
[cm]
#kiichi
そう、口に含んだソーラインと直接触れたO-506の針は無力化して、脳まで貫く力を失ったんだ。[p]
[cm]
#kiichi
そうと分かればもうこの針とソーラインを至急吐き捨てたいところだが！[p]
[cm]
[if exp="f.luc >= 10"]
[jump target="*secondLucky"]
[else]
[jump target="*secondUnlucky"]
[endif]

*secondLucky
[encounterClear]
#kiichi
後ろを振り返るとやはり二体目のO-506が近くまで来ていた。[p]
[cm]
#kiichi
一体目を退治したことで自信をつけた俺は、ソーラインを口に含んだまま針を待ち構え、へし折った。[p]
[cm]
#kiichi
改めて周囲を確認し、俺のバクバクする心臓以外に音はないことが分かると、やっとの思いで全てを吐き出した。[p]
[cm]
#kiichi
本当に、今日は散々な日だ…。[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*between"]
[s]

*secondUnlucky
[encounterClear]
#kiichi
嫌な予感がして後ろを振り返ると、なんと二体目のO-506が目前に迫っていた！俺は驚きのあまり口の中身を全部吐き出してしまう！[p]
[cm]
#kiichi
今ここで二杯目を飲むのは間に合わない！逃げろ！[p]
[cm]
[if exp="f.spi >= 15"]
[jump target="*secondEscape"]
[else]
[jump target="*slip"]
[endif]

*secondEscape
[encounterClear]
#kiichi
俺は即座に振り向いて走り去り、距離が充分開いてからまたそいつを見た！[p]
[cm]
#kiichi
もう、さっきまでの苦みと吐き気から解放されたい一心なのに、また口いっぱい含まなければならないなんて！[p]
[cm]
#kiichi
俺は心を無にしてソーラインを口に運んだ…オエッ…[p]
[cm]
#kiichi
気を失いそうなグラグラ揺れる視界に奴を捉え、いつの間にか口に入っていた針に八つ当たりをして、ペェッ！！と吐き捨てた。[p]
[cm]
#kiichi
はぁ……はぁ……[p]
[cm]
#kiichi
もう、今日は、帰って休むしかない……[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="2"]
[jump storage="adv.ks" target="*return"]
[s]

*slip
[encounterClear]
#kiichi
ハァッ！？[p]
[cm]
#kiichi
なんてこった！さっき吐いたゲロで足を滑らせ転んでしまった！[p]
[cm]
[jump target="*dead"]

*escape
[encounterClear]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]

*dead
[encounterClear]
#kiichi
「あっ、ｱｯ、ｶｶｶﾊｯ、ｺﾊｧ」[p]
[cm]
#kiichi
古虫紀一は、その一瞬で脳をグチャミソにかき混ぜられてしまった…[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

; 選択結果の処理（上の選択肢からジャンプする）
*intro_choice0
[encounterClear]
[jump target="*observe"]

*intro_choice1
[encounterClear]
[jump target="*dead"]

*intro_choice2
[encounterClear]
[jump target="*dead"]

*question1_choice0
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*question2"]

*question1_choice1
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*question2"]

*question1_choice2
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*question2"]

*question1_choice3
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*question2"]

*question1_choice4
[encounterClear]
[eval exp="f.encounter.values.correct1 = true"]
[jump target="*question2"]

*question2_choice0
[encounterClear]
[eval exp="f.encounter.values.correct2 = false"]
[jump target="*knowledge"]

*question2_choice1
[encounterClear]
[eval exp="f.encounter.values.correct2 = true"]
[jump target="*knowledge"]

*question2_choice2
[encounterClear]
[eval exp="f.encounter.values.correct2 = false"]
[jump target="*knowledge"]

*identify_choice0
[encounterClear]
[eval exp="f.encounter.values.canUseMouth = true"]
[jump target="*decision"]

*identify_choice1
[encounterClear]
[jump target="*decision"]

*decision_choice0
[if exp="!(f.encounter.values.canUseMouth)"]
[jump target="*decision"]
[endif]
[encounterClear]
[jump target="*needle"]

*decision_choice1
[encounterClear]
[if exp="f.spi >= 15"]
[jump target="*escape"]
[else]
[jump target="*dead"]
[endif]

*decision_choice2
[encounterClear]
[jump target="*dead"]

*decision_choice3
[encounterClear]
[jump target="*dead"]

; 選択肢ページの移動では場面の処理や能力判定を実行し直さない。
*encounterChoicesNext
[eval exp="f.choiceContext.page += 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]

*encounterChoicesPrevious
[eval exp="f.choiceContext.page -= 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]
