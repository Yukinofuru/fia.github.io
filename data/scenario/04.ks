; DAY04の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 04.ks / DAY04 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day4"]
[s]

; ---- day4 ----
*day4
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
目覚ましのアラームが鳴り、重い瞼をこじ開ける。[l][r]
ここの空気のせいか、喉の奥が妙に乾いていた。[p]

日に日に怠さが募るが、患者は待ってくれない。[l][r]
仕事に行かなければ。[p]

[jump storage="daily.ks" target="*earlyStart"]
[s]

*day4_event
[cm]
[bg2 storage="bg_room/room_d.png" time="800" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　拠点'"]
[uiSetPlace]
朝の配給を貰おうとテントを出たところで、明昼に出くわした。[p]

#kiichi
「明昼、おはよう」[p]

[akehiruSmile]
[akehiruShow]
#akehiru
「おはようございます、古虫さん。今日も早いですね」[p]

#kiichi
「配給に行って、仕事に行かないとだからな」[p]

[akehiruSurprise]
#akehiru
「そうですか。そういえば、山本さんが心配してましたよ。夕飯も食べずに仕事していたと」[p]
「悪いことは言いませんが、君一人が無理したところでいい事なんて何も無いですよ」[p]

#kiichi
「足手まといにはならない」[p]

[akehiruJito]
#akehiru
「はぁ、そういう意味で言ってないのですが」[p]
[akehiruSmile]
「……まあ、丁度さっき配給貰ったんですが、いらないのであげますよ」[p]

#kiichi
明昼はそう言って、持っていた缶詰を俺に押し付ける。[p]

#kiichi
「お前の分じゃないのか？」[p]

[akehiruSmile]
#akehiru
「それ、嫌いな味なのであげます。それじゃあ」[p]
[chara_hide name="akehiru"]

#kiichi
そう言って、さっさと去っていた。[l][r]
彼なりの気遣いだったのかもしれない。ありがたく貰っておこう。[p]

そう思って、見た缶詰の名前は『昆布とモツのトマトクリーム煮』。[l][r]
お世辞にも、美味しいとは言えなかった。[p]

#kiichi
「……今日も、頑張ろう」[p]

[eval exp="f.trialMorningSceneDay=f.dayCount"]
[jump storage="daily.ks" target="*resumeTrialAction"]
[s]
