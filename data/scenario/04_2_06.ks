*start
;=========================================
; キャラ設定
;=========================================
;キャラクターを宣言
;古虫 紀一
[chara_new  name="kiichi"  storage="chara/kiichi/normal.png" jname="古虫 紀一" ]

;キャラクターの表情登録
;kiichi
[chara_face name="kiichi" face="normal" storage="chara/kiichi/normal.png"]
[chara_face name="kiichi" face="talk" storage="chara/kiichi/talk.png"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;---------------------------------------------------------------------------------------------------------------------
; ゲーム開始
[stopbgm]
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
SYSTEM-323>　Code 5201 Approved[r]
SYSTEM-323>　Moved to 7/11 and transitioned to the Grow phase[r]
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
SYSTEM-323>　今回の記録では07/11/2345から再生します。[p]
[cm]
[jump target="*base"]

*base
;ログに追加しない指定
[nolog]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[bg2 storage="black.png" time=100 wait=true left=0 top=0 width=1920 height=1800]
[Mask_light]
[cm]
[font color="#66cdaa"]
[update_parameter]
[if exp="sf.day == 4"]
System Boot Time:07112345110890[r][r]
SYSTEM-323>　記録時間07/11/2345 8:23AM[r]
SYSTEM-323>　日常業務を選択してください。[r][r]
[link target=*battle1]【１】戦闘訓練[endlink][r]
[link target=*study1]【２】怪異研究[endlink][r]
[link target=*magic1]【３】術訓練[endlink][r]
[hover_effect]
[endif]
[if exp="sf.day == 5"]
System Boot Time:07112345110890[r][r]
SYSTEM-323>　記録時間07/12/2345 8:23AM[r]
SYSTEM-323>　日常業務を選択してください。[r][r]
[link target=*battle1]【１】戦闘訓練[endlink][r]
[link target=*study1]【２】怪異研究[endlink][r]
[link target=*magic1]【３】術訓練[endlink][r]
[hover_effect]
[endif]
[if exp="sf.day == 6"]
System Boot Time:07112345110890[r][r]
SYSTEM-323>　記録時間07/13/2345 8:23AM[r]
SYSTEM-323>　日常業務を選択してください。[r][r]
[link target=*battle1]【１】戦闘訓練[endlink][r]
[link target=*study1]【２】怪異研究[endlink][r]
[link target=*magic1]【３】術訓練[endlink][r]
[hover_effect]
[endif]
[if exp="sf.day == 7"]
System Boot Time:07112345110890[r][r]
SYSTEM-323>　記録時間07/14/2345 8:23AM[r]
[link storage="10_0.ks" target=*start]【１】再生する[endlink][r]
[hover_effect]
[endif]
[s]


*battle1
[destroy]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[cm]
[set_menu]
;背景画像の表示
[bg2 storage="Base_am.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
;場所名の表示
[eval exp="sf.place = '拠点'"]
[set_place]
[ch_show name="kiichi"]
#kiichi
一十と戦闘訓練をした。[lr]
STRパラメータ１上昇[p]
[ch_hide name="kiichi"]
[eval exp="sf.day = sf.day+1"]
[eval exp="sf.PHI = sf.PHI+1"]
[jump target="*base"]
[s]

*study1
[destroy]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[cm]
[set_menu]
;背景画像の表示
[bg2 storage="MedicalOffice.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
;場所名の表示
[eval exp="sf.place = '医務室'"]
[set_place]
[ch_show name="kiichi"]
#kiichi
富山と怪異研究をした。[lr]
KNOパラメータ１上昇[p]
[ch_hide name="kiichi"]
[eval exp="sf.day = sf.day+1"]
[eval exp="sf.KNO = sf.KNO+1"]
[jump target="*base"]
[s]


*magic1
[destroy]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=false
[current layer="message0"]
[cm]
[set_menu]
;背景画像の表示
[bg2 storage="Base_am.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
;場所名の表示
[eval exp="sf.place = '拠点'"]
[set_place]
[ch_show name="kiichi"]
#kiichi
明昼と術訓練をした。[lr]
SPIパラメータ１上昇[p]
[ch_hide name="kiichi"]
[eval exp="sf.day = sf.day+1"]
[eval exp="sf.SPI = sf.SPI+1"]
[jump target="*base"]
[s]
