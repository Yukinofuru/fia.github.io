*day3
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
[playbgm storage="daily.m4a"]

[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]

#kiichi
「今日も、頑張ろう」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]

*day4
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]


[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]


#kiichi
「……今日も、頑張ろう」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]

*day5
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]


[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]


#kiichi
「……今日も、行こうか」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]

*day6
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]


[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]


#kiichi
「……そろそろ、行くか」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]


*day7
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]


[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]


#kiichi
「……行こう」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]

*day8
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]


[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="daily.m4a"]


#kiichi
「……俺が、頑張らないと……」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]

*day9
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]


[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=false left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[stopbgm]
[playbgm storage="noise.m4a"]


#kiichi
「……」[p]

[jump storage="demo_daily.ks" target="*start"]
[s]

*night
[cm]
#kiichi
「……もう寝よう」[p]
[jump storage=daily.ks target=*addDay ]
[s]
