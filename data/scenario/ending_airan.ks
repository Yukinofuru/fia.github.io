; エンディング本文・読了処理。入口: 指定の結末ラベル。終了: ending.ksで記録しタイトルへ戻る。
; ========================================================
; ending_airan.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- endATrue ----
*endATrue
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('end_a_true')"]
; 場面1：奪取した車内。怪異化した藍爛を、乗員が鎖で支えている。
#
鎖が鳴る度、誰かの肩が跳ねた。[p]
皆を助けた力を、皆が恐れていた。[p]
俺も、怖くないとは言えなかった。触れれば、次の瞬間に何が起きるか分からない。[p]
けれど、藍爛の方を見ずに、彼女の今後を決める声だけは聞いていられなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し、待ってくれ」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「お前が行けば、危ない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かってる。だから、止められる所にいてくれ」[p]
#
一人で決めて、一人で消えるつもりではなかった。東太の返事を待った。[p]
鎖の届く範囲の外で、膝をつく。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「藍爛さん」[p]
#
大きな輪郭が、こちらへ向いた。[p]
点検の時、俺が触れようとした物を見ていた人だ。自分のことより、俺の手が傷つく方を先に心配した。[p]
俺は今、自分の手の位置を彼女に見せた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「近づいても、いいか」[p]
#
答えは声にならなかった。だが、鎖を引いていた力が、わずかに緩んだ。[p]
俺はその動きを待って、一歩だけ近づいた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「忘れてもいいと、言われたけど。俺は、忘れたくない」[p]
#
彼女が、俺を見ていた。[p]
怖がらせないための言葉では足りない。助けられた礼だけでも、違う。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君と、帰りたい。帰った後も、一緒にいたい」[p]
#
そっと触れた。[p]
口づけは、短かった。[p]
目を閉じた間にも、鎖の音は聞こえていた。[p]
次に目を開くと、その重さが変わっていた。[p]
藍爛が、そこにいた。[p]
人の姿で、俺の服を握っていた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……古虫、さん」[p]
#
俺は、返事が出来なかった。[p]
東太が上着を持ってきた。誰かが、鎖を外せと叫んだ。さっきまでの恐怖とは別の声が、車内を満たした。[p]
俺は彼女の手を握り直した。人の手だった。[p]
; 親密度による一時的な人型復帰は今回の原プロットを採用。恒久的な克服とは分ける。
[jump target="*v3ATrueTrain"]


; source:12348

; ---- v3ATrueTrain ----
*v3ATrueTrain
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a_true_train')"]
; 場面2：同じ車内、落ち着いた後。
#
藍爛を座らせると、彼女は何度も手を開いていた。[p]
指が、思った通りに動くことを確かめている。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私、皆さんに……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「後で、話そう。今は、戻ったことを喜びたい」[p]
#
彼女は首を振らなかった。代わりに、俺の握る手を見た。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「先ほどのこと、本当に……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「本当だ」[p]
#
返事が早すぎて、彼女が困った顔をした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「好きだ。一緒に、ここから出たい」[p]
#
今度は、言い終わるまで見た。[p]
藍爛の唇が動いた。何度か止まり、それから小さく、私も、と返ってきた。[p]
近くで誰かが咳払いをした。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「聞こえてない顔をするのも、限界なんだが」[p]
#
笑い声が上がった。藍爛が顔を伏せる。俺も、今さらどこを見ればいいか分からなくなった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「続きは帰ってからにしてください。見せつけられる方は、迷惑なので」[p]
#
車両の向こうから、祝う声が来た。[p]
亡くなった人を忘れたから、笑えたのではなかった。同じ場所に、泣いた人もいた。[p]
その中で、俺たちが生きて帰ることを、祝ってもらった。[p]
[jump target="*v3ATrueCity"]


; source:12383

; ---- v3ATrueCity ----
*v3ATrueCity
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a_true_city')"]
; 場面3：帝都、帰還後。時間を送る。
#
帝都へ戻っても、全てが元に戻ったわけではなかった。[p]
藍爛の状態を診る人が増え、俺には、分からないことを学ぶ時間が必要になった。[p]
綾背の研究ノートを、最初から読み直した。[p]
助かった記録だけを拾わないようにした。何をしたか、何を隠したかも残した。[p]
藍爛は、協力することへすぐには頷かなかった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今日は、ここまでにしたいです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。次は、予定を変えよう」[p]
#
彼女の返事を待って、続ける。戻るかもしれないという怖さを、俺も口にした。[p]
何度も確かめる時間を経て、別の方法で怪異を克服する道が見つかった。[p]
; 研究の具体的な機構は設定へ接続。人肉を使わない別解の成立と、一時的復帰の安定化を分けて描く。
結果を聞いた日、藍爛はすぐには喜ばなかった。[p]
帰り道で、俺の袖を引いた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今夜の食事を、決めてもいいですか」[p]
#
仕事の相談より先に、それを言った。[p]
[jump target="*v3ATrueHome"]


; source:12407

; ---- v3ATrueHome ----
*v3ATrueHome
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a_true_home')"]
; 場面4：二人の生活。
#
食べたい物を選ぶのに、彼女は長く迷った。[p]
後ろに人が並ぶと譲ろうとしたので、俺は、決まるまで隣にいると言った。[p]
結局、二つ選んだ。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の分も、それで決まりか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「半分ずつ、お願いします」[p]
#
笑って頷いた。[p]
家へ戻ると、棚の留め具が少し緩んでいた。藍爛は道具を持ってきて、俺へ片側を渡す。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「こちらを、押さえていただけますか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こう？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。助かります」[p]
#
終わっても、すぐには離れなかった。[p]
彼女が直した棚へ、俺が器を並べる。次に何をするかを相談し、今日はやめておくことも決めた。[p]
生き場所は、最初から用意されていたわけではない。[p]
二人で物を置き、予定を変え、人の手を借りて作る物なのだと、少しずつ分かってきた。[p]
藍爛が俺を呼んだ。[p]
返事をして、隣へ座った。[p]
[jump target="*v3Finish" storage="ending.ks"]

; source:12439

; ---- endANormal ----
*endANormal
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('end_a_normal')"]
; 場面1：車両、脱出後。藍爛は人型へ戻らない。
#
何度呼んでも、声は、人の言葉にならなかった。[p]
聞こえていないのか、返せないのか。俺には、見分けられなかった。[p]
乗員の間で、彼女をどうするかという話が始まった。[p]
道を開いてくれたことを、誰も否定しなかった。その後も同じ車内に置けるかは、別の問いだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が、引き取る」[p]
#
東太が俺を見た。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「一人で面倒を見るって、分かって言ってるのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分からないことは、聞く。手も、借りたい」[p]
#
言った時には、そうするつもりだった。[p]
明昼が、行き先を確かめた。連絡が取れる所か、食べ物をどうするか。俺が考えきれていないことを、一つずつ尋ねた。[p]
列車を途中で降りる時、皆の顔を見た。[p]
一緒には帰れなかった。それでも、藍爛を助けたことを、なかったことにはされたくなかった。[p]
[jump target="*v3ANormalWindmill"]


; source:12461

; ---- v3ANormalWindmill ----
*v3ANormalWindmill
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a_normal_windmill')"]
; 場面2：荒野の風車小屋跡。
#
風が強い日は、壁の隙間を塞ぐ所から始まった。[p]
寝る場所と、道具を置く場所を分けた。藍爛が暴れる時に近づかずに済むよう、物の位置を変えた。[p]
うまくいく日もあった。[p]
俺が腰を下ろすと、彼女も動くのをやめる。修理した物を見せると、顔がそちらへ向く。[p]
それを喜んだ。[p]
次の日には、同じことが出来ない時もあった。[p]
食糧が、足りなくなっていった。[p]
明昼へ、近況を書いた。困っていることを最初に書くつもりだったのに、彼女の様子から書き始めた。[p]
読み返すと、思ったより平気そうな手紙になっていた。[p]
書き直すべきだった。[p]
俺は、もう少し調べてからにしようと、机へ置いた。[p]
綾背のノートを開く。分からない頁が減るほど、望んでいない答えへ近づいた。[p]
人へ戻すために、何が必要か。[p]
人肉、と記された箇所で、指が止まった。[p]
[jump target="*v3ANormalLetter"]


; source:12480

; ---- v3ANormalLetter ----
*v3ANormalLetter
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a_normal_letter')"]
; 場面3：同所、後日。具体的な手段を描写せず、決断と手紙を中心にする。
#
別の道を探した。[p]
使える物を変え、記録を確かめ、読める範囲の先まで読み直した。[p]
藍爛が苦しむ時、俺の考えは、簡単な方へ寄っていった。[p]
自分の身体なら、自分で決めていい。[p]
そう言えば、誰かへ許可を取らなくて済む。止められる返事も、待たなくて済む。[p]
俺は、その考えを、最後まで正しい物として確かめなかった。[p]
明昼へ、今度は出すための手紙を書いた。[p]
場所。藍爛の状態。迎えに来てほしいこと。[p]
俺がいなくなることを、最初に書いた。[p]
途中で、ペンを置いた。[p]
秀一の言葉を思い出した。[p]
俺の分も生きて来い。[p]
あの時、勝手に渡されたと思った言葉を、俺もまた、誰かへ渡そうとしていた。[p]
それでも、書き終えた。[p]
最後の頁に、藍爛の好きな物を書いた。知っている分だけ。知らないことは、彼女に聞いてほしいと付け足した。[p]
それが、彼女の口から返ってくるかどうかも、分からなかった。[p]
[jump target="*v3ANormalLast"]


; source:12501

; ---- v3ANormalLast ----
*v3ANormalLast
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a_normal_last')"]
; 場面4：同所、最期。捕食の詳細は省略する。
#
藍爛が、俺を見た。[p]
長い間、一緒にいた。けれど、彼女が俺を誰だと分かっているかを、最後まで尋ねられなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「迎えが、来る。君を知ってる人だ」[p]
#
返事の代わりに、鎖が鳴った。[p]
俺は手を伸ばした。人の手ではない輪郭へ、そっと触れた。[p]
一緒に暮らしたかった。[p]
助けるために死にたいと思ったのではなく、それが出来なかったから、ここへ来た。[p]
その違いを、誰かへ話しておくべきだったのかもしれない。[p]
――[p]
風車の軋む音がした。[p]
藍爛は、目を開いた。[p]
自分の手を見た。人の手だった。[p]
知らない服が、肩へかけられる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……迎えに、来ました」[p]
#
藍爛はその人を見た。思い出そうとすると、頭の奥が白くなる。[p]
部屋を見回した。[p]
二つの器。直された棚。途中まで畳まれた布。[p]
誰かが、ここで生活していた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「もう一人、いませんでしたか」[p]
#
明昼は、すぐには答えなかった。[p]
机の上にあった手紙を取り、彼女の見える所へ置いた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「ここで君と暮らした人の話を、しようと思います」[p]
#
藍爛は頷いた。[p]
名前を聞く前から、涙が落ちた。[p]
なぜ泣くのかを、まだ知らなかった。[p]
[jump target="*v3Finish" storage="ending.ks"]

; source:12543

; ---- endABad ----
*endABad
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('end_a_bad')"]
#
綾背の手が、藍爛へ伸びた。[p]
本人の返事を待つ時間は、なかった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「待って、ください。私は、まだ――」[p]
#
声が途切れた。[p]
怪物の輪郭が立ち上がる。雨天へ届いた力が、敵と味方を分けなかった。[p]
俺は名前を呼んだ。反応してほしい所で、動きは止まらなかった。[p]
車両を確保していた人が、扉を閉めようとした。別の人が、その人を助けようとして近づいた。[p]
一つずつの善意が、同じ狭い所へ集まった。[p]
東太が俺を引いた。俺は、藍爛を置いていけないと言った。[p]
今、何をするべきかではなく、何を認めたくないかで声を出した。[p]
彼女が何を望んだかを、聞く前に奪われた姿だった。[p]
誰かが戻せると言い、誰かがもう無理だと叫んだ。[p]
その間に、帰るために確保した場所がなくなった。[p]
俺は最後まで、彼女の名前を呼んだ。[p]
届かなかった声を、届かせるための次の時間は、残らなかった。[p]
[jump target="*v3Finish" storage="ending.ks"]


; source:12564
