; DAY07の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 07.ks / DAY07 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day7"]
[s]

; ---- day7 ----
*day7
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
目覚ましアラームで目を覚ます。[l][r]
タスクと責任を考えて、昨日は一睡もできなかった。[p]

立ち上がった途端、視界が大き傾く。[p]

[itoSurprise]
[itoShow]
#ito
「紀一！？」[p]

#kiichi
強い力で腕を引かれ、誰かの肩に倒れ込んだ。[l][r]
いつの間にか俺は一十に支えられていた。[p]

顔を上げると、随分と血の気の引いた顔をしている。[p]

#kiichi
「どうしたんだよ、そんな顔して」[p]

[itoAngry]
#ito
「どうもこうも無いだろ！馬鹿！」[p]
「今日くらい、休め。いや、無理にでも休ませる」[p]

#kiichi
「放してくれ、大丈夫だ。ちょっと、立ちくらみがしただ」[p]

#ito
「まともに立てて無いくせに、嘘つくなよ！」[p]
「私が無茶をする時は、いつも怒る癖に！何で、そんなに無茶するんだよ！」[p]
「昔は違かったじゃないか。第一基地に来てから、何をそんなに急いている」[p]

#kiichi
「……嫌なんだ」[p]
「俺だけ遠くで眺めてるだけで、みんなが死んでくのが」[p]

#ito
「じゃあ、お前が死ねばあいつらが助かるとでも言いたいのか！？」[p]

#kiichi
「一十は、大規模襲撃の時、居なかったから知らないじゃんかよ！」[p]

[itoNormal]
#ito
「……」[p]

#kiichi
「じゃあ、俺は行くから」[p]

[itoSurprise]
#ito
「……待て、紀一！おい……！」[p]

#kiichi
何とか立ち上がり、一十の制止を振り切って歩き出した。[p]
[chara_hide name="ito"]

#kiichi
「……行こう」[p]

[jump storage="daily.ks" target="*earlyStart"]
[s]
