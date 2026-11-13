; DAY21の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 21_akehiru.ks / DAY21 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3H21Name"]
[s]

; ---- v3H21Name ----
*v3H21Name
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=21"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_h21_name')"]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「皆が怪異になる未来を、知っていました。家から、指令として受け取っていたんです」[p]
#
明昼は、知っていたのに黙ったと言った。[p]
自分と家族を守るため。当主になることを避けるため。[p]
俺は、何を怒ればいいのかを一つに絞れなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、話した理由は」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君を、このまま行かせたくない」[p]
#
続いて、兄の名を告げた。優知。そして、自分の名を。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「姫彗。それが、私の名前です」[p]
[eval exp="window.fiaLibrary.learn('akehiruName')"]
#
俺は、初めて会った人へ名乗り返すような気持ちになった。[p]
知らなかったことを知った。同時に、それまで見たものが消えるわけではなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を呼べば、お前は振り向ける」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……姫彗で」[p]
#
俺は、その名で呼んだ。[p]
[jump target="*v3H21Proposal"]


; source:10624

; ---- v3H21Proposal ----
*v3H21Proposal
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h21_proposal')"]
#
当主になれば、人を癒す力を使える。[p]
説明の続きを聞くと、その代わりに失う物があった。[p]
異形の臓物を受け入れ、人を辞める。死ねなくなり、いずれは自我を失って神と一体になる。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「妹に、継がせたくなかった。だから、逃げていました」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は、自分が引き受けるのか」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「私なら、君たちを助けられるかもしれない」[p]
#
死ぬことで終わらせることさえ出来ない彼女が、死ねない道を選ぼうとしていた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕を活かすのなら、最期まで殺してくださいね」[p]
#
いつもの皮肉に聞こえるように言った。聞こえなかった。[p]
俺は、手元の資料を閉じなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「提案を受け入れる前に、ほかに何が出来るかを、一緒に調べたい」[p]
; ここから交渉・調査日を取り、今の当主と家の協力を取りつける案と、急場で自ら現人神になる提案を分ける。
[jump target="*v4HAgenda"]


; source:10647

; ---- v4HAgenda ----
*v4HAgenda
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_agenda')"]
#
姫彗が、家へ何を求めるかを尋ねた。[p]
俺は全員を助けてほしいと言った。それが望みなのは確かだった。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「助けてください、で済むなら苦労しませんよ。誰に何をさせるつもりですか」[p]
#
言い方は厳しかった。彼女も、答えを一つしか持っていないのだと思っていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"現在の当主と家の協力を得る条件を探す",target:"*v4HAgendaHouse"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"姫彗が継ぐ場合に、何が失われるかを先に調べる",target:"*v4HAgendaSuccession"});
[endscript]
[ui_showChoices layout="encounter" storage="21_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11688

; ---- v4HAgendaHouse ----
*v4HAgendaHouse
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_agenda_house')"]
[eval exp="f.v4.h.inquiry='house';f.v4.h.hasAlternativeExamined=true"]
#
家へ渡せる情報と、助けを求める相手を分けた。[p]
香木たちとの繋がりを、本人が確かめる。俺たちは何を知り、何を約束出来るかを、紙へ書いた。[p]
借りる力には、借りる理由が要った。[p]
[jump target="*v4HDelegation"]


; source:11696

; ---- v4HAgendaSuccession ----
*v4HAgendaSuccession
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_agenda_succession')"]
[eval exp="f.v4.h.inquiry='succession';f.v4.h.hasPriceExamined=true"]
#
移植の後に何が変わるかを、順番に聞いた。[p]
人を癒せるようになる。死ねなくなる。いずれ自我を失う。[p]
助かる人数だけを見て、最後の二つを小さく書くことは出来なかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「妹のことも、君が望んでることも、条件の外へ出さないでくれ」[p]
#
姫彗が、少しだけ目を伏せた。[p]
[jump target="*v4HDelegation"]


; source:11708

; ---- v4HDelegation ----
*v4HDelegation
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_delegation')"]
#
家のことを、俺が本人の代わりに決められないのは分かっていた。[p]
だからといって、姫彗へ紙を渡して全部任せればいいわけでもない。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"家の交渉を姫彗へ任せ、古虫は記録と受入れ計画を整える",target:"*v4HDelegationShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"姫彗が結論を出すまで、新しい判断を控えて待つ",target:"*v4HDelegationWait"});
[endscript]
[ui_showChoices layout="encounter" storage="21_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11716

; ---- v4HDelegationShared ----
*v4HDelegationShared
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_delegation_shared')"]
[eval exp="f.v4.h.isBackingReady=true"]
#
治療記録を、使う相手が読める形へまとめ直した。[p]
姫彗が話す時、俺の説明が必要な箇所を、先に聞いた。[p]
彼女も、帰る時に必要な条件を俺へ伝えた。[p]
互いの仕事へ立ち入らないことと、無関心でいることを分けた。[p]
[jump target="*v3H22Plan" storage="22_akehiru.ks"]


; source:11725

; ---- v4HDelegationWait ----
*v4HDelegationWait
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_delegation_wait')"]
[eval exp="f.v4.h.isBackingReady=false"]
#
待つと言った。[p]
姫彗は頷いたが、紙を集める手が止まらなかった。[p]
俺が渡すべき記録も、彼女が探している。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……これは、俺が準備する分だな」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「分かったなら、手を動かしてください。そこまで僕にやらせる気ですか」[p]
; 待つことを尊重するのと、準備をしないことを混同しない。ここで役割を選び直せる。
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"自分の担当を引き受け直す",target:"*v4HDelegationShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"今は任せ、本人の結論を待つ",target:"*uiStoryGo0"});
[endscript]
[ui_showChoices layout="encounter" storage="21_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11740

; 重要選択肢の別KSへの接続。
*uiStoryGo0
[ui_hideChoices]
[jump storage="22_akehiru.ks" target="*v3H22Plan"]
