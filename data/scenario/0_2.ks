*start
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
@layopt layer=1 visible=true
[endnolog]
[jump target=*part01]
[s]

*part01
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
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
「起きろ」[p]
#kiichi
「ん……まだ、寝かしてくれ……」[p]
#ito
「起きろ、古虫」[p]

#kiichi
布団を剥がされ、外の寒さから目を覚ます。

[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[itoAngry]
[itoShow]

#kiichi
「おい、何すんだよ！」[p]
#ito
「全く、お前は寝坊しすぎだ。いくら、今は任務中では無いとはいえ、そんな体たらくでは、軍人の名折れというものだ」[p]

#kiichi
目が外の光に慣れてきて、輪郭が定かになっていく。[p]
そして、テントの前で仁王立ちしていた人に驚いて、飛び起きた。[p]

#kiichi
「一十！？起きたのか！？」[p]
[itoNormal]
#ito
「ずいぶん前にな。青葉がお前を起こしに行ったが、さっぱり起きなかったから、こちらから来ただけだ」[p]
#kiichi
「どこも変なところは？痛いところは無いか？」[p]
#ito
「お前のお陰で、すっかり元気だ。そんなことより、お前、呼ばれていたぞ」[p]
#kiichi
「そんなことって、危なく死ぬところだったじゃないか！？」[p]
[itoSmile]
#ito
「だが、今回もお前のおかげで死ななかっただろ？」[p]
[itoBlush]
「まあ、なんだ……その……ありがとな……紀一……助かった」[p]
#kiichi
「……」[p]
#kiichi
[link target=*part1_1]【1】「まさか、お前、俺に惚れたのか！？」[endlink][r]
[link target=*part1_2]【2】「……面と向かって言われると……困んだよ……」[endlink][r]
[link target=*part1_3]【3】「あれ？声が小さくて聞こえないな？」[endlink]
[s]

*part1_1
[cm]
#kiichi
「まさか、お前、俺に惚れたのか！？」[p]
[itoAngry]
#ito
「そんな訳あるか馬鹿！」

#kiichi
可憐に決まる右ストレート。[l][r]
気が付いたら、俺は床にキスしていた。[p]
[itoNormal]
#ito
「そこで頭を冷やしてろ」[p]
[jump target=*part2]
[s]

*part1_2
[cm]
#kiichi
「……面と向かって言われると……困んだよ……」[p]
[itoJito]
#ito
「何だその態度。気持ち悪いな……」[p]
#kiichi
「気持ち悪いって、何だよ！あーあ、傷ついた！金輪際、お前を助けないからな！」[p]
[itoSmile]
#ito
「ははっ、いいさ。そしたら、お前を殴ってでも使わせるまでさ！」
[jump target=*part2]
[s]

*part1_3
[cm]
#kiichi
「あれ？声が小さくて聞こえないな？」[p]
[itoAngry]
#ito
「何でも無い、馬鹿！」[p]
#kiichi
「今さっき、『ありがと』って言ったような？」[p]
#ito
「気のせいだ！聞こえなかった、お前が悪い！」[p]
[jump target=*part2]
[s]

*part2
[cm]
その時、ふと、テントの外から声がした。[p]

[airanNormal]
[airanShow]
#airan
「曙さん。古虫さん、起きましたか？」[p]
[itoNormal]
#ito
「……ああ、そうだ。青葉は先に綾瀬さんの所に行っていてくれ」[p]
#airan
「わかりました」[p]

[chara_hide name="airan"]

#kiichi
走り去る音がするなり、一十が俺に向かって服を投げつける。[p]

#ito
「綾瀬さんが呼んでる。とっとと準備して行くぞ」[p]
#kiichi
「わかったよ。で、着替えるからテントから出てってくれないか？」[p]
[itoAngry]
#ito
「言われなくても。誰が好き好んで、お前の着替えを見るんだ」[p]
[chara_hide name="ito"]

#kiichi
着替えるなり、直ぐに綾瀬の元に向かった。[p]

[bg2 storage="bg_room/room_ai2.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　拠点　大天幕'"]
[uiSetPlace]

[ayaseShow]

綾瀬は葉巻を吸いながら、何やら書き物をしている。[l][r]
テントには既に青葉と一十の姿があった。[p]

[itoNormal]
[itoShow]

#airan
「綾瀬さん、古虫君が来ました」[p]
#ayase
「そうか。よく来てくれた、二人とも。曙 一十、古虫 紀一」[p]
「まずは、君たちが無事でよかった」[p]

#kiichi
綾瀬は立ち上がるなり、俺と一十に握手をする。[p]

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
#ayase
「君たちは、若いんだから、しっかり食べると良い。朝食でも食べながら、どうしてここまで来たのか教えてくれないか？」[p]
#kiichi
「はい、わかりました。では、俺の方から」[p]

俺は昨日の事を思い出せる範囲で話す。[l][r]
第一基地に居たこと、襲撃にあったこと、そして秀一のおかげで俺たちは逃げれたこと。[p]

全てを話し終わるころには、綾瀬は目頭を押さえて、泣いていた。[p]

#ayase
「そうか、大変だったんだな……。秀一君、さぞかし立派な若者だったのだろう」[p]
#kiichi
「はい……」[p]
#ito
「そう、だったんだな。秀一が……」[p]
#kiichi
「一十はずっと気を失っていたから知らなかったんだ……伝えるのが遅くなって、ごめん……」[p]

正直、俺はまだアイツが死んだことが本当だとは思えてない。[l][r]
実は今もどこかで生きていて、ひょっこり突然現れるようなそんな気がしている。[p]

そんなことは無いと、一番わかっているはずなのに。[p]

#ayase
「……二人がここに来た経緯はわかった。見せてくれた軍証明書も問題無かったし、二人を拠点に迎えよう」[p]
#kiichi
「……ありがとうございます」[p]
#ayase
「傷心の所、非常に申し訳ない。今日、君たちを呼んだのはこれからの仕事を二人に依頼したかったからなんだ」[p]
「まず、この拠点について説明する。ここには無数の避難民がいる。元々、第十二基地に住んでいた人、君たち同様転移装置の事故で辿り着いた人、軍の任務で迷い込んだ人、様々だ」[p]
「しかしながら、軍所属の人間が、私を含め四人ほどしかいない。多くは怪我や怪異化の進行で、病室で眠ってもらっている」[p]

#kiichi
昨日見た病室の人たちを思い出す。医療従事者がいないから、誰も手当できないせいで、死を待つのみの人たち。[l][r]
何とかして、救えないだろうか。[p]

#ayase
「そこで、君たちにはこれから拠点を手伝って欲しいんだ」[p]
「古虫君。君には病室の人の治療をお願いしたい。できるか？」[p]
#kiichi
「はい、わかりました」[p]
#ayase
「曙君は世紬や優知たちと探索に行って欲しい。いいか？」[p]
#ito
「わかりました」[p]
#ayase
「ありがとう、助かるよ。それじゃあ、早速、今日からお願いしたい。藍蘭！世紬！」[p]
[chara_hide name="ito"]
[chara_hide name="ayase"]
[airanNormal]
[setsuNormal]
[airanShow]
[setsuShow]

#airan
「綾瀬さん、何でしょうか？」[p]
#setsu
「呼ぶということは、案内してほしいということかしら？」[p]
#ayase
「ああ、そうだ。二人に拠点について教えてあげてくれ」[p]
#setsu
「わかったわ」[p]
#airan
「はい、わかりました」[p]

[chara_hide name="setsu"]
[chara_hide name="airan"]
[ayaseShow]
[itoShow]

#ayase
「それじゃあ、二人とも。よろしく頼む」[p]
#ito
「はい！」[p]
#kiichi
「はい！」[p]

[chara_hide name="ito"]
[chara_hide name="ayase"]

#kiichi
朝食を食べ終わり、青葉に連れられ医務室に向かう。[p]

[bg2 storage="bg_room/room_ai1.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　医務室'"]
[uiSetPlace]
[stopbgm]

[airanNormal]
[airanShow]
#airan
「古虫さん、これからここで怪我人の治療をお願いします。物資の方は、優昼さんや世紬さんが取ってきてくれるそうです」[p]
#kiichi
「そうか、それなら助かる」[p]

#kiichi
俺は戦闘経験が浅いから、実際に探索に行けと言われていたらどうしようかと思っていた。[l][r]
まだ、怪我人の治療の方が慣れていて、ありがたい。[p]

[airanSad]
#airan
「治療については……すいません、私説明できなくて……」[p]
#kiichi
「それについては、俺の方が専門だ。それなら早速、治療を始めよう」[p]
[chara_hide name="airan"]
[jump storage="care2.ks"]

*night
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[uiSetMenu]

[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[playbgm storage="daily.m4a"]

#kiichi
物資があるだけ治療を進め、日が暮れる頃になってようやく自分の部屋に戻ってきた。[l][r]
あれだけの人数の治療をしてからか、すぐにベッドに飛び込んだ。[p]
そして、気が付いた時には俺は眠っていた。[p]
[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[jump storage="daily.ks" target="*addDay"]
[s]


しかし、見知らぬ男が俺のベッドの上でくつろいでいた。[p]
[iscript]
TYRANO.kag.stat.charas['tota'].jname = '？？？';
[endscript]

[totaSmile]
[totaShow]
#tota
「やあ、古虫 紀一君。昨日以来だね。元気にしていたかい？」[p]
#kiichi
「誰だ？」[p]
[totaSurprise]
#tota
「何！？僕のことを忘れたのか！？昨日、自己紹介をしたじゃないか！？」[p]

#kiichi
[link target=*part2_1]【1】「えーっと、俵 藤太だっけ？」[endlink][r]
[link target=*part2_2]【2】「えーっと、古虫 紀一だっけ？」[endlink][r]
[link target=*part2_3]【3】「多分、初対面だ」[endlink]
[s]

*part2_1
[cm]
#kiichi
「えーっと、俵 藤太だっけ？」[p]
[totaAngry]
#tota
「違う違う！そんな大昔の英雄とかじゃない！僕、百足は苦手なんだ！」[p]
[jump target=*part3]
[s]

*part2_2
[cm]
#kiichi
「えーっと、古虫 紀一だっけ？」[p]
[totaJito]
#tota
「おい、それお前の名前だろ？随分と、疲れてるみたいだな……」[p]
[jump target=*part3]
[s]

*part2_3
[cm]
#kiichi
「多分、初対面だ」[p]
[totaSad]
#tota
「本当に、忘れてしまったようだね。僕は、悲しいよ……」
[jump target=*part3]
[s]

*part3
[cm]
[totaNormal]
#tota
「僕は、富山 東太。君の隣室に住んでるから、よろしく。って、昨日言ったのに……」[p]
[iscript]
TYRANO.kag.stat.charas['tota'].jname = '富山 東太';
[endscript]

#kiichi
「そうだったか。すまない、昨日は疲れていたみたいだ」[p]
[totaSad]
#tota
「それなのに無視だなんて……しくしく、俺、そんなに影薄いかな……しくしく」[p]

#kiichi
『しくしく』なんて自分で言ってる人間を初めてみた。[p]
こいつ、相当変な奴だ。関わらないで置いた方がいいだろう。[p]

#kiichi
「……」
[totaNormal]
#tota
「うわぁーみたいな顔するな！」[p]
#kiichi
「はぁ、それで？富山はどうして俺のテントに？」[p]
[totaSmile]
#tota
「色々と慣れてないんじゃないかと思って、様子を見に来たんだ。僕は優しい人間だからな」[p]
#kiichi
「なら、教えてくれ。夕飯は？」[p]
[totaNormal]
#tota
「ベッドの下の保存食を食べてくれ。足りなくなったら、青葉さんに言えば持ってきてくれるぞ」[p]
#kiichi
「風呂は？」[p]
#tota
「タナトリウム洗浄機があるではないか。知ってると思うが、トイレは共用の場所を使ってくれ」[p]
#kiichi
「じゃあ、後は聞くことは無いな。ありがとう、後は帰ってくれ」[p]
[totaSmile]
#tota
「ああ、どういたしまして……」[p]
[totaAngry]
「じゃない！折角、隣の部屋なんだ！」
[totaSmile]
「親睦を深めようじゃないか！」[p]
#kiichi
「俺は疲れてるんだ、寝させてくれ」[p]
[totaSad]
#tota
「折角、折角の同年代なのに！ああ、なんて冷たい奴なんだ。神様、僕が何をしたと！？」[p]
#kiichi
「はいはい、おやすみ」[p]
[totaSmile]
#tota
「はっはっは、寝るなんて、冗談だろ？」[p]
#kiichi
「……」[p]
[totaSurprise]
#tota
「まさか、こいつ本気で寝やがったな！？」
[totaAngry]
「おい馬鹿！寝るな！寝るんじゃない、古虫！！」[p]

疲れからか、相手が危険だとかそういうことも何も考えずに、気が付いた時には俺は眠っていた。[p]
[chara_hide name="tota"]
[bg2 storage="black.png" time=1500 wait=false left=180 top=80 width=1440 height=900]
[jump storage="daily.ks" target="*addDay"]
[s]