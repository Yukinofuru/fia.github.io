*start
[cm]
[destroy]
[start_keyconfig]
[Mask_light]
[eval exp="sf.day = 0"]
@layopt layer=1 visible=true
; 日付画面
[font color="#66cdaa"]
System Boot Time:07072345110890[r][r]
SYSTEM-323>　記録時間07/07/2345 15:43PM[r][r]
[link target=*part01]【１】再生する[endlink][r]
[hover_effect]
[endnolog]
[s]

*part01
;=========================================
; ゲーム本編
;=========================================
;メッセージウィンドウの表示
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[destroy]
[cm]

[set_menu]
;背景画像の表示
[bg2 storage="fire.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="sf.place = '07/07/2345 エリア３'"]
[ptext layer="message0" text="&sf.place" x="200" y="8" size="34" color="#66cdaa" name="place"]
[playbgm storage="demo.mp3"]


#kiichi
息を吸う度に、熱気が肺を焼いて痛みが走る。[l][r]
怪異の鱗で斬れた右腕から血が流れ続けるおかげで、熱さは感じないが意識が朦朧としてきてきた。[p]

だが、俺はまだここで倒れるわけにはいかない。[p]

顔を上げると、真っ赤に染まった世界の中で黒色が視界一杯に広がっていく。[l][r]
炎の明かりを吸い込むような漆黒の巨体の輪郭が、揺らめいていたのが定まっていって、[l][r]
姿を顕わにする。[p]

#kiichi
「あれだけやって、まだ無傷なのかよ……ははっ……」[p]
[chara_show name="joukan" face="happy" top=140 width=560 height=1120]
#joukan:angry
「……古虫、山本。来るぞ」[p]

#kiichi
上官の掠れた声には、覇気は無く、諦観が含まれていた。[p]

#kiichi
「ほら、秀一、起きろよ」[p]
[chara_show name="syuuichi" face="happy" top=140 width=560 height=1120 reflect="true"]
#syuuichi:angry
「……古虫、俺は置いていけ……」[p]
#kiichi
「そんなこと、できるかよ」[p]

#kiichi
初めは五十人居た部隊も、たった3時間で俺たち三人だけになった。[l][r]
全ては、今、目の前に居る化け物のせいだ。[p]

俺たちの任務は、この"遺骨"を回収して、無事に本国に届けること。[l][r]
転移装置まで逃げ切れば、俺たちの勝ちだ。[l][r]
そのためにも、"遺骨"を持っている上官には逃げてもらう必要がある。[p]

そうしたら、俺はここで死ぬだろう。[l][r]
そう分かっているんだが、血を流しすぎたせいか、慌てふためくどころか、思考は却って冷静だ。[p]
どうせ、俺の帰りを待つ家族なんていないし、[l][r]
それに、こんな無能でも世のため人の為に何かできるなら、本望だというものだ。[p]

#kiichi
「上官、ここは俺たちがなんとかします。上官は”遺骨”を持って逃げてください」[p]
#joukan:happy
「いや、逃げるのはお前たちだ」[p]
#kiichi
「ですが……」[p]

上官は俺に向かって”遺骨”の入った袋を押し付けた。[p]

#joukan:angry
「"唐舞橋の大蛇"に勝てないのは明白だ。それなら、生きるべきはお前たち若い連中だろ？」[p]

#kiichi
上官は灰で黒くなった歯を見せてにいっと笑おうとする。[l][r]
だが、口の端は片方しか上がらないどころか、震えていた。[p]

#kiichi
「上官……」[p]
#joukan:happy
「お願いだ、俺の気持ちが変わらないうちに、早く行け」[p]
#kiichi
「……ですが……上官には……」[p]

[cm]
[freeimage layer="1"]
#kiichi
俺に、何ができるんだ……？
[set_choose]
[update_parameter]
[eval exp="sf.click = 0"]
[jump target="choose1"]
[s]

*choose1
[ptext layer="2" text="【１】上官と共に戦う（PHI lv.10）" x="503" y="270" size="34" color="#adacacff"]
[ptext layer="2" text="【２】上官を逃がすために陽動する（KNO lv.10）" x="503" y="406" size="34" color="#adacacff"]
[glink text="【３】上官の指示に従い、逃げる" color="button_51" x="420" y="542" size="34" target="*part02"]
@layopt layer=2 visible=true time="100"

[if exp="sf.SPI >50 && sf.click < 6"]
[button graphic="transparent.png" x="180" y="85" width="1400" height="150" target="*clack" clickse="pi.ogg"]
[button graphic="transparent.png" x="180" y="750" width="1400" height="150" target="*clack" clickse="pi.ogg"]
[endif]
[if exp="sf.click == 6"]
[glink text="【４】唐舞橋の大蛇を倒す" color="button_53" x="420" y="678" size="34" target="*part_1_4"]
[endif]
[s]

*clack
[cm]
[if exp="sf.click == 0"]
[eval exp="sf.click= sf.click+1"]
[jump target="*choose1"]
[endif]

[if exp="sf.click == 1"]
[eval exp="sf.click= sf.click+1"]
[jump target="*choose1"]
[endif]

[if exp="sf.click == 2"]
[image storage="clack/clack1.png" layer="2" x="180" y="85" width="1440" height="900"]
@layopt layer=2 visible=true time="100"
[eval exp="sf.click= sf.click+1"]
[jump target="*choose1"]
[endif]

[if exp="sf.click == 3"]
[eval exp="sf.click= sf.click+1"]
[jump target="*choose1"]
[endif]

[if exp="sf.click == 4"]
[freeimage layer="2"]
[image storage="clack/clack2.png" layer="2" x="180" y="85" width="1440" height="900"]
@layopt layer=2 visible=true time="100"
[eval exp="sf.click= sf.click+1"]
[jump target="*choose1"]
[endif]

[if exp="sf.click == 5"]
[eval exp="sf.click= sf.click+1"]
[jump target="*choose1"]
[endif]

[if exp="sf.click == 6"]
[freeimage layer="2"]
[image storage="clack/clack3.png" layer="2" x="180" y="85" width="1440" height="900"]
@layopt layer=2 visible=true time="100"
[jump target="*choose1"]
[endif]
[s]


*part02
[cm]
[destroy]
[set_menu]
#syuuichi
「古虫！」[p]
#kiichi
「っ……！」[p]
#joukan
「お願いだ……それ以上は……言わないでくれ……」[p]
#kiichi
上官は、今度子供が生まれるし、帰りを待っている奥さんがいる。[l][r]
だけど、その目は死を覚悟していた。[p]

何もできないでいると、ふと、俺の横から腕が伸びてきて、袋をむしり取る。[p]

#syuuichi
「……古虫……行くぞ。上官の思いを無駄にするな」[p]
#kiichi
「秀一……ああ、そうだな」[p]

上官に背を向けて、俺は秀一と走った。[p]

#kiichi
「秀一、脱出ポイントまであとどのくらいだ？」[p]
#syuuichi
「……その車の向こうだ……早く……っ！！」[p]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

#kiichi
「秀一！？」[p]

その腹部には深々と鉄の棒が刺さっていた。[p]

[freeimage layer="1" time="500" wait="false"]

#syuuichi
「古虫……早く行け……」[p]
#kiichi
「何を言ってるんだ！今、連れていく」[p]
#syuuichi
「……俺に構うな。早く、行け……」[p]
#kiichi
「何言ってんだよ、その程度の傷、拠点に戻ればIR-Mで一瞬……っ！？」[p]
#
「きゃぁあぁぁぁやゃ！！！」[p]
#syuuichi
「……どうやら……時間は無いようだな……」[p]
#kiichi
秀一は俺に袋を押し付けると、ブレードを杖に立ち上がった。[p]

#syuuichi
「……上官の作った時間、無駄にするな」[p]
#kiichi
「時間稼ぎなら、俺がやる。お前のほうが、"遺骨"を持って行けよ」[p]
#syuuichi
「……俺はもう長くない……それに、俺一人じゃ、歩けないんだよ……だから、お前が、これを持っていくんだ……」[p]
#kiichi
「秀一！！」[p]

その時、むせかえるほどの灰が舞い、炎の中から血が溢れ続ける眼孔がぬっと現れた。[l][r]
それは、黒い鱗を擦り付けながら、こちらに近づいてくる。[p]

[bg2 storage="still/01_01.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

#syuuichi
「……なあ、古虫……妹に伝えてくれ……愛しているってさ」[p]

[bg2 storage="fire.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
#kiichi
「……俺に託すなよ……畜生……」[p]

迷っている時間なんて無かった。[l][r]
俺は、遺骨を抱きしめて、前を向く。[p]
そして、走った。[l][r]
息が吸えなくても、腕の感覚がしなくても、関係ない。[l][r]
がむしゃらに走った。[p]

#kiichi
「……いつも、俺ばかり……なんでだよっ！どうして……俺なんだよ……」[p]

ひっくり返っている車の向こうに白い円筒の装置が見えた。[l][r]
脱出ポッドだ。[l][r]
まだ、火の手が弱いお陰で、無事そうだった。[p]

[bg2 storage="monitor.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

中に入ると、モニターが光り、いつもの機械音声が流れる。[p]

#機械音声
「起動シーケンス確認。ブートデバイス起動、位置情報読み込み完了、転移術式読み込み完了、[l][r]
カーネル起動、転移の準備が整いました。これより、3秒後に転移を開始します」[p]

#kiichi
行き先は既に指定されている。[l][r]
3秒後には、俺は俺の意思に関係なく、強制的にこのエリア3から第3基地本部に転送される。[l][r]
それで、任務は終了だ。[p]

「早くしろ、くそっ」[p]

たった3秒、そのはずなのにやけに長く感じた。[p]

モニターの残り秒数が2から1に変わったその時、ポッドの壁がぐにゃりと歪み、衝撃が走る。[l][r]
そして、辺りが暗闇に包まれた。[p]

[layermode time="700" color="#000000ff" mode="multiply" name=haikei_no_ue]

「おい！なんだよ！起動しろよ！！」[p]
#機械音声
「エラー発生、エラー発生、機器の破損を確認」[p]

#kiichi
機械音声が無慈悲に流れる。[l][r]
今のはきっと、あの怪物の攻撃だ。[l][r]
上官も秀一も死んで、今、アレは俺の目の前に居る。[p]

#kiichi
「……ゲームオーバーかよ。くそっ」[p]
#機械音声
「周囲の安全を確認し……」[p]
#kiichi
「知るかっ！！」[p]

[free_layermode wait="false" time="700"]
[layermode time="700" color="#920000ff" mode="lighten" name=haikei_no_ue opacity=100 wait="false"]
@layopt layer=1 visible=true
[image storage="clack/clack3.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

#機械音声
「これより強制転移を開始します。シートベルトを装着し、衝撃に備えてください」[p]

#kiichi
機械の駆動音と共に、今度は赤い光に包まれた。[l][r]
動いてくれるなら、何でもいい。俺の体がバラバラになっても構わない。[l][r]
せめて、この"遺骨"だけは届けるんだ。[p]

モーター音が高くなるにつれ、光が白く変わり、何も見えなくなってくる。[p]

[free_layermode wait="false" time="700"]
[freeimage layer="1" time="500" wait="false"]
[bg2 storage="white.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

目を閉じると、内臓を持ち上げるような浮遊感が襲ってきた。いつもの転移の感覚だ。[p]

#kiichi
「転移は成功……っ」[p]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

テレビを切るように意識が一瞬途切れて、全ての感覚が失われる。[p]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

[eval exp="sf.place = '07/07/2345 ？？？'"]
[set_place]

#kiichi
すぐに俺は現実に引き戻された。[l][r]
冷たい床の感触が体全体に広がる。[l][r]
そして、錆びた鉄の匂いが鼻腔に広がり、思わずむせた。[p]

「……っげほっ……っげほっ……なんだ……ここはっ……転移は成功、という訳でもなさそうだな」[p]

[bg2 storage="Corridor.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

「"遺骨"は無事か。まずは、ここはどこか探る必要がありそうだな」[p]

少し歩いてみるが、基地の廊下のはずなのに窓は何処にもなく、扉の一つも見当たらなかった。[l][r]
道は塞がっていないのに、閉塞感が喉をじわじわと締め付ける。[p]

ここはどこか次元の狭間で、俺はここから脱出できないのではないか。[l][r]
そんな不安で頭が一杯になる。[p]

廊下の端まで歩いて、曲がり角を曲がったその時、ふと廊下の奥から低い男の声が聞こえてきた。[p]

#？？？
「……」[p]
#kiichi
「誰かいるのか？」[p]

警戒しつつ、俺は廊下を進む。奥のほうは明かりが消えていて、よく見えない。[p]

「映画なら、こういう時、生存者に化けたゾンビとか出てくるんだよな」[p]

袋を腰に巻き付けて、ブレードを抜く。[l][r]
暗闇に近づくたびに、男の声ははっきりと聞こえてきた。[l][r]
何かをぶつぶつと唱えているようだ。[p]

#？？？
「……」[p]
#女？
「……タ……ス……ケテ……」[p]

#kiichi
男の声の中に、微かに女性の声が聞こえた。[l][r]
俺の聞き間違いじゃない、潰れた喉で何度も叫んでいるか細い声だ。[p]

「誰かいるのか！？今、助けに行く！」[p]

暗闇に向かって一歩進むたびに、血の匂いが濃くなる。[l][r]
この廊下の奥に、誰かいる。[p]
一人は確実に人間じゃない。[l][r]
だが、もう一人の女性は助けを求めてる人間かもしれない。[p]

「早く助けに行かないと」[p]

ここがどこかとか聞きたいし、それに俺以外に誰かいるのを確かめたい。[p]

「おい！」[p]
#女？
「……嫌……タ……ケ手……」[p]
#？？？
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]

#kiichi
声は頭上から聞こえてきた。機械的に無機質に男がピチャピチャと唱えている。[p]

ふと、生臭い匂いと共に、顔に液体がかかった。[l][r]
その温かさとぬるりとした感触に、背筋が凍る。[p]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

#男
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]
#kiichi
「……血だ……」[p]

上を見上げると、魚の目と目が合った。[p]

[freeimage layer="1" time="500" wait="false"]

#男
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]
#kiichi
「ぅああぁぁぁぁああああ！！！！」[p]

ぶよぶよに膨らみ切った体に、無造作に取り付けられた魚の頭。[l][r]
口からは人間の腕が垂れ下がっていて、鮮血が滴り落ちている。[l][r]
肉塊には無数の穴があり、そこから低い声が出ていた。[p]

「人が……っ！？」[p]

すぐに踵を返して逃げようとしたが、曲がり角の手前に同様の魚の化け物が道を塞いでいた。[p]

「逃げ場は、なさそうだな」[p]

[set_choose]
[glink text="【１】怪異に戦いを挑む" color="button_51" x="420" y="270" size="34" target="*part03_1"]
[glink text="【２】怪異の行動を制限して逃げる" color="button_51" x="420" y="406" size="34" target="*part03_2"]
[glink text="【３】どんな危険を冒しても、逃げる" color="button_51" x="420" y="542" size="34" target="*part03_3"]
[s]

*part03_1
[cm]
[destroy]
[set_menu]
#kiichi
「ははっ、やるしかなさそうだな……！」[p]

折れたブレードを構える。[l][r]
無いよりは、多少はマシか。[p]
ドロドロとした赤茶色の液体を垂らしながら、どさっと怪異は床に落ちた。[l][r]
ぬるぬるとした自分の体液に足を滑らして、魚はひっくり返り、ジタバタしだす。[l][r]
辺りに液体が散らばり、無造作に噛みちぎられた腕が飛んでいった。[p]

やるなら、今だ。[p]

[set_choose]
[glink text="【１】接近戦" color="button_51" x="420" y="270" size="34" target="*part03_1_2"]
[ptext layer="2" text="【２】陽動して隙を付く（PHI lv.1）" x="503" y="406" size="34" color="#adacacff"]
[ptext layer="2" text="【３】弱点を付く（PHI lv.2）" x="503" y="542" size="34" color="#adacacff"]
@layopt layer=2 visible=true time="100"
[s]

*part03_1_2
[cm]
[destroy]
[set_menu]
#kiichi
「おあぁぁぁああああ！！！」[p]

ブヨブヨした体に、ブレードの先端を差し込む。[p]

[layermode time="700" color="#b30000ff" mode="multiply" name=haikei_no_ue]

ぶすっという感覚とともに、ブレードは深く差し込まれていく。[l][r]
力任せに、俺は奥までねじ込んだ。[p]

#？？？
「ア、ア、ア、ア、ア、ア、ア、ア、ア、ア」[p]
#kiichi
「死ね！死ね！死ね！死ね！」[p]

苦しそうに喘ぐ魚の声を無視して、ブレードを下に向けて進める。[l][r]
ブレードが折れていたせいで、まだブヨブヨしながらソレは息をしている。[l][r]
なら、もう一度、斬るだけだ。[p]

#世紬
「君！危ない！！」[p]

#kiichi
ブレードを振り上げたその時、目の前で何かが弾けた。[p]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

強い衝撃と共に、耳がキーンとなり、目がくらむ。[l][r]
すぐに、壁に強く体がぶつかって息が詰まった。[p]

「ぐはっ……！」[p]

ジンジンと耳鳴りが響きながら、意識が薄れていく。[l][r]
怪異が、自爆したのか？[l][r]
仕留め損ねたなら、俺は……。[p]
[free_layermode time="700" wait="false"]
[freeimage layer="1" time="500" wait="false"]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[jump target="*part04"]
[s]

*part03_2
[cm]
[destroy]
[set_menu]
#kiichi
「なら、何とか抑え込んで、隙を見て逃げるか」[p]

折れたブレードを構える。[l][r]
無いよりは、多少はマシか。[p]
ドロドロとした赤茶色の液体を垂らしながら、どさっと怪異は床に落ちた。[l][r]
ぬるぬるとした自分の体液に足を滑らして、魚はひっくり返り、ジタバタしだす。[l][r]
辺りに液体が散らばり、無造作に噛みちぎられた腕が飛んでいった。[p]

「今なら、逃げられるか……？」[p]

[ptext layer="2" text="【１】陽動して隙を付く（KNO lv.1）" x="503" y="270" size="34" color="#adacacff"]
[glink text="【２】隙を付いて逃げる" color="button_51" x="420" y="406" size="34" target="*part03_2_2"]
[ptext layer="2" text="【３】水をかける（PHI lv.1）" x="503" y="542" size="34" color="#adacacff"]
@layopt layer=2 visible=true time="100"
[s]

*part03_2_2
[cm]
[destroy]
[set_menu]
#kiichi
怪異にブレードを向けながら後ろに下がる。[l][r]
ふと、背後から低い声が聞こえた気がした。[p]

「……まさか……！？」[p]

振り返ると、そこにも大きな魚の頭があった。[p]

「おいおい、嘘だろ！？」[p]

逃げ場はない。こうなったら、せめて、前の奴の隙をついて、さらに奥に進むしか無い。[p]

「おりゃぁぁぁぁぁ！」[p]

思い切って走って、目の前の奴の端を通り抜けようとしたその時、足を滑らして転んだ。[p]

#？？？
「ピチャピチャピチャピチャピチャピチャ」[p]

#kiichi
魚が口をパクパクさせながら、迫ってくる。[l][r]
このまま、俺は食われるのか……？[l][r]
いや、まだだ。まだ、方法はある！[p]

「これでもくらえ！」[p]

目玉に向かってブレードを突き立てる。[p]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

#？？？
「ア、ア、ア、ア、ア、ア、ア、ア、ア、ア」[p]
#kiichi
「今だ！」[p]

[freeimage layer="1" time="500" wait="false"]

#世紬
「君！危ない！！」[p]

#kiichi
立ち上がろうとしたその時だった。[p]

[layermode time="700" color="#b30000ff" mode="multiply" name=haikei_no_ue]

#kiichi
目の前で何かが弾けたのだ。[l][r]
強い衝撃と共に、耳がキーンとなり、目がくらむ。[l][r]
意識が白く霞む中で、壁に強く体がぶつかって息が詰まった。[p]

「ぐはっ……！」[p]

ジンジンと耳鳴りが響きながら、意識が薄れていく。[l][r]
怪異が、爆破したのか？[l][r]
まだ、もう一匹いるはずなら、俺は……。[p]
[free_layermode time="700" wait="false"]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[jump target="*part04"]
[s]

*part03_3
[cm]
[destroy]
[set_menu]
#kiichi
「どこかに隠れてやり過ごすしかないか」[p]

振り返って、一目散に走り出した。[l][r]
しかし、後ろ側にも、新たに魚の怪異が現れた。[p]

「ちっ、逃げ場は無さそうだな」[p]

覚悟を決めて、ブレードを構える。ふと、その時、目の端に黒い影が映った。[p]

[bg2 storage="Corridor.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

横を見ると、壁の一部が溶けるように変化し、不気味な黒い扉が姿を現す。[l][r]
その表面はあの大蛇のような、光を吸い込む漆黒で、見ていると吸い込まれるような錯覚に襲われる。[p]

「扉？見落としていたのか？いや、そんなはずは……」[p]

扉がギィと音を立てて開く。[l][r]
その向こうには、同じように暗闇が広がっていた。[p]

冷汗が背中を伝う。[p]

一歩、下がった途端、開いた扉から二本の腕が伸びてきた。[l][r]
その腕は、俺の体を掴むと、強引に扉の中に引きこんだ。[p]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

かび臭い空間で、扉の隙間から漏れ出る光が彼女を照らす。[l][r]
青白い顔に、日本人形のような黒い綺麗な髪。[l][r]
その美しさに、思わず息を飲む。[p]

切れ長の瞳で俺を優し気に眺めつつ、彼女は俺の顔に布を被せた。[l][r]
人工的な甘い香りがする。[p]

「これは……？」[p]
#世紬
「少し眠っていてね」[p]

抗う間もなく、意識がストンと落ちた。[p]
[jump target="*part04"]
[s]
