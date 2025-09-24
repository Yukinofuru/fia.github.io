[iscript]
tf.level = Math.floor(sf.KNO/6)
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
"Access prohibited"]
[endscript]
;------------------------------------------------------------------------------------------------------------------
*start
[bg2 storage="transparent.png" time=100 wait=true left=180 top=80 width=1440 height=900]
[destroy]
[nolog]
@layopt layer=message0 visible=false

;Mask_lightの表示
[Mask_light]

;メッセージウィンドウの設定
[current layer="message1"]
@layopt layer=message1 visible=true
@layopt layer=1 visible=true

;------------------------------------------------------------------------------------------------------------------
;レベルごとに怪異の名前を公開する
[if exp="tf.level >0"]
[eval exp="tf.k[0] = 'Solid-A9-03-8A-D4-ALT'"]
[endif]

[if exp="tf.level >1"]
[eval exp="tf.k[1] = 'Solid-0A-1B-2C-3D'"]
[endif]

[if exp="tf.level >2"]
[eval exp="tf.k[2] = 'Liquid-4E-5F-6A-7B'"]
[endif]

[if exp="tf.level >3"]
[eval exp="tf.k[3] = 'Liquid-C0-D1-E2-F3'"]
[endif]

[if exp="tf.level >4"]
[eval exp="tf.k[4] = 'Solid-01-23-45-67'"]
[endif]

[if exp="tf.level >5"]
[eval exp="tf.k[5] = 'Solid-FE-DC-BA-98'"]
[endif]

[if exp="tf.level >6"]
[eval exp="tf.k[6] = 'Liquid-B5-A6-97-88'"]
[endif]

[if exp="tf.level >7"]
[eval exp="tf.k[7] = 'Solid-79-8A-9B-AC'"]
[endif]

[if exp="tf.level >8"]
[eval exp="tf.k[8] = 'Solid-5B-6C-7D-8E'"]
[endif]

[if exp="tf.level >9"]
[eval exp="tf.k[9] = 'Liquid-9F-A0-B1-C2'"]
[endif]

[if exp="tf.level >10"]
[eval exp="tf.k[10] = 'Solid-D3-E4-F5-06'"]
[endif]

[if exp="tf.level >11"]
[eval exp="tf.k[11] = 'Liquid-17-28-39-4A'"]
[endif]

[if exp="tf.level >12"]
[eval exp="tf.k[12] = 'Liquid-17-28-39-4A'"]
[endif]

[if exp="tf.level >13"]
[eval exp="tf.k[13] = 'Solid-5B-6C-7D-8E'"]
[endif]

[if exp="tf.level >14"]
[eval exp="tf.k[14] = 'Liquid-9F-A0-B1-C2'"]
[endif]

[if exp="tf.level >15"]
[eval exp="tf.k[15] = 'Solid-5B-6C-7D-8E'"]
[endif]

[if exp="tf.level >16"]
[eval exp="tf.k[16] = 'Liquid-9F-A0-B1-C2'"]
[endif]

[if exp="tf.level >17"]
[eval exp="tf.k[17] = 'Solid-5B-6C-7D-8E'"]
[endif]

[if exp="tf.level >18"]
[eval exp="tf.k[18] = 'Solid-F6-E7-D8-C9'"]
[endif]

[if exp="tf.level >19"]
[eval exp="tf.k[19] = 'Solid-A0-B1-C2-D3'"]
[endif]

[if exp="tf.level >20"]
[eval exp="tf.k[20] = 'Solid-28-39-4A-5B'"]
[endif]

[if exp="tf.level >21"]
[eval exp="tf.k[21] = 'Solid-A0-B1-C2-D3'"]
[endif]

[if exp="tf.level >22"]
[eval exp="tf.k[22] = 'Solid-28-39-4A-5B'"]
[endif]

[if exp="tf.level >23"]
[eval exp="tf.k[23] = 'Liquid-6C-7D-8E-9F'"]
[endif]

[if exp="tf.level >24"]
[eval exp="tf.k[24] = 'Solid-A9-03-8A-D4-ALT'"]
[endif]

[if exp="tf.level >25"]
[eval exp="tf.k[25] = 'Solid-00-00-A2-Z6'"]
[endif]

[if exp="tf.level >26"]
[eval exp="tf.k[26] = 'Liquid-BF-FC-3E-5F'"]
[endif]

[jump target="**menu"]

;------------------------------------------------------------------------------------------------------------------
*menu
[cm]
[font color="#66cdaa"]
System Boot Time:07072345110890[r][r]
SYSTEM-323>　何か御用でしょうか。[r][r]

[link target=*data]【１】怪異データの閲覧[endlink][r]
[link target=*word]【２】用語集の閲覧[endlink][r]
[link target=*etc]【３】雑談[endlink][r][r]
[link target=*AwakeGame]C:\Users\FIA>　ゲームに戻る[endlink][r]
[hover_effect]
[s]

;------------------------------------------------------------------------------------------------------------------
*data
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*k1]【１】　[emb exp="tf.k[0]"][endlink][r]
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
[link target=*k26 cond="tf.level >25"]【--】　[emb exp="tf.k[25]"][endlink][r]
[link target=*k27 cond="tf.level >26"]【--】　[emb exp="tf.k[26]"][endlink][r]
[hover_effect]
[s]

;------------------------------------------------------------------------------------------------------------------
*k1
[cm]
[font color="#66cdaa"]

怪異名：Solid-A9-03-8A-D4-ALT[r][r]
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
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k3
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k4
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k5
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k6
[cm]
[font color="#66cdaa"]
[link target=*data]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*k7
[cm]
[font color="#66cdaa"]
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

;------------------------------------------------------------------------------------------------------------------
*word
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
【怪異について】[r]
[link target=*m1]【１】　ソーライン[endlink][r]
[link target=*m2]【２】　サブワールド[endlink][r]
[link target=*m3]【３】　ポータル[endlink][r]
[link target=*m4]【４】　太平洋ポータル[endlink][r]
[link target=*m5]【５】　タナトリウム[endlink][r]
[link target=*m6]【６】　怪異[endlink][r]
[link target=*m7]【７】　怪物[endlink][r][r]
[link target=*word2]C:\Users\FIA>　次の頁へ[endlink][r]
[hover_effect]
[s]

*word2
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*word]C:\Users\FIA>　前の頁へ[endlink][r][r]
【術使について】[r]
[link target=*m8]【８】　術使[endlink][r]
[link target=*m9]【９】　術[endlink][r]
[link target=*m10]【１０】　術使連盟[endlink][r][r]
[link target=*word3]C:\Users\FIA>　次の頁へ[endlink][r]
[hover_effect]
[s]

*word3
[cm]
[font color="#66cdaa"]
[link target=*menu]C:\Users\FIA>　メニューに戻る[endlink][r][r]
[link target=*word2]C:\Users\FIA>　前の頁へ[endlink][r][r]
【皇国について】[r]
[link target=*m11]【１１】　皇国[endlink][r]
[link target=*m12]【１２】　基地[endlink][r]
[link target=*m13]【１３】　派閥[endlink][r]
[hover_effect]
[s]

;------------------------------------------------------------------------------------------------------------------
*m1
[cm]
[font color="#66cdaa"]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m2
[cm]
[font color="#66cdaa"]
[link target=*word]C:\Users\FIA>　一覧に戻る[endlink][r][r]
[hover_effect]
[s]

*m3
[cm]
[font color="#66cdaa"]
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

;------------------------------------------------------------------------------------------------------------------

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
[emb exp="tf.rand"][r]
以上です[l][r]
@jump target=*menu
[endif]


;-----------------------------------------------------------
*AwakeGame
[destroy]
@layopt layer=message1 visible=false

;コールスタックのクリア
[clearstack]

;ゲーム復帰
[awakegame]
[set_menu]
[endnolog]