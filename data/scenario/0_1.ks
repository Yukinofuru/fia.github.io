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
[ptext layer="message0" text="07/07/2345 15:43PM エリア３" x="200" y="8" size="34" color="#66cdaa"]
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

[s]