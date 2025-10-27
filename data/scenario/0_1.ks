*start
;=========================================
; キャラ設定
;=========================================
;キャラクターを宣言
;上官
[chara_new  name="joukan" storage="chara/joukan/normal.png" jname="上官"  ]
;山本 秀一
[chara_new  name="syuuichi"  storage="chara/syuuichi/normal.png" jname="山本 秀一" ]
;怪異
[chara_new  name="orochi"  storage="Orochi.png" jname="怪異" ]
;古虫 紀一
[chara_new  name="kiichi"  storage="chara/kiichi/normal.png" jname="古虫 紀一" ]

;キャラクターの表情登録
;joukan
[chara_face name="joukan" face="normal" storage="chara/joukan/normal.png"]
[chara_face name="joukan" face="happy" storage="chara/joukan/happy.png"]
;yamamoto
[chara_face name="syuuichi" face="normal" storage="chara/syuuichi/normal.png"]
[chara_face name="syuuichi" face="happy" storage="chara/syuuichi/happy.png"]
[chara_face name="syuuichi" face="lack" storage="chara/syuuichi/lack.png"]
;kiichi
[chara_face name="kiichi" face="normal" storage="chara/kiichi/normal.png"]
[chara_face name="kiichi" face="talk" storage="chara/kiichi/talk.png"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;---------------------------------------------------------------------------------------------------------------------
; ゲーム開始
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
[playbgm storage="たき火.mp3"]

[ch_show name="kiichi"]
#kiichi
息を吸う度に、熱気が肺を焼いて痛みが走る。[lr]
怪異の鱗で斬れた右腕から血が流れ続けるおかげで、熱さは感じないが意識が朦朧としてきてきた。[p]

だが、俺はまだここで倒れるわけにはいかない。[p]

[bg2 storage="still/01_00.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
顔を上げると、真っ赤に染まった世界の中で黒色が視界一杯に広がっていく。[lr]
炎の明かりを吸い込むような漆黒の巨体の輪郭が、揺らめいていたのが定まっていって、姿を顕わにする。[p]
#kiichi:talk
「あれだけやって、まだ無傷なのかよ……ははっ……」[p]
[ch_hide name="kiichi"]
[ch_show name="joukan"]
#joukan
「……古虫、山本。来るぞ」[p]
[ch_hide name="joukan"]

[ch_show name="kiichi"]
#kiichi
上官の掠れた声には、覇気は無く、諦観が含まれていた。[p]

#kiichi:talk
「ほら、秀一、起きろよ」[p]
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……古虫、俺は置いていけ……」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「そんなこと、できるかよ」[p]

#kiichi:normal
初めは五十人居た部隊も、たった3時間で俺たち三人だけになった。[lr]
全ては、今、目の前に居る化け物のせいだ。[p]

俺たちの任務は、この"遺骨"を回収して、無事に本国に届けること。[lr]
転移装置まで逃げ切れば、俺たちの勝ちだ。[lr]
そのためにも、"遺骨"を持っている上官には逃げてもらう必要がある。[p]

そうしたら、俺はここで死ぬだろう。[lr]
そう分かっているんだが、血を流しすぎたせいか、慌てふためくどころか、思考は却って冷静だ。[p]
どうせ、俺の帰りを待つ家族なんていないし、[lr]
それに、こんな無能でも世のため人の為に何かできるなら、本望だというものだ。[p]

#kiichi:talk
「上官、ここは俺たちがなんとかします。上官は”遺骨”を持って逃げてください」[p]
[ch_hide name="kiichi"]
[ch_show name="joukan"]
#joukan
「いや、逃げるのはお前たちだ」[p]
[ch_hide name="joukan"]
[ch_show name="kiichi"]
#kiichi:talk
「ですが……」[p]

#kiichi:normal
上官は俺に向かって”遺骨”の入った袋を押し付けた。[p]

[ch_hide name="kiichi"]
[ch_show name="joukan"]
#joukan
「"唐舞橋の大蛇"に勝てないのは明白だ。それなら、生きるべきはお前たち若い連中だろ？」[p]
[ch_hide name="joukan"]

[ch_show name="kiichi"]
#kiichi
上官は灰で黒くなった歯を見せてにいっと笑おうとする。[lr]
だが、口の端は片方しか上がらないどころか、震えていた。[p]

#kiichi:talk
「上官……」[p]
[ch_hide name="kiichi"]
[ch_show name="joukan"]
#joukan
「お願いだ、俺の気持ちが変わらないうちに、早く行け」[p]
[ch_hide name="joukan"]
[ch_show name="kiichi"]
#kiichi:talk
「……ですが……上官には……」[p]
[ch_hide name="kiichi"]
[cm]
[freeimage layer="1"]
[ch_show name="kiichi"]
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
[glink text="【３】上官の指示に従い、逃げる" color="button_51" x="420" y="542" size="34" target="*part02"  clickse="キャンセル1.mp3"]
@layopt layer=2 visible=true time="100"

[if exp="sf.SPI >50 && sf.click < 6"]
[button graphic="transparent.png" x="180" y="85" width="1400" height="150" target="*clack" clickse="pi.mp3"]
[button graphic="transparent.png" x="180" y="750" width="1400" height="150" target="*clack" clickse="pi.mp3"]
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
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「古虫！」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「っ……！」[p]
[ch_hide name="kiichi"]
[ch_show name="joukan"]
#joukan
「お願いだ……それ以上は……言わないでくれ……」[p]
[ch_hide name="joukan"]
[ch_show name="kiichi"]
#kiichi
上官は、今度子供が生まれるし、帰りを待っている奥さんがいる。[lr]
だけど、その目は死を覚悟していた。[p]

何もできないでいると、ふと、俺の横から腕が伸びてきて、袋をむしり取る。[p]
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……古虫……行くぞ。上官の思いを無駄にするな」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「秀一……ああ、そうだな」[p]

上官に背を向けて、俺は秀一と走った。[p]
[bg2 storage="fire.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

#kiichi:talk
「秀一、脱出ポイントまであとどのくらいだ？」[p]
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……その車の向こうだ……早く……っ！！」[p]
[playse storage="弓矢が刺さる.mp3"]
[ch_hide name="syuuichi"]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

[ch_show name="kiichi"]
#kiichi:talk
「秀一！？」[p]

#kiichi:normal
その腹部には深々と鉄の棒が刺さっていた。[p]

[freeimage layer="1" time="500" wait="false"]

[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「古虫……早く行け……」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「何を言ってるんだ！今、連れていく」[p]
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……俺に構うな。早く、行け……」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「何言ってんだよ、その程度の傷、拠点に戻ればIR-Mで一瞬……っ！？」[p]
[ch_hide name="kiichi"]
#
「きゃぁあぁぁぁやゃ！！！」[p]
[ch_show name="syuuichi"]
#syuuichi
「……どうやら……時間は無いようだな……」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi
秀一は俺に袋を押し付けると、ブレードを杖に立ち上がった。[p]
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……上官の作った時間、無駄にするな」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「時間稼ぎなら、俺がやる。お前のほうが、"遺骨"を持って行けよ」[p]
[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……俺はもう長くない……それに、俺一人じゃ、歩けないんだよ……だから、お前が、これを持っていくんだ……」[p]
[ch_hide name="syuuichi"]
[ch_show name="kiichi"]
#kiichi:talk
「秀一！！」[p]

#kiichi:normal
その時、むせかえるほどの灰が舞い、炎の中から血が溢れ続ける眼孔がぬっと現れた。[lr]
それは、黒い鱗を擦り付けながら、こちらに近づいてくる。[p]

[ch_hide name="kiichi"]
[ch_show name="syuuichi"]
#syuuichi
「……なあ、古虫……妹に伝えてくれないか……」[p]
;[bg2 storage="still/01_01.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

#syuuichi:happy
「愛しているってさ」[p]
[ch_hide name="syuuichi"]

;[bg2 storage="fire.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[ch_show name="kiichi"]
#kiichi
秀一は、にっと笑うと、怪物に向かって突っ込んでいった。[p]
#kiichi:talk
「秀一！！この、馬鹿！」[p]
「……どいつもこいつも……俺に託すなよ……畜生……」[p]

#kiichi:normal
迷っている時間なんて無かった。[lr]
俺は、遺骨を抱きしめて、前を向く。[p]
そして、走った。[lr]
息が吸えなくても、腕の感覚がしなくても、関係ない。[lr]
がむしゃらに走った。[p]

#kiichi:talk
「……いつも、俺ばかり……なんでだよっ！どうして……俺なんだよ……」[p]

#kiichi:normal
ひっくり返っている車の向こうに白い円筒の装置が見えた。[lr]
脱出ポッドだ。[l][r]
まだ、火の手が弱いお陰で、無事そうだった。[p]

[stopbgm]
[bg2 storage="monitor.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

中に入ると、モニターが光り、いつもの機械音声が流れる。[p]

[ch_hide name="kiichi"]
#機械音声
「起動シーケンス確認。ブートデバイス起動、位置情報読み込み完了、転移術式読み込み完了、[p]
カーネル起動、転移の準備が整いました。これより、3秒後に転移を開始します」[p]

[ch_show name="kiichi"]
#kiichi
行き先は既に指定されている。[lr]
3秒後には、俺は俺の意思に関係なく、強制的にこのエリア3から第3基地本部に転送される。[p]
それで、任務は終了だ。[p]

#kiichi:talk
「早くしろ、くそっ」[p]

#kiichi:normal
たった3秒、そのはずなのにやけに長く感じた。[p]

モニターの残り秒数が2から1に変わったその時、ポッドの壁がぐにゃりと歪み、衝撃が走る。[p]
[playse storage="打撃6.mp3"]
そして、辺りが暗闇に包まれた。[p]

[layermode time="700" color="#000000ff" mode="multiply" name=haikei_no_ue]

#kiichi:talk
「おい！なんだよ！起動しろよ！！」[p]
[ch_hide name="kiichi"]
[playbgm storage=自主規制ピー音.mp3]
#機械音声
「エラー発生、エラー発生、機器の破損を確認」[p]

[ch_show name="kiichi"]
#kiichi
機械音声が無慈悲に流れる。[lr]
今のはきっと、あの怪物の攻撃だ。[lr]
上官も秀一も死んで、今、アレは俺の目の前に居る。[p]

#kiichi:talk
「……ゲームオーバーかよ。くそっ」[p]
[ch_hide name="kiichi"]
#機械音声
「周囲の安全を確認し……」[p]
[ch_show name="kiichi"]
#kiichi:talk
「知るかっ！！」[p]
[ch_hide name="kiichi"]

[stopbgm]
[playse storage="ガラスが割れる1.mp3"]
[free_layermode wait="false" time="700"]
[layermode time="700" color="#920000ff" mode="lighten" name=haikei_no_ue opacity=100 wait="false"]
@layopt layer=1 visible=true
[image storage="clack/clack3.png" layer="1" x="180" y="85" width="1440" height="900" time="10" wait="false"]

#機械音声
「これより強制転移を開始します。シートベルトを装着し、衝撃に備えてください」[p]

[ch_show name="kiichi"]
#kiichi
機械の駆動音と共に、今度は赤い光に包まれた。[p]
動いてくれるなら、何でもいい。俺の体がバラバラになっても構わない。[lr]
せめて、この"遺骨"だけは届けるんだ。[p]

モーター音が高くなるにつれ、光が白く変わり、何も見えなくなってくる。[p]

[free_layermode wait="false" time="700"]
[freeimage layer="1" time="500" wait="false"]
[bg2 storage="white.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

目を閉じると、内臓を持ち上げるような浮遊感が襲ってきた。いつもの転移の感覚だ。[p]

#kiichi:talk
「転移は成功……っ」[p]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

#kiichi:normal
テレビを切るように意識が一瞬途切れて、全ての感覚が失われる。[p]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

[eval exp="sf.place = '07/07/2345 ？？？'"]
[set_place]

#kiichi
すぐに俺は現実に引き戻された。[p]
冷たい床の感触が体全体に広がる。[lr]
そして、錆びた鉄の匂いが鼻腔に広がり、思わずむせた。[p]

#kiichi:talk
「……っげほっ……っげほっ……なんだ……ここはっ……転移は成功、という訳でもなさそうだな」[p]

[bg2 storage="Corridor_black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

「"遺骨"は無事か。まずは、ここはどこか探る必要がありそうだな」[p]

#kiichi:normal
少し歩いてみるが、基地の廊下のはずなのに窓は何処にもなく、扉の一つも見当たらなかった。[lr]
道は塞がっていないのに、閉塞感が喉をじわじわと締め付ける。[p]

ここはどこか次元の狭間で、俺はここから脱出できないのではないか。[lr]
そんな不安で頭が一杯になる。[p]

廊下の端まで歩いて、曲がり角を曲がった。[lr]
[bg2 storage="Corridor_blood.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
その時、ふと廊下の奥から低い男の声が聞こえてきた。[p]
[ch_hide name="kiichi"]

#？？？
「……」[p]
[ch_show name="kiichi"]
#kiichi:talk
「誰かいるのか？」[p]

#kiichi:normal
警戒しつつ、俺は廊下を進む。奥のほうは明かりが消えていて、よく見えない。[p]

#kiichi:talk
「映画なら、こういう時、生存者に化けたゾンビとか出てくるんだよな」[p]

#kiichi:normal
袋を腰に巻き付けて、ブレードを抜く。[p]
暗闇に近づくたびに、男の声ははっきりと聞こえてきた。[lr]
何かをぶつぶつと唱えているようだ。[p]
[ch_hide name="kiichi"]

#？？？
「……」[p]
#女？
「……タ……ス……ケテ……」[p]

[ch_show name="kiichi"]
#kiichi
男の声の中に、微かに女性の声が聞こえた。[lr]
俺の聞き間違いじゃない、潰れた喉で何度も叫んでいるか細い声だ。[p]

#kiichi:talk
「誰かいるのか！？今、助けに行く！」[p]

#kiichi:normal
暗闇に向かって一歩進むたびに、血の匂いが濃くなる。[lr]
この廊下の奥に、誰かいる。[p]
一人は確実に人間じゃない。[lr]
だが、もう一人の女性は助けを求めてる人間かもしれない。[p]

#kiichi:talk
「早く助けに行かないと」[p]

#kiichi:normal
ここがどこかとか聞きたいし、それに俺以外に誰かいるのを確かめたい。[p]

# kiichi:talk
「おい！」[p]
[ch_hide name="kiichi"]
#女？
「……嫌……タ……ケ手……」[p]
#？？？
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]

[ch_show name="kiichi"]
#kiichi
声は頭上から聞こえてきた。機械的に無機質に男がピチャピチャと唱えている。[p]

ふと、生臭い匂いと共に、顔に液体がかかった。[lr]
[playse storage="血がたれる2.mp3"]
@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]
その温かさとぬるりとした感触に、背筋が凍る。[p]
[ch_hide name="kiichi"]
#男
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]
[ch_show name="kiichi"]
#kiichi:talk
「……血だ……」[p]
[freeimage layer="1" time="500" wait="false"]

#kiichi:normal
[bg2 storage="still/01_02.png" time=10 wait=false left=180 top=80 width=1440 height=900]
上を見上げると、魚の目と目が合った。[p]
[playbgm storage="field.mp3"]
[ch_hide name="kiichi"]

#男
「ピチャピチャピチャピチャピチャピチャピチャピチャ」[p]
[ch_show name="kiichi"]
#kiichi:talk
「ぅああぁぁぁぁああああ！！！！」[p]

#kiichi:normal
ぶよぶよに膨らみ切った体に、無造作に取り付けられた魚の頭。[lr]
口からは人間の腕が垂れ下がっていて、鮮血が滴り落ちている。[p]
肉塊には無数の穴があり、そこから低い声が出ていた。[p]

[bg2 storage="still/01_03.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

#kiichi:talk
「人が……っ！？」[p]

#kiichi:normal
すぐに踵を返して逃げようとしたが、曲がり角の手前に同様の魚の化け物が道を塞いでいた。[p]
[bg2 storage="still/01_04_2.png" time=10 wait=true left=180 top=80 width=1440 height=900]

#kiichi:talk
「逃げ場は、なさそうだな」[p]
[bg2 storage="still/01_03.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

[set_choose]
[glink text="【１】怪異に戦いを挑む" color="button_51" x="420" y="270" size="34" target="*part03_1"  clickse="キャンセル1.mp3"]
[glink text="【２】怪異の行動を制限して逃げる" color="button_51" x="420" y="406" size="34" target="*part03_2"  clickse="キャンセル1.mp3"]
[glink text="【３】どんな危険を冒しても、逃げる" color="button_51" x="420" y="542" size="34" target="*part03_3"  clickse="キャンセル1.mp3"]
[s]

*part03_1
[cm]
[destroy]
[set_menu]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi:talk
「ははっ、やるしかなさそうだな……！」[p]

#kiichi:normal
折れたブレードを構える。[lr]
無いよりは、多少はマシか。[p]
ドロドロとした赤茶色の液体を垂らしながら、どさっと怪異は床に落ちた。[lr]
ぬるぬるとした自分の体液に足を滑らして、魚はひっくり返り、ジタバタしだす。[p]
辺りに液体が散らばり、無造作に噛みちぎられた腕が飛んでいった。[p]

やるなら、今だ。[p]

[set_choose]
[glink text="【１】接近戦" color="button_51" x="420" y="270" size="34" target="*part03_1_2"  clickse="キャンセル1.mp3"]
[ptext layer="2" text="【２】陽動して隙を付く（PHI lv.1）" x="503" y="406" size="34" color="#adacacff"]
[ptext layer="2" text="【３】弱点を付く（PHI lv.2）" x="503" y="542" size="34" color="#adacacff"]
@layopt layer=2 visible=true time="100"
[s]

*part03_1_2
[cm]
[destroy]
[set_menu]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi:talk
「おあぁぁぁああああ！！！」[p]

#kiichi:normal
ブヨブヨした体に、ブレードの先端を差し込む。[p]
[playse storage="打撃7.mp3"]

[layermode time="700" color="#b30000ff" mode="multiply" name=haikei_no_ue]

ぶすっという感覚とともに、ブレードは深く差し込まれていく。[lr]
力任せに、俺は奥までねじ込んだ。[p]
[ch_hide name="kiichi"]
#？？？
「ア、ア、ア、ア、ア、ア、ア、ア、ア、ア」[p]
[ch_show name="kiichi"]
#kiichi:talk
「死ね！死ね！死ね！死ね！」[p]

#kiichi:normal
苦しそうに喘ぐ魚の声を無視して、ブレードを下に向けて進める。[p]
ブレードが折れていたせいで、まだブヨブヨしながらソレは息をしている。[lr]
なら、もう一度、斬るだけだ。[p]
[ch_hide name="kiichi"]

#？？？
「君！危ない！！」[p]

[ch_show name="kiichi"]
#kiichi
ブレードを振り上げたその時、目の前で何かが弾けた。[p]
[playse storage="打撃6.mp3"]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

強い衝撃と共に、耳がキーンとなり、目がくらむ。[lr]
すぐに、壁に強く体がぶつかって息が詰まった。[p]

#kiichi:talk
「ぐはっ……！」[p]

#kiichi:normal
ジンジンと耳鳴りが響きながら、意識が薄れていく。[lr]
怪異が、自爆したのか？[p]
仕留め損ねたなら、俺は……。[p]
[ch_hide name="kiichi"]
[free_layermode time="700" wait="false"]
[freeimage layer="1" time="500" wait="false"]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[eval exp="sf.day = 4"]
[jump storage="04_2_06.ks" target="**start"]
[s]

*part03_2
[cm]
[destroy]
[set_menu]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi:talk
「なら、何とか抑え込んで、隙を見て逃げるか」[p]

#kiichi:normal
折れたブレードを構える。[lr]
無いよりは、多少はマシか。[p]
ドロドロとした赤茶色の液体を垂らしながら、どさっと怪異は床に落ちた。[lr]
ぬるぬるとした自分の体液に足を滑らして、魚はひっくり返り、ジタバタしだす。[p]
辺りに液体が散らばり、無造作に噛みちぎられた腕が飛んでいった。[p]

#kiichi
「今なら、逃げられるか……？」[p]

[set_choose]
[ptext layer="2" text="【１】陽動して隙を付く（KNO lv.1）" x="503" y="270" size="34" color="#adacacff"]
[glink text="【２】隙を付いて逃げる" color="button_51" x="420" y="390" size="34" target="*part03_2_2" clickse="キャンセル1.mp3"]
[ptext layer="2" text="【３】水をかける（PHI lv.1）" x="503" y="542" size="34" color="#adacacff"]
@layopt layer=2 visible=true time="100"
[s]

*part03_2_2
[cm]
[destroy]
[set_menu]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi
怪異にブレードを向けながら後ろに下がる。[lr]
ふと、背後から低い声が聞こえた気がした。[p]

#kiichi:talk
「……まさか……！？」[p]
[playse storage="雨で濡れた道路を歩く.mp3"]
[bg2 storage="still/01_04.png" time=10 wait=true left=180 top=80 width=1440 height=900]
#kiichi:normal
振り返ると、怪異はどんどんこちらに近づいているのが見えた。[p]
[bg2 storage="still/01_03.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

#kiichi:talk
「おいおい、嘘だろ！？」[p]

#kiichi:normal
逃げ場はない。こうなったら、せめて、前の奴の隙をついて、さらに奥に進むしか無い。[p]


#kiichi:talk
「おりゃぁぁぁぁぁ！」[p]

#kiichi:normal
思い切って走って、目の前の奴の端を通り抜けようとしたその時、足を滑らして転んだ。[p]
[ch_hide name="kiichi"]

#？？？
「ピチャピチャピチャピチャピチャピチャ」[p]

[ch_show name="kiichi"]
#kiichi
魚が口をパクパクさせながら、迫ってくる。[p]
このまま、俺は食われるのか……？[lr]
いや、まだだ。まだ、方法はある！[p]

#kiichi:talk
「これでもくらえ！」[p]

#kiichi:normal
目玉に向かってブレードを突き立てる。[p]
[playse storage="打撃7.mp3"]
[ch_hide name="kiichi"]

@layopt layer=1 visible=true
[image storage="blood.png" layer="1" x="180" y="85" width="1440" height="900" time="500" wait="false"]

#？？？
「ア、ア、ア、ア、ア、ア、ア、ア、ア、ア」[p]
[ch_show name="kiichi"]
#kiichi:talk
「今だ！」[p]
[ch_hide name="kiichi"]

[freeimage layer="1" time="500" wait="false"]

#？？？
「危ない！！」[p]

[ch_show name="kiichi"]
#kiichi
立ち上がろうとしたその時だった。[p]

[layermode time="700" color="#b30000ff" mode="multiply" name=haikei_no_ue]

[playse storage="打撃6.mp3"]
#kiichi
目の前で何かが弾けたのだ。[p]
強い衝撃と共に、耳がキーンとなり、目がくらむ。[lr]
意識が白く霞む中で、壁に強く体がぶつかって息が詰まった。[p]

#kiichi:talk
「ぐはっ……！」[p]

#kiichi:normal
ジンジンと耳鳴りが響きながら、意識が薄れていく。[p]
怪異が、爆破したのか？[lr]
まだ、もう一匹いるはずなら、俺は……。[p]
[ch_hide name="kiichi"]
[free_layermode time="700" wait="false"]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[eval exp="sf.day = 4"]
[jump storage="04_2_06.ks" target="**start"]
[s]

*part03_3
[cm]
[destroy]
[set_menu]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi:talk
「どこかに隠れてやり過ごすしかないか。そのためにも、こいつを何とかしないと……」[p]

#kiichi:normal
じっと待っていると、怪異は巨体を引きずりながらこちらに迫ってきた。[p]

#kiichi:talk
「どこか、抜け道は無いか！？」[p]

#kiichi:normal
辺りを見渡していると、ふと、目の端に黒い影が映った。[p]

[bg2 storage="Corridor_door.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

横を見ると、壁の一部が溶けるように変化し、不気味な黒い扉が姿を現す。[lr]

[bg2 storage="still/01_05.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
その表面はあの大蛇のような、光を吸い込む漆黒で、見ていると吸い込まれるような錯覚に襲われる。[p]

#kiichi:talk
「扉？見落としていたのか？いや、そんなはずは……」[p]

[bg2 storage="still/01_06.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[playse storage="門を開ける.mp3"]
#kiichi:normal
扉がギィと音を立てて開く。[lr]
その向こうには、同じように暗闇が広がっていた。[p]

冷汗が背中を伝う。[p]

一歩、下がった途端、開いた扉から腕が伸びてきた。[lr]
[bg2 storage="still/01_07.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
その腕は、俺の体を掴むと、強引に扉の中に引きこんだ。[p]

[bg2 storage="black.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

かび臭い空間で、扉の隙間から漏れ出る光が彼女を照らす。[lr]
青白い顔に、日本人形のような黒い綺麗な髪。[lr]
その美しさに、思わず息を飲む。[p]

切れ長の瞳で俺を優し気に眺めつつ、彼女は俺の顔に布を被せた。[lr]
人工的な甘い香りがする。[p]

#kiichi:talk
「これは……？」[p]
[ch_hide name="kiichi"]
#？？？
「少し眠っていてね」[p]

[ch_show name="kiichi"]
#kiichi:normal
抗う間もなく、意識がストンと落ちた。[p]
[ch_hide name="kiichi"]
[eval exp="sf.day = 4"]
[jump storage="04_2_06.ks" target="*start"]
[s]
