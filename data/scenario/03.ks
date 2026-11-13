; DAY03の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 03.ks / DAY03 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day3"]
[s]

; ---- day3 ----
*day3
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]
[stopbgm]
[playbgm storage="daily.m4a"]

[bg2 storage="my_room.png" time="0" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]

#kiichi
目覚ましのアラームが鳴り、重い瞼をこじ開ける。[l][r]
昨日の今日で、まだ体の芯に鉛のような疲れが残っていた。[p]

休みたいところではあるが、患者は待ってくれない。[l][r]
仕事に行かなければ。[p]

[jump storage="daily.ks" target="*earlyStart"]
[s]

; 探索・治療の初回選択後に一度だけ通る共通会話。
*day3_0
[cm]
[bg2 storage="bg_room/room_d.png" time="1000" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　拠点'"]
[uiSetPlace]
#kiichi
テントから這い出ると、ちょうど外を通りかかった一十と秀一と鉢合わせる。[p]

[itoNormal]
[syuuichiNormal]
[itoShow]
[syuuichiShow]
#syuuichi
「おはよ、紀一。ちゃんと寝たか？」[p]

#kiichi
[link storage="03.ks" target="*day3_1"]【1】「ベッドが固かったせいで、眠れなかったよ」[endlink][r]
[link storage="03.ks" target="*day3_2"]【2】「お前らと違って、こっちは熟睡だったさ」[endlink][r]
[link storage="03.ks" target="*day3_3"]【3】「寝すぎて逆に眠い……」[endlink]
[s]

*day3_1
[cm]
#kiichi
「ベッドが固かったせいで、眠れなかったよ」[p]

[itoNormal]
#ito
「全くだ。まさか、基地のベッドよりまさか寝心地悪い所があるなんてな」[p]
[jump target="*day3_4"]

*day3_2
[cm]
#kiichi
「お前らと違って、こっちは熟睡だったさ」[p]

[itoJito]
#ito
「その割には、いつもより青白い顔をしてるな」[p]
[jump target="*day3_4"]

*day3_3
[cm]
#kiichi
「寝すぎて逆に眠い……」[p]

[itoNormal]
#ito
「なら、とっとと寝るべきだ」[p]
[jump target="*day3_4"]

*day3_4
#kiichi
「さて、そろそろ仕事に行かないと」[p]

[syuuichiAngry]
#syuuichi
「俺たちも別部隊と探索に行くが、気をつけろよ紀一」[p]

#kiichi
「気を付けるって、何にだ？怪異か？」[p]

[itoAngry]
#ito
「あまり無茶はするなってことだ」[p]

#kiichi
「わかってるって。そっちこそ無茶するなよ」[p]

[itoSmile]
#ito
「当たり前だ」[p]

二人に手を振って別れ、一息つく。[p]

[chara_hide_all]
#kiichi
「さて、今日も頑張ろうか」[p]

[eval exp="f.day3GreetingDone=true"]
[if exp="f.day3MorningAction==='care'"]
    [jump storage="daily.ks" target="*morningCare"]
[endif]
[jump storage="daily.ks" target="*morningExplore"]
[s]
