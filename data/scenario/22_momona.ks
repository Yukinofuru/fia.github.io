; DAY22の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 22_momona.ks / DAY22 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3M22Capture"]
[s]

; ---- v3M22Capture ----
*v3M22Capture
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=22"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_m22_capture')"]
#
作戦は、失敗した。[p]
雨天へ届くと思った距離の外で、百七が止められた。[p]
俺は、連れ去られる所までしか見られなかった。[p]
その後、彼女が現れた時、俺の名を呼ばなかった。[p]
向けられた攻撃を避け、見慣れた顔を見た。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「百七！」[p]
#
返事の代わりに、次の攻撃が来た。[p]
俺の知っている彼女なら、そんな所で立ち止まらない。そんな言い方をしない。[p]
知っているつもりだったことが、目の前の危険を止めなかった。[p]
; 雨天による記憶上書き。戦闘は既存担当へ接続。古虫は彼女を倒すだけを勝利条件にしない。
[jump target="*v4MRecovery"]


; source:10727

; ---- v4MRecovery ----
*v4MRecovery
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_recovery')"]
; 上書き後の対峙から、回復の働きかけを選ぶ。
#
百七が、俺を見ていた。[p]
命令を待っているのか、次に攻撃する機会を見ているのか。[p]
俺の知っている顔へ、知っている答えを求めたくなった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"命令の経路を断ち、本人が拒否や選択を示せる間を作る",target:"*v4MRecoveryChoice"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"二人の記憶を話し、思い出せる物を確かめる",target:"*v4MRecoveryMemory"});
[endscript]
[ui_showChoices layout="encounter" storage="22_momona.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11919

; ---- v4MRecoveryChoice ----
*v4MRecoveryChoice
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_recovery_choice')"]
[eval exp="f.v4.m.hasAutonomyRespected=true"]
#
全部を答えなくていいと、先に伝えた。[p]
俺が正解を知っている質問へ、彼女を戻すためだけの答えを求めたくなかった。[p]
安全を作る人へ合図し、彼女自身の反応を待つ。[p]
[jump target="*v3M23Recover" storage="23_momona.ks"]


; source:11927

; ---- v4MRecoveryMemory ----
*v4MRecoveryMemory
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_m_recovery_memory')"]
[eval exp="f.v4.m.hasAutonomyRespected=false"]
#
実際に話したことを、順番に伝えた。[p]
反応のない所で、俺は言葉を増やしかけた。[p]
思い出してほしいのか。俺の覚えている百七と、同じにしてほしいのか。[p]
違いが、分からなくなった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"答えを試すのをやめ、本人の反応を待つ",target:"*v4MRecoveryChoice"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"記憶の話を続けながら、反応した所を確かめる",target:"*uiStoryGo0"});
[endscript]
[ui_showChoices layout="encounter" storage="22_momona.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11938

; 重要選択肢の別KSへの接続。
*uiStoryGo0
[ui_hideChoices]
[jump storage="23_momona.ks" target="*v3M23Recover"]
