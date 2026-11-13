; エンディング本文・読了処理。入口: 指定の結末ラベル。終了: ending.ksで記録しタイトルへ戻る。
; ========================================================
; ending_momona.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- endMTrue ----
*endMTrue
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('end_m_true')"]
; 場面1：最終突破。寿命延長案を採る稿では腕の喪失をここで確定。
#
百七が伸ばしかけた手より先に、俺が手を出した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「来い」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……命令？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「頼んでる」[p]
#
彼女の顔が、少しだけ変わった。[p]
嬉しそうだと思った。それを見て、俺も怖さの中から別の物を拾えた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「最初から、そう言いなさいよ！」[p]
#
指が繋がった。[p]
次の足場へ進む。その途中で、右腕の感触が途切れた。[p]
百七を掴んでいたのが左手でよかったと、妙なことを考えた。[p]
割り当てられた終わりを、別の未来へ動かした。[p]
失った物を、なかったことには出来ない。変わった時間が、これから何年になるかを、俺は数字で保証出来なかった。[p]
ただ、今、百七がここで終わる必要はなくなった。[p]
最後の段差で、足が動かなくなった。[p]
彼女が俺を支える。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこまで来て、休まないでよ！」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……手を、貸してくれ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「貸してる！」[p]
#
怒鳴る声が近かった。[p]
俺は、それへ返事をして、もう一歩出した。[p]
[jump target="*v3MTrueRoom"]


; source:12880

; ---- v3MTrueRoom ----
*v3MTrueRoom
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_m_true_room')"]
; 場面2：脱出後の療養場所。
#
目を覚ました時、百七は俺の寝台へ肘をついていた。[p]
顔を上げた途端、怒られた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「遅い」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何が」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「起きるのが」[p]
#
右側へ目を向ける。包まれた場所の先に、手はない。[p]
百七もそちらを見た。何か言おうとして、やめた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今後、困ることは、あると思う」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「でしょうね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だから、助けてほしい。俺が出来る方は、俺がやる」[p]
#
百七が俺を見た。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「借りを返して、アタシを帰すつもりなら、怒るわよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「帰ってほしくない」[p]
#
声に出すと、彼女の返事が遅れた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……なら、いい」[p]
#
百七が水を取った。飲ませようとする手へ、置いてくれれば取れると言った。[p]
彼女は場所を変え、俺が持つのを待った。[p]
出来ないことだけでなく、出来ることも、一つずつ教える必要があった。[p]
[jump target="*v3MTrueMemory"]


; source:12916

; ---- v3MTrueMemory ----
*v3MTrueMemory
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_m_true_memory')"]
; 場面3：記憶の回復を、終わった問題として片づけない。
#
戻らない記憶も、あった。[p]
百七は、それを自分から言う日と、言いたくない日があった。[p]
俺たちがした遊びを、覚えていないと言われた。[p]
覚えているはずだと、試すようには聞かなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう一回、やるか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アンタが勝ったら、前もそうだったって言うんでしょ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなに信用ないか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこは、別」[p]
#
負けた。[p]
百七が得意そうに紙を返した。俺がもう一回と言うと、さっきまでと逆だと笑われた。[p]
同じ結果になるとは限らない。[p]
前の百七と同じ返事をしなければ、彼女ではないわけでもない。[p]
今、笑って俺をからかう相手を、知り直せる時間があった。[p]
それを、取り戻したかったのだと思った。[p]
[jump target="*v3MTrueOutside"]


; source:12940

; ---- v3MTrueOutside ----
*v3MTrueOutside
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_m_true_outside')"]
; 場面4：二人で歩く外の世界。
#
百七は、行き先を何度も変えた。[p]
店の前で立ち止まり、次の角で違う物を見つけ、さっきの方へ戻りたいと言った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次って、今言ったばかりだろ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「次の次。ちゃんと覚えてて」[p]
#
歩く速さを変えると、彼女が俺を見た。[p]
俺のことを気にしているのかと思ったら、疲れたなら自分で言いなさい、と言われた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し、座りたい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「あっち。見たい物の前だから、ちょうどいい」[p]
#
座ってから、手を伸ばした。[p]
百七は、何、と聞かずに掴んだ。[p]
近くで小さな幸運が起きた。彼女は得意になり、俺は、それでも予定の確認をやめなかった。[p]
運がいいから、一緒にいるのではない。[p]
俺が不幸を招くのかという答えも、まだ完全には消えていなかった。[p]
それでも、彼女が一緒に行きたい所を言い、俺が自分から、その手を取れた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「次、アンタが決めて」[p]
#
俺は少し考え、行きたい所を一つ言った。[p]
百七が、じゃあ行くわよ、と立ち上がった。[p]
[jump target="*v3Finish" storage="ending.ks"]

; source:12974

; ---- endMNormal ----
*endMNormal
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('end_m_normal')"]
; 場面1：計画を完遂せず、確保していた退路を選ぶ。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、逃げよう」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「次をやるために、でしょ」[p]
#
百七が念を押した。[p]
俺は頷いた。終わったことにするためではなく、生きて別の方法を探すために戻る。[p]
取り戻せなかった記録があった。雨天へ届かなかった計画も残った。[p]
彼女の寿命の問題も、俺がここで言葉にすれば消える物ではなかった。[p]
百七は自分の時間を知ったうえで、俺へ手を出した。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「早く。後ろ、見てる時間もったいない」[p]
#
俺は掴んだ。逃げることを、彼女から借りた命を無駄にすることだとは思わないようにした。[p]
――[p]
逃げ延びた部屋で、百七は眠らなかった。[p]
机へ地図を広げ、失敗した所へ線を引いていた。[p]
俺が、休もうと言うと、アンタも、と返ってくる。[p]
二人とも座ったままでいたので、先に俺がペンを置いた。[p]
[jump target="*v3MNormalTomorrow"]


; source:12997

; ---- v3MNormalTomorrow ----
*v3MNormalTomorrow
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_m_normal_tomorrow')"]
; 場面2：逃亡先の生活と、次の計画。
#
翌朝、百七が食事へ文句を言った。[p]
見た目、と言われて、俺は器の向きを変えてみた。[p]
そうじゃない、と叱られた。[p]
食べ終えると、彼女は昨日の地図を開いた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「ここは、無理。こっちは、調べる。これは、条件が変わったら使える」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「全部、捨てるわけじゃないんだな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「失敗した所が分かってるのに、また最初からやりたい？」[p]
#
俺は首を振った。[p]
一つずつ確かめる。彼女の状態も、俺の状態も、計画の都合だけでは変えない。[p]
残る時間を、毎日、別れの準備へ使うのをやめた。[p]
ある日は手掛かりが見つかり、ある日は何も分からなかった。[p]
百七は、分からなかった日の紙も捨てなかった。[p]
夜になると、今日はここまで、と言った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日は？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「明日、決める。今、決めたいなら一つだけ」[p]
#
俺は紙の端へ、食事の後で一緒に外を歩くと書いた。[p]
彼女が、勝手に決めたわね、と言った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「嫌か」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……行く」[p]
#
全てを変えられたわけではない。[p]
それでも、俺たちは、次の予定を作るのをやめなかった。[p]
[jump target="*v3Finish" storage="ending.ks"]

; source:13037

; ---- endMBad ----
*endMBad
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('end_m_bad')"]
[if exp="f.v4 && f.v4.m && f.v4.m.failure==='separation'"]
    #
    俺を置いていけばいい、と考えた。[p]
    百七なら一人でも生きられる。そう決め、彼女へ聞かずに手を離した。[p]
[else]
    #
    百七を信じると言った。[p]
    だが、どこへ動くか、失敗したらどう戻るかを、二人で決めきっていなかった。[p]
    言葉を信じて動いた彼女と、俺の動きが合わなかった。[p]
[endif]
#
百七が俺を呼んだ。[p]
戻らなくていいと、言いかけた。俺一人を置けば済むと、まだ考えようとしていた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「勝手に、終わりにしないで！」[p]
#
彼女が戻ってきた。[p]
俺がいない方へ行けば幸せになるはずだという考えまで、俺が一人で決めた物だった。[p]
百七は次の足場を探した。俺も、ようやく、彼女の見ている方を見た。[p]
二人で渡る時間が、もう残っていなかった。[p]
運が尽きたのではない。[p]
一緒に出たいという望みを、どう実行するか。何度もあった問いを、俺たちは最後まで形にしきれなかった。[p]
百七は、まだ何かを試そうとしていた。[p]
俺は、試すための場所を、もう渡せなかった。[p]
[jump target="*v3Finish" storage="ending.ks"]

; source:13069
