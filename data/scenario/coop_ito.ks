; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_ito.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- v2CoopI1 ----
*v2CoopI1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_i1')"]
; 場所：宿舎→装備棚。共通期間。
; DAY01〜10で使う既存の立ち絵・表情。
[itoJito]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前は、また同じ所へ物を入れている」[p]
#
一十が俺の鞄を指した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「使う順だ」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
[itoJito]
「落とす順だろう」[p]
#
昔、似たやり取りをした。秀一が途中で割って入り、二人分まとめて散らかした。[p]
そこまで思い出して、口が止まった。[p]
一十は、俺から鞄を取り上げなかった。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
[itoNormal]
「今は、こっちへ入れておけ。留め直した方が強い」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……そうする」[p]
#
思い出の中へ留まらず、今の物の置き方を決めた。[p]
並べ直しながら、俺は一十へ、ここで困っていることを聞いた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前の字が、前より雑になった」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それ以外」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
[itoBlush]
「前より、言い返すのが遅い」[p]
#
俺は顔を上げた。一十は、先に目を逸らした。[p]
[chara_hide name="ito" time="200"]
[return]


; source:7862

; ---- v2CoopI2 ----
*v2CoopI2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_i2')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSmile]
[itoShow]
#
一十が食事の手伝いをしていた。[p]
俺が立ち止まると、空いた作業を指される。見に来ただけとは言いにくくなった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前が、こういうことをするのは珍しいな」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「第一基地では、ほかに人がいた」[p]
#
出来なかったのではなく、俺が見る機会がなかっただけだった。[p]
切り分けた大きさが、少しずつ違う。一十は揃えようとして、俺の手元を見た。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前の方が、雑だな」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「食べれば同じだ」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「患者には、同じことを言わないくせに」[p]
#
苦笑して、やり直す。[p]
出来上がった分を食べると、一十がこちらを見ていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「うまい」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
[itoSmile]
「そうか」[p]
#
それだけ言って、自分の分へ目を落とした。耳の色が、少し変わっていた。[p]
[chara_hide name="ito" time="200"]
[return]


; source:7890

; ---- v2CoopI3 ----
*v2CoopI3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_i3')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#
机の上に、閉じた日記があった。[p]
一十が戻るまで、俺は触れなかった。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「読まなかったのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「読ませるつもりで、置いたのか？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「違う」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、読まない」[p]
#
一十が日記を持ち上げ、胸元へ寄せた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が出てくる」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「悪口か」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「それも、ある」[p]
#
俺が何と言ったのか、尋ねた。中身を見せる代わりに、彼女が一つだけ話した。[p]
昔の俺のことだと思ったら、昨日の話だった。[p]
[chara_hide name="ito" time="200"]
[return]


; source:7920

; ---- v6CoopItoNormal4 ----
*v6CoopItoNormal4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_ito_normal4')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#
一十と装備の置き場を変えた。[p]
俺が使う順番と、彼女が運ぶ順番が違う。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「使う前に、運ぶ人間がいる」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「だったら、途中で置き直せる方がいいか」[p]
#
実際に持ち上げ、下ろし、渡してみた。口で説明していた時より、直す場所が増えた。[p]
一十は最後に、俺の鞄だけ、もう一度確かめた。[p]
[chara_hide name="ito" time="200"]
[return]


; source:8378

; ---- v6CoopItoNormal5 ----
*v6CoopItoNormal5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_ito_normal5')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSmile]
[itoShow]
#
共有の場所を、一十と掃除した。[p]
落ちていた物を、元の持ち主が分かる物と、分からない物へ分ける。[p]
俺が拾った小さな金具を、一十がすぐに指した。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前のだ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何で分かるんだ」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「さっきから、お前の鞄が閉じてない」[p]
#
俺は拾得物の山から、自分の物を抜いた。一十が、今さら気づいたのかと言う顔をした。[p]
[chara_hide name="ito" time="200"]
[return]


; source:8393

; ---- v6CoopItoNormal6 ----
*v6CoopItoNormal6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_ito_normal6')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoJito]
[itoShow]
#
一十と、何も賭けない勝負をした。[p]
最初は俺が勝ち、次は負けた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう一回」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「これで最後と言ったのは、誰だ」[p]
#
俺が笑うと、一十は片づけかけた手を止めた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……一回だけだ」[p]
#
勝負が始まると、どちらも黙った。今度は、返事をしない理由を疑わずに済んだ。[p]
[chara_hide name="ito" time="200"]
[return]


; source:8409

; ---- v6DateIto1 ----
*v6DateIto1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_ito1')"]
[eval exp="f.storyV6.dateCurrent='v6_date_ito1'"]
; 共通の親密度A。外部委託の個別を前倒ししない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#
一十に呼ばれた。[p]
装備の点検かと思うと、俺の手に飲み物を渡した。自分の分も持っている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、頼まれたのか」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「違う。……飲むなら、一人よりいいかと思った」[p]
#
隣に座った。昔から近くにいた人だ。そう思うには、今の沈黙は少し落ち着かなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、ずいぶん真面目な誘い方だったな」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「呼び方にまで文句をつけるのか」[p]
#
笑うと、一十が容器へ目を落とした。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「用がなければ、来ないかと思った」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前が呼んだだろ」[p]
#
彼女の指が止まった。俺も、自分が何を言ったのかを、少し遅れて意識した。[p]
一十は話を変えたが、俺の分が空になるまで、立とうとしなかった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="ito" time="200"]
[return]


; source:8652

; ---- v6DateIto2 ----
*v6DateIto2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_ito2')"]
[eval exp="f.storyV6.dateCurrent='v6_date_ito2'"]
; 共通の親密度B。場所：宿舎の静かな一角。
; DAY01〜10で使う既存の立ち絵・表情。
[itoBlush]
[itoShow]
#
一十が、俺の袖口を見ていた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「ここ。糸が出ている」[p]
#
服を脱いで渡そうとすると、そのままでいいと言われた。[p]
腕を置く。彼女が近づいた。俯く髪が、手元へ落ちる。[p]
視線を外そうとして、どこへ向ければいいか分からなくなった。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「動くな」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「動いてない」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「さっきから、手に力が入っている」[p]
#
見抜かれた。[p]
彼女も、いつもより言葉が少ない。終わったと言ってから、袖を持つ手だけが残っていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_ito.ks" target="*v6DateIto2Say"]「近いと、落ち着かないな」[endlink][r]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_ito.ks" target="*v6DateIto2Stay"]礼を言い、そのまま隣にいる[endlink][r]
[s]


; source:8676

; ---- v6DateIto2Say ----
*v6DateIto2Say
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_ito2_say')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoBlush]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「近いと、落ち着かないな」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……言うな。こっちまで、意識する」[p]
#
糸の端は、もう始末されていた。それでも、一十はもう一度だけ、縫い目を確かめた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="ito" time="200"]
[return]


; source:8686

; ---- v6DateIto2Stay ----
*v6DateIto2Stay
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_ito2_stay')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoBlush]
[itoShow]
#
礼を言っても、離れなかった。[p]
一十が顔を上げる。近くで目が合った。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……何か、言え」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ありがとう、じゃ足りない？」[p]
#
彼女は答えず、袖から手を離した。椅子は、遠ざけなかった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="ito" time="200"]
[return]


; source:8699

; ---- v6DateIto3 ----
*v6DateIto3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_ito3')"]
[eval exp="f.storyV6.dateCurrent='v6_date_ito3'"]
; 共通の親密度C。一十の個別ルートは収録しない。裏切りの免罪にはしない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#
一十が、閉じた日記を脇へ置いた。[p]
俺を待っていたのかと聞くと、少し、と返ってきた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何、書いてた？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今日のこと」[p]
#
見せる気はないと言われた。俺も、手を伸ばさなかった。[p]
しばらく話していると、一十が、不意に口を閉じる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうした」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今の顔を、覚えておこうと思った」[p]
#
笑っていた顔かと尋ねると、少し怒ったように、どの顔でもいいと返された。[p]
俺は、日記へ目を落とした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日の分にも、俺が出てくるか」[p]
#
一十が、答えるまで待った。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……来れば、書く」[p]
#
彼女の指が、隣の席へ触れた。[p]
俺は明日来る時刻を、仕事の予定とは別に伝えた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="ito" time="200"]
[return]

; source:8735

; ---- v6CoopOfferIto ----
*v6CoopOfferIto
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_offer_ito')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{};f.storyDatesSeen=f.storyDatesSeen||{}"]
[if exp="f.storyV6.dateCandidate==='v6_date_ito1' && !f.storyDatesSeen.v6_date_ito1"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_ito.ks" target="*v6DateIto1"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_ito2' && !f.storyDatesSeen.v6_date_ito2"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_ito.ks" target="*v6DateIto2"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_ito3' && !f.storyDatesSeen.v6_date_ito3"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_ito.ks" target="*v6DateIto3"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_ito.ks" target="*v6CoopNormalIto"]今日は、普段の交流にする[endlink][r]
[s]


; source:9119

; ---- v6CoopNormalIto ----
*v6CoopNormalIto
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_normal_ito')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{}"]
[if exp="!f.storyCoopSeen.ito_normal1"]
    [call target="*v2CoopI1"]
    [eval exp="f.storyCoopSeen.ito_normal1=true"]
[elsif exp="!f.storyCoopSeen.ito_normal2"]
    [call target="*v2CoopI2"]
    [eval exp="f.storyCoopSeen.ito_normal2=true"]
[elsif exp="!f.storyCoopSeen.ito_normal3"]
    [call target="*v2CoopI3"]
    [eval exp="f.storyCoopSeen.ito_normal3=true"]
[elsif exp="!f.storyCoopSeen.ito_normal4"]
    [call target="*v6CoopItoNormal4"]
    [eval exp="f.storyCoopSeen.ito_normal4=true"]
[elsif exp="!f.storyCoopSeen.ito_normal5"]
    [call target="*v6CoopItoNormal5"]
    [eval exp="f.storyCoopSeen.ito_normal5=true"]
[elsif exp="!f.storyCoopSeen.ito_normal6"]
    [call target="*v6CoopItoNormal6"]
    [eval exp="f.storyCoopSeen.ito_normal6=true"]
[else]
    ; この通常期の初回本文は全て既読。既読の再訪差分を使い、未経験の約束を足さない。
[endif]
[return]

; source:9146
