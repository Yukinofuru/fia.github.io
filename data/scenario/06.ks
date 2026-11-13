; DAY06の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 06.ks / DAY06 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day6"]
[s]

; ---- day6 ----
*day6
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
目が覚めてから、頭がズキズキと痛み、ずっと小さな耳鳴りがしている。[l][r]
睡眠時間を削りすぎたかもしない。[p]

だが、まだ患者を治療する人員が足りない。[l][r]
連盟の襲撃が来る前に全員を治療しないと。[p]

[jump storage="daily.ks" target="*earlyStart"]
[s]

*day6_event
[cm]
[bg2 storage="bg_room/room_d.png" time="800" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　拠点'"]
[uiSetPlace]
仕事に向かおうとテントを出ると、秀一が腕を組んで待ち構えていた。[p]

[syuuichiAngry]
[syuuichiShow]
#kiichi
「おはよう、秀一。それじゃあ、俺、仕事に行くから」[p]

#syuuichi
「待てよ、紀一」[p]

秀一に腕を掴まれ、振りほどく。[p]

#kiichi
「何すんだよ、いきなり」[p]

#syuuichi
「行かせねぇよ。青葉ちゃんから聞いたぞ。『俺は大丈夫だ』とか言って休まないってな」[p]
「知り合いで似たような奴知ってるから言っておくけどな、休む時は休め」[p]

#kiichi
「わかってるって。だけど、まだ重症の患者は残ってるし、指示薬の在庫だって心もとないからさ」[p]

#syuuichi
「あのな、そうやって無茶して、いざという時に動けなくなったらどうするんだ」[p]

#kiichi
「俺にとっては、いまがそのいざという時なんだよ」[p]
「俺が動かなきゃ、人が死ぬ。それを『いざという時』以外、何ていうんだ」[p]

#syuuichi
「はぁ、それはそうかもだが……」[p]
「少しは俺たちの気持ちも考えてくれ」[p]

#kiichi
あいつの言っていることが正しいのは、頭では分かっている。[l][r]
だが、俺が休んでいる間にまた誰かが死ぬかもしれない。[p]

#kiichi
「ごっこ遊びじゃねぇんだよ。俺が休んでる間に、もし誰かの容体が急変したらどうするんだ」[p]
「これ以上、誰も死なせたくないんだ。お前も、分かるだろ」[p]

#syuuichi
「それでお前が死んだら元も子もないだろ！」[p]
「それに、お前が居なくたって、死ぬ奴は死ぬ。もう、お前が頑張る必要は無いんだよ！」[p]

#kiichi
「それでも、死なせたくないんだよ！」[p]

#kiichi
秀一を突き飛ばして仕事に向かう。[p]

[chara_hide name="syuuichi"]

#kiichi
「……はやく行かないと」[p]

[eval exp="f.trialMorningSceneDay=f.dayCount"]
[jump storage="daily.ks" target="*resumeTrialAction"]
[s]
