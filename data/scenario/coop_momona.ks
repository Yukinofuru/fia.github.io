; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_momona.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- v2CoopM1 ----
*v2CoopM1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_m1')"]
; DAY16以降。救出後の状態確認を経て、歩ける範囲で。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「案内して」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どこへ？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシがまだ見てない所」[p]
#
ずいぶん広い注文だった。歩く距離を確かめると、百七は不満そうに口を尖らせる。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「それじゃ、今日見て回れる所」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「食堂からなら」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「いいわ。大事」[p]
#
俺が先に歩くと、彼女は並ぼうとした。歩幅を落とすと、気づいた顔をする。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
[momonaJito]
「わざとらしい」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なら、どのくらいがいいか教えてくれ」[p]
#
百七が、一歩だけ先へ出た。俺はその速さで並んだ。[p]
食堂に着くと、彼女は空いている席を二つ選んだ。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
[momonaSmile]
「今日は、ここ。次は、向こうを見たい」[p]
#
次があることを、当然のように言った。[p]
[chara_hide name="momona" time="200"]
[return]


; source:8086

; ---- v2CoopM2 ----
*v2CoopM2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_m2')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#
紙の上の遊びで、百七に勝った。[p]
彼女は黙って盤面を見ていた。俺は、終わりだと思って紙を引きかけた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「もう一回」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「休憩は？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「これが休憩」[p]
#
やり直した。今度は、さっき使った手が通らなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「覚えたのか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「見てたんだから、当たり前でしょ」[p]
#
運がいい、と言われる人だと聞いた。だが、彼女は自分の失敗した手を、俺よりよく覚えていた。[p]
負けた後で立ち上がると、百七が紙を持ち上げる。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「次、忘れないでよ。今、同点なんだから」[p]
[chara_hide name="momona" time="200"]
[return]


; source:8109

; ---- v2CoopM3 ----
*v2CoopM3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_m3')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アンタの好きな物って、何？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうして」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシばっかり答えてるから」[p]
#
確かに、状態と困っていることばかり尋ねていた。[p]
仕事に関係しない物を一つ答えると、百七は少し考えた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「ふうん。じゃあ、出たら見る」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が好きな物を？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシも好きかどうか、まだ知らないでしょ」[p]
#
同じ物を好きになる義務はない。彼女は、その確認をする予定を作った。[p]
俺も、彼女の好きな物を見てみたいと言った。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「いいわよ。ちゃんと、連れていってあげる」[p]
[chara_hide name="momona" time="200"]
[return]


; source:8132

; ---- v2CoopM4 ----
*v2CoopM4
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_m4')"]
; 個別、コピーの出自を本人から聞いた後。
; DAY01〜10で使う既存の立ち絵・表情。
[momona_normal]
[momonaShow]
#
百七が、俺の描いた不格好な印を見ていた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「これ、アタシ？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「人の位置を書いただけだ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「もっと、可愛くしなさいよ」[p]
#
書き直すと、さらに文句が増えた。けれど、別の誰かに似せろとは言わなかった。[p]
最後に、彼女が自分で少し書き足す。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「はい。これなら、アタシ」[p]
#
俺はその印を消さず、次の図にも使った。[p]
[chara_hide name="momona" time="200"]
[return]


; source:8151

; ---- v2CoopM5 ----
*v2CoopM5
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_m5')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#
百七が、出来上がった予定を見せてきた。[p]
予定というより、見たい物の一覧だった。俺の分まで、空欄がある。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「埋めて」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今すぐ？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「一つでいいから」[p]
#
俺はペンを持った。将来の話を、彼女に全部任せないようにした。[p]
書き終えると、百七が覗き込む。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……それなら、アタシも行く」[p]
[chara_hide name="momona" time="200"]
[return]


; source:8168

; ---- v2CoopM6 ----
*v2CoopM6
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_coop_m6')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「また、変な顔」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が、一緒にいてもいいのかと思って」[p]
#
百七は盛大に顔をしかめた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシが嫌なら、ここへ座らせてないわよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……そうか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そう。次に忘れたら、また言う」[p]
#
彼女は、何度でも言うつもりの顔だった。[p]
俺はその顔を、ちゃんと見ておこうと思った。[p]
[chara_hide name="momona" time="200"]
[return]

; source:8190

; ---- v6DateMomona1 ----
*v6DateMomona1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_momona1')"]
[eval exp="f.storyV6.dateCurrent='v6_date_momona1'"]
; 親密度A、交流経験。DAY16以降。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「午後、空けて」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何をするんだ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「決めてある。アンタが来たら、始める」[p]
#
指定された所へ行くと、百七が二人分の席を取っていた。[p]
座る前に一回り見て、何を変えたか当てろと言う。[p]
彼女がいつも気にしている、物の向きだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こっちの方が、見えるな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そう。アタシが、見つけたの」[p]
#
得意そうに胸を張る。褒めると、もう少しちゃんと言えと要求された。[p]
言い直すと、今度は返事が遅れる。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……分かってるなら、いいわよ」[p]
#
俺の袖を引き、自分の隣へ座らせた。[p]
ほかの人にも見せたのかと聞くと、アンタが最初、と返ってきた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="momona" time="200"]
[return]


; source:8875

; ---- v6DateMomona2 ----
*v6DateMomona2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_momona2')"]
[eval exp="f.storyV6.dateCurrent='v6_date_momona2'"]
; 親密度B、デート1既読。百七が先に手を伸ばす。古虫の自発的な信頼の転機は個別へ残す。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaBlush]
[momonaShow]
#
百七が、俺の手を見ていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、ついてる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「手、出して」[p]
#
言われた通りにすると、彼女の指が乗った。[p]
俺が黙ったので、百七が少し顔を上げる。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「嫌なの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いや。急だったから」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「予告したら、変な顔する時間が増えるだけでしょ」[p]
#
彼女の手も、少し落ち着かなかった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_momona.ks" target="*v6DateMomona2Tease"]「そっちも、緊張してる？」[endlink][r]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_momona.ks" target="*v6DateMomona2Hold"]握り返して、そのまま話す[endlink][r]
[s]


; source:8899

; ---- v6DateMomona2Tease ----
*v6DateMomona2Tease
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_momona2_tease')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そっちも、緊張してる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「してない！　……アンタが、じっと見てるから」[p]
#
見ないようにすると、今度は顔を見なさいと言われた。[p]
どうすればいいかを聞くと、少しだけ笑われた。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="momona" time="200"]
[return]


; source:8910

; ---- v6DateMomona2Hold ----
*v6DateMomona2Hold
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_momona2_hold')"]
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#
握り返すと、百七の言葉が一度止まった。[p]
それでも、先に話し始めたのは彼女だった。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「次、行きたい所。アンタも、一つ考えておいて」[p]
#
手を離す話は、しなかった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="momona" time="200"]
[return]


; source:8921

; ---- v6DateMomona3 ----
*v6DateMomona3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_date_momona3')"]
[eval exp="f.storyV6.dateCurrent='v6_date_momona3'"]
; 親密度C。個別の「古虫から信じて手を伸ばす」転機を経た後。
; DAY01〜10で使う既存の立ち絵・表情。
[momonaSmile]
[momonaShow]
#
百七の隣へ、自分から座った。[p]
彼女は顔を上げ、何、と言いかけて、手元を見た。[p]
俺が先に、手を出していた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今日は、頼まなくても分かるのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が、そうしたかったから」[p]
#
百七が唇を閉じる。得意な返しが出てこない顔を、少し長く見てしまった。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
[momonaBlush]
「……何よ。ほら」[p]
#
指が繋がった。[p]
見たい物の一覧を、彼女が広げる。俺の予定を勝手に一つ書き足したので、今度は俺が彼女の分へ書いた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「これ、二人で行くの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そのつもり」[p]
#
百七は、紙を何度も見直した。[p]
行く先が決まったのに、しばらく立ち上がらなかった。[p]
[eval exp="f.storyDatesSeen=f.storyDatesSeen||{};f.storyDatesSeen[f.storyV6.dateCurrent]=true"]
[chara_hide name="momona" time="200"]
[return]

; source:8953

; ---- v6CoopOfferMomona ----
*v6CoopOfferMomona
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_offer_momona')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{};f.storyDatesSeen=f.storyDatesSeen||{}"]
[if exp="f.storyV6.dateCandidate==='v6_date_momona1' && !f.storyDatesSeen.v6_date_momona1"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_momona.ks" target="*v6DateMomona1"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_momona2' && !f.storyDatesSeen.v6_date_momona2"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_momona.ks" target="*v6DateMomona2"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[if exp="f.storyV6.dateCandidate==='v6_date_momona3' && !f.storyDatesSeen.v6_date_momona3"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [link storage="coop_momona.ks" target="*v6DateMomona3"]以前の誘い・二人の約束に応じる[endlink][r]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="coop_momona.ks" target="*v6CoopNormalMomona"]今日は、普段の交流にする[endlink][r]
[s]


; source:9242

; ---- v6CoopNormalMomona ----
*v6CoopNormalMomona
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_coop_normal_momona')"]
[eval exp="f.storyCoopSeen=f.storyCoopSeen||{}"]
[if exp="!f.storyCoopSeen.momona_normal1"]
    [call target="*v2CoopM1"]
    [eval exp="f.storyCoopSeen.momona_normal1=true"]
[elsif exp="!f.storyCoopSeen.momona_normal2"]
    [call target="*v2CoopM2"]
    [eval exp="f.storyCoopSeen.momona_normal2=true"]
[elsif exp="!f.storyCoopSeen.momona_normal3"]
    [call target="*v2CoopM3"]
    [eval exp="f.storyCoopSeen.momona_normal3=true"]
[else]
    ; この通常期の初回本文は全て既読。既読の再訪差分を使い、未経験の約束を足さない。
[endif]
[return]

; source:9275
