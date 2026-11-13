; DAY05の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 05.ks / DAY05 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day5"]
[s]

; ---- day5 ----
*day5
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
昨日も遅かったからか、右手の感覚が少し鈍くなってきている。[l][r]
それでも、重傷者は少しずつだが確実に減ってきていた。[p]

さて、今日も頑張らないと……。[p]

[jump storage="daily.ks" target="*earlyStart"]
[s]

*day5_event
[cm]
[bg2 storage="bg_room/room_d.png" time="800" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　拠点'"]
[uiSetPlace]
テントから出ると、青葉が歩いているのが見えた。[p]

#kiichi
「おはよう、青葉さん」[p]

[airanSmile]
[airanShow]
#airan
「おはようございます、古虫さん」[p]

#kiichi
「青葉さん、患者の皆の様子はどうだ？変わりないか？」[p]

[airanNormal]
#airan
「古虫さんのお陰で、みなさんすっかり元気そうです」[p]
[airanSad]
「あの……昨日も一番遅くまで残って治療してましたし、今日は休んだ方が……」[p]

#kiichi
「俺は大丈夫だ。重症患者はいないとはいえ、今も怪我で苦しんでいる人がいる。だから行かないと」[p]

[airanNormal]

#医師
「いやいや、私たちに任せて古虫さんは休みなさい」[p]

#kiichi
先日治療した医者と衛生兵の二人に声を掛けられる。[p]

#医師
「君のお陰で私たちはすっかり元気だ。だから、後は任せてくれ」[p]

#衛生兵
「そうです。古虫さん。俺たちに任せて、今日は休んでください！」[p]

#kiichi
ありがたい申し出だった。[l][r]
この人たちに処置を任せられれば、確かに俺の手は少し空く。[p]

それに、俺に万が一のことがあっても、彼らがいれば大丈夫だろう。[p]

#kiichi
「ありがとうございます」[p]
「それなら、その空いた時間で、他の皆さんに旧型IR-Mの細かい調合比率や、高浸食患者への処置技術を共有していこうと思います」[p]
「今後、俺たちに万が一のことがあっても大丈夫なようにです」[p]

[airanSad]
#airan
「それは大事だと思いますが、今日からじゃないと駄目なんですか？」[p]

#kiichi
「連盟の連中がいつまた襲ってくるともわからないですから」[p]

#医者
「それなら、我々も技術共有を手伝おう。顔色も悪い。今日は休んだら……」[p]

#kiichi
「若いんで、大丈夫ですよ。それに、まだ人数は少ないと思うので今日も、手伝いますよ」[p]

戸惑う三人をよそに、仕事に向かう。[p]

#kiichi
「……今日も、頑張ろう」[p]

[chara_hide name="airan"]
[eval exp="f.trialMorningSceneDay=f.dayCount"]
[jump storage="daily.ks" target="*resumeTrialAction"]
[s]
