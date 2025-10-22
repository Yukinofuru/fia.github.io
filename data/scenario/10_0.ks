*start
;=========================================
; キャラ設定
;=========================================
;キャラクターを宣言
;古虫 紀一
[chara_new  name="kiichi"  storage="chara/kiichi/normal.png" jname="古虫 紀一"]
[chara_new  name="hisui"  storage="chara/hisui/normal.png" jname="明昼 優知"]
[chara_new  name="ito"  storage="chara/ito/normal.png" jname="曙 一十"]

;キャラクターの表情登録
;kiichi
[chara_face name="kiichi" face="normal" storage="chara/kiichi/normal.png"]
[chara_face name="kiichi" face="talk" storage="chara/kiichi/talk.png"]
;hisui
[chara_face name="hisui" face="normal" storage="chara/hisui/normal.png"]
;ito
[chara_face name="ito" face="normal" storage="chara/ito/normal.png"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;---------------------------------------------------------------------------------------------------------------------
; ゲーム開始
[cm]
[destroy]
;ログに追加しない指定
[nolog]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[Mask_light]
[image storage="load.png" name="load" layer="message1" x="0" y="0" width="1920" height="1200" time="10" wait="true" zindex=1000]
[playbgm storage=自主規制ピー音.mp3]
[wait time=1500]
[stopbgm]
[free name="load" layer="message1" time="10"]
[font color="#66cdaa"]
SYSTEM-323>　Code 7201 Approved[r]
SYSTEM-323>　Moved to 7/17 and transitioned to exploration phase[r]
[wait time=1500]
[cm]
[image storage="load.png" name="load" layer="message1" x="0" y="0" width="1920" height="1200" time="10" wait="true" zindex=1000]
[playbgm storage=自主規制ピー音.mp3]
[wait time=1500]
[stopbgm]
[free name="load" layer="message1" time="10"]

[font color="#66cdaa"]
[bg2 storage="black.png" time=100 wait=true left=0 top=0 width=1920 height=1800]
SYSTEM-323>　データが莠懃ｩｺ髢捺凾遨ｺノイズにより一部消失しました。[lr]
SYSTEM-323>　07/14/2345縺ｮ險倬鹸繧貞ｾｩ蜈?＠縺ｾ縺吶?。[p]

[endnolog]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[destroy]
[cm]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[cm]
[set_menu]
;背景画像の表示
[bg2 storage="Corridor.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
;場所名の表示
[eval exp="sf.place = '第12基地A区画廊下'"]
[set_place]
[ch_show name="kiichi"]
#kiichi:talk
「それで、どうやって出口を見つけるんだ？」[p]
[ch_hide name="kiichi"]
[ch_show name="hisui"]
#hisui
「簡単な話ですよ、部屋を移動しながら怪異を倒せばいいだけです。」[p]
[ch_hide name="hisui"]
[ch_show name="ito"]
#ito
「まさか、こいつと一緒に行くことになるとはな」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:talk
「仕方ないだろ、綾背隊長の命令なんだから」[p]
[ch_hide name="kiichi"]
[ch_show name="hisui"]
#hisui
「さて、そろそろ廊下の端ですよー。怪異を殺す準備はいいですかー？」[p]
[ch_hide name="hisui"]
[ch_show name="ito"]
#ito
「無論だ」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:talk
「ああ、行こう」[p]
#kiichi:normal
そして、A区画のドアを開けた。[p]
[ch_hide name="kiichi"]
[bg2 storage="creature/Solid_0A_1B_2C_3D.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[ch_show name="hisui"]
#hisui
「あー、この怪異ですかー。世紬の術の設置はこっちがやるので、アレの相手はお願いしますねー」[p]
[ch_hide name="hisui"]
[ch_show name="ito"]
#ito
「古虫、あれについて知ってるか？」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:talk
「俺が知ってると思うか？」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「お前に聞いた私がバカだったな」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:normal
さて、どうしようか。[p]

[set_choose]
[glink text="【１】怪異に戦いを挑む" color="button_51" x="420" y="270" size="34" target="*str1"  clickse="キャンセル1.mp3"]
[glink text="【２】怪異の行動を制限して逃げる" color="button_51" x="420" y="406" size="34" target="*int1"  clickse="キャンセル1.mp3"]
[glink text="【３】どんな危険を冒しても、逃げる" color="button_51" x="420" y="542" size="34" target="*luck1"  clickse="キャンセル1.mp3"]
[s]

*str1
[destroy]
[cm]
#kiichi:talk
「殴れば倒せるだろ」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「短絡的思考だな。まあ、いいだろう。乗ってやる」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:talk
「一十、足引っ張るなよ」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「無論だ」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi
どうすれば早く倒せる？[p]
[if exp="sf.PHI >= 12"]
[set_choose]
[glink text="【１】接近戦" color="button_51" x="420" y="270" size="34" target="*str1_1"  clickse="キャンセル1.mp3"]
[glink text="【２】不意打ち（PHI lv.1）" color="button_51" x="420" y="406" size="34" target="*str1_2"  clickse="キャンセル1.mp3"]
[glink text="【３】陽動の後、一十と協力して倒す（PHI lv.2）" color="button_51" x="420" y="542" size="34" target="*str1_3"  clickse="キャンセル1.mp3"]
[endif]
[if exp="sf.PHI >= 6 && sf.PHI < 12"]
[set_choose]
[glink text="【１】接近戦" color="button_51" x="420" y="270" size="34" target="*str1_1"  clickse="キャンセル1.mp3"]
[glink text="【２】不意打ち（PHI lv.1）" color="button_51" x="420" y="406" size="34" target="*str1_2"  clickse="キャンセル1.mp3"]
[ptext layer="2" text="【３】陽動の後、一十と協力して倒す（PHI lv.2）" x="503" y="542" size="34" color="#adacacff"]
@layopt layer=2 visible=true time="100"
[endif]
[if exp="sf.PHI < 6"]
[set_choose]
[glink text="【１】接近戦" color="button_51" x="420" y="270" size="34" target="*str1_1"  clickse="キャンセル1.mp3"]
[ptext layer="2" text="【２】不意打ち（PHI lv.1）" x="503" y="406" size="34" color="#adacacff"]
[ptext layer="2" text="【３】陽動の後、一十と協力して倒す（PHI lv.2）" x="503" y="542" size="34" color="#adacacff"]
@layopt layer=2 visible=true time="100"
[endif]
[s]

*str1_1
[cm]
[destroy]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi
怪異にブレードが触れたとたん、ブレードが折れた。[lr]
そして、黒が迫ってくる。[p]
[eval exp="sf.INS = sf.INS-8"]
[update_INS]
[jump storage="game_over.ks" target="*start"]
[s]

*str1_2
[cm]
[destroy]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi
怪異にブレードが触れたとたん、ブレードが折れた。[lr]
そして、黒が迫ってくる。[p]
#kiichi:talk
「あ……」[p]
[ch_hide name="kiichi"]
[eval exp="sf.INS = sf.INS-6"]
[update_INS]
[ch_show name="ito"]
#ito
「全く、言わんこっちゃない」[p]
[ch_hide name="ito"]
[ch_show name="hisui"]
#hisui
「撤退しますよー。扉を閉めるので、逃げ切ってくださいねー」[p]
[ch_hide name="hisui"]
[ch_show name="kiichi"]
#kiichi
怪異を討伐できないまま、俺たちは撤退した。[p]
[ch_hide name="kiichi"]
[jump target="*end"]
[s]

*str1_3
[cm]
[destroy]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi
一十と協力して討伐ができた。[p]
[ch_hide name="kiichi"]
[update_INS]
[jump target="*end"]
[s]


*int1
[destroy]
[cm]
[ch_hide name="kiichi"]
[destroy]
[cm]
[ch_show name="kiichi"]
#kiichi:talk
「ここは俺に任せてくれ」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「大丈夫なのか？」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:talk
「怪異には弱点が必ずあるはずだからな」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「お前の考える弱点が有効だといいな」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi
どうすれば早く倒せる？[p]
[set_choose]
[glink text="【１】光を当てる" color="button_51" x="420" y="270" size="34" target="*int1_1"  clickse="キャンセル1.mp3"]
[glink text="【２】手鏡で覗き込む" color="button_51" x="420" y="406" size="34" target="*int1_2"  clickse="キャンセル1.mp3"]
[glink text="【３】霧に火をつける" color="button_51" x="420" y="542" size="34" target="*int1_1"  clickse="キャンセル1.mp3"]
[s]

*int1_1
[cm]
[destroy]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi
どうやら、弱点は違ったようで、辺りに黒い霧が立ち込める。[lr]
足元から虫が上ってきて、皮膚の穴から俺の中に入ろうとしてきた。[p]
この虫は毒虫で、俺は寄生されるんだ。[lr]
早く、取り除かないと。[p]
ポケットからナイフを取り出して、皮膚を切り裂いた。[lr]
虫はどんどん湧いてきて、皮膚から浸食してくる。[p]
#kiichi:talk
「うああああぁぁぁぁああああああぁぁぁ！！！！」[p]
[eval exp="sf.INS = sf.INS-8"]
[update_INS]
[ch_hide name="kiichi"]
[jump storage="game_over.ks" target="*start"]
[s]

*int1_2
[cm]
[destroy]
[ch_hide name="kiichi"]
[ch_show name="kiichi"]
#kiichi
鏡で怪異を覗き込むと、怪異に赤い筋が見えた。[p]
#kiichi:talk
「一十！俺の言う場所を斬ってくれ！」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「わかった」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi
一十はどんどん、斬りつけていく。[lr]
すると、赤い筋以外の所には傷一つ入らないが、赤い筋の部分には深く斬り込めていた。[p]
そして、怪異を討伐した。[p]
[ch_hide name="kiichi"]
[update_INS]
[jump target="*end"]
[s]

*luck1
[destroy]
[cm]
[ch_hide name="kiichi"]
[destroy]
[ch_show name="kiichi"]
#kiichi:talk
「ここは逃げよう」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「怪異を残すリスクを背負ってまで次の部屋に行きたいのか？」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi:talk
「大切なのは、出口を見つけることだろ？」[p]
[ch_hide name="kiichi"]
[ch_show name="ito"]
#ito
「好きにしろ」[p]
[ch_hide name="ito"]
[ch_show name="kiichi"]
#kiichi
次の扉まで俺たちは走った。[p]
[ch_hide name="kiichi"]

[getrand min="0" max="100"]
[if exp="tf.rand >= sf.LUC+50"]
[ch_show name="kiichi"]
#kiichi
無事にたどり着いた。[p]
[ch_hide name="kiichi"]
@jump target=*end

[else]
[ch_show name="kiichi"]
#kiichi
扉に辿り着く直前、急に体の力が抜けて俺はその場に倒れた。[p]
何が起こったんだ？[p]
足元から虫が上ってきて、皮膚の穴から俺の中に入ろうとしてくるのが見えた。[p]
この虫は毒虫で、俺は寄生されるんだ。[lr]
早く、取り除かないと。[p]
ポケットからナイフを取り出して、皮膚を切り裂いた。[lr]
虫はどんどん湧いてきて、皮膚から浸食してくる。[p]
#kiichi:talk
「うああああぁぁぁぁああああああぁぁぁ！！！！」[p]
[eval exp="sf.INS = sf.INS-8"]
[update_INS]
[ch_hide name="kiichi"]
[jump storage="game_over.ks" target="*start"]
[endif]
[s]


*end
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[image storage="end.png" name="end" layer="message1" x="0" y="0" width="1920" height="1200" time="10" wait="true" zindex=1000]
[wait time=5000]
[free name="end" layer="message1" time="10"]
[destroy]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false
 [iscript]
	location.href="./index.html";
 [endscript]