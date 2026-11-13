; DAY08の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 08.ks / DAY08 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day8"]
[s]

; ---- day8 ----
*day8
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]


[uiSetMenu]
;背景画像の表示

;場所名の表示
[stopbgm]
[playbgm storage="daily.m4a"]

[bg2 storage="my_room.png" time="0" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
#kiichi
いつ寝たのか、いつ起きたのかわからないまま、制服に袖を通す。[l][r]
呼吸をするたびに頭が痛み、視界の端がチカチカと明滅していた。[p]

[jump storage="daily.ks" target="*earlyStart"]
[s]

*day8_event
[cm]
テントの布をめくろうとしたその時、外から誰かが飛び込んできて出入り口の前に立ち塞がる。[p]

#tota
「ストップだ、古虫君！今日はここから一歩も出さないぞ！」[p]

#kiichi
「……どいてくれ、仕事がある」[p]

#tota
「いかに僕が隣人愛に溢れる優しい男とはいえ、今の君をこのまま仕事に行かせるわけにはいかない！」[p]
「大親友の説得が無理なら、親切な隣人の僕が止めなければ！」[p]

#kiichi
富山だったかは、両手を広げて威嚇するアライグマみたいに必死にテントの出口を塞いでいる。[p]

#tota
「頼むから、今日だけはそこで寝ていてくれ！な！？」[p]

#kiichi
「……そういえば、今日、配給取り忘れたんだけど、保存食の場所知ってるか？」[p]

#tota
「保存食なら、ベッドの下だとも。ほら……」[p]

#kiichi
富山がベッドに向かって歩き出した、その隙をつき、テントの外へと飛び出した。[p]

#tota
「あっ、おい！？ちょっと待て古虫君！僕を騙すなんて卑怯だぞ！というか、戻れ！おい！」[p]

#kiichi
朝から変な奴に絡まれた。[l][r]
さっさと、仕事に行かないと。[p]

#kiichi
「……俺が、頑張らないと……」[p]

[eval exp="f.trialMorningSceneDay=f.dayCount"]
[jump storage="daily.ks" target="*resumeTrialAction"]
[s]
