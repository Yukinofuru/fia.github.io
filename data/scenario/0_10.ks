*start
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[stopbgm]
[playbgm storage="noise.m4a"]

[uiSetMenu]
;背景画像の表示
[bg2 storage="bg_room/room_ai1.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　医務室'"]
[uiSetPlace]

#kiichi
「今日も、治療をしていかないと……」[p]
#kiichi
「……俺が、頑張らないと駄目なんだ……」[p]

#
視界が霞む。頭がぼんやりとしている。疲労の蓄積が原因だろう。[p]

#kiichi
「……！」[p]

#
だが、俺がここで折れるわけにはいかない。[p]

#kiichi
「……！」[p]

#
俺が治療しなければ、みんな死ぬんだ。だから……。[p]

#airan
「古虫さん！」[p]

; 体験版の終端。DAY11へは進めない。
*demoEnd
[cm]
[endnolog]
[call storage="demo_trailer.ks" target="*start"]
[jump storage="demo_thanks.ks" target="*start"]
[s]
