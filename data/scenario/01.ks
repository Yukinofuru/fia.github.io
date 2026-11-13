; DAY01の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 01.ks / DAY01 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- start ----
*start
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[layopt layer=1 visible=true]
[endnolog]
[jump target="*part01"]
[s]

*part01
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]
[uiDestroy]
[cm]
[uiSetMenu]
[bg2 storage="stil/stil01.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil01.png"]
[eval exp="f.currentPlaceName = '第一基地 医務室'"]
[uiSetPlace]
[playbgm storage="daily.m4a"]
[font color="#66cdab"]
#kiichi
「太平洋門消滅五周年式典、か。帝都の奴等はおめでたい頭してやがるな」[p]

帝国領エリア4第一基地。[l][r]
二十五年続いた怪異との戦いの前線は今や帝都から遠く離れたこの東北の地まで押し上げられていた。[l][r]

全ては俺たち帝国軍人が命がけで怪異を倒してきたからだ。[p]

コーヒーを飲みながら、新聞を机に投げ捨てた。[p]

[bg2 storage="bg_room/room_e.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
帝都の連中の能天気さを見てると嫌悪感から吐き気がしてくるからだ。[l][r]
今も俺たち軍人は金持ちの帝都市民の為に前線でこうして命を懸けて戦い続けている。[l][r]
そう、死ぬのはいつも貧民と相場は決まっているのだ。[p]

長く続く戦いで疲弊した帝国では、段々と貧富の差が大きくなって、今では階級が固定化されている。[l][r]
だから、俺たちみたいな底辺の連中は仕事も無ければ、逆立ちしたって成り上がることもできない。[l][r]
そうなると、軍人になって怪異の餌になるくらいか、ギャングになって殺し合うしか生き方が無い。[p]

全く、世知辛い世の中だ。[p]

そして、多くは野垂れ死にたくないと軍人になる。[l][r]
結果として、この帝都防衛最前線であるエリア4の第1基地には多くの若い軍人がごった返していた。[p]

かく言う俺もその一人だ。[l][r]
まあ、そこらの連中と違って、学校の奨学金を返済するという崇高な理由がある軍人なので、一緒にしないでもらいたい。[p]

今日も下っ端衛生兵として備品確認をしていると、当たり前のように秀一が診療室に上がりこんできた。[p]

[syuuichiJito]
[syuuichiShow]
#syuuichi
[eval exp="window.fiaLibrary.observe('syuuichi')"]
「ふーるーむーしー、俺の傷ついた心を癒してくれー」[p]

#kiichi
「帰れ、お前に構っている暇は無い」[p]

山本 秀一。[l][r]
俺と同じ第一基地配属の二等兵だ。だが通信兵なので、所属は違う。[l][r]
それにもかかわらず、こいつは毎日のようにここに入り浸っていた。[p]

[syuuichiSad]
#syuuichi
「俺だって、いけると思ったんだよ。だって、二人で映画だって見たし、食事だってしたんだ」[p]
「なのに、返ってきた言葉が『ごめんなさい』だぜ！？ まじで、いけると思ったんだけどなー」[p]

#kiichi
[link storage="01.ks" target="*part011"]【1】「お前のその顔でか？」[endlink][r]
[link storage="01.ks" target="*part012"]【2】「そもそも、休暇がいつあるか分からないのに誘うか？普通」[endlink][r]
[link storage="01.ks" target="*part013"]【3】「ドンマイ！次も頑張れ！」[endlink]
[s]

*part011
[cm]
#kiichi
「お前のその顔でか？」[p]

[syuuichiAngry]
#syuuichi
「お前、名誉棄損罪で訴えるぞ。くそっ、これだから幼馴染持ちは！」[p]

#kiichi
「別にアイツとはそんなんじゃないって」[p]

[jump target="*part02"]

*part012
[cm]
#kiichi
「そもそも、休暇がいつあるか分からないのに誘うか？普通」[p]

[syuuichiSurprise]
#syuuichi
「くそっ、盲点だった！確かに遊びに行けねぇ！」[p]

#kiichi
「口説くのは、兵役が終わってからだな」[p]

[syuuichiSad]
#syuuichi
「あー、早いところ金持ちになってこんな生活を抜け出したいぜ」[p]

[jump target="*part02"]

*part013
[cm]
#kiichi

「ドンマイ！次も頑張れ！」[p]

[syuuichiJito]
#syuuichi
「なんだよ、その心のこもってないコメントは」[p]

#kiichi
「お前のフラれた話、興味ないから」[p]

[jump target="*part02"]

*part02
#kiichi
「そんなことよりも、俺は今、IR-M在庫リストのチェックで忙しいんだ！」[p]

何も考えていなさそうな秀一に、新型のIR-Mの箱の山を見せつける。[p]

[syuuichiNormal]
#syuuichi
「IR-Mってアレだろ、最近開発された新薬とやらだろ？」[p]

#kiichi
「そうだ。処置そのものは楽になった。おかげで重傷者を前にしても、手を尽くせるようになったしな」[p]

[chara_hide name=syuuichi]
[bgmovie storage="IRM_demo.mp4" loop="false"]
IR-M、”Instant Recovery-Medicine”というだけあって、[l][r]
直ぐにどんな怪我でも治療する代物だ。[p]

使っているのを見たことはあるが、傷口がみるみる塞がっていくのは不気味だった。[p]

[stop_bgmovie]
[syuuichiShow]
[syuuichiSmile]
#syuuichi
「逆に、コイツのせいで、お前たちの人数が減らされそうだな」[p]

#kiichi
「冗談じゃない」[p]

机に並べてあったIR-Mの箱を強引に棚に押し込んだ。[l][r]
今のところ、副作用の観点から医療従事者系の免許を持っていないと使用をしてはいけない規則になっている。[p]
だが、今後もそのルールが続くかが分からない点は悩みだ。[p]

#kiichi
「それで、ただ雑談しに来たってことは無いよな？そうなら、上官に報告しておくぞ」[p]

#syuuichi
「勿論、仕事で来たに決まってるじゃないか」[p]

#kiichi
「それで？」[p]

[syuuichiAngry]
ふっと秀一の顔から笑みが消えた。[p]

#syuuichi
「”唐舞橋の大蛇”討伐作戦の作戦日時が決まった。端末に送付された作戦指示書に目を通しておけ」[p]

#kiichi
「……そうか、決まったのか」[p]

唐舞橋の大蛇、怪異の中でもトップクラスでヤバい個体だ。[l][r]
まさに災害そのものと言える怪異。5年前の帝都大規模襲撃でも、大蛇によって多くの死者が出た。[p]
そこに、中学の同級生たちも含まれている。[p]

[syuuichiNormal]
#syuuichi
「ちゃんと準備しとけよ。在庫管理係さんよ」[p]

#kiichi
[link storage="01.ks" target="*part021"]【1】「俺だって衛生兵だ。ちゃんと常に準備はしている」[endlink][r]
[link storage="01.ks" target="*part022"]【2】「ああ、今のうちにお前の仇を取っておく」[endlink][r]
[link storage="01.ks" target="*part023"]【3】「覚悟ならできてる」[endlink]
[s]

*part021
[cm]
#kiichi
「俺だって衛生兵だ。ちゃんと常に準備はしている」[p]

[syuuichiJito]
#syuuichi
「それはそうだ。準備してなきゃ困る」[p]

[jump target="*part03"]

*part022
[cm]
#kiichi
「ああ、今のうちにお前の仇を取っておく。彼女の名前を教えてくれ」[p]

[syuuichiJito]
#syuuichi
「そういう意味じゃねぇよ。てか、口説いてる暇はねぇだろ」[p]

[jump target="*part03"]

*part023
[cm]
#kiichi
「覚悟ならできてる」[p]

[syuuichiNormal]
#syuuichi
「……そうだな。まあ、俺が言いたかったのはそういうことじゃないんだ」[p]

[jump target="*part03"]

*part03
[syuuichiNormal]
#syuuichi
「最後かもしれないだろ？お前の恋人なら、挨拶くらいしておくんだな」[p]

#kiichi
「違う、そんな関係じゃない。一十とはただの腐れ縁だ。それに、今は業務中だぞ」[p]
「……勝手に会える訳無い」[p]

#syuuichi
「端末見ろよ」[p]

#kiichi
確認すると、端末にメールが届いていた。作戦開始まで待機時間とする、とのことだ。[l][r]
全員、死ぬ前に大切な人に別れをちゃんと言っておけという事だろう。[p]

#syuuichi
「在庫の報告したら、すぐ行くんだな」[p]

#kiichi
「わかった。秀一はどうするんだ？」[p]

[syuuichiSmile]
#syuuichi
「俺は、もう『挨拶』は済ましてきたさ。部屋に戻って、妹にメールでも書くよ」[p]

#kiichi
「そうか。妹さんによろしく伝えてくれ」[p]

#syuuichi
「りょーかい。それじゃあ、紀一。またな」[p]

#kiichi
「ああ、秀一、またな」[p]

[chara_hide name="syuuichi"]
親友を見送り、報告書に目を落とす。[l][r]
こうして、あいつと会話するのも最後かもしれないと思うと、あんな話でよかったのかと思う。[p]

だが、きっと下手に感傷的に話しても、あいつは嫌がるだろうから、これでいいのだろう。[p]

在庫レポートを送信して、直ぐに居住区画に向かう。[p]

[eval exp="f.currentPlaceName = '居住区画　屋上'"]
[uiSetPlace]
自由スペースの屋上。[l][r]
[bg2 storage="stil/stil02.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil02.png"]
そこに一十はいつものように手すりに寄りかかって、基地内の街を見下ろしていた。[p]

#kiichi
[link storage="01.ks" target="*part031"]【1】「やっぱり、ここにいたのか」[endlink][r]
[link storage="01.ks" target="*part032"]【2】「今日も元気に空回り！フルスロットル古虫、参上！」[endlink][r]
[link storage="01.ks" target="*part033"]【3】後ろから静かに近づいて脅かす。[endlink]
[s]

*part031
[cm]
[bg2 storage="bg_room/room_g.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[itoNormal]
[itoShow]
#kiichi
「やっぱりここにいたのか」[p]

#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「紀一か。何の用だ？」[p]

#kiichi
「何か用が無いと駄目なのか？」[p]

#ito
「いや、別に」[p]

[jump target="*part04"]

*part032
[cm]
[bg2 storage="bg_room/room_g.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[itoNormal]
[itoShow]

#kiichi
「今日も元気に空回り！フルスロットル古虫、参上！」[p]

#ito
「それ、やってて恥ずかしく無いのか？」[p]

#kiichi
「えーっと……君の心にペネトレーション！フルカスタム古虫、見参！」[p]

#ito
「……」[p]

[itoJito]
#kiichi
「……すいません……恥ずかしいです」[p]

[itoNormal]
#ito
「全く、お前は何がしたいんだか……」[p]

#kiichi
一十は笑うことも無かったので、心が傷ついただけだった。[p]

[jump target="*part04"]

*part033
[cm]

#kiichi
後ろから静かに近づいて脅かそう。[l][r]
そっと俺は背後に忍び寄る。[p]

#ito
「何者だ！？」[p]

[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
#kiichi
腕を掴まれたと思ったら、いつの間にか地面に組み伏せられた。[p]

#kiichi
「ぐはっ……！！」[p]

[bg2 storage="bg_room/room_g.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[itoAngry]
[itoShow]
#kiichi
「俺だ！紀一だ！放してくれ！」[p]

#ito
「何だ、紀一か。驚かせるな」[p]

#kiichi
「二度とお前を驚かすかよ」[p]

#ito
「はあ、馬鹿じゃないのか……？」[p]

#kiichi
「こればかりは、俺が悪かった……」[p]

[jump target="*part04"]

*part04
[itoNormal]

#kiichi
一十の隣に並び、同じように街を見下ろす。[l][r]
昔、顕微鏡で見た赤血球のように、人々が道を押し合いへし合い進んでいる様子が見えた。[p]

地下に作られたこの都市には、今も数千の人が住んでいて、明日起こる大規模作戦のことなんて知らないで今日も生きている。[l][r]
だが俺たちみたいに、終わりが来るのを知ってるより、知らぬまま生きる方が幸せだろう。[p]

こうして、別れの言葉の一つも思いつけずに悩む必要が無いから。[p]

#kiichi
「……」[p]

#ito
「……」[p]

#kiichi
沈黙に耐えられず、話しかける。[p]

#kiichi
「なあ、どうして屋上にいつもいるんだ？煙草を吸うわけでも無いのに」[p]

#ito
「……日常を思い出せるからだ。ここからの景色、中学校の屋上に似てると思わないか？」[p]

#kiichi
「言われてみれば、そうかも。あのトタン屋根の街とか、佐伯の家の近くみたいだな」[p]

#ito
「隣の古いビルとか、いつもおやつくれた本屋のあるビルに似てる」[p]

#kiichi
「あの爺さん、元気にしてるといいな」[p]

[itoSmile]
#ito
「そうだな」[p]

#kiichi
「……」[p]

[itoNormal]
何か言わないとと思えば思うほど、言葉が出てこなかった。[l][r]
ここで、「さよなら」を言ったら全てが無くなる気がした。[p]

そのまま黙っていると、一十がふと俺の方を見る。[p]

[itoSmile]
#ito
「紀一、手を出してくれ」[p]

#kiichi
「手？突然、どうしたんだ？」[p]

[itoAngry]
#ito
「いいから、出せ」[p]

#kiichi
「わかったよ」[p]

言われた通り手を差し出すと、紫色の小さな布袋を渡された。[l][r]
裁縫、苦手って言ってたくせに、縫い目が丁寧だ。[l][r]
きっと、沢山練習したのだろう。[p]

#kiichi
「これは？」[p]

[itoSmile]
#ito
「『お守り』だ。お前が死なないように、おまじない」[p]

#kiichi
「あのな、俺なんかより、お前は自分の身を心配しろよ」[p]
「後方支援の俺と違って、お前は最前線に行くんだろ」[p]

#ito
「私が死にかけても、お前が助けてくれるだろ？」[p]

#kiichi
「それはそうだが……」[p]

#ito
「私は紀一がいる限り死なないから大丈夫さ」[p]

#kiichi
けろりとした顔で一十はそう言ってのける。[p]

「いつもそう言うが、こっちの負担も考えてくれ」[p]

#ito
「そこまで負担じゃないだろ。IR-Mで一瞬のくせに」[p]

#kiichi
「はぁ、分かってないな。これだから、前線の連中は」[p]

大きくため息をついた。[p]

IR-Mができてからというもの、すぐに治るからと怪我に対して恐怖が無い奴らが増えて来た。[l][r]
そのせいで出動回数は増える一方だ。治療の手間が減っても、こっちが暇になるわけじゃない。[p]

#kiichi
「お前が『お守り』くれるなら、俺からも。これ」[p]

ポケットから硬貨を一枚取り出し、一十に投げて渡す。[p]

[itoNormal]
#ito
「これは？」[p]

#kiichi
「俺の宝物。貴重な30年前の万博記念コインだ。ちゃんと、返しに来いよ」[p]

#ito
「よく、そんなもの持ってたな」[p]

#kiichi
「俺にとってのラッキーコインなんだよ」[p]

#ito
「わかった。ちゃんと、返すよ」[p]

#kiichi
一十は珍しそうにコインを街の光に当てて眺めた。[p]

#ito
「なあ、紀一。この作戦が終わったらさ、一緒に……」[p]

[stopbgm]
[playbgm storage="noise.m4a"]
#kiichi
その時、基地内のアラームが一斉に鳴り響いた。[p]

何事かと顔を見合わせた直後、照明が一斉に非常灯に切り替わり、頭上で花火のような爆発音が響いた。[p]

[quake count="5" time="1000" hmax="20" vmax="20" wait="true"]
#kiichi
「一体、何だ？持ち場に戻ら……」[p]

言い終わりもしないうちに、上から無数の瓦礫が降り注いでくる。[l][r]
認識したのも束の間。[p]

[itoSurprise]
#ito
「危ない！」[p]

[chara_hide name="ito"]
#kiichi
一十に押される形で俺は建物内に倒れこんだ。[p]

[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
顔を上げると、ドアの向こうで無数の瓦礫が彼女の姿をかき消して、床を崩して落ちていくのが見えた。[p]

#kiichi
「一十っ！！」[p]

立ち上がるなりひしゃげたドアから下を見下ろす。[l][r]
[bg2 storage="stil/stil03.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil03.png"]
崩落した瓦礫の隙間から白い腕がだらりと伸びていた。[p]

あいつの手だ。[p]

直ぐに助けに行かないと、一十が死ぬ。[p]

だが、下まで3階分位の高さがあった。[l][r]
飛び降りたら、俺も只じゃ済まないだろう。[p]

ポケットには常備しているIR-Mが2本。[l][r]
なら、飛び降りた直後にIR-Mを使えば生きたまま一十を助けに行ける。[p]

しかし、IR-Mは怪我を治せるが痛みを消す効果は無い。[l][r]
それどころか、再生時に耐えがたい程の痛みが走るという。[p]

死ぬほどの痛みを味わうどころか、痛みで逆に死ぬかもしれない。[l][r]
一十を助けるには、覚悟を決めるべきか……。[p]

[ui_showChoices text1="【1】命を懸けても一十を助ける" target1="*part05" text2="【2】一十を見捨てて逃げる" target2="*part05_2"]
[s]

*part05_2
[ui_hideChoices]
痛いのは嫌だし、死ぬのも御免だ。[l][r]
一十を見捨てて、俺はその場から逃げ出した。[p]

廊下をがむしゃらに走り抜ける。[p]

その時、誰かが叫ぶ声がした。[l][r]
顔を上げたのも束の間……。[p]

「あ、怪異だ……」[p]

[jump storage="game_over.ks" target="*start"]

*part05
[uiDestroy]
「迷ってる暇は、無いな」[p]

一十から貰ったお守りを首にかけ、俺は助走をつけて飛び出した。[p]

[quake count="1" time="400" hmax="0" vmax="60" wait="true"]
[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
内臓を持ち上げられるような浮遊感を認識したのも束の間、暴風を受けながら地面に体が落ちていく。[p]

空中で腕を捲って、IR-Mを注射すると同時に、衝撃が体全体を襲った。[p]

[layopt layer=1 visible=true]
[image storage="blood.png" layer="1" x=180 y=85 width=1440 height=900 time=500 wait=false]
[quake count="3" time="300" hmax="40" vmax="40" wait="true"]
痛みが訪れるよりも先に、視界が赤く染まり、耳鳴りで何も聞こえなくなる。[l][r]
息が吸えなくて苦しくて、口から、鼻から、耳から、目から血が止まらない。[p]

#kiichi
「……っぐ……ぅあ……」[p]

[freeimage layer="1" time=1000 wait=true]
数秒遅れでIR-Mが効いてきて、全身に骨の髄から焼けるような激痛が走り抜ける。[l][r]
同時に、骨の折れる音がして、肉が裂ける音がして、体が再生していくのがわかる。[p]

吐き気がするほど嫌な感覚だ。[p]

痛みが過ぎ去って、荒く息をつく。[l][r]
まだ、体の節々がズキズキするが、構ってる暇はない。[p]

近くの壁の残骸に手をかけて立ち上がり、一十の元に向かう。[p]

#kiichi
「一十を、助けないと……」[p]

[bg2 storage="stil/stil04.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil04.png"]
石と金属の山に突き出された細腕を手に取り、瓦礫をどけてそっと引き上げる。[p]

幸いなことに、運よく隙間に入り込んでいて、そこまで重症では無さそうだ。脈も息もある。[p]

#kiichi
「今助けるから、待ってろ」[p]

もう一本のIR-Mを取り出そうとポケットに手を伸ばす。[l][r]
しかし、ポケットは空だった。どうやら、落下した時にどこかに落としたようだ。[p]

#kiichi
「そんな、嘘だろ！無いのか！？どこにも！？」[p]

辺りを探して、何とか見つけたのは割れた容器だけだった。[p]

「くそっ！最悪だ！」[p]

無いなら、診療室に取りに行くしかあるまい。服を裂いて止血と骨折箇所の固定をして、一十を背負う。[p]

[bg2 storage="bg_room/room_c.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '基地廊下'"]
[uiSetPlace]
基地内の廊下に入ると、頭の上から水を浴びた。[l][r]
スプリンクラーが作動しているようだが、残念ながら、誤作動では無さそうだ。[p]

焦げ臭い匂いと煙が辺りに充満している。[l][r]
そして、廊下の向こうからは無数の叫び声と、何かを砕くような生々しい音が聞こえた。[p]

#kiichi
「迂回するしかないか」[p]

#syuuichi
「古虫！」[p]

[syuuichiNormalBlood]
[syuuichiShow]
#kiichi
振り返ると、秀一が血塗れで立っていた。携えた刀にも血がついて、刃がこぼれている。[p]

#kiichi
「大丈夫か！秀一！？」[p]

#syuuichi
「これは返り血だ。お前こそ、無事か？」[p]
[syuuichiSurpriseBlood]
「っておい、後ろのは一十か！？」[p]

#kiichi
「俺を庇って……、だから、IR-Mを取りに行く」[p]

[syuuichiAngryBlood]
#syuuichi
「馬鹿野郎、お前だけでも脱出を優先しろ」[p]

#kiichi
「一十を置いていける訳無いだろ！？」[p]

[syuuichiNormalBlood]
#syuuichi
「いいか、今基地中、怪異で溢れかえってるんだ。そんな中、ここから診療室に行けると思うか？」[p]

#kiichi
「それは……」[p]

言い返せなかった。[l][r]
俺一人で、怪異の群れを抜けられるかと言われたら、それは無理だ。[p]

だが、一十をこのまま適切に処置しなければ、出血死する。[l][r]
もしかしたら、見えていない深刻な怪我をしている可能性も高い。[p]

#kiichi
「でも、一十を見捨てられない」[p]
「俺の、ただ一人の幼馴染なんだ……！」[p]

[syuuichiAngryBlood]
秀一はため息をつくなり、舌打ちをした。[p]

[syuuichiNormalBlood]
#syuuichi
「ちっ、くそっ。わーった、わかったよ。お前ら二人、逃がしてやる。ついて来い」[p]

#kiichi
「逃げるって言ったって、どこにだ？」[p]

#syuuichi
「転移装置があるんだよ。帝都行きの。諜報部専用なんだが、この際、仕方無いよな。緊急事態規定の適用ってことで」[p]

#kiichi
「助かる。ありがとう、秀一。流石、俺の親友だ！」[p]

[syuuichiSmileBlood]
#syuuichi
「礼を言うにはまだ早いって」[p]

[syuuichiNormalBlood]
#kiichi
秀一の後を追って、上層ではなく逆に地下に向かう。[l][r]
下層はまだ火の手が回っておらず、怪異も来ていないのか静かだった。[p]

#syuuichi
「ここだ」[p]

[bg2 storage="bg_room/room_h.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '？？？'"]
[uiSetPlace]
#kiichi
ドアを開けると、垂れ下がってる配線のせいで薄暗い倉庫の中に、無数の転移装置のポッドが押し込められるように置いてあった。[p]

その一つを開けて、一十を横たえ、乗り込んだ。最大5人乗りだからか、中は案外広い。[p]

秀一が隣で転移装置を起動し、転移先の座標指定を始める。[p]

#kiichi
「なあ、秀一。ここに脱出ポッドがあるっていうのに、どうして他の連中はここに来てないんだ？もう脱出したのか？」[p]

#syuuichi
「まあ、確かに変だな。一応、緊急脱出のマニュアルには、ここと残り4か所の転移装置で避難とあるはずだ」[p]

#kiichi
「別に、国の為に死ぬまで戦うみたいな程、愛国心で溢れている奴らばかりじゃないだろ。変だよ。俺、見てくる」[p]

[chara_hide name="syuuichi"]
ポッドの外に出ると、上の配線が切れて落ちて来た気がした。[l][r]
しかし、見上げてもどこも断線した跡は無い。[p]

それに、直径5mはあるあの太さの線が落ちたら物音がするはずだ。音がしなかったなんておかしい。[p]

俺の見間違いならいいんだが、嫌な予感がする。[l][r]
辺りを見渡すが、変なところは無い。[l][r]
――いや、部屋の端の暗闇が動いた気がした。[p]

#kiichi
「後ろか！」[p]

振り向くと、巨大な蛇の口が迫ってきていた。[l][r]
[bg2 storage="stil/stil05.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil05.png"]
慌てて横に転がって避ける。[p]

大蛇は黒い体を軽やかに滑らせながら過ぎ去っていった。[p]

#kiichi
「秀一！怪異だ！怪異が……」[p]

立ち上がろうとした瞬間、激しい耳鳴りがして、足から力が抜けてその場に座り込む。[l][r]
意識が段々と遠ざかっていくのを感じた。[p]

[stopbgm]
[iscript]
let base = $(".tyrano_base");
if (base.find(".dazed-overlay").length == 0) {
    let style = '<style id="dazed-style">@keyframes dazed-loop { 0% { opacity: 0; } 50% { opacity: 0.85; } 100% { opacity: 0; } } .dazed-overlay { position: absolute; left: 180px; top: 80px; width: 1440px; height: 820px; background-color: #000000; pointer-events: none; z-index: 999999; animation: dazed-loop 3s infinite ease-in-out; }</style>';
    $("head").append(style);
    base.append('<div class="dazed-overlay"></div>');
}
[endscript]
ドロッとした生暖かい物が右肩からわき腹にかけて伝って落ちていく。[l][r]
右手を動かそうとして、初めて気づいた。肩から先の感覚がない。視線を落とすと、右腕があるはずの場所には血に濡れた軍服の切れ端しか残っていなかった。[p]

[bg2 storage="stil/stil06.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil06.png"]
足元には血だまり。これは、俺のか。[p]

[bg2 storage="bg_room/room_h.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[syuuichiAngryBlood]
[syuuichiShow]
#syuuichi
「紀一！くそっ！怪異かっ！？」[p]

#kiichi
「悪い、やっちまったみたいだ。ははっ、さっき、すれ違ったときにやられた」[p]

#syuuichi
「何笑ってんだよ。今、血を止めるから、動くなよ」[p]

#kiichi
「……一十を連れて、お前は逃げろ……いつ、また怪異が襲うかもわからない」[p]

[syuuichiSadBlood]
#syuuichi
「うっせぇ！お前も逃げるんだよ！お前だって、俺にとってもただ一人の友人なんだよ！」[p]

#kiichi
秀一は自分の上着で強引に傷口を縛ると、俺の左手を肩に回してポッドに向かう。[l][r]
その時、大蛇が鎌首をもたげて再び迫ってきた。[p]

意識が遠ざかっていく。俺はもう助からない。[l][r]
だから、せめて秀一は生かさないと。[p]

#kiichi
「……もう、やめてくれ……お前は……逃げろ……」[p]

#syuuichi
[syuuichiSmile2Blood]
「嫌だね、俺は、死んでも後悔だけはしたくないんだよ」[p]

#kiichi
[chara_hide name="syuuichi"]
[bg2 storage="bg_room/room_h.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
ポッドに俺を投げ入れ、一緒に入って秀一は扉を閉める。[l][r]

#syuuichi
「俺も助かって、お前も助かる。まあ、任せておけって」[p]

#kiichi
秀一はニッと笑うと、入力を始める。[p]

ポッドの窓からは大蛇が迫ってくるのが見えた。[l][r]
もう、間に合わない。[p]

#kiichi
「……秀一！！」[p]

#機械音声
「これより強制転移を開始します。シートベルトを装着し、衝撃に備えてください」[p]

#syuuichi
「ほら、何とかなったろ？」[p]

#kiichi
「……みたい……だな……」[p]

#kiichi
[iscript]
$(".dazed-overlay").remove();
$("#dazed-style").remove();
[endscript]
[bg2 storage="white.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
機械の駆動音と共に辺りが白い光で包まれた。[p]

――[p]

――[p]

――[p]

[bg2 storage="black.png" time=100 wait=false left=180 top=80 width=1440 height=900]
テレビを切るように意識が一瞬途切れて、全ての感覚が失われる。[p]

しかしながら、すぐに俺は現実に引き戻された。[p]

[eval exp="f.currentPlaceName = '？？？'"]
[uiSetPlace]
[bg2 storage="bg_room/room_b.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
冷たい床の感触が体全体に広がり、錆た鉄の匂いが鼻腔に広がり、思わずむせる。[p]

#kiichi
「……っげほっ……っげほっ……なんだ……ここはっ……どこだ……？」[p]

立ち上がると、さっき大蛇に嚙み千切られたはずの右腕があった。[l][r]
指を曲げてみる。痛みも傷もない。だが、この腕が無かった感触だけは鮮明に覚えている。[l][r]
あれは夢だったのだろうか。[p]

ひとまず、ここは見慣れた基地の廊下のようだ。[p]

#kiichi
「まさか、時間が巻き戻されたとか？それとも、今のは全部夢で、一十も無事で……」[p]

袖の破れた血塗れの服が、さっきの光景が事実だと物語っていた。[p]
[eval exp="window.fiaDay10Trial.register('arm_returned', 1)"]
[eval exp="window.fiaDay10Trial.register('arm_torn_sleeve', 1)"]

だが、それならば、俺の腕はどういうことだ。[l][r]
それに、俺は帝都の基地に向かったはずだ。ここはどこなんだ。[p]

#kiichi
「そうだ、一十は？秀一は？二人はどこだ！？」[p]

辺りを見渡すが、二人の姿がどこにもなかった。[l][r]
どうやら、別の場所に転移したようだ。[p]

転移装置内で目が覚めなかったということは、転移時にエラーが起きたことになる。[l][r]
だが、そういう時は同乗者や周囲にいた人間も大体、近くにいるはずだ。[p]

廊下を進み曲がると、廊下の奥の電気が消えて先が見えなくなっていた。[l][r]
その奥から、男の声が微かに聞こえる。[p]

#？？？
「……」[p]

#kiichi
「おい！誰かいるのか！？まさか、秀一！？」[p]

俺は無事だったが、強制転移で体の一部が転移できないで怪我する事例がある。[l][r]
そうであるならば、すぐに手当てをしなければ。[p]

暗闇の方に駆け寄ると、微かに女性の声も聞こえて来た。[l][r]
聞き間違いじゃない。一十の声だ。[p]

二人とも、生きてるに違いない！[p]

#秀一？
「……」[p]

#一十？
「……嫌……タ……ケ手……」[p]

#kiichi
「一十！秀一！待ってろ！今行く！」[p]

*corridorClues
[bg2 storage="stil/stil11.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil11.png"]
#kiichi
灯りの端に血の跡が見える。聞こえるのは同じ声の繰り返しで、呼びかけても返事がない。[r]
[eval exp="window.fiaDay10Trial.register('corridor_voice', 1)"]
[eval exp="window.fiaDay10Trial.register('corridor_sleeve', 1)"]
[p]
#kiichi
駆け寄りたい。けれど、あの声は本当に二人のものなのか。[p]
[jump target="*corridorChoices"]

; 通常の行動と、紀一が別の方法を考える入口を最初から並べる。
*corridorChoices
[if exp="window.fiaDay10Trial.solvedCorridor()"]
    [ui_showChoices text1="【1】駆け寄る" target1="*part06_1" text2="【2】慎重に進む" target2="*part06_2"]
    [eval exp="TYRANO.kag.layer.getFreeLayer().find('.btn-middle-anim').addClass('choice-secret')"]
[elsif exp="window.fiaDay10Trial.state().corridorReviewed"]
    [ui_showChoices text1="【1】駆け寄る" target1="*part06_1" text2="【2】「もう一度、考えてみよう」" target2="*corridorReasoning"]
[else]
    [ui_showChoices text1="【1】駆け寄る" target1="*part06_1" text2="【2】「他の方法を探す」" target2="*corridorReasoning"]
[endif]
[s]

*corridorTutorial
[ui_hideChoices]
[playbgm storage="noise.m4a" restart="false"]
[layopt layer="message1" visible="false"]
[image name="deduction-tutorial" layer="1" folder="image" storage="tutorial/deduction_guide.png" x="0" y="0" width="1920" height="1200"]
[layopt layer="1" visible="true"]
[loadcss file="./data/others/css/care_tutorial.css"]
[glink name="care-tutorial-next" text="推理を始める" x="1510" y="1095" width="300" height="70" face="Tegomin" size="32" target="*corridorTutorialDone"]
[s]

*corridorTutorialDone
[eval exp="f.hasSeenCorridorDeductionGuide=true"]
[free name="deduction-tutorial" layer="1"]
[layopt layer="message1" visible="true"]
[jump target="*corridorReasoning"]

*corridorReasoning
[if exp="!f.hasSeenCorridorDeductionGuide"]
    [jump target="*corridorTutorial"]
[endif]
[ui_hideChoices]
[playbgm storage="noise.m4a" restart="false"]
[current layer="message1"]
[loadcss file="./data/others/css/day10_trial.css"]
[html]
<div id="day10-trial-overlay" class="trial-corridor" role="region" aria-label="推理・暗闇の声"></div>
[endhtml]
[eval exp="window.fiaDay10Trial.open()"]
[s]

; SYSTEM-323の案内を送り、次のページで紀一の結論を表示する。
*corridorConclusion
[p]
[cm]
#kiichi
「呼びかけても返事がない。血の跡はあるが、声の主が仲間だとは言い切れない」[p]
[jump target="*corridorChoices"]

*part06_1
[ui_hideChoices]
懐中電灯で照らし、息をのむ。[p]

廊下の奥まで、壁も床もこすったような血の跡が延々と続いていた。[l][r]
それどころか、バラバラにされた人体模型みたいに、桃色の肉片が飛び散っている。[p]

#？？？
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]

#kiichi
機械的に無機質に男がピチャピチャと唱えている声が聞こえた。[p]

秀一の声ではない。これは、怪異の声だ。[p]

ふと、生臭い匂いと共に、顔に液体がかかった。[l][r]
その温かさとぬるりとした感触に、背筋が凍る。[p]

上を見上げると、魚と目が合った。[p]

[bg2 storage="stil/stil12.png" time=10 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil12.png"]
[playbgm storage="noise.m4a" restart="false"]
#？？？
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]

#kiichi
ぶよぶよに膨らみ切った体に、無造作に取り付けられた魚の頭。[l][r]
口からは人間の腕が垂れ下がっていて、鮮血が滴り落ちている。[l][r]
肉塊には無数の穴があり、そこから低い声が出ていた。[p]

#kiichi
「一十！？」[p]

しかし、その袖は軍服とは似ても似つかない布地だ。[l][r]
一十ではないが、安堵している暇はない。[p]

このままでは、俺も殺される。[p]

[stopbgm]
[playbgm storage="battle1.m4a"]
踵を返して逃げようと振り返るが、曲がり角の手前にも同様の魚の怪異が道を塞いでいた。[p]

#kiichi
「逃げ場はなさそうだな」[p]

衛生兵とはいえ、万が一に備えて戦闘訓練は受けている。[l][r]
覚悟を決めて、ブレードを抜いて構えた。[p]

ドドドと手足をジタバタと動かしながら天井を這って怪異が近づいてくる。[p]

その頭に向けて下から刀を突き立てた。[l][r]
嫌な手ごたえと共に、血が噴き出して、魚は口から腕を吐き出す。[p]

#？？？
「ア、ア、ア、ア、ア、ア、ア、ア、ア、ア」[p]

#kiichi
「よし！」[p]

すぐに走り出そうとしたその時だった。[l][r]
目の前で何かが膨張し――弾けた。[p]

[stopbgm]
[playbgm storage="noise.m4a"]
[layopt layer=1 visible=true]
[image storage="blood.png" layer="1" x=180 y=85 width=1440 height=900 time=500 wait=false]
[quake count="3" time="300" hmax="40" vmax="40" wait="true"]
[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
強い衝撃と共に、耳がキーンとなり、目がくらむ。[p]

意識が黒く霞む中で、壁に強く体がぶつかって、肺の中の空気が全てはきだされた。[p]

あの怪異が急に自爆したのだ。[p]

急速に体が冷えていく感覚。[l][r]
どうやら、俺はここで死ぬらしい。[p]

人生、あっという間だったな……。[p]

[stopbgm]
[iscript]
TYRANO.kag.stat.charas['setsu'].jname = '？？？';
[endscript]
#setsu
「君、大丈夫？」[p]

#kiichi
「……ぁ……っ……」[p]

#setsu
「肺がつぶれて喋れないのね。今、楽にしてあげるから」[p]

#kiichi
澄んだ女の声が聞こえたような気がして、俺はそのまま意識を手放した。[p]

――[p]

[freeimage layer="1" wait=false time=1000]
[playbgm storage="medic.m4a"]
嗅ぎなれた消毒液の香りで目が覚める。[p]

[bg2 storage="bg_room/room_e.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '診療室？'"]
[uiSetPlace]
[iscript]
TYRANO.kag.stat.charas['setsu'].jname = '？？？';
[endscript]
[setsuNormal]
[setsuShow]
ぼんやりとした視界の焦点を無理やり現実に合わせると、目の前には見知らぬ女性が居た。[l][r]
軍服姿だから、同じ帝国軍人なのだろう。[p]

[setsuSmile]
目が合うと、彼女は安堵したのか頬を緩める。[p]

[jump target="*wakeGreeting"]

*part06_2
[ui_hideChoices]
[bg2 storage="bg_room/room_b.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
この先、怪異がいるかもしれない。[l][r]
刀を抜き、慎重に歩みを進める。[p]

[iscript]
TYRANO.kag.stat.charas['setsu'].jname = '？？？';
[endscript]
#setsu
「ねえ、君」[p]

[setsuNormal]
[setsuShow]
声を掛けられ、振り返るとそこには青い髪の女性がいた。[l][r]
軍服姿だから、同じ帝国軍人なのだろう。[p]

#setsu
「そっちは危険よ」[p]

#kiichi
「分かってる。だが、友人がいるかもしれないんだ」[p]

#setsu
「君の友達なら無事よ。それじゃあ、一緒に来てくれるかしら？」[p]

#kiichi
「あんたは……」[p]

その時、視界がぐらりと揺れ、膝をついた。[p]

#kiichi
「何をした……!」[p]

#setsu
「あまり良くない道を行くの。だから、少し眠ってて頂戴」[p]

[chara_hide name="setsu"]
[bg2 storage="black.png" time=300 wait=true left=180 top=80 width=1440 height=900]
[jump target="*part06"]

*part06
[freeimage layer="1" wait=false time=1000]
[playbgm storage="medic.m4a"]
[bg2 storage="bg_room/room_e.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '診療室？'"]
[uiSetPlace]
[iscript]
TYRANO.kag.stat.charas['setsu'].jname = '？？？';
[endscript]
[setsuNormal]
[setsuShow]

*wakeGreeting
[setsuSmile]
#setsu
「おはよう、気分はどう？」[p]

#kiichi
[link storage="01.ks" target="*part071"]【1】「最悪の気分だ」[endlink][r]
[link storage="01.ks" target="*part072"]【2】「まあ、なんとか」[endlink][r]
[link storage="01.ks" target="*part073"]【3】「ああ、何と美しい人だ……」[endlink]
[s]

*part071
[cm]
#kiichi
「最悪の気分だ」[p]

#setsu
「ふふ、そう思った。もう少し、休むといいわ」[p]

#kiichi
「今はそれどころじゃない」[p]

#setsu
「頑張るなら、死なない程度にね」[p]

[setsuNormal]
[setsuSmile]
[jump target="*part08"]

*part072
[cm]
#kiichi
「まあ、なんとか」[p]

[setsuNormal]
#setsu
「どこか痛むところは無い？」[p]

#kiichi
「今のところ、問題なさそうだ」[p]

[setsuSmile]
#setsu
「それなら、よかったわ」[p]

[jump target="*part08"]

*part073
[cm]
#kiichi
「ああ、何と美しい人だ……」[p]

[setsuJito]
#setsu
「古虫君って、そういう人だったのね……」[p]

#kiichi
「おれは本心を言ったまでだ。後悔は、無い！」[p]
「君は、俺の運命の人だ！」[p]

[setsuSmile]
#setsu
「……今は冗談として受け取っておくわ」[p]

[jump target="*part08"]

*part08
#kiichi
「それで、君が助けてくれたのか？」[p]

[setsuSmile]
#setsu
「ええ、そうよ」[p]

#kiichi
辺りを見るに、ここは基地内の診療室のようだ。[l][r]
俺が勤務していた第一基地の診療室に似てはいるが、置かれている薬品類や書類が異なる。[l][r]
それに、どこにも埃が積もっている辺り、長らく使われていないようだ。[p]

#kiichi
「ここはどこなんだ？俺はどうしてここに？」[p]

#setsu
「君は突然、第12基地の廊下に転移してきたのよ。危うく怪異に食べられるところだったわね」[p]

#kiichi
「怪異に……」[p]
「そうだ、俺の他にもう二人、居なかったか！俺くらいの背丈の男と、女。二人とも、友達なんだ！」[p]

#setsu
「そうね、男の人は見てないけど、女の人なら助けたわ。今、隣の部屋で寝てる」[p]

#kiichi
「本当か！？」[p]

起き上がろうとした途端、胸に鋭い痛みが走る。[l][r]
どうやら肋骨が何本か折れているようだ。[p]

#kiichi
「くっ……」[p]

#setsu
「まだ骨が折れてるから動かない方がいいわ」[p]

#kiichi
「……IR-Mは無いのか？」[p]

#setsu
「あればいいんだけど、残念ながら旧型しか無いの」[p]

#kiichi
「旧型でも構わない」[p]

#setsu
「旧型は投与量を間違えると細胞のアポトーシスを誘導するから危険よ」[p]

#kiichi
「問題ない、俺は衛生兵だ」[p]

[setsuNormal]
#setsu
「そう……」[p]
[setsuSmile]
「……ええ、確かに問題無さそうね」[p]

#kiichi
彼女はすぐに旧型のIR-Mを持ってきてくれた。[p]

旧型のIR-Mは新型と異なり、抑制物質の配合量が少なく、過剰に細胞分裂が発生し、逆に組織が壊死する可能性が高い代物だ。[p]

その分、適切な知識を持って使用しなければならない。[p]

衛生兵は基地内に新型IR-Mが無い場合、そもそもIR-Mが無い場合の野戦治療の訓練はしている。[l][r]
だから、旧型であれ使えないことも無い。[p]

#kiichi
「肋骨が折れてる程度なら、この分量でいいか。指示薬は3番系統」[p]

注射針の横のダイヤルを回して分量を調整し、指示薬と混ぜて腕に注射する。[l][r]
鼓動に合わせて、じわじわと胸部が熱くなり、すぐに体が軽くなる。[p]

#kiichi
「まだ、IR-Mはあるか？あと、指示薬も」[p]

#setsu
「ここに置いてあるだけなら」[p]

#kiichi
彼女が指示した棚には数本のIR-Mと四種類くらいの指示薬しかなかった。[l][r]
旧型IR-Mは指示薬無しでは、指定した部位で反応を起こさないでガン化する危険性がある。[l][r]
そのため、指示薬が重要となるのだが、胸部、腹部、上腕、脚部用しかなかった。[p]

#kiichi
「これを使ってもいいか？」[p]

#setsu
「いいわよ。隣の彼女のこと、治しに行くのね」[p]

#kiichi
「ああ。ありがとう、えーっと」[p]

[iscript]
TYRANO.kag.stat.charas['setsu'].jname = '初明 世紬';
[endscript]
#setsu
「世紬、私は初明 世紬。よろしくね、古虫君」[p]
[eval exp="window.fiaLibrary.observe('setsu')"]

#kiichi
「ああ、ありがとう初明」[p]

[stopbgm]
[chara_hide name="setsu"]
[bg2 storage="bg_room/room_ai1.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '医務室？'"]
[uiSetPlace]
すぐに隣の部屋に向かうと、そこには無数のパイプベッドが並んでいた。[l][r]
その全てに、深刻な状態の怪我人が寝ている。[l][r]
中には怪異に変異しかかっている人もいた。[p]

まさに、戦場さながらだ。[p]

その一角、窓際のベッドに一十は寝かされていた。[p]

[bg2 storage="stil/stil13.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil13.png"]
#kiichi
「一十！」[p]

呼吸は浅く、脈が前よりも弱まっている。[l][r]
包帯で止血はされているが、意識が戻る様子は無い。[p]

すぐに手持ちのIR-Mで処置を行ったが、頭部で出血していた場合、適切な指示薬無しで細胞分裂を促せば、脳を圧迫してこのまま植物状態になるか死に至る可能性がある。[p]

物理的な開頭手術をしようにも、俺は医者ではないし、設備も無い。[l][r]
こうなったら、頭部用のIR-M指示薬を何としても探さなければ。[p]

[bg2 storage="bg_room/room_e.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '診療室？'"]
[uiSetPlace]
[setsuSmile]
[setsuShow]
#kiichi
走って診療室に戻ると、初明が待っていてくれた。[p]

#kiichi
「ここ以外にも、IR-Mの指示薬はあるのか？」[p]

#setsu
「そうね、探せばあると思う。勿論、危険も伴うわ」[p]

#kiichi
「ああ。今すぐ、必要なんだ」[p]

#setsu
「でも、君、ここがどこかさえ知らないのに、行くの？」[p]

#kiichi
[link storage="01.ks" target="*part081"]【1】「それは……」[endlink][r]
[link storage="01.ks" target="*part082"]【2】「勿論だ。ここは、帝都の基地だろ？」[endlink][r]
[link storage="01.ks" target="*part083"]【3】「知らないからと言ってじっとはできない」[endlink]
[s]

*part081
[cm]
#kiichi
「それは……」[p]

[setsuNormal]
#setsu
「闇雲に進んでも、却って事態を悪化させるだけよ」[p]

[jump target="*part09"]

*part082
[cm]
#kiichi
「勿論だ。ここは帝都の基地だろ？」[p]

#setsu
「残念、違うわ。君も違うって気づいているでしょう？」[p]

[jump target="*part09"]

*part083
[cm]
#kiichi
「知らないからと言ってじっとはできない」[p]

#setsu
「彼女の事が、本当に大事なのね」[p]

[jump target="*part09"]

*part09
[setsuSmile]
#setsu
「ここは、旧第12基地。聞いたことは無い？」[p]

#kiichi
「第12基地……」[p]

二年前だったか、搬入された怪異の被検体の暴走で一晩にして全滅したという。[l][r]
それ以降、そこに足を踏み入れた者は居ない。[p]

なんでも、基地に入ったら最後、出られないと噂されていた。[p]

最初は怪談か何かかと思っていたが、軍の報告書やニュースを見ると、どうやらそれは本当らしい。[l][r]
怪異の引き起こした時空の歪みによって無数の時空間が同一次元平面上にパッチワークのように混在しているからとか。[p]

[eval exp="f.currentPlaceName = '旧第十二基地 診療室'"]
[uiSetPlace]
#setsu
「このドアの外は、基地ではない場所に繋がってるわ」[p]
「その先に進んだとして、君が無事にここに戻れる保証は無いの」[p]

#kiichi
「だが、IR-M指示薬が無いと、一十を助けられないんだ」[p]

#setsu
「ええ、そうね。君が彼女を助けたい気持ちはわかったわ」[p]
「ここは、専門家も交えて相談しましょう。ついて来て」[p]

[bg2 storage="bg_room/room_d.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第十二基地　？？？'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="noise.m4a"]
#kiichi
初明に連れられてドアから外に出ると、そこは廊下では無く大きな空間に繋がっていた。[l][r]
廃ビル内に、大小さまざまなテントが無造作に並べられていて、軍服姿の人からスーツ姿の人まで、様々な人がそこにひしめき合っていた。[p]

まるで、救いを諦め、死を待つだけの物悲しい雰囲気がそこにはあった。[p]

#kiichi
「この人達は？それに、ここは何なんだ？」[p]

[setsuNormal]
#setsu
「ここは第12基地内の拠点。ここの人たちは様々な理由でここに迷い込んでしまった人たちよ」[p]
[eval exp="f.currentPlaceName = '旧第十二基地 拠点'"]
[uiSetPlace]
[setsuSmile]
「ちなみに、私は基地にある任務で来た『使い捨て』の部隊の人間」[p]

#kiichi
初明はそう言って、両腕を掲げて見せる。[l][r]
そこには大きな鉄の手錠が嵌められていた。[p]

[setsuSmile]
#setsu
「囚人兵、というところかしら」[p]

#kiichi
「囚人兵！？」[p]

#setsu
「そんなに驚くことかしら」[p]

#kiichi
「ああ、噂には聞いている。死刑や終身刑の囚人達で構成された兵士だろ。任務を終えたら釈放という建前で死地に送られる」[p]

#setsu
「ええ、そうね。だけど、安心していいわ」[p]
「この腕輪のAIが人間に危害を加えようとしていると判断したら、高圧の交流電流が流れて感電するようになってるの」[p]
「試してみる？」[p]

#kiichi
「いや、辞めておく」[p]

[setsuNormal]
初明は「残念」と言いながら口を尖らせる。[p]

人は見た目には依らないとはいえど、彼女はとても凶悪犯には見えない。[l][r]
俺を助けてくれた人だし。[p]

だが、果たして信用していいものか、今更ながら疑問に思い始めて来た。[p]

#kiichi
「専門家って言うのはどんな人なんだ？」[p]

[setsuSmile]
#setsu
「ここに来てから長い人がいるのよ。彼なら、指示薬がどこにありそうか知ってるかなと思って」[p]
「ここのテントね」[p]

[chara_hide name="setsu"]
#kiichi
他のテントより何周りも大きい軍用テントの中に入る。[p]

[bg2 storage="bg_room/room_ai2.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第十二基地 拠点 大天幕'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]
中は意外と広く、長机がコの字に置いてあり、そこの一角に葉巻を吸う軍人がいた。[l][r]
[ayaseShow]
大柄で筋肉質ということ以外は、顔から首まで包帯でぐるぐる巻きであるせいで何も分からない。[p]

[setsuShow]
#setsu
「護氏さん、お疲れ様」[p]

#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「ああ、初明。見回りご苦労。彼が君が今回救助した人かな？」[p]

#setsu
「ええ、そうよ」[p]

#ayase
「どうも、第3基地、歩兵第7小隊小隊長、綾瀬 護氏少尉だ。よろしく頼む」[p]

#kiichi
綾瀬がこちらに歩み寄り、右手を差し出したので握り返して挨拶をする。[p]

#kiichi
「第1基地第106小隊付き衛生兵、古虫二等兵です。よろしくお願いいたします」[p]

#ayase
「ここでは、肩書も立場も意味は無いがな。一応、形式上、やっておくだけだ。そう堅苦しくしなくて構わない」[p]

#kiichi
「わかりました。ありがとうございます」[p]

#ayase
「それで、ここに来たということは、指示薬のことかな？」[p]

#kiichi
「はい、そうです。友人を助けるために、必要なんです」[p]

#ayase
「君は、これを使えるのか？」[p]

#kiichi
綾瀬はそう言って、ポケットから旧IR-Mの注射器を取り出した。[p]

#kiichi
「はい、訓練で一通り習いました。実戦でも使用したことがあります」[p]

#ayase
「そうか。流石、『印持ち』の衛生兵だ」[p]

#setsu
「ええ、そうね」[p]

#kiichi
「印持ち？」[p]
[eval exp="window.fiaDay10Trial.register('bone_delivery', 1)"]

#ayase
「まあいい。それより、これを見てくれ」[p]

#kiichi
机の上にドカッと音と共に無数の紙の束が置かれた。[l][r]
そこには手書きで場所の名前、座標、物品の名前が書いてある。[p]

#ayase
「今までの探索で分かっている空間の情報だ。すまない、電力供給が不安定だから紙に書いたんだ。読みにくいかもしれない」[p]

#kiichi
「そんなことは無いです。旧式のカルテは全て紙だったので慣れてます。それで、ここに指示薬の情報もあるんですね」[p]

#ayase
「そうだ。ここから近いポイントだと、ここだろうな。世紬、行けそうか？」[p]

#setsu
「そうね、この場所であれば比較的時空状態も安定しているし、術も貼り直したばかりだから、問題ないわ」[p]

#kiichi
「ここに行けば、指示薬が手に入る……」[p]

#kiichi
見ず知らずの場所で、信用できるのか分からない人たちが居る。[l][r]
もしかしたら、これは全て罠かもしれない。[p]

だが、一十を助けるには何としても指示薬を手に入れる必要がある。[p]
虎穴に入らずんば虎子を得ず、迷う余地は無かった。[p]

#kiichi
「俺、行きます。一十を助けるためにも」[p]

#ayase
「分かった。だが、大切な衛生兵の君を失う訳にもいかない」[p]
「世紬、一緒について行ってやってくれ。あと、明昼も連れていけ」[p]

#setsu
「一応聞くけど、優知も連れて行かないと駄目？」[p]

#ayase
「万が一もあるからな。見回りから戻ってきたばかりなのに、済まない」[p]

#setsu
「まあ、護氏さんの頼みだからいいわ」[p]
「古虫君、早速だけど行きましょう」[p]

#kiichi
「わかりました。古虫二等兵、行って参ります」[p]

[chara_hide name="ayase"]
[bg2 storage="bg_room/room_d.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第十二基地 拠点'"]
[uiSetPlace]
テントを後にして、初明と共に廃ビルの出入り口付近まで向かう。[p]

#setsu
「古虫君、基本的にはここから拠点の外に出入りするの。診療室はさっきの二階の部屋のドア」[p]
「他のドアは板で塞がれているけど、開けようとしないでね。向こう側が真空だったりすると大変だから」[p]

#kiichi
「ああ、わかった。それなら、すぐに出発しよう。時間が惜しい」[p]

[setsuNormal]
#setsu
「待って。まず、優知と合流してからよ。面倒だけど……」[p]
「今日ならテントで寝てるはずね」[p]

#kiichi
近くのテントに入ったかと思えば、初明は中から一人の男の首根っこを掴んで引っ張り出してきた。[p]

[akehiruAngry]
[akehiruShow]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「何ですか、折角、貴重な読書時間だというのに」[p]

[setsuAngry]
#setsu
「明昼。仕事よ、仕事」[p]

#kiichi
明昼と呼ばれた男は不服そうにわざとらしくため息をつくと、俺をつま先から頭のてっぺんまでまじまじと見つめて来た。[p]

[akehiruSmile]
#akehiru
「君が古虫君ですか。思ったより普通の人ですね」[p]

#kiichi
そう言うなり、興味を無くしたのか自分の髪を弄りだす。[p]

[setsuSmile]
#setsu
「古虫君、彼が明昼 優知。優しさを知るという名前のくせに、優しくない人よ」[p]
「ついでに言っておくけど、相当な戦闘馬鹿だから」[p]

[akehiruJito]
#akehiru
「空気読めないトラブルメーカーの君に馬鹿にされる筋合いはありませんが」[p]

#kiichi
狐のような釣り目、中背位で細身、とにかく胡散臭い男だ。[l][r]
果たしてこの二人と一緒に行くのは、大丈夫なのか。[p]

[akehiruAngry]
#akehiru
「それで、誰です？僕に仕事を命じたのは」[p]

#setsu
「護氏さんよ。私と優知で一緒に行けって言うから」[p]

[akehiruSad]
#akehiru
「僕を指名という事は、面倒な怪異の元に行くんですね」[p]
「はぁ、やってらんねぇー」[p]

#kiichi
「あの、明昼さん。よろしくお願いいたします」[p]

[akehiruSmile]
#akehiru
「はいはい、よろしく。それじゃあ、行きますか」[p]

#kiichi
俺に興味なさげに挨拶すると、スタスタとビルの出口に向かっていったので、慌てて後を追いかける。[p]

[akehiruSurprise]
#akehiru
「そうだ、古虫君。予め言っておきますが、僕は君を守りませんし、世紬を頼りにしないでください」[p]
[akehiruSad]
「世紬は死なないからと言って見捨てる奴ですから」[p]
[akehiruSmile]
「なので、自分の身は自分で守ってくださいよー」[p]

#kiichi
[link storage="01.ks" target="*part101"]【1】「わかった、全力で回避する」[endlink][r]
[link storage="01.ks" target="*part102"]【2】「死ぬ危険について、覚悟はできてる」[endlink][r]
[link storage="01.ks" target="*part103"]【3】「それは一体どういう意味だ？二人は護衛じゃないのか？」[endlink]
[s]

*part101
[cm]
#kiichi
「わかった、全力で回避する」[p]

[setsuAngry]
#setsu
「古虫君、優知は普通に敵味方関係なしに攻撃してくるから。気を付けて」[p]

#kiichi
「は、はい」[p]

[akehiruSad]
#akehiru
「酷いなー、世紬以外は斬らないですよ」[p]

[setsuSmile]
#setsu
「ほらね。これだから、野蛮人は怖い怖い」[p]

[jump target="*part11"]

*part102
[cm]
#kiichi
「死ぬ危険について、覚悟はできてる」[p]

[akehiruSmile]
#akehiru
「死ぬ覚悟は結構ですが、自ら死ぬような真似はしないでくださいね。敵は少ない方がいいので」[p]

[setsuSmile]
#setsu
「優知にしては弱気ね」[p]

[akehiruAngry]
#akehiru
「弱気とかじゃないです。彼が怪異になったら、厄介なのはそちらも同じですよね？」[p]

#setsu
「そう言って、古虫君のことが心配なんでしょう」[p]

[akehiruJito]
#akehiru
「そのおめでたい思考はどこから出て来たんですか……」[p]

[jump target="*part11"]

*part103
[cm]
#kiichi
「それは一体、どういう意味だ？二人は護衛じゃないのか？」[p]

[akehiruJito]
#akehiru
「はぁ、いいですか。別に僕たちとしては、君の友人や君が死のうが構いません」[p]
「綾瀬さんに頼まれたから助けるだけです。誰が好き好んで君の為に血を流すんですか」[p]

[setsuAngry]
#setsu
「言い方はアレだけど、要するに全力を尽くしても君の命は保証できないってことよ」[p]

#kiichi
「は、はい」[p]

[setsuNormal]
#setsu
「優知は捻くれてるけど、仕事はする人間よ。その上で、君を守り切れない可能性があると宣言してるの」[p]

[akehiruSmile]
#akehiru
「別に、彼が死のうと僕は知ったこっちゃ無いんですよ」[p]

#setsu
「そう言って、死なせる気は無いんでしょう？」[p]

[jump target="*part11"]

*part11
[cm]
#kiichi
この二人、昔馴染みなのだろうか。明昼は軍服だが手錠はしていない辺り、囚人兵では無さそうだが……。[p]

だが二人の関係より、まずは指示薬を手に入れる方が重要だ。[l][r]
一十の呼吸は、最後に見た時よりも弱くなっていた。このまま頭の中で出血が続いていたら、戻る頃には手遅れかもしれない。[p]

#kiichi
「早く行こう。一分一秒でも惜しいんだ」[p]

[akehiruSmile]
#akehiru
「だそうですよ」[p]

[setsuSmile]
#setsu
「ふふ、わかったわ。それじゃあ、すぐに帰ってきましょう」[p]

#kiichi
重い回転扉を押してビルから出ると、窓ガラスから見えていた街並みとは違い、基地の廊下に繋がっていた。[p]

[bg2 storage="bg_room/room_i.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第十二基地 廊下'"]
[uiSetPlace]
[stopbgm]
#setsu
「今回は目的地が決まってるから、私の方で座標を固定して進むけど、普通はこの先の扉はランダムな部屋に転移するから気を付けてね」[p]
「部屋を開けた途端即死するような部屋には繋がらないようにして入るけど、怪異はうろついているから」[p]

#akehiru
「こういう探索に行くときは、こいつの札を持って行ってくださいね」[p]

#kiichi
明昼から札の束を受け取った。[l][r]
白い和紙に、鈍色の墨か何かで文字やら幾何学模様やらが書かれている。[p]

#kiichi
「これは？」[p]

#akehiru
「術札ですよ。これで、ある程度の時空が固定できます」[p]
[akehiruSad]
「不本意ながら、世紬しか作れないので、無くなったら彼女から貰ってください」[p]

#kiichi
「なんだかよく分からないが、わかった」[p]

[akehiruSmile]
#akehiru
「そうですか。それじゃあ、さっさと出発しましょうか」[p]

#kiichi
指定された廊下のドアを開くと、部屋の中心に黒い金属が浮いている部屋に出た。[p]

[chara_hide name="setsu"]
[chara_hide name="akehiru"]
[bg2 storage="adv_room/room0.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '???'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="battle1.m4a"]
金属を眺めていると、急に首が痒いような不快感を感じる。[l][r]
触れても何も無いのに、徐々にピアノ線で首を縛られていくような、そんな感覚だ。[p]

[akehiruShow]
[akehiruSmile]
#akehiru
「ソーライン打っていても、見ない方がいいですよ。普通の人間なら、狂うので」[p]

#kiichi
「見ないようにしてるんだが、何だろう、気持ちが悪いんだ。怖いような、そんな気がして……」[p]

[akehiruSurprise]
#akehiru
「……ソーライン、打ってますよね？」[p]

#kiichi
「ソーライン……」[p]

[stopbgm]
[playbgm storage="noise.m4a"]
#kiichi
思考がまとまらなくなっていく。[l][r]
頭の中が恐怖で上書きされて行って、何が何だか分からなくなってきた。[p]

俺はアレに手足を捥がれ、耳を斬られ、目を抉られ、内臓を抉られ、針で刺されて、苦しんだ果てに首を斬られて殺されるんだ。[p]

苦しむなら、死ぬしかない。俺は死ななければならない。ブレードを自分の首に当てれば……。[p]

[setsuShow]
[setsuSurprise]
#setsu
「彼、発狂したわね。ソーライン打つの、忘れてしまったみたい」[p]

[akehiruNormal]
#akehiru
「僕はソーライン持ってないですよ。世紬は？」[p]

[setsuSmile]
#setsu
「もちろん、持ってないわ」[p]

[akehiruSerious]
#akehiru
「なら、どうして打ってこなかったんですか」[p]

#setsu
「死ぬことは無いからね。それに、もうそろそろ届くはずよ」[p]

[akehiruSmile]
#akehiru
「僕は、あなたのそういう所が嫌いです」[p]

[syuuichiNormal]
[syuuichiShow]
#syuuichi
「たのもー！誰かいるか！」[p]

[akehiruJito]
#akehiru
「……世紬、彼が来ると聞いてないのですが」[p]

#setsu
「だって、言ってないもの」[p]

[akehiruNormal]
#akehiru
「本当、あなたが大嫌いです」[p]

[syuuichiSurprise]
#syuuichi
「うわ！怪異！って、古虫！？どうしたんだ！？」[p]

[akehiruSmile]
#akehiru
「……発狂してるようでして。軍人なら、予備を持ってますよね？」[p]

#setsu
「山本さん、後はよろしくね。私たちは怪異を殺しておくから」[p]
[chara_hide name="setsu"]

#syuuichi
「状況は大体理解した。って、俺に任せるのかよ！」[p]

#akehiru
「世紬のせいです。それだけで、わかるでしょう？」[p]
[chara_hide name="akehiru"]

[syuuichiAngry]
#syuuichi
「ったく、仕方ないな……」[p]

#kiichi
誰かが俺の腕を締め付け、袖を捲り上げる。[l][r]
腕の血管が浮き、静脈が浮かび上がった。[l][r]
その瞬間、鋭い針が俺の腕を貫いた。[p]

皮膚の下の静脈を太い針が這う感覚。[l][r]
そこから、毒が流れ込むのを感じる。[p]

今、動けば、この針が血管を伝って、心臓を刺して俺は死ぬ。[p]

#kiichi
「嫌だ、嫌だ……おれは……嫌だ……」[p]

#kiichi
息が苦しくなり、腕が痙攣し始め、膝から崩れ落ちる。[l][r]
針は抜かれたが、毒はもう全身に回った。[p]

心臓が拍動するたびに末梢まで送り届けられる。[l][r]
このまま呼吸困難になって、泡を吹いて苦しんで死ぬんだ。[p]

だったら一思いに殺してくれ。[p]

#kiichi
「……殺してくれ、俺を……」[p]

[syuuichiNormal]
#syuuichi
「落ち着け、古虫。これは毒じゃなくてソーラインだ。俺の声、聞こえるか？」[p]

#kiichi
「……苦しい……殺してくれ……殺してくれ……」[p]

[syuuichiAngry]
#syuuichi
「お前は、一十を助けるんじゃなかったのか？」[p]
「それとも、助かってたりする？」[p]

#kiichi
「一十……」[p]

#kiichi
首から下げていたお守りが目に入る。[l][r]
そうだ、俺は一十を助けないといけないんだ。[p]

こんなところで、恐怖で震えあがっている場合じゃない。[p]

[stopbgm]
[setsuNormal]
#kiichi
「……俺は指示薬を探さないと……一十のために……」[p]

死にたいと思っていた気持ちが、段々馬鹿らしく思えてきた。[p]

だが、すぐに喉に当てた刃の冷たさを思い出して、反射的に首を押さえる。[l][r]
体の奥底の震えがまだ止まらない。[p]

[syuuichiSmile]
#syuuichi
「大丈夫か、古虫」[p]

#kiichi
「……大丈夫かだって……」[p]

深呼吸をしても、息が上手く吸えない。[l][r]
今動かなければ、本当に間に合わなくなる。[p]

分かってる。なのに、体が動かなかった。[p]

#kiichi
「……俺が……くそっ……動けよ……！」[p]

[syuuichiNormal]
#syuuichi
「しゃーねぇな、俺が見つけてくるよ」[p]

背中を叩かれて、思わず顔を見る。[l][r]
その見覚えのある顔に、さっきまでの恐怖が少し和らいだ。[p]

#kiichi
「……秀一！？」[p]
[eval exp="f.chara_state.syuuichi.alive=true"]

#syuuichi
「よお、古虫。感動の再会といきたいところだが……立てるか？」[p]

#kiichi
「……情けないことに、動けない」[p]

[syuuichiSmile]
#syuuichi
「ナイーブなお前の事だから、そうだと思ったぜ。まあ、少し待ってろ」[p]

[chara_hide name=syuuichi]

#kiichi
秀一はそう言って、部屋の周囲を漁り始めた。[l][r]
俺はそれを眺めつつ、呼吸を落ち着ける。[p]

今も明昼が怪異を倒し続けているのが見えた。[l][r]
ただ、怪異が目に入った途端、胸の奥が冷たくなり目を逸らす。[p]

その先でのんびり戦闘の様子を眺めている初明の姿をみとめた。[p]

[setsuSmile]
[setsuShow]
#kiichi
「……初明。こうなると、知ってたのか？」[p]

#setsu
「ええ。でも、こうして助かったでしょう？」[p]

#kiichi
「手伝わないのか？」[p]

[setsuNormal]
#setsu
「優知君の邪魔をしたら、可哀そうじゃない。だって、彼、楽しそうでしょう？」[p]

#kiichi
言われてみれば、明昼は笑顔で戦っていた。[l][r]
楽しそうに怪異を切り刻み続ける。[p]

「何で笑ってるんだ？」[p]

[setsuSmile]
#setsu
「さあ？それより、そろそろ落ち着いた？」[p]

#kiichi
「おかげさまで」[p]

[syuuichiSurprise]
[syuuichiShow]
#syuuichi
「……紀一！あったぞ！これか！？」[p]

#kiichi
「本当か！？今行く！」[p]

秀一の元に向かうと、ひしゃげた棚の中にいくつもの薬瓶が散乱していた。[l][r]
[setsuSmile]
[setsuNormal]
通信兵の秀一ではどれが使える薬か判別できないため、割れたり汚染されたりしているものを除き、使えるものを素早く選別する。[p]

一番と五番、頭部用と末端用。状態も悪くない。これで一十の治療ができる。[l][r]
だが、まだ喜ぶには早い。一十がこの間も生きていてくれなければ、何の意味もない。[p]

#kiichi
「まだ使えるぞ」[p]

#setsu
「ふふ、よかったわね。優知、そっちはどう？」[p]

#akehiru
「もう終わりですか？まあ、いいでしょう。さっさと帰りましょう」[p]

[akehiruSmile]
[akehiruShow]
#kiichi
「ありがとう、明昼！」[p]

#akehiru
「……はぁ、どういたしまして」[p]

#kiichi
空間を固定するために部屋の扉に札を貼り、早足で拠点に戻る。[l][r]
[bg2 storage="bg_room/room_d.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第十二基地 拠点'"]
[uiSetPlace]
[playbgm storage="daily.m4a"]
そして、そのまま病室に向かおうとした途端、秀一に腕を掴まれて止められた。[p]

[syuuichiAngry]
#syuuichi
「待て、紀一。外から帰ったら、することがあんだろ！」[p]

#kiichi
[link storage="01.ks" target="*part111"]【1】「手洗いうがい……？」[endlink][r]
[link storage="01.ks" target="*part112"]【2】「汚物は消毒だ！燃やせ！」[endlink][r]
[link storage="01.ks" target="*part113"]【3】「タナトリウム除去だろ」[endlink]
[s]

*part111
[cm]
#kiichi
「手洗いうがい……？」[p]

[syuuichiJito]
#syuuichi
「タナトリウム除去に決まってるじゃん！」[p]

[akehiruJito]
#akehiru
「君は馬鹿なんですか……?」[p]

[setsuSmile]
#setsu
「面白い人達ね。二人とも、除去装置はそこのテントのを使って頂戴」[p]

#kiichi
「そういえば、そうだったな。長らく基地外に出てないせいで、忘れていた」[p]

[jump target="*part12"]

*part112
[cm]
#kiichi
「汚物は消毒だ！燃やせ！」[p]

[syuuichiAngry]
#syuuichi
「くそっ、精神汚染が残っちまったか！？」[p]

[akehiruJito]
#akehiru
「正常ですよ。きっと、彼は元から、狂ってたんです」[p]

[setsuJito]
#setsu
「そう……可哀そうに……」[p]

#kiichi
「……」[p]

[setsuSmile]
#setsu
「二人とも、除去装置はそこのテントのを使って」[p]

#kiichi
「……わかった」[p]

[jump target="*part12"]

*part113
[cm]
#kiichi
「タナトリウム除去だろ」[p]

[syuuichiJito]
#syuuichi
「忘れたかと思ったぜ。タナトリウムは人間にとって有害な物質だからな」[p]

[akehiruSmile]
#akehiru
「まあ、常識ですよね」[p]

[setsuNormal]
#setsu
「二人とも、除去装置はそこのテントのを使って頂戴」[p]

#kiichi
「わかった、ありがとう」[p]

[jump target="*part12"]

*part12
[cm]
[chara_hide name="setsu"]
[chara_hide name="akehiru"]
#kiichi
秀一と一緒に除去装置に向かう。[p]

[syuuichiNormal]
#syuuichi
「紀一、何そわそわしてんだ。汚染を持ち込んだら一十まで危ないだろ。ここはちゃんと洗浄しないとだかんな」[p]

#kiichi
「……わかってる」[p]

除去装置の洗浄ポッドに入って、冷たい洗浄液で肺の奥まで洗浄される。[p]

全自動浴槽の強化版みたいなこの拷問装置、未だに肺を洗浄液で満たされる感覚とか慣れない。[l][r]
それに、洗浄時は洗濯物になった気分で、どうにも好きになれそうにないものだ。[p]

「げほっ、げほっ……やっと終わった……」[p]

[syuuichiJito]
#syuuichi
「毎回、こればっかりはどうにもならないもんだよな」[p]

乾燥に予想より時間がかかったが、タナトリウム汚染の被害者を拠点内に増やすよりははるかにマシだ。[p]

#kiichi
「直ぐに治療しに行かないと」[p]

[syuuichiNormal]
#syuuichi
「おい待てって。報告はどうすんだ？」[p]

#kiichi
「それは……」[p]

[setsuSmile]
[setsuShow]
#setsu
「古虫君、報告は優知と私と山本さんでやっておくから、先に病室に行きなさい」[p]

[akehiruSurprise]
[akehiruShow]
#akehiru
「え、僕もですか？」[p]

#syuuichi
「古虫、ここは俺たちに任せて、行ってこい」[p]

#kiichi
「ありがとう、三人共。助かる」[p]

[chara_hide name="setsu"]
[chara_hide name="akehiru"]
[chara_hide name="syuuichi"]
指示薬を持って、一十の元に走る。[p]

「一十！」[p]

[bg2 storage="stil/stil13.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[cg storage="stil/stil13.png"]
[eval exp="f.currentPlaceName = '旧第十二基地　医務室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="medic.m4a"]
ベッドの上で眠る彼女の脈と呼吸を確かめる。[l][r]
かろうじて脈はある。だが、呼びかけても反応しない。[p]

やはり、呼吸に不安定さがあった。[l][r]

脳内部で出血を起こして脳を圧迫しているかもしれない。[p]

すぐに、IR-Mを調合する。[l][r]

指示薬は密封されていて汚染が少ないから、使用しても問題は無さそうだ。[p]

慎重に分量を量り、ただちに投与する。[p]

#kiichi
「頼むから、目覚めてくれ……」[p]

呼吸の間隔を数えながら待つ。[l][r]
一定間隔で胸が上下するのを見て、ようやく息を吐く。[p]

#kiichi
「……ひとまず、様子を見るしかないか」[p]

一先ず、重篤な怪我の一通りの処置は終わった。[p]

後は、細胞の再生が正常に行われ、無事に目覚めてくれることを祈るだけだ。[l][r]
だが、まだ助かったと断言できる段階ではない。[l][r]
今夜はこのまま見張るつもりだ。[p]

隣の丸椅子に腰をかけて、一息つく。[p]


#???
「あの、そのIR-Mを使っても大丈夫なんですか？旧型は副作用が酷いって……」[p]

[bg2 storage="bg_room/room_ai1.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[airanSad]
[airanShow]
#kiichi
カーテンの向こう側から声がして振り返ると、小柄な少女がおどおどした様子でこちらの様子を見ていた。[p]

#kiichi
「君は……？」[p]

[airanSad]
[eval exp="window.fiaLibrary.observe('airan')"]
#airan
「すいません、覗き見る気は無かったんです。その、運ばれてきた人が無事か心配で……」[p]

#kiichi
「必要な処置はした。だが、まだ目を覚ましてないんだ」[p]

#airan
「そうなんですね……」[p]

[airanSmile]
#kiichi
軍服姿な辺り、彼女もまた軍人なのだろう。[l][r]
ただ、それにしては幼い。まだ高校生くらいに見える。[p]

#kiichi
「それで、君はどうしてここに？」[p]

[airanSurprise]
#airan
「すいません！自己紹介がまだでした……」[p]
[airanNormal]
「私は青葉 藍爛です。まだ、訓練生ですが、事故に巻き込まれてここに……」[p]
[airanSad]
「拠点では、怪我人の人たちの手当をしてたのですが、そういう勉強をしてこなかったので……すいません……」[p]

#kiichi
「謝ることは無い。青葉さんも十分に頑張ってると思う」[p]

#kiichi
この病室には多くの重傷者が寝ているにも関わらず、空気が淀まないように換気がされているし、どのシーツも毎日交換しているのか綺麗にされていた。[p]
この人数の手当を彼女一人でやっていたと考えると、相当なものだ。[p]

#kiichi
「今まで一人で？」[p]

[airanNormal]
#airan
「いえ、拠点の人たちと一緒に。ですが、今はお医者さんも衛生兵の方もいないんです……」[p]
[airanSad]
「……だから、ちゃんと手当ができなくて……沢山の方が亡くなりました……」[p]

#kiichi
「そうだったのか……大変だったな」[p]

[airanSmile]
#airan
「いえ、そんなことないです。こんな私でも、役に立てるなら、嬉しいです」[p]
[airanNormal]
「……あの、それで、貴方はその、お医者様なのですか？」[p]

#kiichi
[link storage="01.ks" target="*part121"]【1】「俺か？いや、医者じゃない」[endlink][r]
[link storage="01.ks" target="*part122"]【2】「俺が医者に見えるか？」[endlink][r]
[link storage="01.ks" target="*part123"]【3】「まさに、俺は医者だ」[endlink]
[s]

*part121
[cm]
#kiichi
「俺か？いや、医者じゃない」[p]
「俺は古虫 紀一、衛生兵だ」[p]

軍識別証と、赤い腕章を青葉に見せる。[p]

[airanNormal]
#airan
「衛生兵……それでも！ここに居る人も治療して頂けませんか！？」[p]

[jump target="*part13"]

*part122
[cm]
#kiichi
「俺が医者に見えるか？」[p]

[airanNormal]
#airan
「はい！」[p]

#kiichi
彼女には皮肉が通じないようだ。[l][r]
ここは正々堂々、自己紹介するに限る。[p]

#kiichi
「俺は古虫 紀一、衛生兵だ」[p]

軍識別証と、赤い腕章を青葉に見せた。[p]

[airanSurprise]
#airan
「衛生兵の方でしたか……！」[p]
[airanNormal]
「それなら！ここに居る人も治療して頂けませんか！？」[p]

[jump target="*part13"]

*part123
[cm]
#kiichi
「まさに、俺は医者だ」[p]

[airanSmile]
#airan
「本当ですか！！それなら、病気の人も多くいるんです。診ていただけませんか！？」[p]
[airanNormal]
「お願いします！」[p]

#kiichi
純粋無垢な視線が痛い。[l][r]
どうやら、彼女は本当に俺が医者だと信じてしまったようだ。[p]

どうして、俺はこんな時にこの冗談を言ったんだ……。[p]

#kiichi
「すまない、冗談だ。俺は古虫 紀一、衛生兵だ」[p]

軍識別証と、赤い腕章を青葉に見せる。[p]

[airanSad]
#airan
「……騙したんですね……」[p]

#kiichi
「信じると思ってなくて……その……すまない……」[p]

[airanAngry]
#airan
「……」[p]

#kiichi
やはり、この場で言うには相応しくなかった。[p]

[airanNormal]
#airan
「それでも衛生兵なら……その……ここに居る人も治療して頂けませんか？」[p]

[jump target="*part13"]

*part13
[cm]
[airanNormal]
#airan
「お願いします！」[p]

#kiichi
藍爛は深々と頭を下げた。[l][r]
肩の震えから、彼女のその必死さが伺える。[p]

俺だって医療従事者の端くれだ。[l][r]
目の前で死にかけている人が居たら、知り合いであろうと無かろうと助けたい。[p]

#kiichi
「それは勿論だ」[p]
「だが、問題があってな。恐らく、物資が足りない。ここに居る患者は何人位だ？」[p]

#airan
「この部屋の重傷者だけでも20人は居ます。隣の拠点でまだ応急処置しかできてない人は30人程は居るはずです」[p]

#kiichi
「指示薬だけでも、ここに居る人間の半分しか治療でき無さそうだ」[p]
「それに、浸食度が高い人には抗蝕物質を使用する必要があるんだが、ここにありそうか？」[p]

[airanSad]
#airan
「すいません、ここには無いです……」[p]

#kiichi
「この件は、拠点の人たちと相談すべきだろうな。だが、俺のできる範囲で処置はする」[p]

[airanSmile]
#airan
「本当ですか！ありがとうございます！」[p]

#kiichi
ここがどこで、彼らが何者か分からなくても、治せるなら怪我人を治療すべきだ。[p]

それに、偶然乗りかかった舟だ。衛生兵である以上、手当はする。[p]

#kiichi
「とりあえず、綾瀬さんに報告だけしないと」[p]

立ち上がった時、めまいがした。[l][r]
どうやら、予想以上に疲労が蓄積していたらしい。[p]

考えてみれば、今日一日、基地の襲撃から怪異との戦闘、一十の治療とずっと気を張り詰めて、命の危機に晒されて、見ず知らずの場所にいる。[p]

疲れないはずが無いというものだ。[p]

[airanSurprise]
#airan
「古虫さん！」[p]

#kiichi
「大丈夫、少し疲れてるだけだ」[p]

[airanNormal]
#airan
「今日はもう休んだ方がいいと思います。あと、私が見ておきますので」[p]

#kiichi
「だが、万が一、容体が急変したら……」[p]

#airan
「その前に古虫さんが倒れたら、元も子もないです」[p]

#kiichi
「……それもそうか……」[p]
「……それなら、青葉さん。後は頼んだ。俺は報告したら休む。一十の様子が少しでも変わったら、すぐに起こしてくれ」[p]

[airanSmile]
#airan
「はい！わかりました！」[p]

#kiichi
患者への対応を見て、青葉さんは信頼できる人だと感じた。[l][r]
だから、彼女にこの場を任せて、俺も報告のために綾瀬さんの元へと向かう。[p]

[chara_hide name="airan"]
[bg2 storage="bg_room/room_ai2.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '旧第十二基地　拠点　大天幕'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]
[ayaseShow]
#kiichi
「綾瀬少尉、古虫 紀一、帰還しました。報告が遅くなり、申し訳ございません」[p]

#ayase
「無事でよかった、古虫君。別に報告ももっと軽い感じで構わない。それで、友人の治療はできたか？」[p]

#kiichi
「はい、必要な処置はできました。情報の提供、ありがとうございます」[p]

#ayase
「礼なら世紬と優知と山本君に言ってくれ。探索の話は三人から聞いている。まずは、君が無事でよかった」[p]

#kiichi
「おかげさまで。ありがとうございます」[p]

#ayase
「それで、一つ、話があるんだ。とりあえず、そこにかけてくれ」[p]

#kiichi
「はい、わかりました」[p]

椅子に座り、綾瀬と面と向かう。[p]

落ち着いてテントを見渡すと、改めてここがどれほど異質な状況にあるのかが理解できた。[l][r]
壁に張られた無数の怪異の写真やイラスト、動かなくなったパソコン、紙の山。[l][r]

そして、積み上げられた刀の山とドッグタグ。[p]

多くの軍人が今までに亡くなったのだと分かる。[p]

#ayase
「この拠点には第12基地の事故の生き残り、転移装置事故の被害者、基地へ任務で来た軍人、様々な人間がいる」[p]
「しかし、君も既に気が付いていると思うが、ここには医者も看護師も居ないんだ」[p]

#kiichi
「それはどうして？」[p]

#ayase
「この前、連盟の襲撃があってね。爆発に巻き込まれたのが医務室だったんだ」[p]
「医者も衛生兵もその中にいた。だから、今はもうこの拠点で十分な治療ができる者がいない」[p]

#kiichi
「どうして、連盟が！？」[p]

#ayase
「ここにある『遺骨』を狙ってるのだよ」[p]

#kiichi
「それは……？」[p]

#ayase
「ボーンハウンド作戦、軍人なら知らない訳は無いだろう？」[p]

#kiichi
「それは……そうですね」[p]

ボーンハウンド作戦、数年前から始動した『遺骨』を収集する軍事作戦の事だ。[p]
何でも、『遺骨』には未来予知により決められた未来を変える能力があるらしい。[p]
そこで、未来予知の精度が高い連盟の対抗戦力として軍部では『遺骨』を集めている。[p]

#ayase
「ここで所持している『遺骨』は今、私の手元にある。だが、連盟の連中は知らないからこそ、私たちを攻撃しているに違いない」[p]
[eval exp="window.fiaDay10Trial.register('bone_conversation', 1)"]

#kiichi
「だから無差別に攻撃だなんて、酷すぎます」[p]

#ayase
「そうだな。前の拠点も全て焼き払われた事もある」[p]

#kiichi
綾瀬はそう言って、包帯だらけの顔を指さした。[p]

#ayase
「これはその時の傷だ。火が回って、子供たちを助けようとしたが、結局誰も救えなかった」[p]

#kiichi
「……」[p]

#ayase
「だが、私はいつか連盟とも手を組めると信じている。だからこそ、拠点ではこうして誰彼構わず保護するスタンスを取っているのだ。しかし、手を差し出すだけでは、全員を守ることはできない」[p]
「そこで、君に協力してもらいたいことがある」[p]

#kiichi
「俺に、ですか？」[p]

#ayase
「そうだ。医務室が爆破されたせいで、まともな医療物資も失われてしまった。今は素人の探索班が手探りで薬を集めている有様でね」[p]
「君には、負傷した衛生兵や医者を助けて欲しい。治療できる人が増えれば、怪我人が出ても救える。そうすれば、また襲撃に怯えて生活する必要は無くなるはずだ」[p]
「それに、バックアップ体制が整えば、探索が進み、前に途中で諦めていた脱出ルートが開拓できるかもしれない」[p]
「君が居て初めて、我々はここから出られる。頼む、我々の為に手を貸してくれないか？」[p]

#kiichi
「……はい、わかりました。俺もできる限り、治療をして貢献します」[p]

#ayase
「ああ、頼んだ。これから、共に生きて帝都に帰るために、頑張ろう！」[p]

#kiichi
「はい！」[p]

#ayase
「そうだ、古虫君。さっきの襲撃の件で、一つだけ忠告しておきたい」[p]

#kiichi
「それは……？」[p]

#ayase
「あの襲撃には、誰かが手引きした可能性がある。今もこの拠点に、裏切者がいるかもしれん」[p]

#kiichi
「……」[p]

#ayase
「安心してくれ、君たち三人を疑っている訳ではない。そうなら、こんな話はしないからな」[p]
「まあ、裏切られたとしても、その時はその時だ」[p]

#kiichi
「裏切者……なら、救助者の中に紛れてるかもしれないんですか？」[p]

#ayase
「そうだ、怪我人なのかもしれない。それはまだ分からない。だが、君も十分に注意してくれ」[p]
「もし、何かあったら私に早めに知らせるように」[p]

#kiichi
「はい、わかりました」[p]

#ayase
「さて、古虫 紀一君。暗い話はここまで」[p]
「我々は君を心から歓迎するよ」[p]
「顔色が悪い。一先ず今日は休みなさい。君が休むためのテントは手配しておいた。山本君にも別のテントを用意してある。友人の容体に変化があれば、すぐ知らせるようにしよう」[p]

#kiichi
「ありがとうございます。助かります」[p]

[chara_hide name="ayase"]
椅子に座って待っていると、しばらくして若い軍人の男がやってきた。[l][r]
彼に連れられ、ビルの端の小さなテントに向かう。[p]

[bg2 storage="bg_room/room_d.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[stopbgm]
[syuuichiNormal]
[syuuichiShow]
途中、テントの前で秀一が待っていた。[p]

#syuuichi
「一十の様子はどうだ？」[p]

#kiichi
「呼吸は落ち着いてる。青葉さんが見てくれてるから、安心しろ」[p]

[syuuichiSmile]
#syuuichi
「そうか、よかった。なら、後はゆっくり休めよ」[p]

#kiichi
「ああ、また明日」[p]

[chara_hide name="syuuichi"]
秀一とはそこで別れ、案内役の軍人に連れられて自分に割り当てられたテントに向かった。[p]

テントに入る直前、隣のテントから出てきた同年代くらいの男に「やあ、僕は隣の――」とかなんとか話しかけられた気がしたが、極限まで疲れ切っていた俺は生返事だけして中に転がり込んだ。[p]

[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
置かれた粗末な簡易ベッドに横になった途端、緊張の糸がプツリと切れたように、抗いがたい深い眠気に襲われた。[p]

明日からどうなるのか。第1基地はどうなったのか。[l][r]
そもそも、どうして俺は第12基地に転移してきたのか。[p]
謎は尽きないが、今はただ休むしかなかった。[p]

目を閉じても、一十の姿が浮かぶ。[l][r]
俺が見ていない間に何かあったら……。[p]
だが、今は青葉さんが一十を見てくれている。[l][r]
何かあれば知らせてもらえるはずだ。[p]

それに、今日は疲れた。もう、何も考えられない。[p]
俺はそのまま泥のように眠った。[p]
[jump storage="daily.ks" target="*addDay"]
[s]
