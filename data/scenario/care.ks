; 通常・追加診療、医療指導、急患のシナリオ。
*draftTeachingIntro
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_teaching_intro')"]
#
机へ道具を並べた。患者がいない診療の準備は、少し落ち着かない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、使い終わった物と、これから使う物を分ける所から」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「そんな所からか？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここで間違えると、後が全部違ってくる」[p]
#
俺が実物を動かしてみせる。答えを言う前に、相手の手がどう動くかを待った。[p]
; 担当する味方と習得済み内容に合わせて本文を選ぶ。教える技術の具体的な範囲は検討案。
; 指導回数から翌日以降の通常診療の対応人数へ反映。増加量・上限・物資消費は未確定。
[return]


; source:3309

; ---- draftTeachingAiran ----
*draftTeachingAiran
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_teaching_airan')"]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ここまでは、自分で。こちらは、古虫さんに確かめてもらう……で、合っていますか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「合ってる。分からない所で止まってくれる方が、助かる」[p]
#
藍爛が頷く。俺が手を引くと、さっきの順番を一つずつ確かめ直した。[p]
出来ることが増えた分だけ、彼女の仕事を無制限に増やさないよう、記録へ担当も書き足す。[p]
[return]


; source:3319

; ---- draftTeachingTota ----
*draftTeachingTota
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_teaching_tota')"]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「これなら、俺でも出来るな」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「次は、俺へ説明しながらやってみてくれ」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「急に、試験になった」[p]
#
文句を言いながらも、富山は手順を声に出す。途中で詰まると、先に答えを言いかけた俺を止めた。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「待て。ここ、思い出すから」[p]
#
俺は、待った。教える時間にも、それが必要らしかった。[p]
[return]


; source:3334

; ---- draftTeachingIto ----
*draftTeachingIto
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_teaching_ito')"]
; 一十の生存・面会可能状態が前提。
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「この表示なら、こちらで判断していいか？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこは呼んでくれ。似ているけど、同じじゃない」[p]
#
一十は頷き、境目へ印をつけた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「出来る所と、止める所が分かれば、後は覚える」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「助かる」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……お前も、教えた分は任せろよ」[p]
[return]


; source:3350

; ---- draftTeachingOther ----
*draftTeachingOther
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_teaching_other')"]
; 明昼・世紬・綾瀬・百七を講習対象に出来るかは、担当・加入・既存技能に合わせる。
; 全員へ同じ未経験者向け講習を自動適用しない。初回内容の重複や医療技能の設定矛盾を避ける。
#
教える内容を確かめ直す。知っていることを全部並べるより、明日から任せられる範囲を一つ決めた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分からない時に呼ぶ所まで含めて、この手順だ」[p]
[return]

; source:3363

; ---- draftRoutineMorning ----
*draftRoutineMorning
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
f.routineCareResult = window.fiaDaily.routine();
[endscript]
#
通常診療を行った。[r]
本日の対応人数：[emb exp="f.routineCareResult.count"]人（医療指導による対応力：[emb exp="f.routineCareResult.teachingBonus"]人分）。[p]
[return]

*draftExtraCare
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_extra_care')"]
#
午後も患者への対応を続けた。[p]
; 追加診療の結果を表示して、午後を終了。毎回care.ksのミニゲームへ入れない。
; 指導効果を追加診療にも乗せるかは未確定。
[return]


; source:3378

; ---- draftEmergencyBridge ----
*draftEmergencyBridge
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_emergency_bridge')"]
; 3日周期の予定日のうち、午後の固定イベントがない日だけ使用。日付は本稿の急患表へ。
; 午前の通常診療を削らず、午後の自由行動を置き換える。
#
急患が運び込まれた。必要な記録を受け取り、処置の準備に入る。[p]
; 術式・薬剤を扱う架空ゲーム内の表示であり、現実の投薬手順ではない。
[return]

; source:3412

; ---- v3Emergency12 ----
*v3Emergency12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_emergency12')"]
#
午前の診療を終えた後、急患の記録が届いた。[p]
午後の予定を閉じ、診療ログを確認する。[p]
[return]


; source:3422

; ---- v3Emergency18 ----
*v3Emergency18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_emergency18')"]
#
予定していた午後の仕事を、引継ぎの欄へ移した。[p]
急患のカルテを受け取り、現在の状態から確認する。[p]
[return]


; source:3431

; ---- v3Emergency24 ----
*v3Emergency24
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_emergency24')"]
#
帰還の準備と、今ここにいる患者への対応を分けた。[p]
急患の処置に必要な場所を空け、記録を受け取る。[p]
; 当該枝が通常午後の場合だけ使用。固定イベント日なら呼ばない。
[return]


; source:3467

; ---- teaching ----
*teaching
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="care.ks" target="*draftTeachingIntro"]
[jump target="*teachingSelect"]

; ---- teachingSelect ----
*teachingSelect
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="26"]
[cm]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
誰と手順を確かめよう。[r]
[if exp="window.fiaStory.available('airan')"]
    [link storage="care.ks" target="*teachAiran"]藍爛[endlink]　
[endif]
[if exp="window.fiaStory.available('ito')"]
    [link storage="care.ks" target="*teachIto"]一十[endlink]　
[endif]
[if exp="window.fiaStory.available('tota')"]
    [link storage="care.ks" target="*teachTota"]東太[endlink]　
[endif]
[if exp="window.fiaStory.available('ayase')"]
    [link storage="care.ks" target="*teachAyase"]綾瀬[endlink]　
[endif]
[s]

; ---- teachAiran ----
*teachAiran
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="care.ks" target="*draftTeachingAiran"]
[eval exp="window.fiaDaily.teach('airan'); f.teachingCapacity=window.fiaDaily.capacity()"]
#
以降の通常診療の対応人数は、現在[emb exp="f.teachingCapacity"]人になった。[p]
[jump target="*usedAfternoon" storage="daily.ks"]

; ---- teachIto ----
*teachIto
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="care.ks" target="*draftTeachingIto"]
[eval exp="window.fiaDaily.teach('ito'); f.teachingCapacity=window.fiaDaily.capacity()"]
#
以降の通常診療の対応人数は、現在[emb exp="f.teachingCapacity"]人になった。[p]
[jump target="*usedAfternoon" storage="daily.ks"]

; ---- teachTota ----
*teachTota
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="care.ks" target="*draftTeachingTota"]
[eval exp="window.fiaDaily.teach('tota'); f.teachingCapacity=window.fiaDaily.capacity()"]
#
以降の通常診療の対応人数は、現在[emb exp="f.teachingCapacity"]人になった。[p]
[jump target="*usedAfternoon" storage="daily.ks"]

; ---- teachAyase ----
*teachAyase
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="care.ks" target="*draftTeachingOther"]
[eval exp="window.fiaDaily.teach('ayase'); f.teachingCapacity=window.fiaDaily.capacity()"]
#
以降の通常診療の対応人数は、現在[emb exp="f.teachingCapacity"]人になった。[p]
[jump target="*usedAfternoon" storage="daily.ks"]


; ---- extraCare ----
*extraCare
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
f.extraCareResult = window.fiaDaily.extra();
[endscript]
[if exp="f.extraCareResult"]
    #
    午後も追加診療を行った。本日の救助人数に[emb exp="f.extraCareResult.count"]人を加えた。[p]
[endif]
[jump storage="daily.ks" target="*usedAfternoon"]

*emergency
[eval exp="f.storyV6.dayDone['afternoon'+f.dayCount]=true"]
[call storage="irm_mix.ks" target="*day"]
[jump storage="medic.ks" target="*evening"]

*careStart
[cm]
[if exp="f.irmCount > 0"]
    [eval exp="f.irmCount -= 1"]
    [jump target="*emergency"]
[else]
    #
    薬が不足している。看護と応急処置を続け、追加の支援を頼んだ。[p]
    [jump target="*usedAfternoon" storage="daily.ks"]
[endif]
