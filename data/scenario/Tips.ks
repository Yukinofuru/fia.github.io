;キーコンフィグの無効化
[stop_keyconfig]

[bg2 storage="transparent.png" time=100 wait=true left=180 top=80 width=1440 height=900]
[destroy]
[clearfix]
[nolog]
@layopt layer=message0 visible=false

;前景レイヤの中身をすべて空に
[iscript]
$(".layer_camera").empty();
$("#bgmovie").remove();
[endscript]

[hidemenubutton]

;Mask_lightの表示
[Mask_light]

;メッセージウィンドウの設定
[current layer="message1"]
@layopt layer=message1 visible=true
@layopt layer=1 visible=true

[iscript]
tf.level = Math.floor(sf.KNO/6);
tf.k=["404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"404 not found",
"Access prohibited",
"Access prohibited"];
[endscript]

;レベルごとに怪異の名前を公開する
[iscript]
if(tf.level > 0){tf.k[0] = "Solid_A9_03_8A_D4_ALT";}
if(tf.level > 1){tf.k[1] = "Solid_0A_1B_2C_3D";}
if(tf.level > 2){tf.k[2] = "Liquid_4E_5F_6A_7B";}
if(tf.level > 3){tf.k[3] = "Liquid_C0_D1_E2_F3";}
if(tf.level > 4){tf.k[4] = "Solid_01_23_45_67";}
if(tf.level > 5){tf.k[5] = "Solid_FE_DC_BA_98";}
if(tf.level > 6){tf.k[6] = "Liquid_B5_A6_97_88";}
if(tf.level > 7){tf.k[7] = "Solid_79_8A_9B_AC";}
if(tf.level > 8){tf.k[8] = "Solid_5B_6C_7D_8E";}
if(tf.level > 10){tf.k[10] = "Solid_D3_E4_F5_06";}
if(tf.level > 11){tf.k[11] = "Liquid_17_28_39_4A";}
if(tf.level > 12){tf.k[12] = "Liquid_17_28_39_4A";}
if(tf.level > 13){tf.k[13] = "Solid_5B_6C_7D_8E";}
if(tf.level > 14){tf.k[14] = "Liquid_9F_A0_B1_C2";}
if(tf.level > 15){tf.k[15] = "Solid_5B_6C_7D_8E";}
if(tf.level > 16){tf.k[16] = "Liquid_9F_A0_B1_C2";}
if(tf.level > 17){tf.k[17] = "Solid_5B_6C_7D_8E";}
if(tf.level > 18){tf.k[18] = "Solid_F6_E7_D8_C9";}
if(tf.level > 19){tf.k[19] = "Solid_A0_B1_C2_D3";}
if(tf.level > 20){tf.k[20] = "Solid_28_39_4A_5B";}
if(tf.level > 21){tf.k[21] = "Solid_A0_B1_C2_D3";}
if(tf.level > 22){tf.k[22] = "Solid_28_39_4A_5B";}
if(tf.level > 23){tf.k[23] = "Liquid_6C_7D_8E_9F";}
if(tf.level > 24){tf.k[24] = "Solid_A9_03_8A_D4_ALT";}
if(tf.level > 25){tf.k[25] = "Solid_00_00_A2_Z6";}
if(tf.level > 26){tf.k[26] = "Liquid_BF_FC_3E_5F";}
[endscript]

[jump target="*menu"]

*menu
[cm]
[font color="#66cdaa"]
System Boot Time:0707234511089[emb exp="tf.level"][r][r]
SYSTEM_323>　何か御用でしょうか。[r][r]

[link target=*data]【１】怪異データの閲覧[endlink][r]
[link target=*word]【２】用語集の閲覧[endlink][r]
[link target=*etc]【３】雑談[endlink][r][r]
[link target=*AwakeGame]C:\Users\FIA>　ゲームに戻る[endlink][r]
[hover_effect]
[s]

*data
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*k1 cond="tf.level >0"]【１】　[emb exp="tf.k[0]"][endlink][r]
[link target=*k2 cond="tf.level >1"]【２】　[emb exp="tf.k[1]"][endlink][r]
[link target=*k3 cond="tf.level >2"]【３】　[emb exp="tf.k[2]"][endlink][r]
[link target=*k4 cond="tf.level >3"]【４】　[emb exp="tf.k[3]"][endlink][r]
[link target=*k5 cond="tf.level >4"]【５】　[emb exp="tf.k[4]"][endlink][r]
[link target=*k6 cond="tf.level >5"]【６】　[emb exp="tf.k[5]"][endlink][r]
[link target=*k7 cond="tf.level >6"]【７】　[emb exp="tf.k[6]"][endlink][r]
[link target=*k8 cond="tf.level >7"]【８】　[emb exp="tf.k[7]"][endlink][r]
[link target=*k9 cond="tf.level >8"]【９】　[emb exp="tf.k[8]"][endlink][r]
[link target=*k10 cond="tf.level >9"]【１０】　[emb exp="tf.k[9]"][endlink][r]
[link target=*k11 cond="tf.level >10"]【１１】　[emb exp="tf.k[10]"][endlink][r]
[link target=*k12 cond="tf.level >11"]【１２】　[emb exp="tf.k[11]"][endlink][r]
[link target=*k13 cond="tf.level >12"]【１３】　[emb exp="tf.k[12]"][endlink][r]
[link target=*k14 cond="tf.level >13"]【１４】　[emb exp="tf.k[13]"][endlink][r][r]
[link target=*data2]C:\Users\FIA>　次の頁へ[endlink][r]
[hover_effect]
[s]

*data2
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*data]C:\Users\FIA>前の頁へ[endlink][r][r]
[link target=*k15 cond="tf.level >14"]【１５】　[emb exp="tf.k[14]"][endlink][r]
[link target=*k16 cond="tf.level >15"]【１６】　[emb exp="tf.k[15]"][endlink][r]
[link target=*k17 cond="tf.level >16"]【１７】　[emb exp="tf.k[16]"][endlink][r]
[link target=*k18 cond="tf.level >17"]【１８】　[emb exp="tf.k[17]"][endlink][r]
[link target=*k19 cond="tf.level >18"]【１９】　[emb exp="tf.k[18]"][endlink][r]
[link target=*k20 cond="tf.level >19"]【２０】　[emb exp="tf.k[19]"][endlink][r]
[link target=*k21 cond="tf.level >20"]【２１】　[emb exp="tf.k[20]"][endlink][r]
[link target=*k22 cond="tf.level >21"]【２２】　[emb exp="tf.k[21]"][endlink][r]
[link target=*k23 cond="tf.level >22"]【２３】　[emb exp="tf.k[22]"][endlink][r]
[link target=*k24 cond="tf.level >23"]【２４】　[emb exp="tf.k[23]"][endlink][r]
[link target=*k25 cond="tf.level >24"]【２５】　[emb exp="tf.k[24]"][endlink][r]
[link target=*k26 cond="tf.level >25"]【ーー】　[emb exp="tf.k[25]"][endlink][r]
[link target=*k27 cond="tf.level >26"]【ーー】　[emb exp="tf.k[26]"][endlink][r]
[hover_effect]
[s]

*k1
[cm]
[font color="#66cdaa"]
怪異名：Solid_A9_03_8A_D4_ALT[r][r]
ほやに魚の頭を取り付けたような見た目の怪異。[r]
［　Access prohibited　］の分体。[r]
体から神経毒のガスを吹き出すため、下手に切り刻むのは危険。[r]
しかし、［　Access prohibited　］と比べ、あまり攻撃性は無く、[r]
見つけた場合はソーラインを注入することでガスを無毒化した後、[r]
首を斬ることで討伐が可能。[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r]
[hover_effect]
[s]

*k2
[cm]
[font color="#66cdaa"]
怪異名：Solid_0A_1B_2C_3D[r][r]
黒曜石の塊のような怪異。[r]
精神に直接干渉し、見る者の不安や恐怖を増幅させる。[r]
霧が濃いほど影響力が増すことが報告されている。[r]
ソーライン無しで接触した場合、精神錯乱に陥り、自傷行為に及ぶことを確認。[r]
ソーライン有り環境では、霧が薄くなり影響が軽減されるが、物理的な破壊は困難。[r]
鏡を通して見ることで破壊が可能と推測される。[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k3
[cm]
[font color="#66cdaa"]
怪異名：Liquid_4E_5F_6A_7B[r][r]
ヘドロ状の形相の怪異で、部屋自体が怪異と考えられる。[r]
ガスマスクの装備を推奨。[r]
生物の排泄物の他に、恐怖や不安等の負の感情を吸収し膨張する。[r]
刺激の強い悪臭が特徴で、接近するほど吐き気や目眩を引き起こし、[r]
内部は高濃度のタナトリウムでできているため、接触は危険である。[r]
ソーライン無しで接触した場合、皮膚が侵食され、[r]
細胞組織が液状化し数秒で死に至ることが報告されている。[r]
ソーライン有り環境では、臭気が薄まり、液状化の進行が遅くなる傾向がある。[r]
活性化の源は下水道の奥にある特定の排水口であり、そこを封鎖することで弱体化し、[r]
物理的干渉が有効になる。[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k4
[cm]
[font color="#66cdaa"]
怪異名：Liquid_C0_D1_E2_F3[r][r]
一切の光が届かない場所に住む、黒い油状の怪異。[r]
形状は常に変化しているため、写真では渦状に見える。[r]
生物の影を吸い取る特徴がある。[r]
影を失った対象は光に当たることを恐れ、徐々に衰弱して死に至る。[r]
尚、光を照射しても対象は極度の不安症になる以外に、[r]
特段目立った症状は無いことが確認されている。[r]
ソーライン無しで接触した場合、瞬時に影が消え、衰弱して死亡することが確認されている。[r]
ソーライン有りでの接触では、影の吸収速度が遅くなり、衰弱速度が遅くなる。[r]
光を当てると活性化するため、注意が必要である。[r]
一方で、熱に弱く、本体が油状であるため燃焼させることが可能で、[r]
火を付けた場合コアが露出し討伐が可能となる。[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k5
[cm]
[font color="#66cdaa"]
怪異名：Solid_01_23_45_67[r][r]
無数の点滴チューブが刺さったマネキンのような怪異。[r]
その本体はチューブ内の菌類の集合体と考えられる。[r]
ソーライン無しで接触した場合、点滴が刺さると正体不明の病を発症する。[r]
病を発症した対象は、様々な症状を訴え、一日以内に死亡することが確認されている。[r]
病を発症した対象にソーラインを打った場合、急速に石化して死に至る。[r]
ソーライン接種状態で接触した場合、病の発症を防ぐことが可能。[r]
チューブを斬ると、空気中に病原菌やウイルスが舞うことで吸引し、[r]
ソーラインが切れた際に病を発症するリスクがあり危険。[r]
低温環境では動きが鈍り、マネキンの心臓部にあるコアを破壊できることが報告されている。[r]
また、コアを破壊することで、他の病原体が死滅し、発症者を救えることが確認されている。[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k6
[cm]
[font color="#66cdaa"]
怪異名：Solid_FE_DC_BA_98[r][r]
巨大な振り子のような見た目の怪異。[r]
近づく者の記憶を奪うことが報告されている。[r]
接触者の記録では、ブランコが揺れる度に記憶が失われる。[r]
ソーライン無しで接触した場合、急速に記憶を消失し、数分で記憶全てを忘れる。[r]
記憶喪失状態の対象は、陳述記憶だけでなく、非陳述記憶も失い、自失状態となる。[r]
ソーライン有り環境では、記憶の消失速度が遅くなる。[r]
ブランコが軋む音を聞かないことで記憶の消失を防いで接近できる。[r]
ブランコを破壊することで、失った記憶を取り戻すことが可能。[r]
水をかけると急速に錆て、動かなくなることが報告されている。[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k7
[cm]
[font color="#66cdaa"]
怪異名：Liquid_B5_A6_97_88[r][r]
半透明な粘液状のカエルのような見た目の怪異。[r]
ガスマスクの装着を推奨。[r]
特有の甘い香りのする毒ガスを放っており、[r]
ガスを吸引した対象に最も幸福な記憶の幻覚を見せ、[r]
幻覚に囚われた者は現実を見失い、眠りにつく。[r]
ソーライン無しで接触した場合、瞬時に幻覚が見えだして、植物人間状態になる。[r]
応答が不可能になった場合、毒ガスにより脳の融解が確認されており、[r]
目覚めることは二度とない。[r]
ソーライン有り環境では、幻覚の強さを弱めることができるが、[r]
完全に打ち消すことはできない。[r]
霧状の空気を吸い込まないことで、幻覚を見ないで接近できる。[r]
ガスは感光性があり、光を当てることで、[r]
比較的ガスの薄い場所が確認できることが報告されている[r][r][r][r]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k8
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k9
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k10
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k11
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k12
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k13
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k14
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k15
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k16
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k17
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k18
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k19
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k20
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k21
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k22
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k23
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k24
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k25
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k26
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k27
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*word
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
【怪異について】[r]
[link target=*m1]【１】　ソーライン[endlink][r]
[link target=*m2]【２】　怪異[endlink][r]
[link target=*m3]【３】　怪物[endlink][r]
【４】404 Not Found[r]
【５】404 Not Found[r]
【６】404 Not Found[r]
【７】404 Not Found[r][r]
[link target=*word2]C:\Users\FIA>　次の頁へ[endlink][r]
[hover_effect]
[s]

*word2
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*word]C:\Users\FIA>　前の頁へ[endlink][r][r]
【術使について】[r]
【１】404 Not Found[r]
【２】404 Not Found[r]
【３】404 Not Found[r]
【４】404 Not Found[r]
【５】404 Not Found[r]
【６】404 Not Found[r]
【７】404 Not Found[r][r]
[link target=*word3]C:\Users\FIA>　次の頁へ[endlink][r]
[hover_effect]
[s]

*word3
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*word2]C:\Users\FIA>　前の頁へ[endlink][r][r]
【第7小隊隊員】[r]
【１】404 Not Found[r]
【２】Access prohibited[r]
【３】404 Not Found[r]
【４】404 Not Found[r]
【５】404 Not Found[r]
【６】404 Not Found[r]
【７】Access prohibited[r]
[hover_effect]
[s]

*m1
[cm]
[font color="#66cdaa"]
我が国では主に怪異との戦闘の際に兵士が注射して使用する物質です。[r]
通常、怪異を直視した兵士は即座に精神に異常をきたすのですが、[r]
その精神的負担を大幅に和らげることができます。[r]
なお、怪異に注射・投擲した場合には効果的なダメージを与えられるほか、[r]
人間に擬態、もしくは同化した怪異に対しては、擬態を強制的に解除することができます。[r]
ただし、注意してください[r]
━━正体を暴かれた怪異は、元がどのような人間であったとしても、[r]
即座にあなたに殺意を向けるでしょう。[r][r]
「大昔の怪物の血を引く人々の血液から製造されているらしい」[r]
と兵士たちの間で知られていますが、詳細は厳密に秘匿されています。[r]
また、不必要に繰り返し接種することは推奨されず、[r]
身体・精神に不可逆的な変化をもたらす可能性があります。[r][r][r][r]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m2
[cm]
[font color="#66cdaa"]
狭義の怪異は、怪物による精神的・身体的干渉によって[r]
人間に危害を加えるようになった”元人間”を指します。[r]
広義の怪異は、その狭義の怪異と先述の怪物の両方を指します。[r]
通常は広義の意味で使用される言葉ではありますが、[r]
ここでは狭義の怪異について説明します。[r]
まず、決して忘れてはならないのは、怪異はもはや人間ではなく、[r]
元の人間に戻す手段も一切ないということです。[r]
怪異と遭遇した際にあなたが取るべき行動は、死別を拒絶するために[r]
１秒を浪費することではなく、自身の命を守るために１秒以内に武器を構えることです。[r]
怪異の性質については、元となった人間が[r]
どのような怪物によってどのように改変されたかを推測することで[r]
迅速・的確に判断でき、つまり怪物についての正確な知識が必須となります。[r]
そのため、怪物そのものの性質だけでなく、[r]
人間がその怪物に完全に改変されてしまった際の挙動をよく理解するべきです。[r]
また実際の戦闘の際にも、あなたの仲間が怪異と化す可能性を常に想定し、[r]
怪異化を未然に防げるように、慎重な戦略を立ててください。[r]
特に危険な怪物との戦闘に突入する際には[r]
━━「味方が減って敵が増える」という重大な戦略的損失は[r]
まず起こるものという前提に立ち、味方の多さを過信せずに判断してください。[r][r]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m3
[cm]
[font color="#66cdaa"]
我々のいる世界とは全く異なる世界、[r]
「サブワールド」から「ポータル」を通じて我々の世界に侵入した、[r]
非常に危険な生物を指します（ただし、怪物を生物に含めることは[r]
厳密には不正確とされ、性質は生物と全く異なります）。[r]
しばしば物理法則を逸脱した挙動を示し、[r]
常識的に考えて有り得ない手段で攻撃を仕掛けてくるため、[r]
兵士は怪物の種類ごとに性質をよく覚えておくべきです。[r][r]
怪物を無力化・殺害する際には、まずあなた自身がソーラインを接種する必要があります。[r]
すると一定時間の間、あなたの身体から半径およそ３ｍほどの範囲に、[r]
通常の物理法則を適用することができます。[r]
つまり、ソーライン無しでは怪物に攻撃を当てることは極めて困難であり、[r]
逆に怪物による攻撃・干渉を回避することもできず、無謀です。[r]
万が一突然に遭遇しても、動揺せずにまずはソーラインを接種してください。[r]
なお、ソーラインの効果の及ぶ範囲の限界を理由に、[r]
怪物との戦闘では遠距離攻撃よりも近接攻撃が重視されることがほとんどです。[r]
怪異も、怪物と同様の性質をもちます。[r]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m4
[cm]
[font color="#66cdaa"]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m5
[cm]
[font color="#66cdaa"]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m6
[cm]
[font color="#66cdaa"]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m7
[cm]
[font color="#66cdaa"]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m8
[cm]
[font color="#66cdaa"]
[link target=*word2]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m9
[cm]
[font color="#66cdaa"]
[link target=*word2]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m10
[cm]
[font color="#66cdaa"]
[link target=*word2]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m11
[cm]
[font color="#66cdaa"]
[link target=*word3]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m12
[cm]
[font color="#66cdaa"]
[link target=*word3]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m13
[cm]
[font color="#66cdaa"]
[link target=*word3]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]


*etc
[cm]
[font color="#66cdaa"]

[getrand min="0" max="6"]

[if exp="tf.rand == 0"]
0[r]
以上です[l][r]
@jump target=*menu

[elsif exp="tf.rand == 1"]
1[r]
以上です[l][r]
@jump target=*menu

[elsif exp="tf.rand == 2"]
2[r]
以上です[l][r]
@jump target=*menu

[elsif exp="tf.rand == 3"]
3[r]
以上です[l][r]
@jump target=*menu

[elsif exp="tf.rand == 4"]
4[r]
以上です[l][r]
@jump target=*menu

[elsif exp="tf.rand == 5"]
5[r]
以上です[l][r]
@jump target=*menu

[else]
6[r]
以上です[l][r]
@jump target=*menu
[endif]

*AwakeGame
[destroy]
@layopt layer=message1 visible=false

;キーコンフィグの有効化
[start_keyconfig]

;コールスタックのクリア
[clearstack]

[set_menu]
[endnolog]

;ゲーム復帰
[awakegame]
