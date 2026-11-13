; 怪異別の遭遇本文。入口: *start または怪異ごとのStart。通常はadv.ks、章専用の突破はreturnで戻る。
; ========================================================
; room.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[if exp="f.roomNum === 1"]
    [jump target="*o506Start"]
[elsif exp="f.roomNum === 2"]
    [jump target="*o507Start"]
[else]
    [jump target="*c810Start"]
[endif]
[s]

; ---- darkEncounter ----
*darkEncounter
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.battleKind='dark';window.fiaStory.beginBattle()"]
[jump target="*battle"]

; ---- fishBattle ----
*fishBattle
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="f.storyV6.battleKind='fish';window.fiaStory.beginBattle()"]
[jump target="*battle"]

; ---- battle ----
*battle
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[cm]
[eval exp="window.fiaStory.battleStatus()"]
#
[emb exp="f.storyV6.battleText"][r]
[link storage="room.ks" target="*battleObserve"]動きを観察し、通れる所を探す[endlink][r]
[link storage="room.ks" target="*battleGuard"]仲間の移動を援護する[endlink][r]
[link storage="room.ks" target="*battleStrike"]確認した隙を突いて、道を開く[endlink][r]
[s]

; ---- battleObserve ----
*battleObserve
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.battleAction('observe')"]
[jump target="*battleResult"]

; ---- battleGuard ----
*battleGuard
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.battleAction('guard')"]
[jump target="*battleResult"]

; ---- battleStrike ----
*battleStrike
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.battleAction('strike')"]
[jump target="*battleResult"]

; ---- battleResult ----
*battleResult
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[cm]
#
[emb exp="f.storyV6.battleLog"][p]
[if exp="f.ins<=0"]
    [jump storage="game_over.ks" target="*start"]
[endif]
[if exp="f.storyV6.battle.isWon"]
    [return]
[endif]
[jump target="*battle"]


; ---- o506Start ----
*o506Start
[encounterInit code="O-506"]
[jump target="*o506Intro"]


; ---- o506Intro ----
*o506Intro
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は僅かに薬品臭のする廃ビルの廊下を歩く。物音一つしないのがかえって不気味だ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だがそのとき、コン…コン…と、硬いブーツで金属の上をゆっくり歩くような音が遠い前方から聴こえてきて、身構える。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
…それは、踊り場から廊下へ繋がる開きっぱなしのドアを不器用にくぐって現れた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
な、なんだこれは！？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
肉塊を糸で貫いたものが幾重にも重なった奇妙な怪異が、よろよろと俺に向かって歩み寄ってくる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は直感する。こいつはまともに戦ってはいけない相手だ！[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="俺は、奴との距離を一定に保って慎重に後ずさりしながら観察することにした。" target1="*o506IntroChoice0" text2="戦う" target2="*o506IntroChoice1" text3="逃げる" target3="*o506IntroChoice2"]
[s]


; ---- o506Observe ----
*o506Observe
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は、奴との距離を一定に保って慎重に後ずさりしながら観察することにした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
目を離した一瞬で殺されるのではないかという不安を押しつぶし、決死の覚悟でちらと後ろを見る。退路は確保できている…できているよな！？[p]
[cm]
[if exp="f.luc >= 10"]
    [jump target="*o506Lucky"]
[else]
    [jump target="*o506Unlucky"]
[endif]


; ---- o506Lucky ----
*o506Lucky
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は気付いてしまった。いや、よく気付けたと言うべきか？とにかく、足音は今目の前にいるこいつだけではない！恐らく後方の遠くにももう一体、同じ奴が歩いている！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
こちらとの距離は不明だが、一目散に逃げるだけでは後ろの奴の餌食になる可能性がある…！[p]
[cm]
[jump target="*o506Question1"]


; ---- o506Unlucky ----
*o506Unlucky
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はしっかりと退路を確認した。こんなにのろのろ歩いてやがる。いざとなれば逃げることだって可能だ…！[p]
[cm]
[jump target="*o506Question1"]


; ---- o506Question1 ----
*o506Question1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さあ、早く奴の弱点を見つけなくては。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は奴の全身を改めて観察する。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一体どうなっていやがる？まるで大きな包丁でざっくざっくと切ったような、肉の断面、人の皮膚。それに白い糸が通って数珠繋ぎだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
糸を通された肉の集まりはそれぞれXの字のようにまとまって、不格好にのけぞってよろよろと、しかし明確に俺に向かって歩いてくる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ここから判断するに、まず元人間、つまりALTであるのはいいとして、本体は…[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="Ｏだな。" target1="*o506Question1Choice0" text2="Ｌだな。" target2="*o506Question1Choice1" text3="Ｃだな。" target3="*o506Question1Choice2" text4="Ｐだな。" target4="*o506Question1Choice3" text5="まだ決めつけてはいけないな。" target5="*o506Question1Choice4"]
[s]


; ---- o506Question2 ----
*o506Question2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まだ距離には余裕がある。もっと確実に特定するため、もう少し観察を続ける。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
よく見ると、奴の体はX字3枚が中央でぴったりとくっついて、それでひとまとまりになって動いていることが分かる。だが歩行しているのは手前の1枚だけで、残りは引きずられている。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あっ…そ、そういうことか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ブロック状の肉だけかと思ったら、頭もまるごと持っていやがる。それも、各X字ごとに一個ずつ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それだけじゃない。はっきり見える手前のX字だけ見ても、足っぽいのを二つ、手っぽいのを二つ、丁度持ってるんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ここから判断すると、おそらく…[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="犠牲者の体が、各X字にばらばらに分配されているのでは？" target1="*o506Question2Choice0" text2="犠牲者一人一人が、X字一つずつに対応するのでは？" target2="*o506Question2Choice1" text3="犠牲者の頭のどれかが、奴の本体なのでは？" target3="*o506Question2Choice2"]
[s]


; ---- o506Knowledge ----
*o506Knowledge
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だが…まだ決め手に欠ける。なにせ弱点が分からない！落ち着け俺。最後まで見極めるんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
でもこれ以上見たって分かることはなさそうだぞ…。結局最後は知識頼みかよ！ちくしょう！[p]
[cm]
[if exp="f.encounter.values.correct1 && f.encounter.values.correct2 && f.kno >= 1"]
    [jump target="*o506Remember"]
[else]
    [jump target="*o506Forget"]
[endif]


; ---- o506Remember ----
*o506Remember
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そうだ今さっき、ふと「人形」という言葉が頭をよぎったんだ。奴の見た目が人形なんじゃない。多分こいつは「人形の家」シリーズだ。西欧に突然現れたという、巨大な洋館で最初に見つかった怪異の一群だ…。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして！あの悪名高い人形の家シリーズの共通点といったら、本体が何らかの裁縫道具であること！つまりこいつの本体はＯ型で、それに操られたALTを今見ているんだ。[p]
[cm]
[jump target="*o506Identify"]


; ---- o506Forget ----
*o506Forget
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そうだ今さっき、ふと「人形」という言葉が頭をよぎったんだ。でもこいつ、どう見ても人形じゃないぞ？緊張で頭がうまく働かない。クソッ、これ以上考えても無駄なのか！？[p]
[cm]
[jump target="*o506Decision"]


; ---- o506Identify ----
*o506Identify
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
よ…よし、ああ、よし。ここまで分かれば、あとは落ち着いて対処を思い出していくだけだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
こいつはきっと、O-506、通称「人形の家・赤」に違いない。で、本体は針だ！真っ赤な縫い針！それがあの肉片のどれかに埋まってるんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そしてこいつと正面から戦ってはいけないワケは、まず見た目に反して肉も糸も硬すぎること、そして近づいたら針が俺の口の中に瞬間移動してくるからだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
口に入られたらあとはもう一瞬で脳まで貫かれて、グチャグチャにかき混ぜられて死ぬってことだ…！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だから、まず口に入ってくるこの性質を逆手に取って…[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="ソーラインを口いっぱいに含む" target1="*o506IdentifyChoice0" text2="ソーラインを頭のてっぺんに注射する" target2="*o506IdentifyChoice1"]
[s]


; ---- o506Decision ----
*o506Decision
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう奴との距離に余裕がない。決断の時だ。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="&(f.encounter.values.canUseMouth) ? ('ソーラインを口いっぱいに含む') : ''" target1="*o506DecisionChoice0" text2="何が何でも逃げる！" target2="*o506DecisionChoice1" text3="ソーラインを頭のてっぺんに注射する" target3="*o506DecisionChoice2" text4="ソーラインを投げつける" target4="*o506DecisionChoice3"]
[s]


; ---- o506Needle ----
*o506Needle
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は無我夢中でソーラインの注射器を開け、自分の口に注いだ！想像を絶する苦み、そして吐き気！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
震える脚をしっかりと床に立たせ、役に立つかも分からないブレードを構えて、奴を見据えてただ待った…。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その時、舌の上に何かが当たる！針だ！針が転移してきたんだ！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は渾身の力を振り絞ってその針を噛み、へし折った！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
すると、目の前に迫っていた肉塊が、どさっ……と崩れ落ちた。これで、終わったんだよ…な？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そう、口に含んだソーラインと直接触れたO-506の針は無力化して、脳まで貫く力を失ったんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そうと分かればもうこの針とソーラインを至急吐き捨てたいところだが！[p]
[cm]
[if exp="f.luc >= 10"]
    [jump target="*o506SecondLucky"]
[else]
    [jump target="*o506SecondUnlucky"]
[endif]


; ---- o506SecondLucky ----
*o506SecondLucky
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
後ろを振り返るとやはり二体目のO-506が近くまで来ていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一体目を退治したことで自信をつけた俺は、ソーラインを口に含んだまま針を待ち構え、へし折った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
改めて周囲を確認し、俺のバクバクする心臓以外に音はないことが分かると、やっとの思いで全てを吐き出した。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
本当に、今日は散々な日だ…。[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*between"]
[s]


; ---- o506SecondUnlucky ----
*o506SecondUnlucky
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
嫌な予感がして後ろを振り返ると、なんと二体目のO-506が目前に迫っていた！俺は驚きのあまり口の中身を全部吐き出してしまう！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
今ここで二杯目を飲むのは間に合わない！逃げろ！[p]
[cm]
[if exp="f.spi >= 15"]
    [jump target="*o506SecondEscape"]
[else]
    [jump target="*o506Slip"]
[endif]


; ---- o506SecondEscape ----
*o506SecondEscape
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は即座に振り向いて走り去り、距離が充分開いてからまたそいつを見た！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう、さっきまでの苦みと吐き気から解放されたい一心なのに、また口いっぱい含まなければならないなんて！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は心を無にしてソーラインを口に運んだ…オエッ…[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
気を失いそうなグラグラ揺れる視界に奴を捉え、いつの間にか口に入っていた針に八つ当たりをして、ペェッ！！と吐き捨てた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
はぁ……はぁ……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう、今日は、帰って休むしかない……[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="2"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- o506Slip ----
*o506Slip
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ハァッ！？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
なんてこった！さっき吐いたゲロで足を滑らせ転んでしまった！[p]
[cm]
[jump target="*o506Dead"]


; ---- o506Escape ----
*o506Escape
[encounterClear]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- o506Dead ----
*o506Dead
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あっ、ｱｯ、ｶｶｶﾊｯ、ｺﾊｧ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
古虫紀一は、その一瞬で脳をグチャミソにかき混ぜられてしまった…[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]

; 選択結果の処理（上の選択肢からジャンプする）

; ---- o506IntroChoice0 ----
*o506IntroChoice0
[encounterClear]
[jump target="*o506Observe"]


; ---- o506IntroChoice1 ----
*o506IntroChoice1
[encounterClear]
[jump target="*o506Dead"]


; ---- o506IntroChoice2 ----
*o506IntroChoice2
[encounterClear]
[jump target="*o506Dead"]


; ---- o506Question1Choice0 ----
*o506Question1Choice0
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*o506Question2"]


; ---- o506Question1Choice1 ----
*o506Question1Choice1
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*o506Question2"]


; ---- o506Question1Choice2 ----
*o506Question1Choice2
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*o506Question2"]


; ---- o506Question1Choice3 ----
*o506Question1Choice3
[encounterClear]
[eval exp="f.encounter.values.correct1 = false"]
[jump target="*o506Question2"]


; ---- o506Question1Choice4 ----
*o506Question1Choice4
[encounterClear]
[eval exp="f.encounter.values.correct1 = true"]
[jump target="*o506Question2"]


; ---- o506Question2Choice0 ----
*o506Question2Choice0
[encounterClear]
[eval exp="f.encounter.values.correct2 = false"]
[jump target="*o506Knowledge"]


; ---- o506Question2Choice1 ----
*o506Question2Choice1
[encounterClear]
[eval exp="f.encounter.values.correct2 = true"]
[jump target="*o506Knowledge"]


; ---- o506Question2Choice2 ----
*o506Question2Choice2
[encounterClear]
[eval exp="f.encounter.values.correct2 = false"]
[jump target="*o506Knowledge"]


; ---- o506IdentifyChoice0 ----
*o506IdentifyChoice0
[encounterClear]
[eval exp="f.encounter.values.canUseMouth = true"]
[jump target="*o506Decision"]


; ---- o506IdentifyChoice1 ----
*o506IdentifyChoice1
[encounterClear]
[jump target="*o506Decision"]


; ---- o506DecisionChoice0 ----
*o506DecisionChoice0
[if exp="!(f.encounter.values.canUseMouth)"]
    [jump target="*o506Decision"]
[endif]
[encounterClear]
[jump target="*o506Needle"]


; ---- o506DecisionChoice1 ----
*o506DecisionChoice1
[encounterClear]
[if exp="f.spi >= 15"]
    [jump target="*o506Escape"]
[else]
    [jump target="*o506Dead"]
[endif]


; ---- o506DecisionChoice2 ----
*o506DecisionChoice2
[encounterClear]
[jump target="*o506Dead"]


; ---- o506DecisionChoice3 ----
*o506DecisionChoice3
[encounterClear]
[jump target="*o506Dead"]

; 選択肢ページの移動では場面の処理や能力判定を実行し直さない。

; 共通UIのページ送り。従来のラベルも既存の遷移先として残す。
*encounterChoicesNext
*o506EncounterChoicesNext
[eval exp="f.choiceContext.page += 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]


*encounterChoicesPrevious
*o506EncounterChoicesPrevious
[eval exp="f.choiceContext.page -= 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]

; ---- o507Start ----
*o507Start
[encounterInit code="O-507"]
[jump target="*o507Intro"]


; ---- o507Intro ----
*o507Intro
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は意を決してドアを開けたが、そこは異様な静穏に包まれていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そこは病院……小児科みたいな小さな病院の、広い待合室だった。受付と思わしきカウンターの上には、「いとうこどもクリニック」というポップな文字が見えた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木組みの天窓から差し込む光は、冬の早朝のように澄んでいる。いや、実際にここは冬なのだろう。体がブルブル震えるほど寒い。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
時計は電池切れなのか動かないが、ここの日付は俺たちの基地から大幅にずれていると考えた方がよさそうだ……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ただ、本当に異様なのはここからだった。血痕や体液や瓦礫や死体なんていうありきたりなものは全く無いが、全ての物が完璧に整理されていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
床には埃一つなく、ピカピカだった。椅子は撤去されて隅の方に積み上げられ、受付のカウンターの上どころかその奥の事務机にも紙やペンの一つもなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
何よりおかしいのが、大量の服。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
子供のものから大人のものまで、帽子、ジャケット、シャツ、スカート、ズボン、下着、白衣、ナース服がシワ一つなく丁寧に畳まれて、一人分ずつ積み重ねて床に置かれていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その数、ざっと20人分。聴診器や鞄、ぬいぐるみといった小さな品々まで、服の山にそっと添えられていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
狂気だった。俺は恐ろしくて身震いした。バケモノがそれをやったにせよ、人間がそれをやったにせよ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして、床には赤いテープのようなもので作った大きな矢印がいくつも並んで、玄関から1番診察室へと続いていた。ここまで露骨に誘導されてるとちょっと怖いな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は退路を確認するため後ろを振り返った。スリッパや靴までもがやはり執拗なまでに整頓されて靴箱に置かれていて、寒気がした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
基地から見て金属の開き戸だったはずの扉は、なぜかすりガラスと木でできた引き戸に変わっていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
これを横にずらして開けると、傘立てや貼り紙のある小部屋に繋がっていて、また同様の引き戸がもう一枚あった。これは風除室というやつだろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう一枚の戸を開けると、今度こそ元の基地に……繋がらない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
戸の外には、がらんとした田舎の街並みに雪が薄く積もっていた。しかし手前に浮かぶわけのわからない赤い呪文が俺の手をビリっと跳ねのける。俺はクソでかいため息を吐いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうやら、俺はここに閉じ込められてしまったらしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうせ死ぬなら、仲間を守って死にたかったんだがな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
半分は本気でそう呟いた俺は、観念して建物へ戻ろうとすると、戸に手書きの貼り紙が貼られているのを見つけた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「１ばんしんさつしつへ　まっすぐきてください。　せんせいが　まっています」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と、大きな文字で真ん中に書かれているが、後から書き足されたのだろうか、その下にはこんな注意書きも書いてあった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「きょろきょろしないで　まっすぐきてね」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そんなに真っ直ぐ来てほしいのか？どうも、怪しいぞ……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="俺は、1番診察室に向かった。" target1="*o507IntroChoice0" text2="俺は、まず1番診察室以外を調べることにした。" target2="*o507IntroChoice1"]
[s]


; ---- o507A1 ----
*o507A1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
風除室の貼り紙は罠ではないかと疑ってはいるものの、俺はそろりそろりと歩いて１番診察室の目の前に立った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
なぜかガラスは紙か何かで塞がれているものの、それ以外は何の変哲もない、白くて滑らかな引き戸だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
こんこんとノックをしても、誰かいませんかと言ってみても、向こうからは物音一つしない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少しだけ力を入れて戸を引いてみようとしたが、開かない。鍵がかかっているようだ。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="様々な可能性を考えてみる。" target1="*o507A1Choice0" text2="1番診察室に対する行動を選ぶ。" target2="*o507A1Choice1" text3="1番診察室以外を調べに行く。" target3="*o507A1Choice2"]
[s]


; ---- o507A2 ----
*o507A2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
何か行動を起こす前に、今考えられることは全部考えておきたいかな……。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="この部屋に危険な何かが待ち構えている可能性" target1="*o507A2Choice0" text2="この部屋にいる人が既に死んでしまっている可能性" target2="*o507A2Choice1" text3="この部屋に誰かいるがあえて沈黙している可能性" target3="*o507A2Choice2" text4="この病院に何が起こったのか、推理を試みる" target4="*o507A2Choice3" text5="考えるのを一旦やめる" target5="*o507A2Choice4"]
[s]


; ---- o507A21 ----
*o507A21
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
やはり罠を疑うべきだろう。俺をこの部屋で殺すアイデアを考え出したらキリがない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし、こんなご丁寧に院内の掃除と整理整頓までして、精神を操るでもなく普通の貼り紙で自らここに来るように仕向けるなんて、怪異のやることだろうか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いや、怪異の行動理念がどうとか、人みたいな丁寧さは無いとか、何を想定しても想定を上回ってきたら意味が無い。そう、怪異なんて理屈が全く通用しない相手だから。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……この奥にいるのは怪異じゃないってことだけでも分かれば、そんな無理な推理をしなくて済むんだがなぁ。[p]
[cm]
[jump target="*o507A2Menu"]


; ---- o507A22 ----
*o507A22
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう「せんせい」とやらが死んでしまっているとしたら？それはそれで嫌だな。なんとかして戸を開けても、可哀想な死体に直面することになるのだから。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし、死体が腐ったような匂いは全くしない。いや、死体すら残さず消えて、待合室にあったようにきれいに服だけ畳まれているのかもしれない。死んだばかりで腐っていない死体かもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
死にかけで全く声もだせないとか、疲れ果てて深く眠っているだけとか……やはり考えてもキリがない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……しつこく呼びかけて、うんとでもすんとでも返事してくれれば、余計な心配をしなくていいんだがなぁ。[p]
[cm]
[jump target="*o507A2Menu"]


; ---- o507A23 ----
*o507A23
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
せっかく助けに来てやったというのに、どうしていないふりをする必要があろうか？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="この部屋に隠れているかもしれない人間の立場で考える。" target1="*o507A23Choice0" text2="この部屋に隠れているかもしれない怪異の立場で考える。" target2="*o507A23Choice1" text3="それがこの場所に課された制約なのかもしれない。" target3="*o507A23Choice2" text4="別のことから考え直す。" target4="*o507A23Choice3"]
[s]


; ---- o507A231 ----
*o507A231
[encounterClear]
[eval exp="f.encounter.values.hasEmpathy = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もし俺がこの中に隠れている人だったとしたら、今どんな気持ちだろう？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
多分ここに居る人も、何が起こってこんな場所に閉じ込められたのか、あまり理解できていないんだろうな。いつ来るかも分からない助けを待って……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いや、来るのが助けとは限らないもんな。人の皮を被った怪異かもしれないだろう？それが怖くて、必死に気配を消そうとしているのかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
貼り紙を貼ったり、床に矢印を付けたりしてこの部屋に俺を誘導したものの、いざ俺が入ってきても、こんな極限状況だからすくみ上がってしまってしまうのも無理はない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あと……俺が怪異かもしれないと思われているってことは、この扉の向こうに武器でも構えて立ってるのかもしれんな。警戒を解いて俺を信頼してもらわないと、安全に入るのは無理だろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まぁ本当に人がいるかは分からないがな。[p]
[cm]
[jump target="*o507A23Menu"]


; ---- o507A232 ----
*o507A232
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
なぜ物音を出さないかって、音を出したら自分が怪異であることがばれてしまうからだろうか？バケモノの声、バケモノの足音、息遣い……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
人のふりをしてへまをするよりは、いっそ黙っている方がいいという戦略なのかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あっ、そうだ。相手の待ち構える場所に踏み込むより、逆に相手をこっちに引っ張り出せないだろうか？脅したり、挑発したりすれば、地の利を捨てて襲ってくるかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そしたら距離を取って構えていた俺が、ソーラインをぶっかけるなりブレードで斬るなりして、なんとか……少しは勝ちやすくなるだろうか。[p]
[cm]
[jump target="*o507A23Menu"]


; ---- o507A2331 ----
*o507A2331
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
たった今思いついたのだが、もしこの場所が、声に関する異常な法則や禁止事項が課された場所だったとしたら？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
人の声に返事をするだけで消されてしまうとか、あるいは、他人の物音が一切聴こえないように呪いじみたものがかけられているとか。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="もしそうなら、声をかけても無駄なのかもしれないな。" target1="*o507A2331Choice0" text2="考え直せ。根拠のない思いつきに頼るのは危険だ。" target2="*o507A2331Choice1"]
[s]


; ---- o507A2332 ----
*o507A2332
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
お互いにいくら声をかけても届かないのだとしたら、文字でやり取りするしかなさそうだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は受付から紙とペンを持ってきて、俺の名前と、ここに閉じ込められたこと、そしてできればあなたを助けたいということを簡単に走り書きして、戸の下のわずかな隙間から紙をそっと入れて、待った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかしいくら待ってみても、物音一つしなかった。なぜだ？なぜなんだ？やはり誰もいないのか、それとも……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="そんなに黙っていたいんなら、力ずくで開けてやろうか！？" target1="*o507A2332Choice0" text2="まあ、ダメもとで試したんだから、これくらいでムキになるなよ。" target2="*o507A2332Choice1"]
[s]


; ---- o507A3 ----
*o507A3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いったい、ここで何が起こったんだ？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="ここに来てすぐに見た物事を振り返る" target1="*o507A3Choice0" text2="&(f.encounter.values.hasWaitingRoom) ? '待合室を調べて分かったことを振り返る' : 'まだ調べていない場所がある'" target2="*o507A3Choice1" disable2="&!(f.encounter.values.hasWaitingRoom)" text3="&(f.encounter.values.hasLight) ? 'てんとう虫マークの隔離室で見た物事を振り返る' : 'まだ調べていない場所がある'" target3="*o507A3Choice2" disable3="&!(f.encounter.values.hasLight)" text4="&(f.encounter.values.hasBags) ? 'りんごマークの隔離室で見た物事を振り返る' : 'まだ調べていない場所がある'" target4="*o507A3Choice3" disable4="&!(f.encounter.values.hasBags)" text5="&(f.encounter.values.read1 && f.encounter.values.read2 && f.encounter.values.read3 && f.encounter.values.read4) ? '元凶が分かったかもしれない！' : '元凶を突き止めるにはまだ考え足りていない'" target5="*o507A3Choice4" disable5="&!(f.encounter.values.read1 && f.encounter.values.read2 && f.encounter.values.read3 && f.encounter.values.read4)" text6="推理を中断する" target6="*o507A3Choice5"]
[s]


; ---- o507A31 ----
*o507A31
[encounterClear]
[eval exp="f.encounter.values.read1 = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
とにかくあの謎の服の山について解釈しないことには何も始まらない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まあ、素直に考えればあれは犠牲者の服なのだろう。それをあんな風に積み重ねたのが、お片付けが好きな怪異だったにせよ、可哀想な人間だったにせよ、服は犠牲者のものと考えて矛盾はない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どの服にも血は付いていないし、傷ついているところもなかった。人を洗脳して丁寧に脱がしてやったか、それとも服だけ残して肉体をさっぱり消し去ったのか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まあそんなことをする怪異はごまんといるから、これだけじゃ特定できないんだよな。[p]
[cm]
[jump target="*o507A3Menu"]


; ---- o507A32 ----
*o507A32
[encounterClear]
[eval exp="f.encounter.values.read2 = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
銀行の通帳をこっそり抜き出して見てみたら、なんと17年前のものだった。ならば、人が閉じ込められてから17年も経過したのだろうか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それにしては、物品に経年劣化は見られないし、ゴミが腐敗した匂いもしないし、ついでに調べておいた他の書類も日付がぴったり17年前で止まっているので、おかしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だったらなんだ、俺が17年前の病院にタイムスリップしたとでもいうのか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そういえば俺が不時着した旧第12基地は、”時”空間がねじ曲がっている場所だと知らされていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
にわかには信じがたいが……仮に俺がタイムスリップしたとしたら、ここは、呪文で閉じ込められてから大して年月が経過していないということになる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
怪異か何かのせいで、人がこんな風に消えてしまったのも、最近のことだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
17年前……閉じ込められた病院……そういえば、第一基地にいた頃に仲間からこんな話を聞いた覚えがある。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ソーラインなんて無く、怪異に襲われた街は放棄してただ逃げるしかなかったあの頃。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
怪異から避難しきれない年寄りやちびっ子、その面倒を見る医者や看護師たちの命を守るため、避難所となっていた建物を丸ごと特殊な結界で包んで守っていた、一人の天才術使がいた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
が、問題だったのはこの結界、解く方法が全くないということ。一度かけたら二度と開かないことから、「鍵なし錠の術使」と呼ばれた……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その術使は連盟に所属していないばかりか、人前に現れる度に男になったり女になったりジジイになったり幼女になったりで、全くの正体不明。人の皮を被った怪異なんじゃないかとも噂された。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
今はどうだろう、活動しているのか、生きているのかも俺は知らないが……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まあ、この建物にかかっているのがソイツの術かどうかは分からない。ましてや俺は術の専門家じゃないんだから。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
万が一ソイツの術だとしたら、俺はたぶん結界をこじ開けてここに来たんじゃなくて、結界の内側に偶然転移して来てしまったんだろうな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だから当然、俺はここから出られないことになる。ハハハ！本当にそうなら笑うしかねぇな？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……ハァ。俺が飢えて死ぬことなんかより、今は。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
17年も前となると、ここにいた人たちは、今では誰もが知っているような怪異についても全く知らなかっただろう。知識さえあれば一般人でも対処のしようがある怪異に対しても、ひどい目に遭ってしまう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして、この結界をかけた奴が誰であれ、結界をかけた時点ではこの中に危険なものは無かったか、本当はあったのだが見過ごされていたのだろう。それとも、俺みたいに結界の内側に突然現れたのか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
で結局、何が分かった？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
この場所を襲った怪異というのは、今では対処法がよく知られているが当時は知られていなかったものである可能性がある。既に存在していても気付かれにくいものである可能性もある。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
突然パッと現れるものである可能性も。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
絞り込むどころか、候補が広がってしまったような気がする……[p]
[cm]
[jump target="*o507A3Menu"]


; ---- o507A33 ----
*o507A33
[encounterClear]
[eval exp="f.encounter.values.read3 = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いかにも入ってはいけない風なばってん印が貼ってあった、てんとう虫マークの隔離室には、変なものは見つからなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
強いて挙げるなら天井灯のカバーの中に何か入っていて、影になっていたことだけ妙だったな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あの時はなんか嫌な予感がして直視を避けたが、もう一度確認に行こうか？いやだめだ。疑い過ぎて何でも怖い。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一旦……あのばってん印がちゃんと意味のあるものだと信じてみよう。確かにあそこは危険な部屋だったのだと。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
危険ならなぜ鍵をかけたり物を置いて封鎖したりしないんだ？そこがなぜどういう風に危険なのかも書かないで。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
1番診察室にいる「せんせい」とやらは、俺みたいな奴があの部屋に入って調べたがることを想定していなかったのか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まあ、あまりにも気が滅入って、誰か助けに来ることを期待するのをやめていたのかもな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いや、にしては、それにしては、なぜ「何も貼らない」ではなく「ばってん印だけ」という中途半端なことをした？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
んー、それは本人に聞いてみないことにはどうにも、確たることは言えないな。生きてるかどうか、本当に人間が待っているのかどうかも分からないが。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いろいろ考えたが、結局謎が深まっただけな気がする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
強いて分かったことを挙げるなら、あの部屋に本当に何か危険なものがあったとしたら、それは自ら部屋を出ていく意志や体を持つものではなく、ただ「調べないこと」とか「見つけないこと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
で被害を予防できるものであろうということ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見てはいけないもの」と言ってもいいかもしれない……[p]
[cm]
[jump target="*o507A3Menu"]


; ---- o507A34 ----
*o507A34
[encounterClear]
[eval exp="f.encounter.values.read4 = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
くっさいゴミ袋とひたすら格闘して骨折り損だった、りんごマークの隔離室。たぶんありゃ避難所生活で出たゴミを押し込む場所だったのだろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一つだけ妙だと思ったのは、いちばん奥にあったゴミ袋。避難所生活で出るようなゴミの出す音か？と思うくらい軽快な、コロコロ硬いものがぶつかりあう音がした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の直感が言うとおり、あれが危険なものだったとしたら？ひょっとすると、怪異そのものだったとしたら？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
にしては、多すぎないか。だって袋の下半分がそれだけになるくらいは詰め込まれていやがった。あんな大量の物体型怪異が一度に一か所に出現するなんて聞いたこと無いぞ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
出現してからどんどん増えていったというのなら話は別だが。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ん？増える？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
袋に詰め込んでから勝手に増えていったのか。あんなに増えた後に詰め込まれたのか。どちらにせよ、あれは増殖する性質を持っている可能性がある。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「せんせい」とやらは、この物体を部屋の奥に隠す必要があったのだろうか。それは、「せんせい」自身や俺みたいな救出者を守るためか？救出者っていうより、正直、迷子みたいなものだけどな。[p]
[cm]
[jump target="*o507A3Menu"]


; ---- o507A35 ----
*o507A35
[encounterClear]
[eval exp="f.encounter.values.hasReasoning = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ここまで情報が出そろってくると、頭の良くない俺でも流石にアレのことを思い出さずにはいられない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その忌むべき名は、O-507、通称「人形の家・白」だ。皆からボビンって呼ばれてるやつのことだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ほんとか？と思ったが、これまでのことと照らし合わせると色々と辻褄が合うんだよな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
O-507について俺が知っていることを基に、ここで何が起こったのか推理して扉の向こうに語りかければ、俺を信用して、鍵を開けてくれるかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
相手が人間とは限らないけどな。人間でも、正気じゃないかも……ええいとりあえず信じてみるんだ、最初は。[p]
[cm]
[jump target="*o507A1Menu"]


; ---- o507A4 ----
*o507A4
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
最初にやることは？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="ガラスを破って中を見る" target1="*o507A4Choice0" text2="出てこいと脅し、挑発する" target2="*o507A4Choice1" text3="&f.encounter.values.hasIntroduced ? '話したいことがある' : '自己紹介をする'" target3="*o507A4Choice2" text4="まだ調べたいことや考えたいことがある" target4="*o507A4Choice3"]
[s]


; ---- o507A5 ----
*o507A5
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もちろんそんなことをしたら元の状態には戻せないが、本当にやっていいか？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="ガラスを破って中を見る" target1="*o507A5Choice0" text2="考え直す" target2="*o507A5Choice1"]
[s]


; ---- o507A51 ----
*o507A51
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
やると決めたらやる。俺は、なるべくガラスが飛び散らないようにブレードをゴンゴンと叩きつけてヒビを入れ、そのまま押して砕いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ガラスの向こうに貼られていた紙も破れて、ガシャンガシャンとガラス片が落ちていく。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は、目を見張った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年が俺を見据えて立っていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まっすぐ俺に突き付けた腕、手袋で掴んだ白い何か、少年、カーディガン、俺を睨む顔。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
なぜそんな姿勢で？その白いものは何？呆気に取られて俺はただその光景を見続けてしまった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年はもう片方の手で鍵をかちゃっと開けた。俺はブレードをガランガランと落っことして、扉を横にスライドする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年は石像みたいに腕を伸ばしたまま。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、もらっていいか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と一応言ってみたものの、別に断られもしなかったので俺は素直にその白いものを掴み取った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ボビン。それは白いボビンだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「出てけ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「え、ああ、はい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一歩下がった俺を扉はぴしゃんと拒み、また鍵がかかり、また紙が貼られた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
つれないなあ、出てけって。どこに行けばいいのだろう？そんなことを考える間もなく、俺の手はひとりでに糸を繰る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の手のひらがほどかれて、糸になっていく。これをボビンに巻き取る度に、口に甘い味がする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
おやつをやるから出てけってか？俺は子供かよ？でも、この味は実に……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="甘くておいしい。" target1="*o507A51Choice0" text2="甘くておいしい。" target2="*o507A51Choice1" text3="甘くておいしい。" target3="*o507A51Choice2"]
[s]


; ---- o507A6 ----
*o507A6
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もし相手が人間だったら全く信用されなくなるだろうが、本当にやっていいか？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="出てこいと脅し、挑発する" target1="*o507A6Choice0" text2="考え直す" target2="*o507A6Choice1"]
[s]


; ---- o507A61 ----
*o507A61
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「やいそこの奴。いるんだろそこに。人間だか化け物だか知らないが、返事の一つでもしたらどうだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
扉はしいんと黙っている。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もし人間だったら、一刻でも早く助かりたいんじゃないか？すぐにでも人に会いたいんじゃないか？それなのに、黙って鍵をかけている。これじゃお前は怪異か死体かどっちかだと、疑わずにはいられないんだが！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
疲れのせいで微かな耳鳴り。それ以外、なんにも聴こえない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いい加減にしないと、俺はこの扉をぶっ壊してでも入らなきゃいけないんだが、どうだ？言っておくが、俺はお前の有利な場所にわざわざ踏み込むつもりはないぞ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その部屋にソーラインをぶちまけて、嫌でも引きずり出してやる」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
返事はなし。もういい、うんざりだ。さっさと鍵にブレードをぶち込んで……って、ん？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
扉のガラス窓の向こう側に貼られていた紙がペリリと剥がされて、中が見えた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なんだ、いるならいるって言ってくれればよかったのに」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし窓の向こうに見えたものは完全に予想外だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
せんせいじゃない、ちっちゃな男の子だ。それも、どうみても普通の人間の。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そいつは俺にまっすぐ腕を突き付けて、手袋には白い何かを握っていて、俺をキッと睨んでいた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
呆気にとられた俺は、視線を少年の顔と手袋に行ったり来たりさせていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年はもう片方の手で鍵をかちゃっと開けた。俺はブレードをガランガランと落っことして、扉を横にスライドする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年は石像みたいに腕を伸ばしたまま。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なんで普通に開けてくれなかったんだ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と言いつつも俺の手はいつの間にか少年の手から白いものを掴み取っていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、欲しいんでしょ、あげる」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「え、ああ、はい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一歩下がった俺を扉はぴしゃんと拒み、また鍵がかかり、また紙が貼られた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
何が何やら。これでどうしろってんだ？俺の手には白いボビンが握られていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ん？白いボビン？何か思い出せそうな……そんなことを考える間もなく、俺の手はひとりでに糸を繰る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の手のひらがほどかれて、糸になっていく。これをボビンに巻き取る度に、口に甘い味がする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は、自分のやりたいことがすぐに分かった。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="俺の体を糸にするんだ。" target1="*o507A61Choice0" text2="俺の体を糸にするんだ。" target2="*o507A61Choice1" text3="俺の体を糸にするんだ。" target3="*o507A61Choice2"]
[s]


; ---- o507A7 ----
*o507A7
[encounterClear]
[eval exp="f.encounter.values.hasIntroduced = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「えーっと……俺は古虫紀一。第03基地に務めてた衛生兵です。って言っても、ピンと来ないか？けが人の手当てをするしがない下っ端の兵士さ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ぎこちなく自己紹介を始めてみたが、やはり向こうからは物音一つしない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「事故に巻き込まれて、第12基地に迷い込んだのですが、そこの変な扉を開けたら、ここに迷い込んでしまったんです。迷子がまた迷子になっちまったってことですよ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかもここ、結界が張ってあって出られないんですね。申し訳ないんですが、俺もどうすれば出られるのか分からないんですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
馬鹿正直に話しすぎた。我ながらなんて情けない自己紹介だろうと、ため息をついた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でも、完全に諦めてはいません。俺のいた場所には、結界に詳しい仲間がいます。助けに来てくれるかもしれません。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それに、ここで何が起こったか話していただければ、ここから脱出する手がかりがつかめるかもしれないでしょう？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
力を込めて、どうにか前向きな調子でそう伝えた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だから、もしそこにあなたがいるなら、『せんせい』、どうか俺のことを信じて扉を開けて欲しいんです。お願いします」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
耳を澄まして待っていたが、返事は無かった。返事がないというだけで、思っていたより心にこたえるみたいだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あまり長いこと話してると、寂しさとか、虚しさとか、……辛い気持ちで胸がいっぱいになって、気力を失くしそうだ。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="思いつくままに話を続ける" target1="*o507A7Choice0" text2="&(!f.encounter.values.usedEmpathy) ? ((f.encounter.values.hasEmpathy) ? '相手の心情に理解を示す' : 'まだ相手のことについてじっくり考えられていない') : ''" target2="*o507A7Choice1" disable2="&!(f.encounter.values.hasEmpathy)" text3="&(!f.encounter.values.usedReasoning) ? ((f.encounter.values.hasReasoning) ? 'ここで起こったことを推理して話す' : 'まだここで起こったことについてうまく推理できていない') : ''" target3="*o507A7Choice2" disable3="&!(f.encounter.values.hasReasoning)" text4="考え直す" target4="*o507A7Choice3"]
[s]


; ---- o507Talk1 ----
*o507Talk1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
返事をしない相手に、何を話せばいいんだ？どうすれば俺のことを信じてもらえるのか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、あなたを助けることができると思います。すぐにはここから出られなくても、その……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
思えば、俺にできることなんてあるか？「せんせい」なんだから相手は医者だろう。俺にできるようなことは相手にもできる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺にできることなら、何でもします。状況が分からないので、何をすればいいのか教えてくれませんか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
静かな廊下で、俺の吐息が白く落ちていく以外に何も動いていない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「せめて、話し相手にはなれますよ。ずっと閉じ込められて、あなたも寂しかったでしょう？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
たぶん、俺の方が寂しがっている。この扉の向こうに人がいるなんて、信じたいから信じているだけで、本当は信じるに値しないほど無根拠なのだろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ここに居るのは、扉を相手に独り言をして、寂しさを紛らわせている迷子、独りだけだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それでも……[p]
[cm]
[jump target="*o507A7Menu"]


; ---- o507Talk2 ----
*o507Talk2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「万が一、俺もあなたも、ここからどうしても出られないとしたら……お互いに独りで死んでいくなんて、嫌でしょう？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
信じたかった。まだ信じられた。ここから出られる可能性はあまりにも望み薄だが、それに比べたらまだ信じられた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺はあなたを信じたい。あなたがそこに生きているって。だから、こうして話し続けているんです。あなたも、俺が本物の人間で、本当にあなたを助けたいんだって、信じたくありませんか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そうだろ、せんせい？何か信じ続けなくちゃ、こんな場所で独りで生きていけないだろ？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「疑う気持ちは分かります。怖がる気持ちも分かります。でも俺は、あなたの寂しさと祈りも分かるんです」[p]
[cm]
[jump target="*o507A7Menu"]


; ---- o507Talk3 ----
*o507Talk3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「昔俺の友達と議論したことがあるんですよ。見た目じゃ人と区別がつかない怪異を、どうやって人と区別するんだって。そいつは言ってたんです。人間くさい奴を信じればいいと。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして、人間くさいってことは、馬鹿で、弱くて、情けないことだと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はその意味で、人間くささには自信があった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でもアイツ、俺なんかのために死んじまったんですよ。今思えば、死に際くらいかっこつけたい、人間くさい死に方だったのかもしれません」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
脳裏の思い出は、血で染まって終わる。目の前には、ただ音のない白い扉が相変わらず俺を拒んでいる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が、どれほど人間くさい奴なのか、どうやって伝えたらいいのでしょう？今すぐにでも泣き出したいくらい心細いんですが、泣けばいいですかね？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
自覚した瞬間、幼子のような弱さが胸の奥からこみ上げてきて、俺は瞼をぎゅっとした。まだ早い。泣くのは、中に入って死体を見つけてからだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
死体じゃないってんなら、どうか、答えてくれよ……[p]
[cm]
[jump target="*o507A7Menu"]


; ---- o507Talk4 ----
*o507Talk4
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
かれこれ他愛のないことを思いつくままに話し続け、いったいどれだけの時間が経っただろうか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
このまま話し続けても、状況は変わらないだろう。だから俺は、状況を変えることを考えた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一つは、「最後通牒」を突き付けることだ。つまり、「返事をくれなきゃ扉を破るぞ」という、最後の警告をすること。それでも返事がなければ、本当に鍵を壊して中に入る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう一つは……何もしないことだ。いつまでも待つんだ。この扉を開けないまま、飢えて死んだっていい。本当にそこにせんせいがいて、本当にどうしても俺を信じられないのなら、無理に開けてもよくないことが起こるだ[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
けだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さあ、どうする。後悔しないように、心に従って選ぶんだ。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="最後通牒を突き付けて、返事が無ければこじ開ける" target1="*o507Talk4Choice0" text2="何もしない" target2="*o507Talk4Choice1" text3="少し考え直す" target3="*o507Talk4Choice2"]
[s]


; ---- o507Empathy ----
*o507Empathy
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
この向こうに生きた人間がいると仮定し、相手の立場で考え続けたことで、気付いたことがある。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それは、俺を疑っているとかそんな初歩的なことではなく、まず精神状態が普通ではないという可能性。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だいいち俺は、ここで何が起こったのかまだ知らない。心が壊れるようなことを経験していたっておかしくない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
本当に辛いことがあったとき、俺ならどんな言葉が欲しいだろうか。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="人の助けを拒絶してしまうほど悲観的になっているのかもしれないとして、それも仕方ないとなだめる" target1="*o507EmpathyChoice0" text2="心の病気や精神汚染を治すことのできる用意があると伝える" target2="*o507EmpathyChoice1"]
[s]


; ---- o507EmpathyGood ----
*o507EmpathyGood
[encounterClear]
[eval exp="f.encounter.values.trust += 1"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もしかして、もう、死んだ方がマシだとか、ほっといてくれとか、思ってるんじゃないか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
自分で言ってみたことに、心のどこかで自分がうなづいていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そりゃそうだよな……こんな時代に生まれてしまって。生き続けろっていうのは、幸せになろうっていうのは、ひどいと思う」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そうだ。実にそうだ。俺の独り言ならここで終えても良かったんだが、人を救うのが仕事だから言葉を続けなければならない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
けれども、言葉が出てこない。ずっと考えても。本心からそう思うことだけを伝えようとしたら、さっきのが全てだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
本気で相手を思いやろうとするとこうなるんだよな。いつもの治療でもときどき思うんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なんで俺が、こんなに黙ってしまったかわかるか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いっそ素直に全てを打ち明けることにした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は衛生兵でな、軍の医者でな、人を救う仕事をしてると、それが正しいことなのか分からなくなってくるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
扉の向こうが死体でも構わない。こんな機会だから独白したかったんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でもな、だからこそ、助けてくれてありがとうって、あんなにきらきらした目で……言われると、俺は嬉しくて、でも申し訳なくて、ぐちゃぐちゃになって泣きそうになるのを、こらえなくちゃいけなくなるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
目を閉じれば浮かぶ、たったいくつかの貴重な記憶が……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だめだ。泣きたい人を助けようって場面で自分が泣き出してどうする。俺は寒くて乾いた頬をごしごしこすった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あのな、俺は、救われるのも立派な仕事だと思ってる。とても難しい仕事だ。無理ならやらなくていい。でも、俺のお願いを聞くだけ聞いてほしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうか、俺と一緒にここから出て、これからたくさんの人に救われて、その、お前を救ってやれた喜びを皆に届けてやってほしい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺にも言えたんだ。嘘でも押しつけでもない、真心からの言葉を……。[p]
[cm]
[if exp="f.encounter.values.trust >= 2"]
    [jump target="*o507A8"]
[else]
    [jump target="*o507A7Menu"]
[endif]


; ---- o507EmpathyBad ----
*o507EmpathyBad
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もしかしたら、あなたは、心の病気にかかってしまったり、怪異のせいで精神汚染されてしまったりしていませんか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ここで何事かが起こってしまったのは明白なのだから、精神に異常をきたしている可能性は当然想定すべきだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の元居た場所には、最良の環境とは言えないものの、そういった人を治療したり、症状の進行を抑えたりするための設備があります。あなたがその病気のことで自信を無くしていても、大丈夫です。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
治せる可能性があります」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
が、相変わらず扉はうんともすんとも言わないのだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ううむ、相手の事情を全く知らないまま、相手の病状や心情についてあれこれ言っても仕方ないのではないか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
自信を失くした俺は、それ以上言葉が出てこなかった。[p]
[cm]
[jump target="*o507A7Menu"]


; ---- o507Reason1 ----
*o507Reason1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
この事件について正確な推理ができれば、相手に信頼してもらえるかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
正確な推理とは？それは決して込み入った細かい事情まで及ぶものではなく、「間違ったこと」や「飛躍したこと」を言わない地味な推理だと俺は思う。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
人のふりをする怪異はただ人の言いそうなことを言って真似することには長けているが、別に論理的に考えてそうやっている訳ではない場合がほとんどで、ときどきおかしい理屈を言うのだそうだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だから、ちょっとでも間違えれば俺は疑われてしまうかもしれない。慎重に行こう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まず、この場所をこんな寂しい場所にしたのは、O-507、『人形の家・白』で間違いないと思います。そういう名前の、非常に厄介な怪異がいるんです。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
白いボビンの形をしていて、３秒ほど見ただけで精神汚染を食らいます。肌で直接触れてしまったら、絶対に助かりません」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="それが大量に現れて、ここに居た人を皆糸にしてしまったのでしょう？" target1="*o507Reason1Choice0" text2="それがいくつか現れて、ここに居た人を次々に糸にしていったのでしょう？" target2="*o507Reason1Choice1"]
[s]


; ---- o507Reason2 ----
*o507Reason2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それで、たぶん見てはいけないものだと直観的に分かったのでしょう、あなただけが助かった。皆糸になってしまった後、服だけ残ったのをあんなに丁寧に畳んで、まるでお墓のように並べて。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
たくさん散らばっていたはずのO-507も、あなたは目を隠して肌も隠して、どうにかゴミ袋に拾い集めて、りんごマークの隔離室に置いた。俺はあの部屋のゴミ袋をあらかた調べましたが……」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="一番奥のゴミ袋だけ、持った時にコロコロと音がしたんです。" target1="*o507Reason2Choice0" text2="一番奥のゴミ袋だけ、大量のボビンが入っていたんです。" target2="*o507Reason2Choice1"]
[s]


; ---- o507Reason3 ----
*o507Reason3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そして、大きくばってん印が書かれたてんとう虫マークの隔離室。入ってはいけませんという忠告だったのかもしれませんが、俺はここで起こったことを考えたくて、少しだけ調べました。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そこで、天井灯のカバーの中に怪しいものが入ってるのを見つけて、でも嫌な予感がして目を背けました。ぼんやりとしか見えていないので助かったのでしょうけど、あれもO-507だったのかもしれません。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
O-507は、前に出現したことのある場所の近くで、少し期間を空けて再び現れることもあるのです」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="それをどうしてあんなところにも隠したのかは、分かりませんが……" target1="*o507Reason3Choice0" text2="二度目か、ひょっとすると三度目の出現があそこだったのかもしれません" target2="*o507Reason3Choice1"]
[s]


; ---- o507Reason4 ----
*o507Reason4
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ、俺がどうしてアレについてこんなに詳しいのか、疑問に思うかもしれません。いや、もっと信じがたいことを言わなければならないのですが、俺は2527年の未来からここに来たんです。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
失礼ながら、書類や通帳などを調べさせていただきましたが、どれもこれも2510年のもので驚きましたよ。でも、ポータルが開いて以来あちこちで時空間が滅茶苦茶になったということは、ご存知でしょう？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
残念ながら2527年になってもそういう場所は多く残っていて、俺は、場所や時間がばらばらになっている扉を開けて、そこにいる人を助け出したり、怪異をやっつけたり……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あそうそう、怪異を退治する方法も6年前になってようやく見つかったんですよ。まあとにかく、俺が開けた扉がたまたまここに繋がっていて、しかし閉じ込められてしまったのだということは、ご理解いただきたい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
未来から来た、という点については、信じられなければ信じなくても構いません」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="ただ、未来から来た人でないと、これほどすらすらと推理することはできないはずですよ" target1="*o507Reason4Choice0" text2="何せ、未来の知識がなくたって、身近な人が被害に遭えば嫌でも理解できますからね" target2="*o507Reason4Choice1"]
[s]


; ---- o507ReasonEnd ----
*o507ReasonEnd
[encounterClear]
[eval exp="if (f.encounter.values.reasonScore >= 3) f.encounter.values.trust += 1"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さあ……俺が分かったことはここまでです。残念ながら、ここから脱出する方法はまだ分かりませんが、あなたの協力があれば見つけ出せると期待しています。俺を信じてくれるならば、どうか扉を開けてください」[p]
[cm]
[if exp="f.encounter.values.trust >= 2"]
    [jump target="*o507A8"]
[else]
    [jump target="*o507A7Menu"]
[endif]


; ---- o507A8 ----
*o507A8
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
話すべきことは全て話したはずだ。もっと雑談でも何でも続けてみてもいいが、だらだら続けるよりはスパッと決めたい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
相手としてはいつでも扉を開けていいはずなのだが、だからこそ、いつ開けるべきか判断に迷うはずだ。こちらから、扉を開けるためのこれ以上ないチャンスを提供できればいいのだが。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……いや、いきなり扉を開けるのはハードルが高すぎる。窓を覆う紙を向こう側から剥がしたり、声を出したりするのも難しいだろう。人か怪異かも確信が持てない相手に自分の存在を明かすのはどうしても怖いはずだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
正直、簡単に相手の警戒心を解く方法なんてない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それでも、人間の心の大抵の問題は時間が解決してくれるから……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="あとは待つだけだ。" target1="*o507A8Choice0"]
[s]


; ---- o507A8after ----
*o507A8after
[encounterClear]
[eval exp="f.encounter.values.ending = 'A'"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、もうあなたが俺のことを半分以上は信じてくれてるっていう自信があります。だから、ひたすら待つことにします。俺は今から、待合室で毛布を敷いて寝ます。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺に気づかれないように、遠くからじっと見ていればいいんです。俺、すごく疲れてるのでたぶん明日の昼までずっと寝てますよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
何が起こるか分かったもんじゃない場所で、無防備に布団敷いて寝るなんて、自殺行為だ。でも、寝ますって言った瞬間からこれまでの疲れがどっと押し寄せて、ものすごく眠くなってしまった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
緊張が解けて、俺は一つ、くそでかいあくびをした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まあ、俺のいた基地に帰れたら、寝てましたって言ったら上官には𠮟られ、あいつには呆れられ、あの人には笑われて、あの子はこんな俺を擁護しないといけなくなる。だからこれは秘密にしといてください。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
代わりに、感動的な救出シーンを一緒にでっち上げましょう。会えたときの約束ですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はこうして一番診察室を後にした。ああ眠い眠い。寝てしまえ。それくらい無防備にならなきゃ、扉の向こうのせんせいは俺を怖がって出てこないだろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
段ボールベッドを組み立てるのさえ億劫だったから適当に床に段ボールを敷いて、そこに、待合室の隅に畳んであった敷布団と毛布を広げて、軍服も脱いで俺は寝る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
毛布からは、洗剤か何かの知らない匂いがしたが、どこか懐かしい。友達の家に初めて上がったときの匂いみたいだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
暗く寒い夕方の光が窓から差し込み、服で作られた墓地と、その傍で眠るのんきな俺を等しく照らす。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そんな悲しい幻想と一緒に、俺は意識をぽちゃんと落とした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まさか、明日の昼まで寝るって言って本当に昼まで寝ている馬鹿がいるか。ここにいたよ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
馬鹿馬鹿しいくらいすっきりした頭で辺りを見回すと、別に驚くほどのことでもないみたいに少年が一人いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
彼は服の墓の一つの前で正座して、手を合わせて祈ってた。俺に気づくと、何気ない声でこう言った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「起きてたの？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや、今起きたばかりだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ん……そっか。もっと寝ててもいいよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう充分寝たさ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年は淡々としていた。立ち上がって隣の墓の前に来ると、すぐにまた座って、祈っていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「毎朝してるのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日だけ。今日は皆とお別れだから。毎朝お祈りしてたのは、お母さんのとこだけ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……せんせいはいないのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あそこ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年が指さした先には、看護師の服と聴診器がやはりきれいに畳まれて置かれていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……俺も一緒に祈ろうか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあお前は何を祈ってるんだ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ぼく？ぼくはね……昨日までは、死んだらまた会えますようにって。すぐに会いに行くよって祈ってた」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は違うんだな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……皆のぶんまで頑張って生きるから、見守っててね……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年は目をつむったまま、涙をぽろぽろこぼした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は起き上がって、軍服を着て、布団を片付け、黙って少年の隣に座り、共に一つ一つの墓に祈った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
救う仕事と、救われる仕事が、また始まる。[p]
[cm]
[jump target="*o507EndingCommon"]


; ---- o507A9 ----
*o507A9
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これで最後の言葉にします、せんせい。俺は、正真正銘人間です。もしあなたが生きているなら、あなたに会いたい。それでもあなたが扉を開けることができないなら、俺は鍵を壊して入ります」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は強く言った。もう、引き返せない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……ゆっくりと、３０を数えます。それまでに、声を出すなり扉を叩くなりして、返事をください」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いち、に、さん。俺は願うように祈るように、遅すぎるくらいに数えたが。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
はち、きゅう、じゅう。無慈悲にもせんせいはカウントを止めさせてくれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
にじゅういち、にじゅうに……。きっとそうだ、どうせそうだ。俺は考えすぎたんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
にじゅうご、にじゅうろく……。人がいるって信じたかったが、どう考えても死体だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
にじゅうきゅう……。俺は現実に向き合う覚悟を決める。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「三十！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はブレードを構えて、ドアノブに打ち込もうとする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その時だった。誰かが向こうで、扉のガラス窓を隠していた紙をペリリと剥がした。なんだ、人がいたのか！？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
窓を覗き込んで見えたもの。まっすぐ俺に突き付けた腕、手袋で掴んだ白い何か、少年、カーディガン、俺を睨む顔。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
なぜそんな姿勢で？その白いものは何？呆気に取られて俺はただその光景を見続けてしまった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年はもう片方の手で鍵をかちゃっと開けた。俺はブレードをガランガランと落っことして、扉を横にスライドする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少年は石像みたいに腕を伸ばしたまま。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、もらっていいか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と一応言ってみたものの、別に断られもしなかったので俺は素直にその白いものを掴み取った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ボビン。それは白いボビンだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あっち行って。戻ってこないでね」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「え、ああ、はい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一歩下がった俺を扉はぴしゃんと拒み、また鍵がかかり、また紙が貼られた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あっち行ってと言われても、どこに行けばいいのだろう？そんなことを考える間もなく、俺の手はひとりでに糸を繰る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の手のひらがほどかれて、糸になっていく。これをボビンに巻き取る度に、口に甘い味がする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あの子が俺にくれたおやつなのかな？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="甘くておいしい。" target1="*o507A9Choice0" text2="甘くておいしい。" target2="*o507A9Choice1" text3="甘くておいしい。" target3="*o507A9Choice2"]
[s]


; ---- o507A10 ----
*o507A10
[encounterClear]
[eval exp="f.encounter.values.ending = 'B'"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当はずっとそこにいるんでしょう？せんせい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
何度目か分からないセリフを、これで最後と決めて言った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でも……俺の顔を見て話すことを、あなたはどうしても望まないんですね」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう何も返事が来ないことにも慣れた。俺は俺を諦めさせるように呟く。失恋した友達に、もう忘れろよと諭すように。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「掃除と整頓は俺が引き継ぎますよ。死ぬまでやります。それが大事だからあんなにやったんでしょう？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
人の消えた街から、冬の光が差している。俺は待合室の方を振り返って歩き出そうとする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うん、いや、それじゃあなたはその部屋から出られないな。窮屈でしょう？俺が死ねば、安心して出られますか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
静かで穏やかな諦観が俺の心を支配していた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でも……どうやって死んで、しかもそれを、どうやって扉越しに、あなたに確信させればいいのでしょう。まだ分かりません。でも、あなたがそこで飢えて死ぬまでには、何とかして考え出しますよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さて、と……今度はここで何が起こったか理解するためだけじゃなく、せんせいに迷惑かけずに死ぬ方法も探さなきゃな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は全てを諦めた朗らかな心で、待合室へ歩き去ろうとした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その時だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いやだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
幼い男の子の声が後ろから聞こえた。振り返ると、扉はまだ閉まったまま。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おっと……やっと返事してくれる気になったかい？でもお前、せんせいっていう割には、その、若い声をしていて……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「死なないでお願い。死んじゃだめ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
今にも泣き出しそうな切実な声が震えている。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なんでだよ。俺は化け物で、お前を食っちまうかもしれないんだぞ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「化け物はあんなこと言わない」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「化け物は賢いんだ。優しいふりなんていくらでもできる。そこに銃はあるか？使い方は習ったか？窓の所に頭の後ろを当てておいてやるから、バンって撃てば殺せるよ。これなら確実に俺が死んだって分かるよな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「化け物はそんなんじゃ死なない！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
見なくてもびしょびしょに泣き出しているのが分かる声。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あーそっか。そりゃそうだった、残念だな。じゃあ俺が怪異だったとしても確実に死んでるって分かる方法を探さないと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「しなないでってばーーー！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
耳をつんざく悲鳴。馬鹿な俺は子供を本気で泣かせてしまったらしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あーあこりゃだめだ。おいこら、せんせいいるんだろ？せんせい？なんとかしてくれせんせい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「せんせいは、いないの！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いない？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「きのう、きえちゃった。いとになっちゃった……ぐすっ、ううっ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「糸になった……？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うわああああああああん！！あああああああああん！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は扉の向こうの悲劇を慰めてやることもできず、ただ待つしかなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
廊下はこんなに寒いのに、ぽろぽろ溢れる涙はやけに熱かった……。[p]
[cm]
[jump target="*o507EndingCommon"]


; ---- o507B1 ----
*o507B1
[encounterClear]
[eval exp="f.encounter.values.hasWaitingRoom = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
待合室をもっと詳しく調べてみよう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
やはりというか、窓を開いても同じように呪文が壁になっていて脱出できない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
服の山の傍に鞄があったから、開けて財布を調べてみた。これは確か１世代前の紙幣じゃないか？銀行の通帳に書いてあった最後の取引の記録は、2510年10月。今から17年前のものだった……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さっきは気持ち悪いくらい整理された服に気を取られて気づかなかったが、部屋の隅には折りたたまれた段ボール製ベッドや毛布、非常食など、ここが避難所として使われていたことをうかがわせる物品が、やはり丁寧に整[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
理されて置かれていた。まだ生活できそうなのに、どうして全く人の気配がないのだろう？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="もう1番診察室に行ってしまおうか？" target1="*o507B1Choice0" text2="他の部屋も調べることにした。" target2="*o507B1Choice1"]
[s]


; ---- o507B2 ----
*o507B2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
妙な場所は避けて全ての場所を調べつくしたつもりなのだが、ここで何が起こったのか推測する手がかりは、待合室で見つかった以上のものは見つからなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それで、妙な場所というのが二つ。なぜか大きなばってん印を書いた紙が扉に貼ってある、てんとう虫マークの隔離室。もう一つが、たくさんのゴミ袋がギュウギュウに詰め込まれた、りんごマークの隔離室。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どっちも行きたくないんだがな……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は自分が不安でおかしくなりそうなのが分かる。怪異に遭遇したわけでもないのに、この異常なほどの静穏、そして俺がここに閉じ込められてしまったという事実。これはもう、バケモノの口の中にいるようなものだ……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だからこそ、自分がどれだけビビっているのか、どれだけ冷静さを欠いているのか、自覚することが大切だ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「勇気とは、恐れを自覚することに他ならない」と、誰から教わったんだったかな……。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="もう1番診察室に行ってしまおうか？" target1="*o507B2Choice0" text2="ばってん印の貼り紙がある隔離室を調べることにした。" target2="*o507B2Choice1" text3="ごみ袋でいっぱいの隔離室を調べることにした。" target3="*o507B2Choice2"]
[s]


; ---- o507B3 ----
*o507B3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は嫌々ながらも、ばってん印の貼り紙の忠告を無視して扉を開けた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……ん？何だ。何もないじゃないか。診察のためのデスクと簡素なベッド以外にめぼしいものは見当たらなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ったく何だってんだよホントに、怖がらせないでくれ……。これは俺を騙したのか？そういう意地悪な怪異なのか？はたまた、一見すると気づかないような危険が潜む部屋なのか、それとも……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いくら考えても、色んな可能性がありすぎて分からないな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「べぇっくしょい！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ぶるぶる。そうだった俺ずっと寒いんだった。あまり訳の分からん所に長居するのもよくないかもな……。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="もう1番診察室に行ってしまおうか？" target1="*o507B3Choice0" text2="りんごマークの隔離室を調べることにした。" target2="*o507B3Choice1" text3="しかし一か所だけ気になることが……" target3="*o507B3Choice2"]
[s]


; ---- o507B32 ----
*o507B32
[encounterClear]
[eval exp="f.encounter.values.hasLight = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
想像もつかない、いるかいないかさえ分からない敵に怯えながら調査するのは存外にしんどいものだ。俺はもう気が気じゃない。早く手掛かりの一つや二つ見つかってくれと願うばかりだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
明かりは点くのだろうか、と、ふと思った。ここまで見てきた場所のどこにも、電気を使って何か動いている様子は無かったし、何ならプラグが抜かれてしまった機械も多かったのだが、自分でスイッチを入れてみたことは[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
無かった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
壁のスイッチを押してみると、意外にも天井灯が普通に点いた。なーんだ、だったらこれまで薄暗い中探索せずに済んだのに。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
が、ちょっと違和感があった。というのも、床の一か所にだけ小さな影がある。床はピカピカに掃除されているから、シミがついてるわけじゃない。丸い天井灯の中に、影を作っている物体が入っているのだろうか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は天井灯を見上げた……。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="眩しくて目が慣れない。もっとよく見よう。" target1="*o507B32Choice0" text2="ま、ホコリか虫かなんかだろう。" target2="*o507B32Choice1"]
[s]


; ---- o507B33 ----
*o507B33
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
猛烈に胸騒ぎがするんだが、やめろと言ってんのかやめるなと言ってんのか分からない。俺は眩しいのを我慢して、天井灯に目を凝らした……。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="迷うな俺。こんなところで重大な何かを見逃しちゃいけない。" target1="*o507B33Choice0" text2="冷静になれ俺。こんなところで目をやられて、急に後ろから襲われたらどうするんだ。" target2="*o507B33Choice1"]
[s]


; ---- o507B34 ----
*o507B34
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
やっと目が慣れてきて、天井灯の中にある輪郭が見えた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
おお、これはこれは。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は手際よくデスクの椅子を引き出して来てそこに乗り、天井灯の丸いカバーを外した。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その中にはコロンと転がる、白いボビンが入っていた。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="糸を巻いて遊ぶ。" target1="*o507B34Choice0" text2="糸を巻いて遊ぶ。" target2="*o507B34Choice1" text3="糸を巻いて遊ぶ。" target3="*o507B34Choice2"]
[s]


; ---- o507B35 ----
*o507B35
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は、早く手掛かりを見つけたくて焦っているのを自覚して、落ち着きたくて部屋を出た。[p]
[cm]
[jump target="*o507B3Menu"]


; ---- o507B4 ----
*o507B4
[encounterClear]
[eval exp="f.encounter.values.hasBags = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はちょっと横にずれてから、ゴミ袋でぎっしりの部屋の扉を開けた。どさどさと外に袋が流れ込んでくる。うわ臭っ。でもここくらいしか他に調べるところはないし……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ゴミ袋の中を調べるのは本当に最後の手段ということにして、まず別の隔離室にゴミ袋を一つ一つ運び出し、この部屋の奥に何か隠されていないか確認することにした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
悪臭と肉体労働に無心で挑むこと一時間。まぁ徒労じゃないかなと最初から期待はしていなかったが、やはり徒労だった。ゴミ袋以外に何一つない部屋だと分かってから、残り数個のゴミ袋の運搬をやめた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
が、その残ったごみ袋の下敷きになっている物がないか確認するために一つ一つ持ち上げたとき、ひと袋だけ、置きなおしたときの音が他とは明らかに違っていた。コロコロと、軽石が転がりぶつかり合うような音が。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は何となく嫌な予感がした。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="袋をそっと開けて、上から覗き込む。" target1="*o507B4Choice0" text2="いや、袋の中まで見るのは最後の最後と決めたんだ。" target2="*o507B4Choice1"]
[s]


; ---- o507B42 ----
*o507B42
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
袋はどれも、うっすらと中身を見通せるくらい半透明だったのだが、この妙な音がする袋だけは内側に白い紙袋が入っていて、見通せなかった。そこで俺は、きつく結ばれた口を恐る恐る開けて、上から覗き込んだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
うーん、鼻をかんだティッシュだろうか？大量の紙くずに隠されて、下にあるはずのコロコロと鳴る物体は見えない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……俺はいま客観的に見て妥当なことをやってるんだろうか？こんな、ごみ収集業者の方がまだマシってくらいの仕事をして、何も成果が出ないことを焦っているのではなかろうか？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="意を決して袋に手を突っ込む。" target1="*o507B42Choice0" text2="一度冷静になるためにも、この部屋から離れよう。" target2="*o507B42Choice1"]
[s]


; ---- o507B43 ----
*o507B43
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
骨でも入ってたら嫌だなぁとか思いつつ、俺は思い切って袋に右手を突っ込んだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
硬いものが指先に触れた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
取り出してみると、それは不思議な模様の白いボビンだった……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
なんだか心が軽くなったのを感じる。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="糸を巻いて遊ぶ。" target1="*o507B43Choice0" text2="糸を巻いて遊ぶ。" target2="*o507B43Choice1" text3="糸を巻いて遊ぶ。" target3="*o507B43Choice2"]
[s]


; ---- o507B44 ----
*o507B44
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まあ別に、触れただけで死ぬようなものが入っているわけではないだろう。調べてみてもいいのだが、だからこそキリがない。一旦この部屋の調査は切り上げて状況を整理するべきだ。[p]
[cm]
[jump target="*o507B3Menu"]


; ---- o507EndingCommon ----
*o507EndingCommon
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺たちはその日のうちに……いや、こっちの時間ではものの数秒しか経っていなかったそうだが、すぐに第12基地へ帰ってきた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前、名前聞いてなかったな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「水島、俊介（みずしましゅんすけ）。シュンって呼ばれてた」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうかシュン。ごめんな、もっと早く助けてやれなくて」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ぼくだけでも、助けてくれてありがとう……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺が唯一救えた命。シュンは、母親の形見のカーディガンをしわくちゃにしてずっと抱きしめている。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう涙が枯れるほど泣き尽くしたシュンは、第12基地の面々に囲まれて、事の次第を一生懸命説明した。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
簡潔にまとめるとこうだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
2510年10月、シュンの住んでいた街を包む結界が、突如として崩壊した。全方位からなだれ込む怪異の群れに為す術もなく、街はものの数日で完全に制圧されることになる。その当時では珍しくもないことだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンとその母が結界の崩壊の知らせを聞いたのは、さっきまで俺とシュンがいた場所、「いとうこどもクリニック」だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
患者とその家族の多くはすぐさま病院を飛び出してどこかへ逃げていったが、そうしない者たちもいた。無謀な逃避行に命を賭けるよりは、せめて最後の言葉を大切な人に通信する時間を求めたからだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一人、来客が玄関をノックした。警戒した院長らは扉を開けることは無かったが、扉越しに来客は提案を持ちかけた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私は通りすがりの術使だ。この建物全体に特殊な結界をかけることができる。ただし、キミたちが自力で結界を解く方法はないし、私も解くことができない」という旨のことを説明し、そして……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「偶然だけがこの結界からキミたちを救い出せる、そんな仕掛けを用意してある。偶然、善意のある者が、この結界の中に現れるまでただ待ち続けるのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その者を信じたならば、その者を連れてこの扉の前に立ち、共に幸せのために祈れ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一同はその言葉を一言一句正確に覚えて、ひたすら待ち続けた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
初明が言うには、その術使は間違いなく「鍵なし錠の術使」と噂される人物だというのだが、その正体は初明にも分からない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
避難所としても運用できるように準備はしてあったので、幸い生き延びることはできていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
窓の外に見える周りの環境ごと、怪異どもの狂騒から完全に隔離されたかのようだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少なくとも、この結界を越えてやって来る存在がいたとしてもそれは決して怪異ではない……はずだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
同年12月、O-507、「人形の家・白」として”今では”悪名高い怪異が待合室のカウンターにポツンと現れた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
このときシュンは一番診察室にいて、看護師の中村先生、あの貼り紙に書いてあった「せんせい」のことだが、彼女からカウンセリングを受けていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
外の異様な気配を察知した中村先生は診察室を出て待合室の方をちらと見た。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
既に何もかも手遅れだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
O-507は白いボビンの形をした怪異で、それを数秒見たり触れたりしただけで心を完全に奪われ、自分の体を糸にして巻いて遊ぶことしか考えられなくなる。既に一人が糸を巻き始め、それに誰も彼もが注目していた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
中村先生はO-507による精神汚染を被る前に一番診察室へ飛んで帰り、何が何やら分からぬままシュンに向き合った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを出ないで……絶対にここを出ちゃだめだよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうしたの？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それは……分からない。でも、変なことが起こってるの。あれを見たら、きっとシュン君もおかしくなっちゃう」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「変なこと？お母さんは？お母さんは大丈夫なの？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待ってて。せんせいが何とかして連れてくるから。何があっても絶対に、絶対にここを出ないで」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
結局、中村先生とシュン以外全員が糸になった。皆あれが自分たちを救いに来たものだと思い込んで、扉の前で糸を巻きながら幸せを祈っていたのだという。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
2510年当時は、まだ世界のどこにも存在していなかったはずの怪異。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ベースラインの時空間から切り離されて時間の進みが遅くなっていたその場所に、偶然未来からO-507がタイムスリップしてきたのではないかと初明は言う。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
2511年の正月は、中村先生と二人で待合室の墓標に手を合わせた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
犠牲者の指から作られて大量に散乱していたO-507は、直視せず、直接触れないことを徹底して片づけられ、りんごマークの隔離室の奥の奥に隠された。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
犠牲者が自ら脱ぎ捨てた服は丁寧に畳んで、墓の代わりにした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかしこの悲しい静穏も長くは続かなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
同年2月のある日、シュンは、掃除と点検のために第一診察室を離れた中村先生が戻ってこないことに気付いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
てんとう虫マークの隔離室で先生を発見したとき、先生はシュンに裸の背を向けたまま黙々と糸を巻いていた。いつの間にかその部屋にボビンが置いてあったのだという。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう、いくら声をかけても無駄だった。先生は、シュンがなぜ泣いているのか全く理解してくれなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンが先生の肩を掴もうとすると、激痛と共に指の皮がボロボロになった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンは、全てが終わるまで待つしかなかった。そして、先生の衣服と、元凶となった1個のボビンと、先生の指から生まれた10個のボビンを全て第一診察室に持ち帰り、目につかないようにベッドの下に隠した。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう誰かが救いに来るなんて信じられなかった。救われたくもなかった。ただ、終わらせたかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
片付けをし、墓を作り、自分の墓も母と先生の隣に作ったら、先生と同じボビンを使って死のう。そう思っていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺がそこに迷い込んだのはその翌日のことだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンは俺の足音や独り言を聞いて、半分パニックのようになり、第一診察室に閉じこもることにした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし、もしもてんとう虫マークの隔離室にまたボビンが現れて、そしてもしも、俺が本当に人間だったのなら、俺がボビンを見つけて死んでしまうのはだめだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そう考えたシュンは、紙に大きくばってんを書いて、物音を立てずに大急ぎで隔離室のドアに貼り付け、また診察室に閉じこもった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「第一診察室に来てください　先生が待っています」という玄関の貼り紙はまだ先生が生きていた頃に作ったものだったので、もう来訪者を迎えられる状態ではないのに俺を第一診察室に誘導することになってしまった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もし俺が怪異だったら、シュンは手袋で掴んだボビンを見せつけて、俺を糸にしてしまう覚悟だったらしい……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうにかシュンに信じてもらえた俺は、結界をかけた不思議な術使について教えてもらい、その指示に従った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンと共に、俺たちの基地と繋がっていたはずの扉の前に立って手を組み、祈った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうか、どうか、この子に幸せな未来を作ってあげられるだけの力を、俺にください。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
目を開けると俺たち二人は旧第12基地のあの扉の前に立っていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンは、肌身離さず持っていた母親のカーディガンの他にも遺品を持って帰ろうとしたが、また扉を開いても遠いどこかの荒野につながるだけだった。[p]
[cm]
[if exp="f.encounter.values.ending === 'A'"]
    [jump target="*o507EndingA"]
[else]
    [jump target="*o507EndingB"]
[endif]


; ---- o507EndingA ----
*o507EndingA
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンが生活する場所を決めるため、綾瀬がシュンを引き取っていった。昨晩よく眠れた俺はまっすぐ立ったままそれを見送った。ほっと一息ついた、そのときだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「元気そうだな古虫！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おわっ、一十！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
後ろから急に一十が大声で話しかけてきた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「子供を救って嬉しいのは分かるが、それだけで目のクマが消えるとは便利な体質だな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「目のクマ？何だよ、人の目のクマがあるとかないとか、気にする奴じゃなかっただろお前は」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前のはあまりにもひどくて、皆口にしてないだけで気づいてたぞ。それより、気になったことがあるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はいはい、何でございましょう」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうやってあの子から信頼を勝ち得たんだ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「言っただろ？俺が、救われるのも仕事だぞって説得して、あれがO-507の仕業だって推理もして、しばらく待っただけだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「しばらくしか待ってない割にはずいぶん休めたようだな。まるで、夕方から昼過ぎまで18時間くらい寝てたみたいに」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なっ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それを隠そうとして子供に嘘を言わせるとは、見下げ果てた奴だ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「シュンが嘘を言ってるように見えたか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前が露骨すぎたんだよ古虫。シュンがあの部分を言おうとしたとき、お前必死に視線を送ってただろうが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
畜生、全てお見通しってわけか……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="あれが最善だったと開き直る" target1="*o507EndingAChoice0" text2="寝たのは認めるがそんなに長くは寝ていないと嘘をつく" target2="*o507EndingAChoice1"]
[s]


; ---- o507EndingB ----
*o507EndingB
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
シュンが生活する場所を決めるため、綾瀬がシュンを引き取っていった。疲れて体育座りをして、それを見送る俺は、どんな顔をしているのかよく分からなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうして、あんなに泣いてたあの子と同じような顔をしているんですか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
青葉は、俺の顔のことをそう言った。俺の顔がそうなら、青葉の顔は泣いた子供に寄り添う母親や先生の顔だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうしてかって……まぁ、悔いても仕方ないが、もっと上手いやり方があったんじゃないかって」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「シュン君は無事に助け出されたのに？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「考えてもみてくれよ。シュンはまず病院に閉じ込められて、父親や友達を失った。それからボビンのせいで母親を失った。母親代わりの中村先生も失った。3回だ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あんなちびっ子が、たった数か月の間に3回、大切な人を失ったんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それは……古虫さんがそこに来た時点では、どうしようもないことでしたでしょう」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が悔いているのは、シュンに、4回目の離別を経験させようと脅してしまったことだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……？あ、古虫さんが、自分は死んでもいい、なんなら殺してくれって言ってしまったことですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうだ……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あれは、本心からそう言ったんですか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
記憶の中の悲鳴の扉から、目の前のことに意識を戻すと、青葉はいつになく真剣な顔をしていた。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="少なくともあのときは本心だった" target1="*o507EndingBChoice0" text2="本当は必ず生きて帰るつもりだった" target2="*o507EndingBChoice1"]
[s]


; ---- o507EndingA1 ----
*o507EndingA1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああそうだよ。がっつりぐっすり寝たさ。実に気持ち良かった」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でもな一十、戦場も同然の場所でぐうすか寝るのは愚の骨頂だってことは俺も重々承知だがな、あのときあれが最善の行動だったんだよ。あえて無防備を晒す。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
これほど相手に信頼される方法が他にあるなら言ってみやがれ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それであの子が救われたんなら、誰も文句は言わない」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「え、そう？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でも同じ手が二度と通用するとは思うな。警戒を怠るんじゃないぞ。そして、一刻も早く目のクマを戻せ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それはまた睡眠時間を削って治療に当たれという意味ですかね……？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かってるんならやれ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はい……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
思い切り叱られるかと思って内心ビクビクしていたが、代わりに労働を強要された。これなら叱られる方がまだ良かった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
でも、振り返って歩き去る直前、一十はいつになくご機嫌な顔をしていたと思う。[p]
[cm]
[encounterWin materials="2" survivor="水島俊介" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- o507EndingA2 ----
*o507EndingA2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まあ、寝たのは認める。でも流石に18時間も寝たってのは大げさだぞ、一十。本当のところは、寝て数時間くらいの頃に」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もういいっ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「え……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何というか……本当に小心者になったな、古虫」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一十は本当に失望したみたいに呟いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「んな、そこまでガチなトーンで言わないでくれよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いいか古虫、結果的にあの子を救えたのだから、誰も文句は言わない。私もお前を𠮟りに来たわけではないのだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ何のために」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かれそれくらいっ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
一十はぴゅーんと走り去っていった。何だったんだ一体。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
これだから女心って面倒くさいんだ。[p]
[cm]
[encounterWin materials="2" survivor="水島俊介" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- o507EndingB1 ----
*o507EndingB1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少なくともあのときは本心だった。もうほとんど諦めていたんだ。ここから帰れないまま、扉の向こうの人だか死体だかにも会えないまま死ぬんだって」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こじ開けてみようとさえ思わなかったんですか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうせ死ぬなら、いるかいないかも分からない人を、最後まで信じきって死ぬ……。それが素敵かもしれないって思ったんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の言葉を受け止めるのに少し時間がかかったように見えた青葉は、やがて、こわばっていた眉を優しくしてこう言った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私がシュン君でも、あなたのことを信じたと思います」[p]
[cm]
[encounterWin materials="2" survivor="水島俊介" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- o507EndingB2 ----
*o507EndingB2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当は必ず生きて帰るつもりだった。でもあのときはあまりにも気が滅入っていたから、試すつもりで言ったことも大げさになってしまったんだよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本心からそう思っていないとあんな台詞は言えなかったと思いますよ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いいや……俺は俺の、生きることへの執着を信じてる。良くも悪くもな。結局、死にたいなんて思っても数分経てば嘘になる」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の言葉を受け止めるのに少し時間がかかったように見えた青葉は、やがて、口元を少し緩めてこう言った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それでも、たとえちょっと大げさでも、人は人のために命を捨てられるくらいの優しさがあるって思いたいです」[p]
[cm]
[encounterWin materials="2" survivor="水島俊介" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- o507DeathA1 ----
*o507DeathA1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は診察室の扉を背にしてあぐらをかき、久々の楽しい遊びに興じた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そのボビンは見れば見るほど不思議な模様をしていて、スプーンで2,3回くらい混ぜたばかりのようなミルクココアの縞模様が、ゆっくりと流れていた。ずっと見ていても飽きない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし、なぜか俺はそのボビンのことをもう知っているような気がした。探索活動で見つければラッキーな、有名なレアアイテムだったかな？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
うん、知っていた。これは自分の体をほどいて遊べる、不思議なお菓子だったと思う。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
クルクル回すと、糸がほどけていくポイントが俺の手から腕を伝って胸の方へ移っていくのが分かった。俺は器用に服を脱いで上を裸にしたが、寒いとかどうでもいいくらい楽しかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
でも、いつまでこうして遊んでいようかな？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="いつまでも。" target1="*o507DeathA1Choice0" text2="いつまでも。" target2="*o507DeathA1Choice1" text3="いつまでも。" target3="*o507DeathA1Choice2"]
[s]


; ---- o507DeathA2 ----
*o507DeathA2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
今、俺の背骨に差し掛かったところだ。もうすぐ胸と腹が完全に消えるだろう。でも不思議な力で手は動かせるから、糸を巻くには問題ない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ところで、どうしてさっきから後ろの方ですすり泣く声が聞こえるんだろう？泣き声、どんどん大きくなる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おい、お前、悲しいのか？一緒に遊べばいいんじゃないか？甘くておいしいぞ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
声をかけても泣き喚くばかり。だったら仕方ないよな。俺が独り占めしていいってことだよな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
大好きなおやつやおもちゃを独り占め。童心に返ったみたい。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="しあわせ。" target1="*o507DeathA2Choice0" text2="しあわせ。" target2="*o507DeathA2Choice1" text3="しあわせ。" target3="*o507DeathA2Choice2"]
[s]


; ---- o507DeathA3 ----
*o507DeathA3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう何時間経ったか分からない。こんなに熱中できる遊びを見つけたのはいつぶりだろうか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いつしか泣き声は止んで、俺に話しかけてくるようになった。声はやけに辛気臭いけど。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、どれくらい？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ん？あとちょっと巻けば右足の小指が消えるな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「体、どこが残ってる？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「足はもう小指以外ないし、もうあとは腕と手と、首と頭だな。消化試合だ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「全部なくなってもいいの？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おま、お前、そんなこと考えてどーすんだよ。糸を巻く、甘い、楽しい、幸せ。これ以外何があるってんだよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
後ろの少年はまた黙った。子供ならこういうの大好きだと思うんだけどな、これじゃ俺の方が子供みたいじゃないか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一つ聞いてもいい？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何だよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「死んだ後って、どこに行くと思う？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「知らねーな、そんなの。まあ、家族とか、友達とかと一緒ならいいなと思ってるよ。地獄でもいくらか楽しい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ぼく、お母さんに会いたい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お母さんが好きなのか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だいすきだった……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺も会いたいよ……もうずっと会えてないからな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お母さん、いるの？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「５年前に食われて死んださ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は頸椎が糸になっていくのを感じながら、懐かしい思い出と、悲しい思い出に浸った。少年は、まただんだん泣き始めた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ごめんなさい……ごめんなさい……ううっ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「謝んなくていいよ。もう、なんか、どーでもいいんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ぼくとおなじだって……気付いてあげられなくて……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いいよ。俺はお前に会えてうれしかった。また会えたら、今度は二人で遊ぼうな」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="頭をほどいていく。" target1="*o507DeathA3Choice0" text2="頭をほどいていく。" target2="*o507DeathA3Choice1" text3="頭をほどいていく。" target3="*o507DeathA3Choice2"]
[s]


; ---- o507DeathB1 ----
*o507DeathB1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さあ、いいものを見つけたし、ここらで一つ息抜きに遊んでみようか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そのボビンは見れば見るほど不思議な模様をしていて、スプーンで2,3回くらい混ぜたばかりのようなミルクココアの縞模様が、ゆっくりと流れていた。ずっと見ていても飽きない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と、いつの間にかボビンの糸が俺の右の親指に繋がっていた。クルクル回すと、巻き取られていって、ほうほう、だんだんと腕の皮膚を伝って、俺の胸の方へ……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ちょっと服が邪魔になりそうだし、上だけ脱いでしまおう。ボビンを右手でつかんだまま、腕を軍服にくぐらせて、と。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さあ、どこまで巻けるかな？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="いけるところまでいっちゃおう。" target1="*o507DeathB1Choice0" text2="いけるところまでいっちゃおう。" target2="*o507DeathB1Choice1" text3="いけるところまでいっちゃおう。" target3="*o507DeathB1Choice2"]
[s]


; ---- o507DeathB2 ----
*o507DeathB2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は順調に巻いていった。まず腹とか胸の皮が全部糸になっちゃって、でも意外と内臓剥き出しになっても生きていけるんだな、意外だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
人体模型って気持ち悪いもんだけど、実際見てみると俺の心臓とか胃とか頑張って動いててかわいかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
でももう内臓も残ってないや、なんなら背中の骨までいっちゃったし、もう俺、腰より下と肩より上だけ。浮いてる、すげー。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="やめどきがわかんなくなるね。" target1="*o507DeathB2Choice0" text2="やめどきがわかんなくなるね。" target2="*o507DeathB2Choice1" text3="やめどきがわかんなくなるね。" target3="*o507DeathB2Choice2"]
[s]


; ---- o507DeathB3 ----
*o507DeathB3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もう足とか要らないんでズボンもさっき脱いじゃった。でもう足も消えたし、首とかもないから、俺、いま頭と右手と左手だけぷかぷか浮いてる。ボビン、かわいいボビン、きれいなミルクココアのボビン、ずっと見てる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
甘い味がしてる。でも、そろそろ舌が糸になってくばんらしい。さみしいな、あまいあじすきだったのに。てことは、はなとか、みみとか、め？そろそろなくなるのか。たべるとか、はなすとか、できなくなる。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
こわくなってきた。まだいとまけるから、おれいきてるけどね。いきてるから、しゅういちのぶんもまだいきていけ……る？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あれ？生きるって何だったっけ。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="もうわすれちゃった。" target1="*o507DeathB3Choice0" text2="もうわすれちゃった。" target2="*o507DeathB3Choice1" text3="もうわすれちゃった。" target3="*o507DeathB3Choice2"]
[s]


; ---- o507Dead ----
*o507Dead
[encounterClear]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]


; ---- o507IntroMenu ----
*o507IntroMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="俺は、1番診察室に向かった。" target1="*o507IntroMenuChoice0" text2="俺は、まず1番診察室以外を調べることにした。" target2="*o507IntroMenuChoice1"]
[s]


; ---- o507A1Menu ----
*o507A1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="様々な可能性を考えてみる。" target1="*o507A1MenuChoice0" text2="1番診察室に対する行動を選ぶ。" target2="*o507A1MenuChoice1" text3="1番診察室以外を調べに行く。" target3="*o507A1MenuChoice2"]
[s]


; ---- o507A2Menu ----
*o507A2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="この部屋に危険な何かが待ち構えている可能性" target1="*o507A2MenuChoice0" text2="この部屋にいる人が既に死んでしまっている可能性" target2="*o507A2MenuChoice1" text3="この部屋に誰かいるがあえて沈黙している可能性" target3="*o507A2MenuChoice2" text4="この病院に何が起こったのか、推理を試みる" target4="*o507A2MenuChoice3" text5="考えるのを一旦やめる" target5="*o507A2MenuChoice4"]
[s]


; ---- o507A23Menu ----
*o507A23Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="この部屋に隠れているかもしれない人間の立場で考える。" target1="*o507A23MenuChoice0" text2="この部屋に隠れているかもしれない怪異の立場で考える。" target2="*o507A23MenuChoice1" text3="それがこの場所に課された制約なのかもしれない。" target3="*o507A23MenuChoice2" text4="別のことから考え直す。" target4="*o507A23MenuChoice3"]
[s]


; ---- o507A2331Menu ----
*o507A2331Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="もしそうなら、声をかけても無駄なのかもしれないな。" target1="*o507A2331MenuChoice0" text2="考え直せ。根拠のない思いつきに頼るのは危険だ。" target2="*o507A2331MenuChoice1"]
[s]


; ---- o507A2332Menu ----
*o507A2332Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="そんなに黙っていたいんなら、力ずくで開けてやろうか！？" target1="*o507A2332MenuChoice0" text2="まあ、ダメもとで試したんだから、これくらいでムキになるなよ。" target2="*o507A2332MenuChoice1"]
[s]


; ---- o507A3Menu ----
*o507A3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="ここに来てすぐに見た物事を振り返る" target1="*o507A3MenuChoice0" text2="&(f.encounter.values.hasWaitingRoom) ? '待合室を調べて分かったことを振り返る' : 'まだ調べていない場所がある'" target2="*o507A3MenuChoice1" disable2="&!(f.encounter.values.hasWaitingRoom)" text3="&(f.encounter.values.hasLight) ? 'てんとう虫マークの隔離室で見た物事を振り返る' : 'まだ調べていない場所がある'" target3="*o507A3MenuChoice2" disable3="&!(f.encounter.values.hasLight)" text4="&(f.encounter.values.hasBags) ? 'りんごマークの隔離室で見た物事を振り返る' : 'まだ調べていない場所がある'" target4="*o507A3MenuChoice3" disable4="&!(f.encounter.values.hasBags)" text5="&(f.encounter.values.read1 && f.encounter.values.read2 && f.encounter.values.read3 && f.encounter.values.read4) ? '元凶が分かったかもしれない！' : '元凶を突き止めるにはまだ考え足りていない'" target5="*o507A3MenuChoice4" disable5="&!(f.encounter.values.read1 && f.encounter.values.read2 && f.encounter.values.read3 && f.encounter.values.read4)" text6="推理を中断する" target6="*o507A3MenuChoice5"]
[s]


; ---- o507A4Menu ----
*o507A4Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="ガラスを破って中を見る" target1="*o507A4MenuChoice0" text2="出てこいと脅し、挑発する" target2="*o507A4MenuChoice1" text3="&f.encounter.values.hasIntroduced ? '話したいことがある' : '自己紹介をする'" target3="*o507A4MenuChoice2" text4="まだ調べたいことや考えたいことがある" target4="*o507A4MenuChoice3"]
[s]


; ---- o507A5Menu ----
*o507A5Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="ガラスを破って中を見る" target1="*o507A5MenuChoice0" text2="考え直す" target2="*o507A5MenuChoice1"]
[s]


; ---- o507A51Menu ----
*o507A51Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="甘くておいしい。" target1="*o507A51MenuChoice0" text2="甘くておいしい。" target2="*o507A51MenuChoice1" text3="甘くておいしい。" target3="*o507A51MenuChoice2"]
[s]


; ---- o507A6Menu ----
*o507A6Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="出てこいと脅し、挑発する" target1="*o507A6MenuChoice0" text2="考え直す" target2="*o507A6MenuChoice1"]
[s]


; ---- o507A61Menu ----
*o507A61Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="俺の体を糸にするんだ。" target1="*o507A61MenuChoice0" text2="俺の体を糸にするんだ。" target2="*o507A61MenuChoice1" text3="俺の体を糸にするんだ。" target3="*o507A61MenuChoice2"]
[s]


; ---- o507A7Menu ----
*o507A7Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="思いつくままに話を続ける" target1="*o507A7MenuChoice0" text2="&(!f.encounter.values.usedEmpathy) ? ((f.encounter.values.hasEmpathy) ? '相手の心情に理解を示す' : 'まだ相手のことについてじっくり考えられていない') : ''" target2="*o507A7MenuChoice1" disable2="&!(f.encounter.values.hasEmpathy)" text3="&(!f.encounter.values.usedReasoning) ? ((f.encounter.values.hasReasoning) ? 'ここで起こったことを推理して話す' : 'まだここで起こったことについてうまく推理できていない') : ''" target3="*o507A7MenuChoice2" disable3="&!(f.encounter.values.hasReasoning)" text4="考え直す" target4="*o507A7MenuChoice3"]
[s]


; ---- o507Talk4Menu ----
*o507Talk4Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="最後通牒を突き付けて、返事が無ければこじ開ける" target1="*o507Talk4MenuChoice0" text2="何もしない" target2="*o507Talk4MenuChoice1" text3="少し考え直す" target3="*o507Talk4MenuChoice2"]
[s]


; ---- o507EmpathyMenu ----
*o507EmpathyMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="人の助けを拒絶してしまうほど悲観的になっているのかもしれないとして、それも仕方ないとなだめる" target1="*o507EmpathyMenuChoice0" text2="心の病気や精神汚染を治すことのできる用意があると伝える" target2="*o507EmpathyMenuChoice1"]
[s]


; ---- o507Reason1Menu ----
*o507Reason1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="それが大量に現れて、ここに居た人を皆糸にしてしまったのでしょう？" target1="*o507Reason1MenuChoice0" text2="それがいくつか現れて、ここに居た人を次々に糸にしていったのでしょう？" target2="*o507Reason1MenuChoice1"]
[s]


; ---- o507Reason2Menu ----
*o507Reason2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="一番奥のゴミ袋だけ、持った時にコロコロと音がしたんです。" target1="*o507Reason2MenuChoice0" text2="一番奥のゴミ袋だけ、大量のボビンが入っていたんです。" target2="*o507Reason2MenuChoice1"]
[s]


; ---- o507Reason3Menu ----
*o507Reason3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="それをどうしてあんなところにも隠したのかは、分かりませんが……" target1="*o507Reason3MenuChoice0" text2="二度目か、ひょっとすると三度目の出現があそこだったのかもしれません" target2="*o507Reason3MenuChoice1"]
[s]


; ---- o507Reason4Menu ----
*o507Reason4Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="ただ、未来から来た人でないと、これほどすらすらと推理することはできないはずですよ" target1="*o507Reason4MenuChoice0" text2="何せ、未来の知識がなくたって、身近な人が被害に遭えば嫌でも理解できますからね" target2="*o507Reason4MenuChoice1"]
[s]


; ---- o507A8Menu ----
*o507A8Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="あとは待つだけだ。" target1="*o507A8MenuChoice0"]
[s]


; ---- o507A9Menu ----
*o507A9Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="甘くておいしい。" target1="*o507A9MenuChoice0" text2="甘くておいしい。" target2="*o507A9MenuChoice1" text3="甘くておいしい。" target3="*o507A9MenuChoice2"]
[s]


; ---- o507B1Menu ----
*o507B1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="もう1番診察室に行ってしまおうか？" target1="*o507B1MenuChoice0" text2="他の部屋も調べることにした。" target2="*o507B1MenuChoice1"]
[s]


; ---- o507B2Menu ----
*o507B2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="もう1番診察室に行ってしまおうか？" target1="*o507B2MenuChoice0" text2="ばってん印の貼り紙がある隔離室を調べることにした。" target2="*o507B2MenuChoice1" text3="ごみ袋でいっぱいの隔離室を調べることにした。" target3="*o507B2MenuChoice2"]
[s]


; ---- o507B3Menu ----
*o507B3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="もう1番診察室に行ってしまおうか？" target1="*o507B3MenuChoice0" text2="りんごマークの隔離室を調べることにした。" target2="*o507B3MenuChoice1" text3="しかし一か所だけ気になることが……" target3="*o507B3MenuChoice2"]
[s]


; ---- o507B32Menu ----
*o507B32Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="眩しくて目が慣れない。もっとよく見よう。" target1="*o507B32MenuChoice0" text2="ま、ホコリか虫かなんかだろう。" target2="*o507B32MenuChoice1"]
[s]


; ---- o507B33Menu ----
*o507B33Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="迷うな俺。こんなところで重大な何かを見逃しちゃいけない。" target1="*o507B33MenuChoice0" text2="冷静になれ俺。こんなところで目をやられて、急に後ろから襲われたらどうするんだ。" target2="*o507B33MenuChoice1"]
[s]


; ---- o507B34Menu ----
*o507B34Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="糸を巻いて遊ぶ。" target1="*o507B34MenuChoice0" text2="糸を巻いて遊ぶ。" target2="*o507B34MenuChoice1" text3="糸を巻いて遊ぶ。" target3="*o507B34MenuChoice2"]
[s]


; ---- o507B4Menu ----
*o507B4Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="袋をそっと開けて、上から覗き込む。" target1="*o507B4MenuChoice0" text2="いや、袋の中まで見るのは最後の最後と決めたんだ。" target2="*o507B4MenuChoice1"]
[s]


; ---- o507B42Menu ----
*o507B42Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="意を決して袋に手を突っ込む。" target1="*o507B42MenuChoice0" text2="一度冷静になるためにも、この部屋から離れよう。" target2="*o507B42MenuChoice1"]
[s]


; ---- o507B43Menu ----
*o507B43Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="糸を巻いて遊ぶ。" target1="*o507B43MenuChoice0" text2="糸を巻いて遊ぶ。" target2="*o507B43MenuChoice1" text3="糸を巻いて遊ぶ。" target3="*o507B43MenuChoice2"]
[s]


; ---- o507EndingAMenu ----
*o507EndingAMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="あれが最善だったと開き直る" target1="*o507EndingAMenuChoice0" text2="寝たのは認めるがそんなに長くは寝ていないと嘘をつく" target2="*o507EndingAMenuChoice1"]
[s]


; ---- o507EndingBMenu ----
*o507EndingBMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="少なくともあのときは本心だった" target1="*o507EndingBMenuChoice0" text2="本当は必ず生きて帰るつもりだった" target2="*o507EndingBMenuChoice1"]
[s]


; ---- o507DeathA1Menu ----
*o507DeathA1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="いつまでも。" target1="*o507DeathA1MenuChoice0" text2="いつまでも。" target2="*o507DeathA1MenuChoice1" text3="いつまでも。" target3="*o507DeathA1MenuChoice2"]
[s]


; ---- o507DeathA2Menu ----
*o507DeathA2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="しあわせ。" target1="*o507DeathA2MenuChoice0" text2="しあわせ。" target2="*o507DeathA2MenuChoice1" text3="しあわせ。" target3="*o507DeathA2MenuChoice2"]
[s]


; ---- o507DeathA3Menu ----
*o507DeathA3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="頭をほどいていく。" target1="*o507DeathA3MenuChoice0" text2="頭をほどいていく。" target2="*o507DeathA3MenuChoice1" text3="頭をほどいていく。" target3="*o507DeathA3MenuChoice2"]
[s]


; ---- o507DeathB1Menu ----
*o507DeathB1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="いけるところまでいっちゃおう。" target1="*o507DeathB1MenuChoice0" text2="いけるところまでいっちゃおう。" target2="*o507DeathB1MenuChoice1" text3="いけるところまでいっちゃおう。" target3="*o507DeathB1MenuChoice2"]
[s]


; ---- o507DeathB2Menu ----
*o507DeathB2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="やめどきがわかんなくなるね。" target1="*o507DeathB2MenuChoice0" text2="やめどきがわかんなくなるね。" target2="*o507DeathB2MenuChoice1" text3="やめどきがわかんなくなるね。" target3="*o507DeathB2MenuChoice2"]
[s]


; ---- o507DeathB3Menu ----
*o507DeathB3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="もうわすれちゃった。" target1="*o507DeathB3MenuChoice0" text2="もうわすれちゃった。" target2="*o507DeathB3MenuChoice1" text3="もうわすれちゃった。" target3="*o507DeathB3MenuChoice2"]
[s]

; 選択結果の処理（上の選択肢からジャンプする）

; ---- o507IntroChoice0 ----
*o507IntroChoice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507IntroChoice1 ----
*o507IntroChoice1
[encounterClear]
[jump target="*o507B1"]


; ---- o507A1Choice0 ----
*o507A1Choice0
[encounterClear]
[jump target="*o507A2"]


; ---- o507A1Choice1 ----
*o507A1Choice1
[encounterClear]
[jump target="*o507A4"]


; ---- o507A1Choice2 ----
*o507A1Choice2
[encounterClear]
[jump target="*o507B1"]


; ---- o507A2Choice0 ----
*o507A2Choice0
[encounterClear]
[jump target="*o507A21"]


; ---- o507A2Choice1 ----
*o507A2Choice1
[encounterClear]
[jump target="*o507A22"]


; ---- o507A2Choice2 ----
*o507A2Choice2
[encounterClear]
[jump target="*o507A23"]


; ---- o507A2Choice3 ----
*o507A2Choice3
[encounterClear]
[jump target="*o507A3"]


; ---- o507A2Choice4 ----
*o507A2Choice4
[encounterClear]
[jump target="*o507A1Menu"]


; ---- o507A23Choice0 ----
*o507A23Choice0
[encounterClear]
[jump target="*o507A231"]


; ---- o507A23Choice1 ----
*o507A23Choice1
[encounterClear]
[jump target="*o507A232"]


; ---- o507A23Choice2 ----
*o507A23Choice2
[encounterClear]
[jump target="*o507A2331"]


; ---- o507A23Choice3 ----
*o507A23Choice3
[encounterClear]
[jump target="*o507A2Menu"]


; ---- o507A2331Choice0 ----
*o507A2331Choice0
[encounterClear]
[jump target="*o507A2332"]


; ---- o507A2331Choice1 ----
*o507A2331Choice1
[encounterClear]
[jump target="*o507A23Menu"]


; ---- o507A2332Choice0 ----
*o507A2332Choice0
[encounterClear]
[jump target="*o507A1Menu"]


; ---- o507A2332Choice1 ----
*o507A2332Choice1
[encounterClear]
[jump target="*o507A23Menu"]


; ---- o507A3Choice0 ----
*o507A3Choice0
[encounterClear]
[jump target="*o507A31"]


; ---- o507A3Choice1 ----
*o507A3Choice1
[if exp="!(f.encounter.values.hasWaitingRoom)"]
    [jump target="*o507A3"]
[endif]
[encounterClear]
[jump target="*o507A32"]


; ---- o507A3Choice2 ----
*o507A3Choice2
[if exp="!(f.encounter.values.hasLight)"]
    [jump target="*o507A3"]
[endif]
[encounterClear]
[jump target="*o507A33"]


; ---- o507A3Choice3 ----
*o507A3Choice3
[if exp="!(f.encounter.values.hasBags)"]
    [jump target="*o507A3"]
[endif]
[encounterClear]
[jump target="*o507A34"]


; ---- o507A3Choice4 ----
*o507A3Choice4
[if exp="!(f.encounter.values.read1 && f.encounter.values.read2 && f.encounter.values.read3 && f.encounter.values.read4)"]
    [jump target="*o507A3"]
[endif]
[encounterClear]
[jump target="*o507A35"]


; ---- o507A3Choice5 ----
*o507A3Choice5
[encounterClear]
[jump target="*o507A2Menu"]


; ---- o507A4Choice0 ----
*o507A4Choice0
[encounterClear]
[jump target="*o507A5"]


; ---- o507A4Choice1 ----
*o507A4Choice1
[encounterClear]
[jump target="*o507A6"]


; ---- o507A4Choice2 ----
*o507A4Choice2
[encounterClear]
[if exp="f.encounter.values.hasIntroduced"]
    [jump target="*o507A7Menu"]
[else]
    [jump target="*o507A7"]
[endif]


; ---- o507A4Choice3 ----
*o507A4Choice3
[encounterClear]
[jump target="*o507A1Menu"]


; ---- o507A5Choice0 ----
*o507A5Choice0
[encounterClear]
[jump target="*o507A51"]


; ---- o507A5Choice1 ----
*o507A5Choice1
[encounterClear]
[jump target="*o507A4Menu"]


; ---- o507A51Choice0 ----
*o507A51Choice0
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A51Choice1 ----
*o507A51Choice1
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A51Choice2 ----
*o507A51Choice2
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A6Choice0 ----
*o507A6Choice0
[encounterClear]
[jump target="*o507A61"]


; ---- o507A6Choice1 ----
*o507A6Choice1
[encounterClear]
[jump target="*o507A4Menu"]


; ---- o507A61Choice0 ----
*o507A61Choice0
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A61Choice1 ----
*o507A61Choice1
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A61Choice2 ----
*o507A61Choice2
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A7Choice0 ----
*o507A7Choice0
[encounterClear]
[eval exp="f.encounter.values.talkCount = Math.min((f.encounter.values.talkCount || 0) + 1, 4)"]
[if exp="f.encounter.values.talkCount === 1"]
    [jump target="*o507Talk1"]
[endif]
[if exp="f.encounter.values.talkCount === 2"]
    [jump target="*o507Talk2"]
[endif]
[if exp="f.encounter.values.talkCount === 3"]
    [jump target="*o507Talk3"]
[endif]
[jump target="*o507Talk4"]


; ---- o507A7Choice1 ----
*o507A7Choice1
[if exp="!(!f.encounter.values.usedEmpathy)"]
    [jump target="*o507A7"]
[endif]
[if exp="!(f.encounter.values.hasEmpathy)"]
    [jump target="*o507A7"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.usedEmpathy = true"]
[jump target="*o507Empathy"]


; ---- o507A7Choice2 ----
*o507A7Choice2
[if exp="!(!f.encounter.values.usedReasoning)"]
    [jump target="*o507A7"]
[endif]
[if exp="!(f.encounter.values.hasReasoning)"]
    [jump target="*o507A7"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.usedReasoning = true; f.encounter.values.reasonScore = 0"]
[jump target="*o507Reason1"]


; ---- o507A7Choice3 ----
*o507A7Choice3
[encounterClear]
[jump target="*o507A4Menu"]


; ---- o507Talk4Choice0 ----
*o507Talk4Choice0
[encounterClear]
[jump target="*o507A9"]


; ---- o507Talk4Choice1 ----
*o507Talk4Choice1
[encounterClear]
[jump target="*o507A10"]


; ---- o507Talk4Choice2 ----
*o507Talk4Choice2
[encounterClear]
[jump target="*o507A7Menu"]


; ---- o507EmpathyChoice0 ----
*o507EmpathyChoice0
[encounterClear]
[jump target="*o507EmpathyGood"]


; ---- o507EmpathyChoice1 ----
*o507EmpathyChoice1
[encounterClear]
[jump target="*o507EmpathyBad"]


; ---- o507Reason1Choice0 ----
*o507Reason1Choice0
[encounterClear]
[jump target="*o507Reason2"]


; ---- o507Reason1Choice1 ----
*o507Reason1Choice1
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507Reason2"]


; ---- o507Reason2Choice0 ----
*o507Reason2Choice0
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507Reason3"]


; ---- o507Reason2Choice1 ----
*o507Reason2Choice1
[encounterClear]
[jump target="*o507Reason3"]


; ---- o507Reason3Choice0 ----
*o507Reason3Choice0
[encounterClear]
[jump target="*o507Reason4"]


; ---- o507Reason3Choice1 ----
*o507Reason3Choice1
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507Reason4"]


; ---- o507Reason4Choice0 ----
*o507Reason4Choice0
[encounterClear]
[jump target="*o507ReasonEnd"]


; ---- o507Reason4Choice1 ----
*o507Reason4Choice1
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507ReasonEnd"]


; ---- o507A8Choice0 ----
*o507A8Choice0
[encounterClear]
[jump target="*o507A8after"]


; ---- o507A9Choice0 ----
*o507A9Choice0
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A9Choice1 ----
*o507A9Choice1
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A9Choice2 ----
*o507A9Choice2
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507B1Choice0 ----
*o507B1Choice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507B1Choice1 ----
*o507B1Choice1
[encounterClear]
[jump target="*o507B2"]


; ---- o507B2Choice0 ----
*o507B2Choice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507B2Choice1 ----
*o507B2Choice1
[encounterClear]
[jump target="*o507B3"]


; ---- o507B2Choice2 ----
*o507B2Choice2
[encounterClear]
[jump target="*o507B4"]


; ---- o507B3Choice0 ----
*o507B3Choice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507B3Choice1 ----
*o507B3Choice1
[encounterClear]
[jump target="*o507B4"]


; ---- o507B3Choice2 ----
*o507B3Choice2
[encounterClear]
[jump target="*o507B32"]


; ---- o507B32Choice0 ----
*o507B32Choice0
[encounterClear]
[jump target="*o507B33"]


; ---- o507B32Choice1 ----
*o507B32Choice1
[encounterClear]
[jump target="*o507B35"]


; ---- o507B33Choice0 ----
*o507B33Choice0
[encounterClear]
[jump target="*o507B34"]


; ---- o507B33Choice1 ----
*o507B33Choice1
[encounterClear]
[jump target="*o507B35"]


; ---- o507B34Choice0 ----
*o507B34Choice0
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B34Choice1 ----
*o507B34Choice1
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B34Choice2 ----
*o507B34Choice2
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B4Choice0 ----
*o507B4Choice0
[encounterClear]
[jump target="*o507B42"]


; ---- o507B4Choice1 ----
*o507B4Choice1
[encounterClear]
[jump target="*o507B44"]


; ---- o507B42Choice0 ----
*o507B42Choice0
[encounterClear]
[jump target="*o507B43"]


; ---- o507B42Choice1 ----
*o507B42Choice1
[encounterClear]
[jump target="*o507B44"]


; ---- o507B43Choice0 ----
*o507B43Choice0
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B43Choice1 ----
*o507B43Choice1
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B43Choice2 ----
*o507B43Choice2
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507EndingAChoice0 ----
*o507EndingAChoice0
[encounterClear]
[jump target="*o507EndingA1"]


; ---- o507EndingAChoice1 ----
*o507EndingAChoice1
[encounterClear]
[jump target="*o507EndingA2"]


; ---- o507EndingBChoice0 ----
*o507EndingBChoice0
[encounterClear]
[jump target="*o507EndingB1"]


; ---- o507EndingBChoice1 ----
*o507EndingBChoice1
[encounterClear]
[jump target="*o507EndingB2"]


; ---- o507DeathA1Choice0 ----
*o507DeathA1Choice0
[encounterClear]
[jump target="*o507DeathA2"]


; ---- o507DeathA1Choice1 ----
*o507DeathA1Choice1
[encounterClear]
[jump target="*o507DeathA2"]


; ---- o507DeathA1Choice2 ----
*o507DeathA1Choice2
[encounterClear]
[jump target="*o507DeathA2"]


; ---- o507DeathA2Choice0 ----
*o507DeathA2Choice0
[encounterClear]
[jump target="*o507DeathA3"]


; ---- o507DeathA2Choice1 ----
*o507DeathA2Choice1
[encounterClear]
[jump target="*o507DeathA3"]


; ---- o507DeathA2Choice2 ----
*o507DeathA2Choice2
[encounterClear]
[jump target="*o507DeathA3"]


; ---- o507DeathA3Choice0 ----
*o507DeathA3Choice0
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathA3Choice1 ----
*o507DeathA3Choice1
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathA3Choice2 ----
*o507DeathA3Choice2
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathB1Choice0 ----
*o507DeathB1Choice0
[encounterClear]
[jump target="*o507DeathB2"]


; ---- o507DeathB1Choice1 ----
*o507DeathB1Choice1
[encounterClear]
[jump target="*o507DeathB2"]


; ---- o507DeathB1Choice2 ----
*o507DeathB1Choice2
[encounterClear]
[jump target="*o507DeathB2"]


; ---- o507DeathB2Choice0 ----
*o507DeathB2Choice0
[encounterClear]
[jump target="*o507DeathB3"]


; ---- o507DeathB2Choice1 ----
*o507DeathB2Choice1
[encounterClear]
[jump target="*o507DeathB3"]


; ---- o507DeathB2Choice2 ----
*o507DeathB2Choice2
[encounterClear]
[jump target="*o507DeathB3"]


; ---- o507DeathB3Choice0 ----
*o507DeathB3Choice0
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathB3Choice1 ----
*o507DeathB3Choice1
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathB3Choice2 ----
*o507DeathB3Choice2
[encounterClear]
[jump target="*o507Dead"]


; ---- o507IntroMenuChoice0 ----
*o507IntroMenuChoice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507IntroMenuChoice1 ----
*o507IntroMenuChoice1
[encounterClear]
[jump target="*o507B1"]


; ---- o507A1MenuChoice0 ----
*o507A1MenuChoice0
[encounterClear]
[jump target="*o507A2"]


; ---- o507A1MenuChoice1 ----
*o507A1MenuChoice1
[encounterClear]
[jump target="*o507A4"]


; ---- o507A1MenuChoice2 ----
*o507A1MenuChoice2
[encounterClear]
[jump target="*o507B1"]


; ---- o507A2MenuChoice0 ----
*o507A2MenuChoice0
[encounterClear]
[jump target="*o507A21"]


; ---- o507A2MenuChoice1 ----
*o507A2MenuChoice1
[encounterClear]
[jump target="*o507A22"]


; ---- o507A2MenuChoice2 ----
*o507A2MenuChoice2
[encounterClear]
[jump target="*o507A23"]


; ---- o507A2MenuChoice3 ----
*o507A2MenuChoice3
[encounterClear]
[jump target="*o507A3"]


; ---- o507A2MenuChoice4 ----
*o507A2MenuChoice4
[encounterClear]
[jump target="*o507A1Menu"]


; ---- o507A23MenuChoice0 ----
*o507A23MenuChoice0
[encounterClear]
[jump target="*o507A231"]


; ---- o507A23MenuChoice1 ----
*o507A23MenuChoice1
[encounterClear]
[jump target="*o507A232"]


; ---- o507A23MenuChoice2 ----
*o507A23MenuChoice2
[encounterClear]
[jump target="*o507A2331"]


; ---- o507A23MenuChoice3 ----
*o507A23MenuChoice3
[encounterClear]
[jump target="*o507A2Menu"]


; ---- o507A2331MenuChoice0 ----
*o507A2331MenuChoice0
[encounterClear]
[jump target="*o507A2332"]


; ---- o507A2331MenuChoice1 ----
*o507A2331MenuChoice1
[encounterClear]
[jump target="*o507A23Menu"]


; ---- o507A2332MenuChoice0 ----
*o507A2332MenuChoice0
[encounterClear]
[jump target="*o507A1Menu"]


; ---- o507A2332MenuChoice1 ----
*o507A2332MenuChoice1
[encounterClear]
[jump target="*o507A23Menu"]


; ---- o507A3MenuChoice0 ----
*o507A3MenuChoice0
[encounterClear]
[jump target="*o507A31"]


; ---- o507A3MenuChoice1 ----
*o507A3MenuChoice1
[if exp="!(f.encounter.values.hasWaitingRoom)"]
    [jump target="*o507A3Menu"]
[endif]
[encounterClear]
[jump target="*o507A32"]


; ---- o507A3MenuChoice2 ----
*o507A3MenuChoice2
[if exp="!(f.encounter.values.hasLight)"]
    [jump target="*o507A3Menu"]
[endif]
[encounterClear]
[jump target="*o507A33"]


; ---- o507A3MenuChoice3 ----
*o507A3MenuChoice3
[if exp="!(f.encounter.values.hasBags)"]
    [jump target="*o507A3Menu"]
[endif]
[encounterClear]
[jump target="*o507A34"]


; ---- o507A3MenuChoice4 ----
*o507A3MenuChoice4
[if exp="!(f.encounter.values.read1 && f.encounter.values.read2 && f.encounter.values.read3 && f.encounter.values.read4)"]
    [jump target="*o507A3Menu"]
[endif]
[encounterClear]
[jump target="*o507A35"]


; ---- o507A3MenuChoice5 ----
*o507A3MenuChoice5
[encounterClear]
[jump target="*o507A2Menu"]


; ---- o507A4MenuChoice0 ----
*o507A4MenuChoice0
[encounterClear]
[jump target="*o507A5"]


; ---- o507A4MenuChoice1 ----
*o507A4MenuChoice1
[encounterClear]
[jump target="*o507A6"]


; ---- o507A4MenuChoice2 ----
*o507A4MenuChoice2
[encounterClear]
[if exp="f.encounter.values.hasIntroduced"]
    [jump target="*o507A7Menu"]
[else]
    [jump target="*o507A7"]
[endif]


; ---- o507A4MenuChoice3 ----
*o507A4MenuChoice3
[encounterClear]
[jump target="*o507A1Menu"]


; ---- o507A5MenuChoice0 ----
*o507A5MenuChoice0
[encounterClear]
[jump target="*o507A51"]


; ---- o507A5MenuChoice1 ----
*o507A5MenuChoice1
[encounterClear]
[jump target="*o507A4Menu"]


; ---- o507A51MenuChoice0 ----
*o507A51MenuChoice0
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A51MenuChoice1 ----
*o507A51MenuChoice1
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A51MenuChoice2 ----
*o507A51MenuChoice2
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A6MenuChoice0 ----
*o507A6MenuChoice0
[encounterClear]
[jump target="*o507A61"]


; ---- o507A6MenuChoice1 ----
*o507A6MenuChoice1
[encounterClear]
[jump target="*o507A4Menu"]


; ---- o507A61MenuChoice0 ----
*o507A61MenuChoice0
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A61MenuChoice1 ----
*o507A61MenuChoice1
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A61MenuChoice2 ----
*o507A61MenuChoice2
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A7MenuChoice0 ----
*o507A7MenuChoice0
[encounterClear]
[eval exp="f.encounter.values.talkCount = Math.min((f.encounter.values.talkCount || 0) + 1, 4)"]
[if exp="f.encounter.values.talkCount === 1"]
    [jump target="*o507Talk1"]
[endif]
[if exp="f.encounter.values.talkCount === 2"]
    [jump target="*o507Talk2"]
[endif]
[if exp="f.encounter.values.talkCount === 3"]
    [jump target="*o507Talk3"]
[endif]
[jump target="*o507Talk4"]


; ---- o507A7MenuChoice1 ----
*o507A7MenuChoice1
[if exp="!(!f.encounter.values.usedEmpathy)"]
    [jump target="*o507A7Menu"]
[endif]
[if exp="!(f.encounter.values.hasEmpathy)"]
    [jump target="*o507A7Menu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.usedEmpathy = true"]
[jump target="*o507Empathy"]


; ---- o507A7MenuChoice2 ----
*o507A7MenuChoice2
[if exp="!(!f.encounter.values.usedReasoning)"]
    [jump target="*o507A7Menu"]
[endif]
[if exp="!(f.encounter.values.hasReasoning)"]
    [jump target="*o507A7Menu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.usedReasoning = true; f.encounter.values.reasonScore = 0"]
[jump target="*o507Reason1"]


; ---- o507A7MenuChoice3 ----
*o507A7MenuChoice3
[encounterClear]
[jump target="*o507A4Menu"]


; ---- o507Talk4MenuChoice0 ----
*o507Talk4MenuChoice0
[encounterClear]
[jump target="*o507A9"]


; ---- o507Talk4MenuChoice1 ----
*o507Talk4MenuChoice1
[encounterClear]
[jump target="*o507A10"]


; ---- o507Talk4MenuChoice2 ----
*o507Talk4MenuChoice2
[encounterClear]
[jump target="*o507A7Menu"]


; ---- o507EmpathyMenuChoice0 ----
*o507EmpathyMenuChoice0
[encounterClear]
[jump target="*o507EmpathyGood"]


; ---- o507EmpathyMenuChoice1 ----
*o507EmpathyMenuChoice1
[encounterClear]
[jump target="*o507EmpathyBad"]


; ---- o507Reason1MenuChoice0 ----
*o507Reason1MenuChoice0
[encounterClear]
[jump target="*o507Reason2"]


; ---- o507Reason1MenuChoice1 ----
*o507Reason1MenuChoice1
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507Reason2"]


; ---- o507Reason2MenuChoice0 ----
*o507Reason2MenuChoice0
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507Reason3"]


; ---- o507Reason2MenuChoice1 ----
*o507Reason2MenuChoice1
[encounterClear]
[jump target="*o507Reason3"]


; ---- o507Reason3MenuChoice0 ----
*o507Reason3MenuChoice0
[encounterClear]
[jump target="*o507Reason4"]


; ---- o507Reason3MenuChoice1 ----
*o507Reason3MenuChoice1
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507Reason4"]


; ---- o507Reason4MenuChoice0 ----
*o507Reason4MenuChoice0
[encounterClear]
[jump target="*o507ReasonEnd"]


; ---- o507Reason4MenuChoice1 ----
*o507Reason4MenuChoice1
[encounterClear]
[eval exp="f.encounter.values.reasonScore += 1"]
[jump target="*o507ReasonEnd"]


; ---- o507A8MenuChoice0 ----
*o507A8MenuChoice0
[encounterClear]
[jump target="*o507A8after"]


; ---- o507A9MenuChoice0 ----
*o507A9MenuChoice0
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A9MenuChoice1 ----
*o507A9MenuChoice1
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507A9MenuChoice2 ----
*o507A9MenuChoice2
[encounterClear]
[jump target="*o507DeathA1"]


; ---- o507B1MenuChoice0 ----
*o507B1MenuChoice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507B1MenuChoice1 ----
*o507B1MenuChoice1
[encounterClear]
[jump target="*o507B2"]


; ---- o507B2MenuChoice0 ----
*o507B2MenuChoice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507B2MenuChoice1 ----
*o507B2MenuChoice1
[encounterClear]
[jump target="*o507B3"]


; ---- o507B2MenuChoice2 ----
*o507B2MenuChoice2
[encounterClear]
[jump target="*o507B4"]


; ---- o507B3MenuChoice0 ----
*o507B3MenuChoice0
[encounterClear]
[jump target="*o507A1"]


; ---- o507B3MenuChoice1 ----
*o507B3MenuChoice1
[encounterClear]
[jump target="*o507B4"]


; ---- o507B3MenuChoice2 ----
*o507B3MenuChoice2
[encounterClear]
[jump target="*o507B32"]


; ---- o507B32MenuChoice0 ----
*o507B32MenuChoice0
[encounterClear]
[jump target="*o507B33"]


; ---- o507B32MenuChoice1 ----
*o507B32MenuChoice1
[encounterClear]
[jump target="*o507B35"]


; ---- o507B33MenuChoice0 ----
*o507B33MenuChoice0
[encounterClear]
[jump target="*o507B34"]


; ---- o507B33MenuChoice1 ----
*o507B33MenuChoice1
[encounterClear]
[jump target="*o507B35"]


; ---- o507B34MenuChoice0 ----
*o507B34MenuChoice0
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B34MenuChoice1 ----
*o507B34MenuChoice1
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B34MenuChoice2 ----
*o507B34MenuChoice2
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B4MenuChoice0 ----
*o507B4MenuChoice0
[encounterClear]
[jump target="*o507B42"]


; ---- o507B4MenuChoice1 ----
*o507B4MenuChoice1
[encounterClear]
[jump target="*o507B44"]


; ---- o507B42MenuChoice0 ----
*o507B42MenuChoice0
[encounterClear]
[jump target="*o507B43"]


; ---- o507B42MenuChoice1 ----
*o507B42MenuChoice1
[encounterClear]
[jump target="*o507B44"]


; ---- o507B43MenuChoice0 ----
*o507B43MenuChoice0
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B43MenuChoice1 ----
*o507B43MenuChoice1
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507B43MenuChoice2 ----
*o507B43MenuChoice2
[encounterClear]
[jump target="*o507DeathB1"]


; ---- o507EndingAMenuChoice0 ----
*o507EndingAMenuChoice0
[encounterClear]
[jump target="*o507EndingA1"]


; ---- o507EndingAMenuChoice1 ----
*o507EndingAMenuChoice1
[encounterClear]
[jump target="*o507EndingA2"]


; ---- o507EndingBMenuChoice0 ----
*o507EndingBMenuChoice0
[encounterClear]
[jump target="*o507EndingB1"]


; ---- o507EndingBMenuChoice1 ----
*o507EndingBMenuChoice1
[encounterClear]
[jump target="*o507EndingB2"]


; ---- o507DeathA1MenuChoice0 ----
*o507DeathA1MenuChoice0
[encounterClear]
[jump target="*o507DeathA2"]


; ---- o507DeathA1MenuChoice1 ----
*o507DeathA1MenuChoice1
[encounterClear]
[jump target="*o507DeathA2"]


; ---- o507DeathA1MenuChoice2 ----
*o507DeathA1MenuChoice2
[encounterClear]
[jump target="*o507DeathA2"]


; ---- o507DeathA2MenuChoice0 ----
*o507DeathA2MenuChoice0
[encounterClear]
[jump target="*o507DeathA3"]


; ---- o507DeathA2MenuChoice1 ----
*o507DeathA2MenuChoice1
[encounterClear]
[jump target="*o507DeathA3"]


; ---- o507DeathA2MenuChoice2 ----
*o507DeathA2MenuChoice2
[encounterClear]
[jump target="*o507DeathA3"]


; ---- o507DeathA3MenuChoice0 ----
*o507DeathA3MenuChoice0
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathA3MenuChoice1 ----
*o507DeathA3MenuChoice1
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathA3MenuChoice2 ----
*o507DeathA3MenuChoice2
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathB1MenuChoice0 ----
*o507DeathB1MenuChoice0
[encounterClear]
[jump target="*o507DeathB2"]


; ---- o507DeathB1MenuChoice1 ----
*o507DeathB1MenuChoice1
[encounterClear]
[jump target="*o507DeathB2"]


; ---- o507DeathB1MenuChoice2 ----
*o507DeathB1MenuChoice2
[encounterClear]
[jump target="*o507DeathB2"]


; ---- o507DeathB2MenuChoice0 ----
*o507DeathB2MenuChoice0
[encounterClear]
[jump target="*o507DeathB3"]


; ---- o507DeathB2MenuChoice1 ----
*o507DeathB2MenuChoice1
[encounterClear]
[jump target="*o507DeathB3"]


; ---- o507DeathB2MenuChoice2 ----
*o507DeathB2MenuChoice2
[encounterClear]
[jump target="*o507DeathB3"]


; ---- o507DeathB3MenuChoice0 ----
*o507DeathB3MenuChoice0
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathB3MenuChoice1 ----
*o507DeathB3MenuChoice1
[encounterClear]
[jump target="*o507Dead"]


; ---- o507DeathB3MenuChoice2 ----
*o507DeathB3MenuChoice2
[encounterClear]
[jump target="*o507Dead"]

; 選択肢ページの移動では場面の処理や能力判定を実行し直さない。

; ---- o507EncounterChoicesNext ----
*o507EncounterChoicesNext
[eval exp="f.choiceContext.page += 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]


; ---- o507EncounterChoicesPrevious ----
*o507EncounterChoicesPrevious
[eval exp="f.choiceContext.page -= 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]

; ---- c810Start ----
*c810Start
[encounterInit code="C-810"]
[jump target="*c810Intro"]


; ---- c810Intro ----
*c810Intro
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は妙にじめじめした地下施設を歩いていた。たぶん、放棄された地下シェルターか何かだろう、人が生活していたと思わしき形跡がちらほら見つかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
電気系統も生きているようで、本当に最低限だけ天井灯がついている。それでも暗くて見通せないので、懐中電灯を左右に振りながら歩いていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
暗くて狭いこと以外に、危険を予感させる要素はないように思えたのだが……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は何の変哲もない曲がり角を曲がって、懐中電灯を前に向けた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
すると、男が何か武器のようなものを構えて立っていた！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は慌ててブレードを構え、相対する。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前は誰だ！？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「わ、私は、木下徹（きのしたとおる）です！綴りはただの木の下に、徹底抗戦の徹です。階級など今はありませぬ。ただの、予備役のじじいであります」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
少し腰が引けていたが、彼は落ち着いてそう答えた。よく見ると、構えていたのは俺の持っているようなブレードではなく、十年くらい前まで軍で使われていた小銃だった。軍服も旧式。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
頭髪前線の後退著しい、どこにでもいそうなじいさんの顔だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……俺は古虫紀一。第03基地第106小隊の、不幸な衛生兵さ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ひゃくろく？今、106小隊と言いましたかな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうだが？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなに多いはずがありませぬ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あー、昔は小隊が少なくて、一つ一つの小隊規模が大きかったんだっけな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私は今のことを話しているのです！誤魔化すんでない！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まあ待てよじいさん、ただのジェネレーション・ギャップだよ。多分俺たち、時代が違うんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なにを、訳の分からないことを！撃ちますぞ！」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="殴ってでも落ち着かせてやる！" target1="*c810IntroChoice0" text2="まあ待て、身分証を見てくれよ" target2="*c810IntroChoice1"]
[s]


; ---- c810Meeting ----
*c810Meeting
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待てってば。ちょっと、俺の身分証を見てくれよ。今そっちの足元に、するーって投げるから」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
変に緊張してもいいことはない。あえてフランクな話し方をしながら俺は身分証を取り出し、床を滑らせるようにして彼の方へ投げた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
彼は、俺から視線を外すのを嫌がりながらも、ちらり、ちらりと足元を見て、そのうち観念して視線をすっかり下ろし、足でつついて身分証の向きを直して、不可解そうに眺めるのだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はて、いくら騙し下手なバケモノでも、未来に作られた身分証を人に見せますかな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「未来から来た人が未来の身分証を見せることはありますよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はぁ。もう私もボケたのですか。タイムスリップの夢を見ております」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「夢だと思うんなら、夢だと思って俺の話を聞いてくれ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
お互いのことを正直に話し合い、本物の人間同士だと確信した俺たちは、この地下シェルターに残された問題について議論を始めた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう一度聞くが、木下さんの姪っ子がその、向こうの部屋にいるんだな？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はい……ですが……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どう見ても様子が変だと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あの、一番下へ行く階段はもう見てきましたかな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ、あの、なぜか水浸しで底も見えなくなってた」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春菜（はるな）ちゃんは、あそこで溺れて息絶えたはずだったのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どういうことですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……忘れもしない、2518年4月14日の悪夢でありました」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「て、手短に頼むよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「結果だけお伝えしますと、あの階段より下にいた人たちはみな、突然湧き出した大量の水にとらわれ、溺れ死んでしまったのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なぜ大量の水が？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それは、誰にも分かりませぬ。今私たちがいるところの、腰まで浸る高さまでそれはもうどばどばと流れてきて、ああ、あのときは、もう……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あのときは？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……いえ、じじいの涙など、若者に見せるものではありませぬ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ……話したいことだけ話せばいいんですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「とにかく、そのために使い物にならなくなったこの地下壕は放棄され、生き残った皆さんは、別の避難所へ。私は、ここに残って調査を手伝いながら、春奈ちゃんを探すことにしました」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だめになったシェルターに、本部から調査員が派遣されることもあるんだったな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はい……潜水服を来た特殊部隊が、階下で手掛かりを探しましたが、見つかったご遺体よりも、見つからなかったご遺体の方がずっと多かったのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「遺体が消えた？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、摂理を越えたことが起こったのは間違いありませぬ。水道管の破裂でも、地盤の崩壊でもなく、ただそこに、突然水が現れ、人を消し去ったとしか思えない状況だったそうです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ううむ……で、じゃあなんで姪っ子の春奈ちゃんは例の部屋にいるんだ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一か月ほど前から、なぜかあの場所にいるのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「消えたはずなのに？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……では、あそこまでお連れしましょう。遠くから覗き見るぶんには、安全だと分かっております」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ついでに医療物資を拾い集めながら木下さんについていくと、かつて寝室だったと思わしき一室の扉の前にたどり着いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
錆びた蝶番を、ギイイとゆっくり鳴らしながら、扉を開けて覗き込む。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
かび臭い空気の立ち込めた部屋には、薄汚れたベッドがたくさん。そのうち一台を、懐中電灯でピカッと照らした。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あれが……？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうです。春奈ちゃんにそっくりなのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……何となく、近づいたらいけない気がするのは俺にも分かります」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
気の抜けた絵がプリントされたTシャツを着た、ショートカットの女の子がベッドの上でゆるい体育座りをしていた。変なところがあるとすれば、まったくの無表情で、ただ黙ってこっちを見つめていること。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
適度に瞬きしているのもかえって不気味だ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これだけか？春奈ちゃんが俺らにしてくることって、見てくるだけか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「食べません、動きません、寝ません、喋りません。一か月前からずっとです。それに、私が動くと、首を回して目で追います」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「目で追う？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は試しに、開けた扉の後ろからそろりそろりとカニ歩きをして、木下さんの反対側まで来て、また戻った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その間、春奈ちゃんはまるで監視カメラのように、俺を常に真っ正面に捉えるように首を回して、ただ見つめていたのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こ……こわ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「希望ある未来から来た若者が、これしきで弱音を吐いてどうするのですか！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ばか、怖がれるときに怖がっておくんだよ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈ちゃんに何が起こったのか、そもそもあれは春奈ちゃんなのか、分かりますか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かんないな……多分、もう……その、人間ではなくなっていると思うが。飲まず食わずでずっとああしてるんだから」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もとのように、治せませんか……？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「木下さんが春奈ちゃんの叔父でもなければ、無理だと即答しているところだな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私は、叔父ですが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それでも無理だと言わざるを得ないな。すまない。もうあれはALTまでいっている」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おると？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「要するに、もはや人間とは見なされない、人間に戻る見込みはない者に付けられる無慈悲な記号だよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なぜそこまで言い切れるのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺個人の経験でも、全世界で共有された知識でも、人間が、人間でない性質を獲得したら、元に戻ることは絶対にないからだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「”正常な遺体”に戻すことなら、できる場合もあるが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……ならば、出来る限りのことは尽くしましょう」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
[cm]
[jump target="*c810ReasonIntro"]


; ---- c810ReasonIntro ----
*c810ReasonIntro
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
もちろん、無策でアレに突っ込むのは無謀だ。できれば怪異名を特定して一番いい対処法を知りたいところだが、それが無理でも、せめてアレの性質について最低限分かることはないだろうか？[p]
[cm]
[if exp="f.encounter.values.asked1 && f.encounter.values.asked2 && f.encounter.values.asked3"]
    [jump target="*c810Decision"]
[endif]
[ui_showChoices layout="encounter" fontSize="38" text1="&(!f.encounter.values.asked1) ? ('木下さんはなぜまだここにいるのか？') : ''" target1="*c810ReasonIntroChoice0" text2="&(!f.encounter.values.asked2) ? ('階下の洪水と関係あると思うか？') : ''" target2="*c810ReasonIntroChoice1" text3="&(!f.encounter.values.asked3) ? ('階下の洪水から逃げ延びた人はなんて言ってた？') : ''" target3="*c810ReasonIntroChoice2"]
[s]


; ---- c810Question1 ----
*c810Question1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ところで、事故調査も分からずじまいで、皆ここから出ていったはずだろ？なんで木下さんはまだここにいるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それが……他にもう、行くあてもなくてですね」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「使える避難所はないのか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「無いわけではありませぬ。ただ、収容人数はどこもとっくに限界を越えております。もう、守りたい人も守る力もない老人が、女子供を押しのけて行くのも忍びない」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だからって水浸しの廃墟に残るかい？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この上の階なら、かび臭いですがまだ辛うじて暮らせました。水も地道に排水して、ここまで減らしました」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこまでしてなぜ……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「棄てられた地下壕にも、仕事はあります。新たな怪異の巣窟になるかもしれないでしょう。私が残って、毎日の生存報告を電信するのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いわゆる、”シェルターの墓守”を引き受けたってわけか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そういうことです……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
人類が怪異に反撃する術を持たず、侵略されていたこの時代ではよくあった話だ。放棄されたシェルターをいつか奪還する日が来たとしても、そこが悪魔の巣にでもなっていれば、何の情報も知らずに踏み入った兵士がバタ[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
バタ死ぬかもしれない。だから誰かがそこに残って監視し、地上への扉を頑強に閉じておく。何かあれば、情報を持ち帰って逃げ出す。逃げられないなら、最期の通信をして殉死する。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺なら絶対引き受けたくない役回りだが。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それに、まだ春奈ちゃんのことを諦めきれませんでした。もう他に、親戚も家族もいないのです。それはあの子にとっても同じこと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「消えたはずなのに？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「消えたら、現れるかもしれないでしょう。いつかひょっこり顔を出して、”じいじ、久しぶり”って」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「木下さん、そりゃ、死に際に見る夢だよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私にはもうそれしか夢がなかったのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……で、今外の方はどうなってるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「通信は途絶、タナトリウム計測器も壊れ、一歩も外に出られませぬ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「最後に外へ出たのはいつだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「確か……春奈ちゃんがここに現れるより、一週間前だったでしょうか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どんな様子だった」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「通信が途絶えたので、電波塔を見に行ったのですが、まるで巨人に殴られたようにひしゃげていました。防護服もすぐボロボロになって、タナトリウムのつんざく匂いがしてきましたので、命からがら、逃げ帰ったのです[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
。それっきりですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もちろん、その間シェルターの入り口はしっかり閉じていたんだよな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「バケモノどもに見つからないように、巧妙に偽装してあります。帰ってから隅々まで見回りましたが、何も侵入していなかったと思います」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うーん……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ずっとこっちを見てくる不気味な春奈ちゃんに、俺は懐中電灯を当て続ける。よく見ると、髪や瞳に光沢が生じている。光を反射するのなら、幻や幽霊の類である可能性は低いな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さて、ここまでで分かったことは……[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんはタナトリウム汚染が進んでからここに現れたから、タナトリウムと関係している可能性が高い。" target1="*c810Question1Choice0" text2="春奈ちゃんはどこかから侵入したとは考えにくい。だから、突然転移してきた可能性が高い。" target2="*c810Question1Choice1" text3="勘違いして進めたくないので判断を避ける" target3="*c810Question1Choice2"]
[s]


; ---- c810Question2 ----
*c810Question2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈ちゃんがここに現れたのは、あの洪水と関係あると思いますか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……？どういう意味の質問ですかな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや、だから、あの洪水を引き起こした超常現象と、消えたはずの春奈ちゃんがここにいるのと、関係ありますかって」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「関係あるかって、えぇ…？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「んーっ。つまり、例えば怪異要覧だったら同じ項目、同じ番号の中で一緒に説明されてるような、一続きの超常現象だと思うかって聞いてるんですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あぁ、そういうことですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まったく分かりませぬ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうですか！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君は十年後から来たから、怪異のこともよく分かっているでしょうが、私の時代ではせいぜい、きちんと調べられた怪異は50や100種類ほどですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が習った怪異要覧は2000番台まであったけどな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなに」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「多すぎるから結局覚えられないんだが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はは……困ったものですな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だからヒントがたくさんないと思い出せないんだよ。何でもいいから思いつくこと教えてくれよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうですな……私も一人でいろいろと考えておりました。あの子の正体は何か、なぜ消えて、また現れたのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どういう筋書きならあり得そうか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「洪水のどさくさに紛れてバケモノに誘拐され、あんな風に放り捨てられてしまったとか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「他には」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「洪水は関係なく、ただ、愛おしい故人に化けて出る魔物だとか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ何かないか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それくらいしか思いつきませぬ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「与太話でもいいから、ヒントになれば何でもいいからさ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「溺れて亡くなられた方々の無念が、春奈ちゃんの形になったものかと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「怪異は死人の気持ちなんてまったく配慮してくれないと思うが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「しかし、どれが正しいか、正しいものがあるかなんて、分かりませんよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや、経験則を当てはめればいい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「経験則とな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「怪異が人間を襲う意図。わざわざ異世界からコンニチワしてきやがった目的。そういうのの研究も、盛んにされてきたが、だいたい皆口をそろえてこう言うんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうも人間のことを、搾取すべき資源として見ている奴が多いと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ならば、あれは何なのです？」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="洪水にさらわれた人間を材料にした罠" target1="*c810Question2Choice0" text2="愛おしい故人に化けた魔物" target2="*c810Question2Choice1" text3="溺死した人々の無念が実体化したもの" target3="*c810Question2Choice2"]
[s]


; ---- c810Question3 ----
*c810Question3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「下の階で洪水が起こったとき、逃げ延びた人はいるのか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ええ、この階に居た皆さんは無事でしたけど」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうじゃなくて、下の階にいたけど、洪水を目撃して、この階まで逃げてきたっていう人だよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ……一人だけいました」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その時のことをなんて言ってたんだ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「洪水が起こる前、おかしなことは無かったかと聞きますと、何か……ヒステリー？のようなものを起こした女性が、いたんだと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ、詳しく」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さあ、何が何やらで、その方が言うには、突然めちゃくちゃな早口で訳の分からないことを喋っているのが聞こえて、部屋の奥に目をやると、女性がそれを言っていて、皆ぎょっとしていたんだと。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
その直後、ざぱーん、どばばばばーっ。幸い扉のすぐ近くにいたのでとにかく逃げに逃げて、でも追いつかれて、鼻と口を閉じて耐えていたら、ここに流れ着いたんだと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、何だったんだその早口って」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さあ……地震の前にナマズが暴れるようなものですかな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古代の迷信を持ち出すんじゃなくてさ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いえ、まったく分からないのです。その女性が誰だったのかも、何を喋っていたのかも」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「誰だったのかも分からないのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何せ、大人数が暮らしていたもので、しかも目撃者は彼だけでしたから……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どう考えても、洪水と無関係じゃなさそうだよな。それに普通の人間が突然めちゃくちゃな早口で喋りだすことがあるか？」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="その目撃者が噓を言っていて、彼が洪水を引き起こして自分だけ生き残ったという可能性を心に留める" target1="*c810Question3Choice0" text2="その女性が洪水を予感して何か必死に伝えようとしていた可能性を心に留める" target2="*c810Question3Choice1" text3="その女性は異常な人間で、洪水を引き起こした原因である可能性を心に留める" target3="*c810Question3Choice2"]
[s]


; ---- c810Decision ----
*c810Decision
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「えっと……古池さんでしたか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫だよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫さん、そろそろ何か分かりましたか？」[p]
[cm]
[if exp="f.encounter.values.score + f.kno >= 10"]
    [jump target="*c810Best"]
[else]
    [if exp="f.encounter.values.score + f.kno >= 5"]
        [jump target="*c810Middle"]
    [else]
        [jump target="*c810Mistaken"]
    [endif]
[endif]


; ---- c810Best ----
*c810Best
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「倫理規定だ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「りん……何ですと？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まったく倫理的じゃないが、倫理規定という名前の怪異がいるんだ。番号は忘れたが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それで間違いないのですね？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いろいろ迷うこともあったが、この状況にぴったり当てはまるのは倫理規定だけだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「で、では、春奈ちゃんは……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「確実に”正常な遺体”に戻せる」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは、少しの間ぽかんとして、そして深くうなだれた。それでも、覚悟を決めてくれたようだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……いえ、それが一番です。どうやって戻すのですか。私にできることはありますか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや、木下さんは、万が一のことがあったら一目散に上の階へ逃げてくれ。先に逃げていてもいい。俺が一人でやるから」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いえ、私にも何か手伝わせてください。それだけのために、ずっとここで耐えていたのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ううん……この注射を、首筋に刺すだけなんだ。一人でできるし、一人でしかやれない。木下さんは見届けるだけでいい」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かりました。信じていますよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は軍服に仕込んでいたソーラインの注射器をそっと取りだし、満杯に入っていることを確認する。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして心の準備と深呼吸。これはとにかく急いで決着を付けなきゃいけないものだから、慌てて手が滑ったら命取りだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
春奈ちゃんに接近したら、下の階で洪水が起こった直前のことのように、とんでもない早口で定型文を喋り始めるはずだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それを喋り終えたら大洪水が起きてしまう。とにかく、至急、注射をぶち込め！[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんの部屋へ突入する！" target1="*c810BestChoice0"]
[s]


; ---- c810BestUrgent ----
*c810BestUrgent
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="首にソーラインを打つ" target1="*c810BestUrgentChoice0"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810BestUrgentTimeout" time="3000"]
[s]


; ---- c810BestTimeout ----
*c810BestTimeout
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ええい何を迷っている！？やれ！！[p]
[cm]
[jump target="*c810EndingA"]


; ---- c810Middle ----
*c810Middle
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かったことと言えば……あー、何というか、うん」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はっきり言ってくだされ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「正直言って、あれが何の怪異によるものかは、俺には突き止められない」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなっ。未来から来たという話は嘘だったのですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「未来でも無理なものは無理なんだよ。まだ情報が足りていないやつとか、複雑で分かりにく過ぎるやつとか、ごまんといる。兵士はバタバタ死んでいる」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何とかならないのですか！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈ちゃんはここから動かないんだろ？普通なら、触らぬ神に祟りなしということで、お前を連れて出ていくところだが…」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それくらいならば、いつか私の声に答えてくれるまで、私は一人でもここに留まります」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だよな。じゃあ俺が独りで出ていこうかとなるわけだが、木下さん、ここにいても独りで死ぬだけだと思うぜ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「元より、生きてこの地下壕から出ていくことなど考えておりませぬ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺に、お前を見殺しにしろってか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見殺しなどではありませぬ。若者は……老人の未練になど付き合わず、救うべき人を救いに行ってくだされ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さあ、どうしたものか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
元人間の怪異、あるいは人間に化けた怪異というのは、尋問して、見破って、ソーラインを適当なところに注射するという一般的な対処法が通じれば楽だ。だが実際には通じない場合も多い。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
のんきに注射なんかしてる間に殺されたら元も子もないし、そもそも注射が効かなかったり、刺す部位を間違えたら意味が無かったりする。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それにこの春奈ちゃんは、階下で起こった洪水と関係しているかもしれない。洪水……はぁ洪水か。この疲れ切った頭でもぱっと思い出せるくらい知識を叩き込んでおけばよかったなぁ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
とにかく、俺は目の前の春奈ちゃんに対する正しい対処法が分からない。運が良ければ上手くいくかもしれないが、そんなの自殺行為の言い換えに過ぎない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
さあ、俺はどうしたい？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="まずいことになったら全力で逃げればいい。とにかく近づいてみよう" target1="*c810MiddleChoice0" text2="もっと見込みのある未来のために、老人と別れていく" target2="*c810MiddleChoice1"]
[s]


; ---- c810Approach ----
*c810Approach
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まあ、やれるだけのことはやってみるよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はとりあえずソーライン注射器を取り出して構え、春奈ちゃんの部屋の真ん前に立った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ええっ、無理はおやめください」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈ちゃんを救ってほしいんじゃなかったのかよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ですが、あなたが命をなげうってまでやることでは！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うん、馬鹿やってるのは分かるよ。合理的じゃない。でもな知ってるか、三十六計逃げるに如かずだ。幸い、俺たちには確実な退路がある」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「しかし、何かあったとき逃げ切れる保証は？」[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんも確実に逃げられるよう、俺の基地と繋がった扉の前で待機していてもらう" target1="*c810ApproachChoice0" text2="俺独りだと不安だ。一緒に逃げ出せるよう、すぐそばで待機していてもらう" target2="*c810ApproachChoice1"]
[s]


; ---- c810ApproachAfter ----
*c810ApproachAfter
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「わ、分かりました。本当にいいのですね？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「化け物としてじゃなく、せめて人間の春奈ちゃんとして逝かせてやりたいだろ？やってみる価値はあるよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……任せましたよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんには所定の位置に待機していてもらった。俺は春奈ちゃんの部屋に一歩踏み入り、そろりそろり近づいていく……。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
２歩。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
３歩。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
４歩。[p]
[cm]
[jump target="*c810Urgent"]


; ---- c810Urgent ----
*c810Urgent
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="逃げる！！！" target1="*c810UrgentChoice0" text2="腕にソーライン" target2="*c810UrgentChoice1" text3="喉にソーライン" target3="*c810UrgentChoice2" text4="話を聞き取る" target4="*c810UrgentChoice3"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810UrgentTimeout" time="3000"]
[s]


; ---- c810Leave ----
*c810Leave
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は衛生兵だから……基地に帰らなきゃ、治療を待ってる人が大勢いるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ならば、なおさらです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは真っ直ぐ俺の前に向き直り、本当に説得しようとしているようだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや、そんな、木下さん。俺だってまだ悩む時間はあるし」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「では、悩むのがよろしい。しかし私は、古虫くんがいかなる選択をしようとも、心の中でさえ責めることはないと約束します」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それにほら、一旦基地に帰ってもさ、また戻ってこれるかもしれないだろ。もっと知識と道具と人員のある状態で」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫くん、君、さっき自分で言ったことを覚えていますか。君が来た扉はそういう性質のものではないと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうだったな……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺の身の上話をしたときに伝えたことだ。端的に言えば、今いるような異空間から基地へ戻る分には全く問題ないが、再び基地からこっちに戻ってくるのにはリスクが伴う。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
基地で一日過ごしただけでこっちで1年経っていたり、全く別の異空間に繋がってしまったりするのだ。それを阻止するには、この異空間を歪めている怪異を無力化しなければならないのだが……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「要するに、あからさまに怪異になってるアレを放置して俺が出ていったら、救出しに戻ってこれる可能性は低い」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いいのです……救ってあげなさい、君の仲間を」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と言いながら、俺と一緒に帰る気もないのかこのじいさんは。全く、未練が強すぎるな。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……これ以上人を見殺しにしたくない俺の未練も強すぎるけれど。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="危険を冒してでも怪異に挑む" target1="*c810LeaveChoice0" text2="無謀なことはせず一人で帰る" target2="*c810LeaveChoice1"]
[s]


; ---- c810Mistaken ----
*c810Mistaken
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それが……ううん、全く考えがまとまらないんだ。情報と情報の、関係が分からない。何か判断するには情報が足りなすぎるな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
本当はそれだけではなかった。ここ最近体も頭も休まる暇がなかったし、怪異のことを復習する時間も足りなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
今なら国語の初歩的な問題でも間違えてしまいそうな……それくらい参っていたのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まあ、だからほら、本人に聞いてみるのが一番じゃないのか？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お、お待ちなさい！私はずっと、この距離から近づいたことはないのです！近寄ったら何が起こるか！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だいいち、近寄っちゃいけないのも、そんな気がするってだけで根拠も無いだろう？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「しかしどう見てもあの様子、それに飲まず食わずで寝もしない。どう考えても異常です」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まあ見てなって」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
過度に心配せず、俺はとんとん拍子で春奈ちゃんの部屋に上がりこむ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
すると突然、春奈ちゃんは異常に早口で何か唱え始めた！[p]
[cm]
[jump target="*c810Death3"]


; ---- c810RunAlone ----
*c810RunAlone
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
何も分からん！逃げるしかねぇ！！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はぎゅるんと足腰をねじって一目散に部屋を飛び出し廊下を駆けてゆく。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
曲がり角の手前で振り返ったらあーーーっ！しまった！集めておいた医療物資が置き去りだ！[p]
[cm]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="無理無理無理！" target1="*c810RunAloneChoice0" text2="俺の足ならいける！" target2="*c810RunAloneChoice1"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810RunAloneTimeout" time="3000"]
[s]


; ---- c810Drop ----
*c810Drop
[encounterClear]
[eval exp="f.encounter.values.hasLostMaterials = true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
間に合うわけねぇだろうが！諦めろ！[p]
[cm]
[jump target="*c810EndingB"]


; ---- c810Retrieve ----
*c810Retrieve
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は踵を返して物資の包みを掴み取り、また死に物狂いで逃げ出した！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
息を切らして階段を上りながら、俺は異変に気付く。後ろからゴォーッという轟きが、危険な速さで迫っている！まずい！[p]
[cm]
[if exp="f.spi >= 4"]
    [jump target="*c810Retrieved"]
[else]
    [jump target="*c810Death4"]
[endif]


; ---- c810Retrieved ----
*c810Retrieved
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
あぁあぁあぁやばいやばいやばい！！こんな無茶するんじゃなかった！！こんな馬鹿で死にたくないーーっ！！[p]
[cm]
[jump target="*c810EndingB"]


; ---- c810RunTogether ----
*c810RunTogether
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「逃げるぞ木下！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はい！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺たちは全速力で上の階へ向かって走り出す！木下さんはちゃんと付いてこれているだろうかって、ああ！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だめだ！それじゃ遅いよ！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんの足腰は予想よりずっと弱かった！あの春奈ちゃんが何をしでかすかは分からないが、何か起これば間に合わないかもしれない……！？[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんを信じて俺だけでも先に逃げる" target1="*c810RunTogetherChoice0" text2="すっ転んだら誰が助けるんだ！ペースを落として一緒に走る" target2="*c810RunTogetherChoice1"]
[s]


; ---- c810Support ----
*c810Support
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は木下さんを見捨てる勇気がなかった。一人で走ったとて逃げ切れないかもしれんしな！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はっ、はっ、はっ、さ、さきに……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「喋んな！一緒に走るから！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
出口のある上の階への階段を上っていると突然、轟音が響いた！下からなにかとてつもなく大きなものが迫ってきている！[p]
[cm]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="肩を担いでやる！！" target1="*c810SupportChoice0" text2="すまない！すまない！すまない！！" target2="*c810SupportChoice1"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810SupportTimeout" time="3000"]
[s]


; ---- c810Carry ----
*c810Carry
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だめだっ、置いてけェッ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「できるかぁ！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは足がもつれて駄目になってやがる。肩を担いで引きずってでも！一緒に逃げるんだ！！[p]
[cm]
[if exp="f.phi >= 3"]
    [jump target="*c810EndingD"]
[else]
    [jump target="*c810Death5"]
[endif]


; ---- c810EndingA ----
*c810EndingA
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は戸惑いと恐怖を振り切って、首筋めがけてソーラインを思い切り注射する！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
春奈ちゃんはまだ顎をがくがくさせてとんでもない速さで喋っている。いいから早く止まってくれ！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
残りの液を全て送り込んでもまだ止まらないから、とうとうダメかと思ったが……ピタリと声が止まった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
これで終わったのだろうか？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈！春奈ぁっ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うおっと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
急に木下さんが部屋に飛び込んできた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈……どうしたんだ一体、おい、しっかりしなさい！何があったのか、じいじに話してごらんなさい！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
衛生兵なんて仕事をしているせいで、乱暴に注射することを数秒ためらってしまったが、最初から注射器を構えていたおかげで間に合ったようだ。と、俺は一人で反省していた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おい古虫くん、春奈はどうなったんだ、大丈夫なのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
至って真剣に、縋るような目で老兵は俺に問う。何て言ってやればいいのか……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まず……手を合わせましょうか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それしか言葉を持ち合わせていなかった俺は、諦めるように呟き、目を閉じ、手を合わせて祈った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しばらく経ってから、か弱い「ぱっ」という音がようやく聞こえた。聞き覚えがあった。しわだらけの、骨の浮き出た手と手を合わせ、祈りをささげる老人を、あちこちで見たことがあったから。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
こうして死者を弔うことができるだけでも、この世界ではよほど幸福なことに違いない……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺たちはシェルターに残っていた医療物資を回収し、春奈ちゃんの遺体も基地に連れ帰った。あそこで作るよりはマシな墓を用意してやろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
果たして、C-810、倫理規定とは、あの早口な定型文の中に含まれている語句から付けられた通称だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まず最初に、春奈ちゃんと同じような特徴を持った人間型の罠が地下施設などに現れ、大量の水を出現させて人を溺れさせ、消し去る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして恐らくは、その消し去った人間に異常な仕掛けを施して、また近くに出現させて、同じことを繰り返すのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうも仕掛け人は、地球人を取引契約上の資源だとしか思っていないらしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかも、その悪質な取引も、彼らなりの倫理規定に沿ったものなのだと、犠牲者の口から喋らせているのだ。[p]
[cm]
[encounterWin materials="2" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- c810EndingC ----
*c810EndingC
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
とにかくこの滅茶苦茶喋っている喉！これに異常があると踏んだ俺は喉をめがけて容赦なく注射針をぶち込む！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
全く痛がる様子がないどころか、むしろ加速さえしているように聞こえる！意味あるのかよこれ？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だめか？無理か？もう時限爆弾みたいなもんなのか？今か今かと、「逃げろ！」と叫ぶ機会をうかがっているうちに……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ピタリと止んだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
春奈ちゃんは……何も喋らなくなって、だらんと脱力してベッドに崩れ落ちたのだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈！春奈ぁっ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うおっと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
急に木下さんが部屋に飛び込んできた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈……どうしたんだ一体、おい、しっかりしなさい！何があったのか、じいじに話してごらんなさい！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そう……春奈ちゃんに何が起こっていたのか、その最大のヒントとなる語句を、さっきの長台詞の中から辛うじて聞き取ることができた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おい古虫くん、春奈はどうなったんだ、大丈夫なのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
至って真剣に、縋るような目で老兵は俺に問う。ううむ。最初から結論を伝えるのは酷だな。それ以外のことから先に話そう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今やっと、これが何の怪異によるものか、分かったかもしれません」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「え……では、何だというのですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「恐らく……倫理規定と通称される怪異です。番号は忘れましたが」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はて、倫理規定？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっき、滅茶苦茶喋ってたじゃないですか。その中に、なんちゃら、動物、倫理規定っていう、ぞっとするような言葉がありまして」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それがどうしたのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「奴らの言い訳でしょう。このシェルターで洪水をおこし、人をさらい、春奈ちゃんをこんな状態で送り返したことへの」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは、ぽかんとして俺の方を見ていた。いや全く、胸糞悪い仕組みをしているのだ、これは。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おい、私が聞きたいのは、春菜は……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の注射によって、”正常な遺体”に戻りました。こうする他なかったし、最初からこれが倫理規定のせいだと分かっていても、これ以上のことはできなかったのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺たちはシェルターに残っていた医療物資を回収し、春奈ちゃんの遺体も基地に連れ帰った。あそこで作るよりはマシな墓を用意してやろう。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
果たして、C-810、倫理規定とは、あの早口な定型文の中に含まれている語句から付けられた通称だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まず最初に、春奈ちゃんと同じような特徴を持った人間型の罠が地下施設などに現れ、大量の水を出現させて人を溺れさせ、消し去る。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして恐らくは、その消し去った人間に異常な仕掛けを施して、また近くに出現させて、同じことを繰り返すのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どうも仕掛け人は、地球人を取引契約上の資源だとしか思っていないらしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかも、その悪質な取引も、彼らなりの倫理規定に沿ったものなのだと、犠牲者の口から喋らせているのだ。[p]
[cm]
[encounterWin materials="2" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- c810EndingD ----
*c810EndingD
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
下から迫りくる得体のしれない何かに、俺は怖気づくことはない。人の命を救おうとするときにだけ、湧いてくる力がある！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だが、最後にどうしたのか、一瞬振り返って何が見えたのかは覚えていない。気付けば俺たちは、基地の扉の前で重なり合って倒れていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
老人のくさい息と、苦しそうに収縮する腹の感触から離れることもできない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しばらく、互いに一言も発することはできなかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし何だか、面白そーな顔をして上から覗き込んでいる顔が一人。いつの間にやら、初明が傍に来ていたのだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は大きな大きなため息を吐いて、じっと睨みつける。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何だよ、何とか言ってくれよ。命がけで、助けてきたんだぞ、この、木下さんを、なあ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どいて、ください……苦しい……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ悪かった。うん……しょっと」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「はあぁぁ……助かったよ、本当にありがとう、古池くんよ……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「感謝してるなら……古虫ですよ俺は……覚えてください……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「大手柄じゃない、古池くん。久しぶりの、無傷の生存者よ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
初明はにっこり笑う。とても可愛らしいはずなのに、見下ろしながら名前をいじられたせいで腹が立つ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああいい……あの、えっと、だから、さっき何か、ゴォーッって迫ってきてたんだが、いいのかあれは」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ものすごい洪水が迫ってきてたから、扉を向こうの空間から断絶しておいたわ。今開けたら、ここも全部流されちゃう」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「洪水？水だったのかあれは」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それより、誰ですかあなたは」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私？通りすがりの何でも知ってる人よ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あの、私の姪が、春奈ちゃんがまだ、あそこに……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「落ち着いてからでいいから、話を聞かせてくれる？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺たちが体験したことを半分も話さないうちに、初明はこの一連の現象がC-810、「倫理規定」のしわざだと見抜いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして、C-810-ALTとなっていた春奈ちゃんは正常な遺体に戻ったはずだが、回収できる見込みはないということ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
難しい怪異だった。それでも木下さんは生き延びたし、俺と一緒に逃げ延びたのだから、二人とも最大限に努力したのだ、ということを伝えてくれた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ほどなくして、この扉の前には小さな献花台が設けられた。[p]
[cm]
[encounterWin materials="2" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- c810EndingB ----
*c810EndingB
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は死に物狂いで前へ前へ上へ上へと走って走って走りまくって、いつの間にか、いつの間にか……たどり着いていた！出口に！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古池くん！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫だってばァ！かはっ、ぜえ、ぜえ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
と、その時既に！大きな大きな轟きが地下シェルター全体を揺るがしていた！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あぁ、ああああ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何だよ木下ァ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「洪水！あのときの！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「マジかよくそったれ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
見ると、けっこう広かったはずの下の階をもう水が埋め尽くしたのか！？鉄砲水がこっちに迫ってきてる！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もうだめだ！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は扉を開けて木下をぶっ飛ばし、自分も飛び込んで速やかに閉じ、必死に抑えた！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
が、意外にも水の衝撃は来なかった。あれ？さっきの鉄砲水は？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫くん？古虫くん？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんはうつ伏せにかっこ悪く転んだまま苦しそうに言った。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「大丈夫か木下さん」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「我々は助かったのか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……たぶんな」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春菜は……？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さあ、近づいたら訳の分からないことをベラベラ喋りだしたもんで、俺、ビビッて逃げてしまった」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「い、今からでも助けに」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんはむくっと起き上がり、またドアノブに手をかけた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おいちょっと待てよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その必要はないわ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「おわっ誰だお前！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
知らない女性の声がして俺は首をぎゅるぎゅる回した。が、見覚えのある顔が見つかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「状況は大体分かったわ。私は初明世紬。あなたは木下さんっていうのね」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あ、ななな、あなたは誰ですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは突然のことでろれつが回っていない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「は・つ・あ・か・り、せつ。この古虫くんの仲間で、囚人兵で、凄腕の術使で、何でも知ってる凄い人」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「びっくりさせないでくれ初明さん。今の、どこからどこまで見ていて聞いていたんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古池くんと呼ぶ声がドア越しに聞こえた所から」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫だってば」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「あの、初明さん、春菜が、私の姪がまだ向こうにいるのです。共に助けに行っていただけませんか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……その必要はない、と言ったのよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何が起きたか、分かるのですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
縋るような目で初明を見つめる木下さんが可哀想だった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫くん、ここで問題です」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ひあ？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「地下シェルターみたいな閉所に現れる。近づくと変な取引のことを早口で喋りだす。大量の水を送り付けて、溺れた人を消してしまう。これ、なーんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……あっ、倫理規定か？」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ぴんぽん。正解です。今ようやく気付いたって顔してるね」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なんでお前はさっきの会話だけで分かったんだよ……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それでね木下さん、姪っ子さんは、古虫くんのおかげで正常に戻って、もとの人間として息を引き取ったはずよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……体だけでも」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だって、大洪水の中心にいたのよ。諦めてもらうために、教えてあげてもいいけど」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ズタズタにひしゃげていてもです！指や、服の切れ端だけでも……！あぁ……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは、がくりと膝から崩れ落ちて息を震わせ始めた。無理もない。弔うための拠り所さえ持って帰れなかったのだから。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
初明の説明によると、この基地が洪水に巻き込まれるのを防ぐために、とっさに向こうの空間との接続を断ったらしい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺が必死に扉を抑えていたのにまったく水圧を感じなかったのは、そのとき既に扉は向こうと繋がっていなかったからだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そして、基地から脱出する経路としても使える見込みがないので、扉はこのまま封鎖するのだそうだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ならばせめてと、その日のうちに、この扉の前には小さな献花台が設けられた。[p]
[cm]
[eval exp="tf.encounterMaterials = f.encounter.values.hasLostMaterials ? 0 : 2"]
[encounterWin materials="&tf.encounterMaterials" survivor="木下徹" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- c810EndingE ----
*c810EndingE
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
気付けば俺は息をぜえはあさせて、基地の扉の前に立っていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は何をした？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんは？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
すぐに再び扉を開けても、さっきより明らかに朽ち果てた地下シェルターの壁面が基地の光に照らして見えるだけだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
くるぶしくらいの高さまで満ちた、薄いタナトリウム臭のする水がじゃあじゃあと基地に流れ込んでくるのを黙って見ているわけにもいかず、また閉めた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺がここに帰ってものの数秒で、あちらでは時間が経ち過ぎたようだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は何をした？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
独りで逃げてきたんだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それは賢明な判断だったかもしれない。共倒れするよりはマシだったかもしれない。しかしそんなことは関係なかった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
また俺は、救いたい人を救えなかった。それだけで、溺れるほど哀しかった……[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- c810EndingF ----
*c810EndingF
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
ほんとにここまで一人で帰ってきちまったよ。なけなしの医療物資まで押し付けられて。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
目の前の扉を開ければ基地だ。開けっ放しにして、誰か頼れる人を呼んでもいいが、そういうわけにもいかない。可及的速やかに閉じないとどんな歪みが生じるか分からないから。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……未練を振り切れず、振り返ると丁度木下さんが下の階から上がってきていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ、俺、まだ決められねぇんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いい加減にしなさい！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
えぇっ、何で急に怒るんだ！？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
でも、チカチカ明滅する天井灯の下で、シワは深く、影は濃い。冷たく厳かに、俺を𠮟っているのだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうしてお前はそこまで割り切れるんだよ？どうして、独りで死んでく決断ができるんだ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「私も現役は衛生兵だったのです」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それと何の関係があるってんだよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を救わないか決められない者に衛生兵が務まりますか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を救うかではない。限られた資源、時間、能力をわきまえて、何を救わないか決めるのが、職務ではありませんか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「確かにそうだけど……でもっ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何だというのですか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「衛生兵とか以前に、人間として、俺は俺を許せねぇよ……ただ方法が分からないからって、優先順位があるからって、目の前の人を見捨てるなんて……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は冷酷になりきれない。日々の仕事で、人間性が悲鳴を上げていたのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……そうですか。分かりましたよ。貴方の気持ちは、よく……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
すると木下さんは何事もなかったかのように俺の方へ歩いて来て。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこまで言うのなら仕方ありません。私も、貴方についていきましょう」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「考え直してくれたのか！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ええ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は全ての重荷が降りたように、ほっと一息を吐いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんが朗らかな顔して俺をまっすぐ見ているもんだから、つい、何となく手が伸びて、木下さんはこれを掴み、握手した。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「帰ったら、俺は木下さんを連れて帰って大手柄、木下さんは大歓迎ですよ」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ええ……」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「春奈ちゃんのことはどうしようか」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「墓は無くとも、天に向かって花を供えますとも」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……本当はそれでも名残惜しいだろうが、あんなに春奈ちゃんにこだわっていたのが嘘のように言ってのけた。[p]
[cm]
[ui_showChoices layout="encounter" fontSize="38" text1="一緒に帰りましょう！" target1="*c810EndingFChoice0"]
[s]


; ---- c810EndingFafter ----
*c810EndingFafter
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はドアをがちゃっと開いて基地へ出た。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
木下さんもドアを越えてこっちに来て、ドアノブを掴み、向こうに戻って、ばたんと閉めた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
えっ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「木下さん！おい！おい！！！！」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺はすぐにもう一度ドアを開いたが、そこに木下さんの姿はなかった。代わりに、さっきより明らかに朽ち果てた地下シェルターの壁面が基地の光に照らして見えた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
くるぶしくらいの高さまで満ちた、薄いタナトリウム臭のする水がじゃあじゃあと基地に流れ込んでくるのを黙って見ているわけにもいかず、また閉めた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
この一瞬で、扉の向こうではあまりにも長い時間が流れてしまったのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は、もう取り返しがつかないということを悟った。[p]
[cm]
[encounterWin materials="2" survivor="" insLoss="0"]
[jump storage="adv.ks" target="*return"]
[s]


; ---- c810Death1 ----
*c810Death1
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
相手が戦い慣れていない予備役の老人なら、ブレードを振ってきても避けるのは容易い。2527年の常識から導き出したその瞬間的な判断は、最善ではなくとも最悪なものではないはずだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
しかし、一瞬の判断というのは、知識と経験に基づいていても、目に見える現実を考慮に入れていないこともしばしばある。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
古虫紀一は、怪異相手にほとんど通用しない時代遅れの銃のことをすっかり忘れていたのである。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
果たして、2527年の脳は2518年の銃弾で撃ちぬかれた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まったく、剝がれかけた化けの皮を、必死に取り繕うこともしないのですな。バケモノというのは短絡的で困る」[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]


; ---- c810Death2 ----
*c810Death2
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
とにかく人に化けた怪異にはこれが効くはず！俺は左腕をめがけてとっさに注射針を突き刺した！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
止まらない滅茶苦茶な早口を聞きながら、容赦なくソーラインを注ぎこんでいく。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
……まだか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
まだなのか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それにしても一体何を喋ってるんだお前は！？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……代えさせていただきます。まもなく送付致しますので、お受け取りの準備をお願い致します」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
送付？お受け取り？何のこと？いやしかし、もう喋るのは止まったな。とりあえず一安心……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
の、はずだった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
古虫紀一は、何が起こったのか全く理解できないまま絶大な衝撃を食らい、宙に浮いた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
いや、宙に浮いたのではない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
息が苦しい。視界が揺らめく。口からボコボコと泡が……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
これは水か？洪水だ。洪水が起こったのだ……そう悟るのがやっとだった。[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]


; ---- c810Death3 ----
*c810Death3
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
どど、どどどっど、どうしようどうしよう？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
でも俺に襲い掛かってくるわけではないのだから、ああ、そうだ！何か伝えようとしているのでは？聞き取らないと！[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「誠に勝手ではございますが、汎世界動物倫理規定の改訂に伴い」[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
は？何て？はん……どうぶつ？りんりきてい？[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
倫理規定？倫理規定……あっ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
アレか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
気付いたときにはもう遅い。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
俺は、瞬時に床から天井へ満たされていく大量の水の絶大な衝撃を食らい、胃へも肺へも飲み込んでしまった。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そうか、俺はここで死ぬのか。状況が理解できてしまった。いや、状況を理解する以外にやれることは無いのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
遠のく意識、重くなる体、鈍く長く永遠にも似た苦痛の中で……[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
次は俺が春奈ちゃんみたいになって、人を溺れさせて殺すのか。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
そんなの嫌だ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
誰か……助け……て……[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]


; ---- c810Death4 ----
*c810Death4
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
古虫紀一がよほど卓越した運動能力の持ち主であれば、あれは勇気ある決断だったかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だが、どんなに熟練した兵士であっても、目の前の困難と己の実力とを比べて、正確に判断することは難しい。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それでも、自分の実力を実際よりも低く見積もってしまう過ちの方が、逆の過ちよりはいくぶん助かる見込みはあるのだ。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
彼は、その貴重な教訓を得ることなく波に飲まれてしまった……。[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]


; ---- c810Death5 ----
*c810Death5
[encounterClear]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
古虫紀一にもう少し体力が残っていれば、それは可能だったのかもしれない。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
だが、転んだ木下を何とか持ち上げて肩に担ぐと、もう前に進む力は尽き果てていた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
果たして、彼らは背後から大量の水に叩かれ、転倒し、水流に飲まれ自由を奪われた。[p]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
それでも古虫は最期まで、一人で逃げるべきだったとは決して思えなかったのである。[p]
[cm]
[encounterDead]
[jump storage="game_over.ks" target="*start"]
[s]


; ---- c810IntroMenu ----
*c810IntroMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="殴ってでも落ち着かせてやる！" target1="*c810IntroMenuChoice0" text2="まあ待て、身分証を見てくれよ" target2="*c810IntroMenuChoice1"]
[s]


; ---- c810ReasonIntroMenu ----
*c810ReasonIntroMenu
[encounterClear]
[if exp="f.encounter.values.asked1 && f.encounter.values.asked2 && f.encounter.values.asked3"]
    [jump target="*c810Decision"]
[endif]
[ui_showChoices layout="encounter" fontSize="38" text1="&(!f.encounter.values.asked1) ? ('木下さんはなぜまだここにいるのか？') : ''" target1="*c810ReasonIntroMenuChoice0" text2="&(!f.encounter.values.asked2) ? ('階下の洪水と関係あると思うか？') : ''" target2="*c810ReasonIntroMenuChoice1" text3="&(!f.encounter.values.asked3) ? ('階下の洪水から逃げ延びた人はなんて言ってた？') : ''" target3="*c810ReasonIntroMenuChoice2"]
[s]


; ---- c810Question1Menu ----
*c810Question1Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんはタナトリウム汚染が進んでからここに現れたから、タナトリウムと関係している可能性が高い。" target1="*c810Question1MenuChoice0" text2="春奈ちゃんはどこかから侵入したとは考えにくい。だから、突然転移してきた可能性が高い。" target2="*c810Question1MenuChoice1" text3="勘違いして進めたくないので判断を避ける" target3="*c810Question1MenuChoice2"]
[s]


; ---- c810Question2Menu ----
*c810Question2Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="洪水にさらわれた人間を材料にした罠" target1="*c810Question2MenuChoice0" text2="愛おしい故人に化けた魔物" target2="*c810Question2MenuChoice1" text3="溺死した人々の無念が実体化したもの" target3="*c810Question2MenuChoice2"]
[s]


; ---- c810Question3Menu ----
*c810Question3Menu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="その目撃者が噓を言っていて、彼が洪水を引き起こして自分だけ生き残ったという可能性を心に留める" target1="*c810Question3MenuChoice0" text2="その女性が洪水を予感して何か必死に伝えようとしていた可能性を心に留める" target2="*c810Question3MenuChoice1" text3="その女性は異常な人間で、洪水を引き起こした原因である可能性を心に留める" target3="*c810Question3MenuChoice2"]
[s]


; ---- c810BestMenu ----
*c810BestMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="春奈ちゃんの部屋へ突入する！" target1="*c810BestMenuChoice0"]
[s]


; ---- c810BestUrgentMenu ----
*c810BestUrgentMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="首にソーラインを打つ" target1="*c810BestUrgentMenuChoice0"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810BestUrgentMenuTimeout" time="3000"]
[s]


; ---- c810MiddleMenu ----
*c810MiddleMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="まずいことになったら全力で逃げればいい。とにかく近づいてみよう" target1="*c810MiddleMenuChoice0" text2="もっと見込みのある未来のために、老人と別れていく" target2="*c810MiddleMenuChoice1"]
[s]


; ---- c810ApproachMenu ----
*c810ApproachMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんも確実に逃げられるよう、俺の基地と繋がった扉の前で待機していてもらう" target1="*c810ApproachMenuChoice0" text2="俺独りだと不安だ。一緒に逃げ出せるよう、すぐそばで待機していてもらう" target2="*c810ApproachMenuChoice1"]
[s]


; ---- c810UrgentMenu ----
*c810UrgentMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="逃げる！！！" target1="*c810UrgentMenuChoice0" text2="腕にソーライン" target2="*c810UrgentMenuChoice1" text3="喉にソーライン" target3="*c810UrgentMenuChoice2" text4="話を聞き取る" target4="*c810UrgentMenuChoice3"]
[ptext name="encounter-warning" layer="0" text="春奈ちゃんがとんでもない早口で何か喋りだした！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810UrgentMenuTimeout" time="3000"]
[s]


; ---- c810LeaveMenu ----
*c810LeaveMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="危険を冒してでも怪異に挑む" target1="*c810LeaveMenuChoice0" text2="無謀なことはせず一人で帰る" target2="*c810LeaveMenuChoice1"]
[s]


; ---- c810RunAloneMenu ----
*c810RunAloneMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="無理無理無理！" target1="*c810RunAloneMenuChoice0" text2="俺の足ならいける！" target2="*c810RunAloneMenuChoice1"]
[ptext name="encounter-warning" layer="0" text="取りに戻るか？" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810RunAloneMenuTimeout" time="3000"]
[s]


; ---- c810RunTogetherMenu ----
*c810RunTogetherMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="木下さんを信じて俺だけでも先に逃げる" target1="*c810RunTogetherMenuChoice0" text2="すっ転んだら誰が助けるんだ！ペースを落として一緒に走る" target2="*c810RunTogetherMenuChoice1"]
[s]


; ---- c810SupportMenu ----
*c810SupportMenu
[encounterClear]
[ptext name="encounter-warning-timer" layer="0" text="制限時間3.00秒" x="1110" y="125" width="430" size="36" color="#ff9940"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="430" width="1100" size="32" color="#ff9940"]
[wait time="3000"]
[free layer="0" name="encounter-warning-timer"]
[free layer="0" name="encounter-warning"]
[ui_showChoices layout="encounter" fontSize="38" text1="肩を担いでやる！！" target1="*c810SupportMenuChoice0" text2="すまない！すまない！すまない！！" target2="*c810SupportMenuChoice1"]
[ptext name="encounter-warning" layer="0" text="なんてこった！木下さんが転んだ！！" x="370" y="125" width="720" size="26" color="#ff9940"]
[encounterTimer storage="room.ks" target="*c810SupportMenuTimeout" time="3000"]
[s]


; ---- c810EndingFMenu ----
*c810EndingFMenu
[encounterClear]
[ui_showChoices layout="encounter" fontSize="38" text1="一緒に帰りましょう！" target1="*c810EndingFMenuChoice0"]
[s]

; 選択結果の処理（上の選択肢からジャンプする）

; ---- c810IntroChoice0 ----
*c810IntroChoice0
[encounterClear]
[jump target="*c810Death1"]


; ---- c810IntroChoice1 ----
*c810IntroChoice1
[encounterClear]
[jump target="*c810Meeting"]


; ---- c810ReasonIntroChoice0 ----
*c810ReasonIntroChoice0
[if exp="!(!f.encounter.values.asked1)"]
    [jump target="*c810ReasonIntro"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked1 = true"]
[jump target="*c810Question1"]


; ---- c810ReasonIntroChoice1 ----
*c810ReasonIntroChoice1
[if exp="!(!f.encounter.values.asked2)"]
    [jump target="*c810ReasonIntro"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked2 = true"]
[jump target="*c810Question2"]


; ---- c810ReasonIntroChoice2 ----
*c810ReasonIntroChoice2
[if exp="!(!f.encounter.values.asked3)"]
    [jump target="*c810ReasonIntro"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked3 = true"]
[jump target="*c810Question3"]


; ---- c810Question1Choice0 ----
*c810Question1Choice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question1Choice1 ----
*c810Question1Choice1
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question1Choice2 ----
*c810Question1Choice2
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question2Choice0 ----
*c810Question2Choice0
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question2Choice1 ----
*c810Question2Choice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question2Choice2 ----
*c810Question2Choice2
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question3Choice0 ----
*c810Question3Choice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question3Choice1 ----
*c810Question3Choice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question3Choice2 ----
*c810Question3Choice2
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810BestChoice0 ----
*c810BestChoice0
[encounterClear]
[jump target="*c810BestUrgent"]


; ---- c810BestUrgentChoice0 ----
*c810BestUrgentChoice0
[encounterClear]
[jump target="*c810EndingA"]


; ---- c810BestUrgentTimeout ----
*c810BestUrgentTimeout
[encounterClear]
[jump target="*c810BestTimeout"]


; ---- c810MiddleChoice0 ----
*c810MiddleChoice0
[encounterClear]
[jump target="*c810Approach"]


; ---- c810MiddleChoice1 ----
*c810MiddleChoice1
[encounterClear]
[jump target="*c810Leave"]


; ---- c810ApproachChoice0 ----
*c810ApproachChoice0
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = true"]
[jump target="*c810ApproachAfter"]


; ---- c810ApproachChoice1 ----
*c810ApproachChoice1
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = false"]
[jump target="*c810ApproachAfter"]


; ---- c810UrgentChoice0 ----
*c810UrgentChoice0
[encounterClear]
[if exp="f.encounter.values.waitingAlone"]
    [jump target="*c810RunAlone"]
[else]
    [jump target="*c810RunTogether"]
[endif]


; ---- c810UrgentChoice1 ----
*c810UrgentChoice1
[encounterClear]
[jump target="*c810Death2"]


; ---- c810UrgentChoice2 ----
*c810UrgentChoice2
[encounterClear]
[jump target="*c810EndingC"]


; ---- c810UrgentChoice3 ----
*c810UrgentChoice3
[encounterClear]
[jump target="*c810Death3"]


; ---- c810UrgentTimeout ----
*c810UrgentTimeout
[encounterClear]
[jump target="*c810Death3"]


; ---- c810LeaveChoice0 ----
*c810LeaveChoice0
[encounterClear]
[jump target="*c810Approach"]


; ---- c810LeaveChoice1 ----
*c810LeaveChoice1
[encounterClear]
[jump target="*c810EndingF"]


; ---- c810RunAloneChoice0 ----
*c810RunAloneChoice0
[encounterClear]
[jump target="*c810Drop"]


; ---- c810RunAloneChoice1 ----
*c810RunAloneChoice1
[encounterClear]
[jump target="*c810Retrieve"]


; ---- c810RunAloneTimeout ----
*c810RunAloneTimeout
[encounterClear]
[jump target="*c810Drop"]


; ---- c810RunTogetherChoice0 ----
*c810RunTogetherChoice0
[encounterClear]
[jump target="*c810EndingE"]


; ---- c810RunTogetherChoice1 ----
*c810RunTogetherChoice1
[encounterClear]
[jump target="*c810Support"]


; ---- c810SupportChoice0 ----
*c810SupportChoice0
[encounterClear]
[jump target="*c810Carry"]


; ---- c810SupportChoice1 ----
*c810SupportChoice1
[encounterClear]
[jump target="*c810EndingE"]


; ---- c810SupportTimeout ----
*c810SupportTimeout
[encounterClear]
[jump target="*c810EndingE"]


; ---- c810EndingFChoice0 ----
*c810EndingFChoice0
[encounterClear]
[jump target="*c810EndingFafter"]


; ---- c810IntroMenuChoice0 ----
*c810IntroMenuChoice0
[encounterClear]
[jump target="*c810Death1"]


; ---- c810IntroMenuChoice1 ----
*c810IntroMenuChoice1
[encounterClear]
[jump target="*c810Meeting"]


; ---- c810ReasonIntroMenuChoice0 ----
*c810ReasonIntroMenuChoice0
[if exp="!(!f.encounter.values.asked1)"]
    [jump target="*c810ReasonIntroMenu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked1 = true"]
[jump target="*c810Question1"]


; ---- c810ReasonIntroMenuChoice1 ----
*c810ReasonIntroMenuChoice1
[if exp="!(!f.encounter.values.asked2)"]
    [jump target="*c810ReasonIntroMenu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked2 = true"]
[jump target="*c810Question2"]


; ---- c810ReasonIntroMenuChoice2 ----
*c810ReasonIntroMenuChoice2
[if exp="!(!f.encounter.values.asked3)"]
    [jump target="*c810ReasonIntroMenu"]
[endif]
[encounterClear]
[eval exp="f.encounter.values.asked3 = true"]
[jump target="*c810Question3"]


; ---- c810Question1MenuChoice0 ----
*c810Question1MenuChoice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question1MenuChoice1 ----
*c810Question1MenuChoice1
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question1MenuChoice2 ----
*c810Question1MenuChoice2
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question2MenuChoice0 ----
*c810Question2MenuChoice0
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question2MenuChoice1 ----
*c810Question2MenuChoice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question2MenuChoice2 ----
*c810Question2MenuChoice2
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question3MenuChoice0 ----
*c810Question3MenuChoice0
[encounterClear]
[eval exp="f.encounter.values.score += -3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question3MenuChoice1 ----
*c810Question3MenuChoice1
[encounterClear]
[eval exp="f.encounter.values.score += 0"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810Question3MenuChoice2 ----
*c810Question3MenuChoice2
[encounterClear]
[eval exp="f.encounter.values.score += 3"]
[jump target="*c810ReasonIntroMenu"]


; ---- c810BestMenuChoice0 ----
*c810BestMenuChoice0
[encounterClear]
[jump target="*c810BestUrgent"]


; ---- c810BestUrgentMenuChoice0 ----
*c810BestUrgentMenuChoice0
[encounterClear]
[jump target="*c810EndingA"]


; ---- c810BestUrgentMenuTimeout ----
*c810BestUrgentMenuTimeout
[encounterClear]
[jump target="*c810BestTimeout"]


; ---- c810MiddleMenuChoice0 ----
*c810MiddleMenuChoice0
[encounterClear]
[jump target="*c810Approach"]


; ---- c810MiddleMenuChoice1 ----
*c810MiddleMenuChoice1
[encounterClear]
[jump target="*c810Leave"]


; ---- c810ApproachMenuChoice0 ----
*c810ApproachMenuChoice0
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = true"]
[jump target="*c810ApproachAfter"]


; ---- c810ApproachMenuChoice1 ----
*c810ApproachMenuChoice1
[encounterClear]
[eval exp="f.encounter.values.waitingAlone = false"]
[jump target="*c810ApproachAfter"]


; ---- c810UrgentMenuChoice0 ----
*c810UrgentMenuChoice0
[encounterClear]
[if exp="f.encounter.values.waitingAlone"]
    [jump target="*c810RunAlone"]
[else]
    [jump target="*c810RunTogether"]
[endif]


; ---- c810UrgentMenuChoice1 ----
*c810UrgentMenuChoice1
[encounterClear]
[jump target="*c810Death2"]


; ---- c810UrgentMenuChoice2 ----
*c810UrgentMenuChoice2
[encounterClear]
[jump target="*c810EndingC"]


; ---- c810UrgentMenuChoice3 ----
*c810UrgentMenuChoice3
[encounterClear]
[jump target="*c810Death3"]


; ---- c810UrgentMenuTimeout ----
*c810UrgentMenuTimeout
[encounterClear]
[jump target="*c810Death3"]


; ---- c810LeaveMenuChoice0 ----
*c810LeaveMenuChoice0
[encounterClear]
[jump target="*c810Approach"]


; ---- c810LeaveMenuChoice1 ----
*c810LeaveMenuChoice1
[encounterClear]
[jump target="*c810EndingF"]


; ---- c810RunAloneMenuChoice0 ----
*c810RunAloneMenuChoice0
[encounterClear]
[jump target="*c810Drop"]


; ---- c810RunAloneMenuChoice1 ----
*c810RunAloneMenuChoice1
[encounterClear]
[jump target="*c810Retrieve"]


; ---- c810RunAloneMenuTimeout ----
*c810RunAloneMenuTimeout
[encounterClear]
[jump target="*c810Drop"]


; ---- c810RunTogetherMenuChoice0 ----
*c810RunTogetherMenuChoice0
[encounterClear]
[jump target="*c810EndingE"]


; ---- c810RunTogetherMenuChoice1 ----
*c810RunTogetherMenuChoice1
[encounterClear]
[jump target="*c810Support"]


; ---- c810SupportMenuChoice0 ----
*c810SupportMenuChoice0
[encounterClear]
[jump target="*c810Carry"]


; ---- c810SupportMenuChoice1 ----
*c810SupportMenuChoice1
[encounterClear]
[jump target="*c810EndingE"]


; ---- c810SupportMenuTimeout ----
*c810SupportMenuTimeout
[encounterClear]
[jump target="*c810EndingE"]


; ---- c810EndingFMenuChoice0 ----
*c810EndingFMenuChoice0
[encounterClear]
[jump target="*c810EndingFafter"]

; 選択肢ページの移動では場面の処理や能力判定を実行し直さない。

; ---- c810EncounterChoicesNext ----
*c810EncounterChoicesNext
[eval exp="f.choiceContext.page += 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]


; ---- c810EncounterChoicesPrevious ----
*c810EncounterChoicesPrevious
[eval exp="f.choiceContext.page -= 1"]
[ui_showChoices layout="encounter" restore="true"]
[s]
