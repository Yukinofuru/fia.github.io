; エンディング本文・読了処理。入口: 指定の結末ラベル。終了: ending.ksで記録しタイトルへ戻る。
; ========================================================
; ending_akehiru.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- endHTrue ----
*endHTrue
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('end_h_true')"]
; 場面1：連絡が戻った作戦拠点。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「提案は、受けない」[p]
#
姫彗の返事が、遅れた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「拒否したら解決するんですか。おめでたい頭ですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かってる。だから、君が作った方の計画を、最後までやる」[p]
#
彼女の交渉が、全てを一度に変えたわけではなかった。[p]
当主候補として名乗りを上げる。自分が何を知り、誰を助けるために戻るのかを説明する。家から逃げ続ける代わりに、その中で戦う道を求めた。[p]
香木たちとの繋がりも、一度使えば終わる切り札ではなかった。受け取ってもらえる情報と、まだ信じてもらえない情報があった。[p]
俺たちは、出来る所までを分担した。[p]
今の当主の力を借りるための条件を整え、こちらが引き受ける仕事と、家がする救命を分けて決めた。[p]
怪異化の資料と治療記録を渡す。移送する人の状態を伝える。外で受け入れる準備が、本当に進んでいるかを確かめる。[p]
俺が囮になる時刻も、戻る時刻も、姫彗の紙に残っていた。[p]
自分が死ねば成立する作戦ではなかった。[p]
[jump target="*v3HTrueReturn"]


; source:12615

; ---- v3HTrueReturn ----
*v3HTrueReturn
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h_true_return')"]
; 場面2：脱出の決行と合流。
#
決めていた位置で、振り返った。[p]
追ってくる物を確かめ、次の人へ合図を渡す。もう少しだけ引きつければ、と考えた所で、交代の声が来た。[p]
俺は、従った。[p]
戻るのを、仕事の放棄だと思わないようにした。[p]
合流地点に、姫彗はいなかった。[p]
いるはずの位置が空いているだけで、手が冷たくなる。[p]
予定表を見た。まだ、時間がある。[p]
寝台を受け入れ、状態を確かめる。呼ばれれば返事をする。自分のすることを続けた。[p]
通路の向こうで、足音がした。[p]
姫彗が、歩いてきた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……待たせました」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「戻ったな」[p]
#
手を出すと、彼女は一度見てから取った。[p]
握り返す力があった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「約束一つくらいは、守れるんですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「約束したからな」[p]
#
彼女は少し顔をしかめた。泣きそうな顔を、いつもの物へ戻そうとしていた。[p]
俺は、戻るまで待たずに、名前を呼んだ。[p]
[jump target="*v3HTrueHeir"]


; source:12644

; ---- v3HTrueHeir ----
*v3HTrueHeir
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h_true_heir')"]
; 場面3：帰還後、明昼家。
#
姫彗の名が、書類へ記された。[p]
兄の名ではなかった。[p]
それだけで家が変わるわけではない。帰還してからの方が、長く話さなければならない相手が増えた。[p]
彼女が当主候補として進むことと、今すぐ異形の臓物を受け入れることを、同じ一行へまとめさせなかった。[p]
一つずつ、条件を確かめた。[p]
俺に分からない話もあった。彼女に任せ、後で説明してもらった。俺のする治療の話も、同じように話した。[p]
妹のことを、彼女は少しずつ語った。[p]
全てを肩代わりするために自分を消す話ではなく、今、会いに行く予定として語った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君まで来ると、余計な説明が増えるんですけど」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「行かない方がいいか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……そうは、言っていません」[p]
#
俺は服を整えた。彼女が横から、直せていない所を直す。[p]
触れる前に許可を取ったのは、今度は彼女だった。[p]
[jump target="*v3HTrueLife"]


; source:12666

; ---- v3HTrueLife ----
*v3HTrueLife
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h_true_life')"]
; 場面4：後日。当主就任と、その後の生活。
#
姫彗が当主となった後も、忙しくない日は多くなかった。[p]
; 将来の継承時の機構と長期的な自我喪失への対処は原案に残る論点。代償なく当主になれる設定を新設しない。
連盟の改革は、帰還しただけでは始まらなかった。残された制度を読み、変える順番を決め、人へ説明した。[p]
俺は彼女の代わりに答えなかった。分かる所で手を貸し、間違っていると思えば言った。[p]
言い返されることも、多かった。[p]
夜、仕事の終わりを尋ねると、まだだと言われた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日の自分へ、少し渡してもいいだろ」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕に説教ですか。随分、偉くなったものですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教わった相手が、よかった」[p]
#
彼女は嫌そうに笑い、紙へ印をつけた。[p]
俺はその一枚を勝手に片づけず、終わったと言われるのを待った。[p]
一人では、出来ないことがあった。[p]
二人になったから、何でも出来るわけでもなかった。[p]
それでも、今日は休むと彼女が決めた時、明日の話を一緒に出来た。[p]
灯りを落とす前に、彼女が俺を呼んだ。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……紀一」[p]
#
用を尋ねず、そばへ行った。[p]
[jump target="*v3Finish" storage="ending.ks"]

; source:12698

; ---- endHNormal ----
*endHNormal
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('end_h_normal')"]
; 場面1：提案を受ける前。Normalは旧フロー上の識別名として保持。
#
姫彗に、もう一度説明してもらった。[p]
人を癒せるようになること。死ねなくなること。いずれは自我を失い、神と一体になること。[p]
死ねば終わる役目ではない。[p]
それを、彼女は他の誰かより恐れていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「途中で、嫌だと言ったら」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「嫌だと言える間に、終わらせてほしい」[p]
#
俺は、その答えから目を逸らさなかった。[p]
助けるという言葉だけで、この選択を飾りたくなかった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君なら、人としての私を、終わらせられる」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それだけのために、一緒にいるとは言わない」[p]
#
彼女が顔を上げた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その時まで、どう生きたいかも聞かせてくれ」[p]
#
姫彗は、今度はすぐに答えられなかった。[p]
しばらくして、好きな物を食べたいと言った。妹に会いたい。仕事のない時間を、俺と過ごしたい。[p]
終わりの約束の前に、生きる予定を作った。[p]
[jump target="*v3HNormalChange"]


; source:12726

; ---- v3HNormalChange ----
*v3HNormalChange
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h_normal_change')"]
; 場面2：継承の後。移植の生々しい描写ではなく、本人と救われた人の変化を描く。
#
彼女の力で、人が助かった。[p]
俺が使った物の経過を、彼女が引き受けた。救われた人々が頭を下げた。[p]
俺も、その列の一人だった。[p]
礼を言われる度、姫彗は、同じように返事をした。[p]
人がいなくなると、椅子へ深く座った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……今日は、ここまでで」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
#
俺は扉を閉めた。[p]
まだ治せるのではないかと言う声が、向こうにあった。彼女を使える力だけで数えないように、今日の終わりを伝えた。[p]
寝台のそばへ戻ると、姫彗は、何でもない顔を作りかけた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、作らなくていい」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……君に、見抜かれるのは嫌ですね」[p]
#
俺は椅子を引いた。彼女が眠るまで、兄の話でも使命の話でもないことを話した。[p]
[jump target="*v3HNormalDays"]


; source:12750

; ---- v3HNormalDays ----
*v3HNormalDays
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h_normal_days')"]
; 場面3：帰還後の二人。時期を固定せず、緩やかな変化を描く。
#
日々は、全て苦痛だったわけではない。[p]
笑った日があった。俺が服を間違えて叱られ、彼女が置き忘れた物を俺が届けた。[p]
妹に会う日は、出発の前に何度も予定を確かめた。会った後で、姫彗は少し疲れた顔で、嬉しかったと話した。[p]
俺は、その時間を、残りを測るためだけには使いたくなかった。[p]
それでも、変化はあった。[p]
返事までの間が長くなる。前なら怒った言葉へ、反応しなくなる。[p]
俺が気づく前に、本人が気づいたこともあった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「今、分からなくなりました」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何が」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……君と話しているのが、私だという感じが」[p]
#
俺は名前を呼んだ。彼女は、一度目では返事をしなかった。[p]
二度目に、目をこちらへ向けた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「分かっています。……まだ」[p]
#
まだ、という言葉を、二人とも聞かなかったことにはしなかった。[p]
[jump target="*v3HNormalLast"]


; source:12775

; ---- v3HNormalLast ----
*v3HNormalLast
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h_normal_last')"]
; 場面4：自我が残る最後の時期。行為の手順を描写せず、本人の意思と別れを中心にする。
#
姫彗は、朝から俺を見ていた。[p]
顔を忘れないようにしているのかと尋ねると、いつも通り、失礼ですねと返ってきた。[p]
それから、今のうちに、と付け足した。[p]
次の代へ役目を渡す準備は進んでいた。妹へ何が渡されるかも、彼女は最後まで確かめようとした。[p]
俺は、本人が話せる間に、何度も意思を聞いた。[p]
一度の約束を、今の彼女へ強いるために使いたくなかった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君は、本当に、しつこい」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「知ってる」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……嫌いでは、なかったです」[p]
#
過去形にされて、返事が出来なかった。[p]
彼女が、俺の手を取る。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「私の名前を、呼んでください」[p]
#
呼んだ。[p]
兄の名でも、当主を示す呼び方でもなく、姫彗と。[p]
返事があった。[p]
その返事を聞ける間に、約束した別れを選んだ。[p]
――[p]
残った書類に、彼女の名前があった。[p]
助けた人の数も、果たした役目も、記録には残る。[p]
俺は別の紙へ、彼女が好きだった物を書いた。[p]
役目のない日に何を話し、何に腹を立て、どんな声で俺を呼んだか。[p]
それを知っている人がいたことまで、神の話の中へ消したくなかった。[p]
; 終わらせる力の具体的な機構は古虫の既定能力へ接続。現実の医療や手段を説明する場面ではない。
[jump target="*v3Finish" storage="ending.ks"]

; source:12813

; ---- endHBad ----
*endHBad
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('end_h_bad')"]
; 資料不足で怪異化を知らないまま、強襲と脱出を強行した枝。
#
強襲は、成功した。[p]
無理だと言っていた人ほど、走り出した車内で大きな声を上げた。[p]
俺も、笑いかけた。[p]
最初の悲鳴が、すぐ隣で聞こえるまでは。[p]
治したはずの人が、倒れていた。[p]
近づいて、いつも通りに状態を確かめようとした。身体の形が、俺の知っている物から外れていく。[p]
別の車両でも、同じ声がした。[p]
薬の記録を見た。名前を見た。今、変わっていく人と、治療した人の名が重なった。[p]
読まなかった資料の表題が、遅れて頭へ浮かぶ。[p]
分からなかったのではなく、確かめる時間を作らなかったのだと思った。[p]
明昼が、通路の向こうにいた。[p]
俺を呼んでいたのか、止めようとしていたのか。音が重なり、言葉を聞き取れなかった。[p]
このまま帝都へ入れれば、何が起きる。[p]
俺は、列車を終わらせるための操作へ手を伸ばした。[p]
誰かへ相談すべきだった。その人々の声を、もう聞き分けられなかった。[p]
自分のしたことを、何度も心の中で詫びた。[p]
最後に、まだ人の声で俺を呼ぶ人がいた。[p]
俺はその声へ、返事をしなかった。[p]
白い光が、窓の外も車内も同じ色へ変えた。[p]
; 原プロットの列車自爆・全滅。具体的な操作方法は記さない。
[jump target="*v3Finish" storage="ending.ks"]

; source:12845
