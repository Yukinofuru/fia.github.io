; DAY02の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 02.ks / DAY02 本文
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


; ---- part01 ----
*part01
;メッセージウィンドウの表示
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]
[uiDestroy]
[cm]

[uiSetMenu]
;背景画像の表示
[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[playbgm storage="daily.m4a"]

#ito

[eval exp="window.fiaLibrary.observe('ito')"]
「起きろ」[p]
#kiichi
「ん……まだ、寝かしてくれ……」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「起きろ、古虫」[p]

#kiichi
布団を剥がされ、外の寒さから目を覚ます。[p]

[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[itoAngry]
[itoShow]

#kiichi
「おい、何すんだよ！」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「全く、お前は寝坊しすぎだ。いくら、今は任務中では無いとはいえ、そんな体たらくでは、軍人の名折れというものだ」[p]

#kiichi
目が外の光に慣れてきて、輪郭が定かになっていく。[p]
そして、テントの前で仁王立ちしていた人に驚いて、飛び起きた。[p]

#kiichi
「一十！？起きたのか！？」[p]
[itoNormal]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「ずいぶん前にな。青葉がお前を起こしに行ったが、さっぱり起きなかったから、こちらから来ただけだ」[p]
#kiichi
「どこも変なところは？痛いところは無いか？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前のお陰で、すっかり元気だ。そんなことより、お前、呼ばれていたぞ」[p]
#kiichi
「そんなことって、危なく死ぬところだったじゃないか！？」[p]
[itoSmile]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「だが、今回もお前のおかげで死ななかっただろ？」[p]
[itoBlush]
「まあ、なんだ……その……ありがとな……紀一……助かった」[p]
#kiichi
「……」[p]
#kiichi
[link storage="02.ks" target="*part11"]【1】「まさか、お前、俺に惚れたのか！？」[endlink][r]
[link storage="02.ks" target="*part12"]【2】「……面と向かって言われると……困んだよ……」[endlink][r]
[link storage="02.ks" target="*part13"]【3】「あれ？声が小さくて聞こえないな？」[endlink]
[s]


; ---- part11 ----
*part11
[cm]
#kiichi
「まさか、お前、俺に惚れたのか！？」[p]
[itoAngry]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「そんな訳あるか馬鹿！」[p]

#kiichi
可憐に決まる右ストレート。[l][r]
気が付いたら、俺は床にキスしていた。[p]
[itoNormal]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「そこで頭を冷やしてろ」[p]
[jump target="*part2"]
[s]


; ---- part12 ----
*part12
[cm]
#kiichi
「……面と向かって言われると……困んだよ……」[p]
[itoJito]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「何だその態度。気持ち悪いな……」[p]
#kiichi
「気持ち悪いって、何だよ！あーあ、傷ついた！金輪際、お前を助けないからな！」[p]
[itoSmile]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「ははっ、いいさ。お前が居なくても、IR-Mの使い方なら、私だってわかるからな！」[p]
[jump target="*part2"]
[s]


; ---- part13 ----
*part13
[cm]
#kiichi
「あれ？声が小さくて聞こえないな？」[p]
[itoAngry]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「何でも無い、馬鹿！」[p]
#kiichi
「今さっき、『ありがと』って言ったような？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「気のせいだ！聞こえなかった、お前が悪い！」[p]
[jump target="*part2"]
[s]


; ---- part2 ----
*part2
[cm]
その時、ふと、テントの外から声がした。[p]

[airanNormal]
[airanShow]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「曙さん。古虫さん、起きましたか？」[p]
[itoNormal]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……ああ、そうだ。青葉は先に綾瀬さんの所に行っていてくれ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「わかりました」[p]

[chara_hide name="airan"]

#kiichi
走り去る音がするなり、一十が俺に向かって服を投げつける。[p]

#ito

[eval exp="window.fiaLibrary.observe('ito')"]
「綾瀬さんが呼んでる。とっとと準備して行くぞ」[p]
#kiichi
「わかったよ。で、着替えるからテントから出てってくれないか？」[p]
[itoAngry]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「言われなくても。誰が好き好んで、お前の着替えを見るんだ」[p]
[chara_hide name="ito"]

#kiichi
[bg2 storage="bg_room/room_d.png" time=1000 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　拠点'"]
[uiSetPlace]
急いで着替えを済ませてテントから出ると、外で待っていた一十の隣に、見慣れた顔が並んでいた。[p]

[itoNormal]
[syuuichiSmile]
[itoShow]
[syuuichiShow]
#syuuichi
「よお、お寝坊さん。やっとお目覚めか？」[p]

#kiichi
「秀一。お前も呼ばれてたのか」[p]

#syuuichi
「ああ。昨日のうちに大体の話は聞いたけどな、一十も目を覚ましたって聞いて、顔を見に来たんだよ」[p]
「しかし、昨日あんな大怪我してたってのに、もうピンピンしてるなんて化け物かよ」[p]

[itoJito]
#ito
「誰が化け物だ。紀一の処置が良かっただけだ」[p]
「……それと、秀一。昨日の脱出の時、私を運んでくれたのはお前と紀一だと聞いた。礼を言う、ありがとう」[p]

[syuuichiSmile]
#syuuichi
「よせよ、改まって。俺はただ、親友とその大事な幼馴染を見捨てたくなかっただけさ」[p]

#kiichi
「一言余計なんだよ、お前は」[p]

#ito
「全くだ。ほら、無駄口を叩いてないでさっさと行くぞ」[p]

#kiichi
俺たちは三人で並んで、綾瀬のテントへと向かった。[p]

[bg2 storage="bg_room/room_ai2.png" time=1000 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　拠点　大天幕'"]
[uiSetPlace]
[ayaseNormal]
[ayaseShow]
綾瀬は葉巻を吸いながら、何やら書き物をしている。[l][r]
テントには既に青葉の姿もあった。[p]

[airanNormal]
#airan
「綾瀬さん、皆さんが来ました」[p]

#ayase
「そうか。よく来てくれた、三人とも。曙 一十、古虫 紀一、山本 秀一」[p]
「まずは、曙君も無事に目を覚まして何よりだ」[p]

[itoNormal]
#ito
「はい。ご心配をおかけしました」[p]

#kiichi
綾瀬は立ち上がるなり、一十と俺たちに握手を交わす。[p]

#ayase
「立ち話もなんだ、とりあえず座ってくれ」[p]

#ito
「はい」[p]

#kiichi
「わかりました」[p]

綾瀬と面と向かって座ると、いつの間にか青葉が缶詰めやらペットボトルやらを持ってきてくれた。[p]

#ayase
「歓迎会にしては些細な食事ですまない。あまり、食料備蓄も多い訳ではなくてね」[p]

#ito
「食事を頂けるだけでも有難いです。ご厚意、ありがとうございます」[p]

#syuuichi
「いやあ、朝から飯にありつけるだけで十分ですよ。ありがたく頂きます」[p]

#ayase
「君たちは、若いんだから、しっかり食べると良い。朝食でも食べながら、今後のことについて話そう」[p]

#kiichi
缶詰を開けながら、昨日聞いた話を思い返す。[l][r]
第1基地が襲撃され、秀一の機転で転移装置を使った結果、俺たちはこの旧第12基地に迷い込んだ。[p]

意識を失っていた一十には、今朝方、秀一や青葉から大まかな事情を説明したらしい。[l][r]
ともあれ、こうして三人とも五体満足で揃っているのは奇跡みたいなものだ。[p]

#ayase
「昨日、古虫君と山本君には少し話したが、改めて三人にお願いがある」[p]
「この拠点には多くの避難民がいるが、動ける軍所属の人間が私を含め四人ほどしかいない。多くは怪我や怪異化の進行で、病室で眠ってもらっている状態だ」[p]
「そこで、君たち三人にも今日から拠点の仕事を手伝って欲しい」[p]
「曙君と山本君には、世紬や優知たちと共に拠点外の探索をお願いしたい。いいか？」[p]

#ito
「わかりました。前衛なら任せてください」[p]

#syuuichi
「俺は通信兵なんで戦闘はこいつほど得意じゃないですけど、索敵やサポートならお安い御用です」[p]

#ayase
「頼もしいな。そして古虫君、君には昨日の話通り、病室の患者たちの治療をお願いしたいのだが……」[p]

#kiichi
綾瀬はそこで言葉を切ると、少し言いづらそうに葉巻の煙を吐き出した。[p]

#ayase
「……正直に言うと、今の拠点には医療物資がほとんど残っていない。昨日、君が見た通り、指示薬も抗蝕物質も底をつきかけているんだ」[p]

#kiichi
「ええ。昨日、青葉さんからも聞きました。このままじゃ、全員を処置するのは不可能です」[p]

#ayase
「これまで世紬や優知にも薬品を探してもらっていたのだが、連中は医療の知識が無い。せっかく命がけで持ち帰っても、タナトリウム汚染で劣化していたり、必要な系統の指示薬ではなかったりと、無駄足を踏むことが多くてな」[p]
「貴重な衛生兵である君を危険に晒すのは本意ではないのだが……古虫君、治療の合間に、君も探索に同行して現地で直接物資を選別してはくれないだろうか？」[p]

[itoSad]
#ito
「待ってください。紀一は後方支援の衛生兵です。昨日の探索でも、危うく精神汚染で死ぬところだったと聞きました。そんな奴を外に出すのは……」[p]

#kiichi
「いや、俺も行くよ、一十」[p]

#ito
「紀一……！？」[p]

#kiichi
「どの患者にどの薬がどれだけ必要か、現地で使える状態かを見極められるのは、ここじゃ俺しかいない。俺が安全な部屋にこもって待ってるだけじゃ、助かる命も助けられなくなる」[p]

[syuuichiNormal]
#syuuichi
「……ま、紀一ならそう言うと思ったぜ。安心しろよ一十、俺とお前、それにあの強い連中もついてるんだ。ソーラインさえ忘れずに打っておけば、紀一に指一本触れさせやしないさ」[p]

#ito
「……はぁ。お前が一度言い出したら聞かないのは、昔からだったな。わかった。その代わり、探索に出る時は私の側から絶対に離れるなよ」[p]

#kiichi
「ああ、頼りにしてる」[p]

#ayase
「すまないな、三人とも。君たちが来てくれて、本当に助かるよ」[p]
「それじゃあ、まずは今ある物資の範囲で構わないから、古虫君は病室の患者を診てやってくれ。曙君と山本君は、先に世紬たちと探索の準備を進めておいてくれないか」[p]
「藍爛！世紬！」[p]

[chara_hide name="ito" pos_mode="false" wait="false"]
[chara_hide name="syuuichi" pos_mode="false" wait="true"]
[airanShow]
#airan
「綾瀬さん、何でしょうか？」[p]

[setsuNormal]
[setsuShow]
#setsu
「呼ぶということは、案内してほしいということかしら？」[p]

#ayase
「ああ、そうだ。それぞれ案内してあげてくれ」[p]

#setsu
「わかったわ。それじゃあ二人とも、こっちよ」[p]

#airan
「古虫さんは、私と一緒に医務室へ向かいましょう」[p]

#ayase
「それじゃあ、三人とも。よろしく頼む」[p]

#ito
「はい！」[p]

#syuuichi
「りょーかいです！」[p]

#kiichi
「はい！」[p]

[chara_hide_all]
#kiichi
朝食を食べ終わり、一十と秀一は初明に連れられて探索の準備へと向かった。[l][r]
俺は青葉に連れられ、医務室に向かう。[p]

[bg2 storage="bg_room/room_ai1.png" time=1000 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　医務室'"]
[uiSetPlace]
[stopbgm]
[airanNormal]
[airanShow]
#airan
「古虫さん、まずは今ここにある物資で、できる範囲の治療をお願いします。足りない分は……これから、探索で集めていくことになりますね」[p]

#kiichi
「ああ。まずは誰にどんな処置が必要か、患者の状態を把握するところからだ」[p]

[airanSad]
#airan
「治療については……すいません、私説明できなくて……」[p]

#kiichi
「それについては、俺の方が専門だ。それなら早速、治療を始めよう」[p]
[chara_hide name="airan"]
[jump target="*beginMixCare"]

; DAY2直行時も通常の会話欄とメニューから治療に入る。
*debugTreatment
[call storage="daily.ks" target="*setup"]
[bg2 storage="bg_room/room_ai1.png" time=0 wait=true left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　医務室'"]
[uiSetPlace]

*beginMixCare
[call storage="irm_mix.ks" target="*day"]
[jump target="*night"]

; ---- night ----
*night
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]
[uiSetMenu]

[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[playbgm storage="daily.m4a"]

#kiichi
今ある物資の分だけ治療を進め、その後は一十たちと合流して近場の区画へ物資回収に出向いた。[l][r]
日が暮れる頃になって、ようやく自分の部屋に戻ってくる。[p]

慣れない探索に加えて、あれだけの人数の治療をしたからか、今すぐベッドに飛び込みたい気分だ。[p]

しかし、見知らぬ男が俺のベッドの上でくつろいでいた。[p]
[iscript]
TYRANO.kag.stat.charas['tota'].jname = '？？？';
[endscript]

[totaSmile]
[totaShow]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「やあ、古虫 紀一君。昨日以来だね。元気にしていたかい？」[p]
#kiichi
「誰だ？」[p]
[totaSurprise]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「何！？僕のことを忘れたのか！？昨日、自己紹介をしたじゃないか！？」[p]

#kiichi
[link storage="02.ks" target="*part21"]【1】「えーっと、俵 藤太だっけ？」[endlink][r]
[link storage="02.ks" target="*part22"]【2】「えーっと、古虫 紀一だっけ？」[endlink][r]
[link storage="02.ks" target="*part23"]【3】「多分、初対面だ」[endlink]
[s]


; ---- part21 ----
*part21
[cm]
#kiichi
「えーっと、俵 藤太だっけ？」[p]
[totaAngry]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「違う違う！そんな大昔の英雄とかじゃない！僕、百足は苦手なんだ！」[p]
[jump target="*part3"]
[s]


; ---- part22 ----
*part22
[cm]
#kiichi
「えーっと、古虫 紀一だっけ？」[p]
[totaJito]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「おい、それお前の名前だろ？随分と、疲れてるみたいだな……」[p]
[jump target="*part3"]
[s]


; ---- part23 ----
*part23
[cm]
#kiichi
「多分、初対面だ」[p]
[totaSad]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「本当に、忘れてしまったようだね。僕は、悲しいよ……」[p]
[jump target="*part3"]
[s]


; ---- part3 ----
*part3
[cm]
[totaNormal]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「僕は、富山 東太。君の隣室に住んでるから、よろしく。って、昨日言ったのに……」[p]
[iscript]
TYRANO.kag.stat.charas['tota'].jname = '富山 東太';
[endscript]

#kiichi
「そうだったか。すまない、昨日は疲れていたみたいだ」[p]
[totaSad]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「それなのに無視だなんて……しくしく、俺、そんなに影薄いかな……しくしく」[p]

#kiichi
『しくしく』なんて自分で言ってる人間を初めてみた。[p]
こいつ、相当変な奴だ。関わらないで置いた方がいいだろう。[p]

#kiichi
「……」[p]
[totaNormal]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「うわぁーみたいな顔するな！」[p]
#kiichi
「はぁ、それで？富山はどうして俺のテントに？」[p]
[totaSmile]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「色々と慣れてないんじゃないかと思って、様子を見に来たんだ。僕は優しい人間だからな」[p]
#kiichi
「なら、教えてくれ。夕飯は？」[p]
[totaNormal]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「ベッドの下の保存食を食べてくれ。足りなくなったら、青葉さんに言えば持ってきてくれるぞ」[p]
#kiichi
「風呂は？」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「タナトリウム洗浄機があるではないか。知ってると思うが、トイレは共用の場所を使ってくれ」[p]
#kiichi
「じゃあ、後は聞くことは無いな。ありがとう、後は帰ってくれ」[p]
[totaSmile]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「ああ、どういたしまして……」[p]
[totaAngry]
[totaSmile]
「じゃない！折角、隣の部屋なんだ！親睦を深めようじゃないか！」[p]
#kiichi
「俺は疲れてるんだ、寝させてくれ」[p]
[totaSad]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「折角、折角の同年代なのに！ああ、なんて冷たい奴なんだ。神様、僕が何をしたと！？」[p]
#kiichi
「はいはい、おやすみ」[p]
[totaSmile]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「はっはっは、寝るなんて、冗談だろ？」[p]
#kiichi
「……」[p]
[totaSurprise]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
[totaAngry]
「まさか、こいつ本気で寝やがったな！？おい馬鹿！寝るな！寝るんじゃない、古虫！！」[p]

疲れからか、相手が危険だとかそういうことも何も考えずに、気が付いた時には俺は眠っていた。[p]
[chara_hide name="tota"]
[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[jump storage="daily.ks" target="*addDay"]
[s]
