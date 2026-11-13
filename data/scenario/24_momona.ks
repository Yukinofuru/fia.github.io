; DAY24の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 24_momona.ks / DAY24 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3M24Future"]
[s]

; ---- v3M24Future ----
*v3M24Future
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=24"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_m24_future')"]
#
一十を残すための型と、短い任務のための型。[p]
同じような姿に、違う時間が割り当てられていた。[p]
百七は資料を読み終え、机へ置いた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「で。決めた奴の予定通りに、終わる必要があるの？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「変えられるなら、変えたい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、やるの」[p]
#
俺は右腕を見た。未来へ干渉する力。そのために失う物。[p]
今度は、自分だけが消えればいいとは考えなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「腕を失うかもしれない。終わった後、俺一人じゃ出来ないことが増える」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「だから？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「手を貸してほしい。その後も」[p]
#
百七が、少しだけ目を見開いた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「最初から、そう言いなさいよ」[p]
; 寿命延長の提案を採る場合、未来書換えの不可逆な代償として腕喪失を記録。幸運は維持。
[jump target="*v4MFuture"]


; source:10782

; ---- v4MFuture ----
*v4MFuture
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_future')"]
#
腕を失うかもしれないと伝えると、百七は、俺の右手を見た。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「終わった後のこと、考えてる？」[p]
#
考えていると答えたかった。[p]
だが、困るだろうという所までしか、浮かんでいなかった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"出来なくなることを話し、彼女へ助けを頼む",target:"*v4MFutureShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"代償は自分の分だから、気にしなくていいと伝える",target:"*v4MFutureAlone"});
[endscript]
[ui_showChoices layout="encounter" storage="24_momona.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11950

; ---- v4MFutureShared ----
*v4MFutureShared
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_future_shared')"]
[eval exp="f.v4.m.hasAfterShared=true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その後も、一緒にいてほしい。全部してくれとは、言わない。出来ない所は、頼みたい」[p]
#
百七が、少しだけ黙る。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、アタシが頼む時も、勝手に断らないでよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞いてから、決める」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「それでいい」[p]
[jump target="*v3M25" storage="25_momona.ks"]


; source:11964

; ---- v4MFutureAlone ----
*v4MFutureAlone
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_future_alone')"]
[eval exp="f.v4.m.hasAfterShared=false"]
#
百七の顔が、分かりやすく険しくなった。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「勝手に失って、アタシに何も言うなってこと？」[p]
#
そのつもりはなかった。[p]
だが、その後を一人で背負えば、また彼女へ何も渡さずに済むと思っていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"困ることも含めて、一緒に考えてほしいと頼み直す",target:"*v4MFutureShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"返事を曖昧にしたまま、突破へ進む",target:"*uiStoryGo0"});
[endscript]
[ui_showChoices layout="encounter" storage="24_momona.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11977

; 重要選択肢の別KSへの接続。
*uiStoryGo0
[ui_hideChoices]
[jump storage="25_momona.ks" target="*v3M25"]
