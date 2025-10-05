*start
[cm]
[destroy]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[Mask_light]
[font color="#66cdaa"]
[bg2 storage="black.png" time=100 wait=true left=0 top=0 width=1920 height=1800]
[font color="#66cdaa"]
[update_parameter]
;[if exp="sf.day = 4"]
System Boot Time:07112345110890[r][r]
SYSTEM-323>　記録時間07/11/2345 8:23AM[r]
SYSTEM-323>　日常業務を選択してください。[r][r]
[link target=*battle1]【１】戦闘訓練[endlink][r]
[link target=*study1]【２】怪異研究[endlink][r]
[link target=*magic1]【３】術訓練[endlink][r]
[hover_effect]
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
[ptext layer="message0" text="拠点" x="200" y="5" size="48" color="#94D6DA"]
一十と戦闘訓練をした。[l][r]
STRパラメータ１上昇[l][r]
[eval exp="sf.day = sf.day+1"]
[eval exp="sf.PHI = sf.PHI+1"]
[jump target="*start"]
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
[ptext layer="message0" text="拠点" x="200" y="5" size="48" color="#94D6DA"]
富山と怪異研究をした。[l][r]
KNOパラメータ１上昇[l][r]
[eval exp="sf.day = sf.day+1"]
[eval exp="sf.KNO = sf.KNO+1"]
[jump target="*start"]
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
[ptext layer="message0" text="拠点" x="200" y="5" size="48" color="#94D6DA"]
明昼と術訓練をした。[l][r]
SPIパラメータ１上昇[l][r]
[eval exp="sf.day = sf.day+1"]
[eval exp="sf.SPI = sf.SPI+1"]
[jump target="*start"]
[s]
