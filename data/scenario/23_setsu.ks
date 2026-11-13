; DAY23の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 23_setsu.ks / DAY23 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v2Y23"]
[s]

; ---- v2Y23 ----
*v2Y23
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=23"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v2_y23')"]
#
世紬が話してくれた、光海との記憶。[p]
[call target="*draftMitsumiMemory" storage="coop_mitsumi.ks"]
[call target="*draftMitsumiFarewell" storage="coop_mitsumi.ks"]
#
俺は話を聞きながら、彼女が過ごした時間を想像していた。[p]
#
世紬は、光海の死から話し始めなかった。[p]
何を言って笑ったか。意見が合わなかったこと。用のない時間に、会いに来たこと。[p]
彼女が笑う所で、俺も少し笑った。[p]
だから、いなくなったという話へ移った時、その空白を想像出来た。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「私が死ねば、保たれるものがある。あの人は、それを嫌がった」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君と、生きたかったんだな」[p]
#
彼女は頷いた。[p]
光海が延命を求めたこと。その結果、壊れていったもの。愛が足りなかったからではないと、俺にも分かった。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君にも、同じことを望ませたくなかった」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が何を望むかは、俺に聞いてくれ」[p]
#
そう言うと、彼女は苦しそうに笑った。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君は、私に、何を望むの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒に生きたい。そのために、君が何を失いたくないかも聞きたい」[p]
#
彼女の答えに、世界が入っていた。[p]
俺が嫌うべき敵ではなかった。彼女が長く守り、そこで誰かが暮らしている物だった。[p]
[jump target="*v4YInvestigate"]


; source:10910

; ---- v4YInvestigate ----
*v4YInvestigate
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_investigate')"]
; 光海の話を聞いた後、DAY23〜24に置く調査。
#
世界を残せば、彼女が消える。[p]
彼女を残せば、世界が失われる。[p]
世紬は、どちらも知ったうえで、俺へ話した。俺は、その言葉を聞いただけだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を確かめたら、同じ所から考えられる」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「同じにならなくても、いいわ。でも、知ろうとしてくれるなら」[p]
#
彼女が、記録を二つへ分けた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"世界を保つ条件と、彼女が担っている役目を調べる",target:"*v4YWorldRecords"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"灰化と遺骨、彼女自身へ起きていることを調べる",target:"*v4YLifeRecords"});
[endscript]
[ui_showChoices layout="encounter" storage="23_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12112

; ---- v4YWorldRecords ----
*v4YWorldRecords
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_world_records')"]
[eval exp="f.v4.y.hasWorldExamined=true"]
#
世界という言葉を、遠い景色だけだと思わないようにした。[p]
食事をする人。帰りを待つ人。何も知らず、明日の予定を決めている人。[p]
彼女が役目を離れた時、その人々へ何が起きるかを聞いた。[p]
俺が嫌えば消していい敵の話ではなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君が守りたい理由も、分かりたい」[p]
#
世紬は、少しずつ、自分が知っている人々の話をした。[p]
[jump target="*v4YRecordCheck"]


; source:12125

; ---- v4YLifeRecords ----
*v4YLifeRecords
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_life_records')"]
[eval exp="f.v4.y.hasBodyExamined=true"]
#
病状を、俺が来てからの出来事だけへ縮めなかった。[p]
光海と過ごした時期。それより前。誰にも見せなかった時間。[p]
灰化を止めるという望みと、今、少し楽に過ごすための対応を分ける。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分からない所を、分かったとは言わない。でも、今、触れていい所と、休める姿勢は、教えてくれ」[p]
#
彼女が、ここを、と自分で示した。[p]
[jump target="*v4YRecordCheck"]


; source:12137

; ---- v4YRecordCheck ----
*v4YRecordCheck
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_record_check')"]
[if exp="f.v4.y.hasWorldExamined && f.v4.y.hasBodyExamined"]
    [jump target="*v4YTransfer"]
[else]
    #
    まだ、一方の記録を見ていなかった。[p]
    望んだ結論へ都合のいい方だけを読めば、答えは早く出せる。[p]
    その早さを、俺は信用したくなかった。[p]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"もう一方も調べ、説明を聞く",target:"*v4YInvestigate"});
[endscript]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"未確認の範囲を残したまま、出来る準備へ進む",target:"*v4YTransfer"});
[endscript]
    [ui_showChoices layout="encounter" storage="23_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]
[endif]


; source:12150

; ---- v4YTransfer ----
*v4YTransfer
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_transfer')"]
#
もし、二人が今の場所を離れるなら。[p]
その後のことを考えると、俺は必ず彼女を運べる前提へ戻りそうになった。[p]
世紬が、俺の腕を見た。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「それを失った後も、同じようには動けないわ」[p]
#
俺は、自分が失う物を小さく扱いかけていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"本人の意思と、二人が動ける範囲から準備する",target:"*v4YTransferShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"代償は自分が引き受けるので、彼女は気にしなくていいと伝える",target:"*v4YTransferOne"});
[endscript]
[ui_showChoices layout="encounter" storage="23_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12163

; ---- v4YTransferShared ----
*v4YTransferShared
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_transfer_shared')"]
[eval exp="f.v4.y.hasTransferShared=true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺一人で連れていくと、言わない。出来ない所を、君にも助けてほしい」[p]
#
世紬が、長く俺を見た。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「私も、出来ないことばかりになるかもしれない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その時、また考える。先に、君の返事を聞きたい」[p]
#
彼女は、まだ生きたいと、自分の声で言った。[p]
[jump target="*v2Y24" storage="24_setsu.ks"]


; source:12177

; ---- v4YTransferOne ----
*v4YTransferOne
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_transfer_one')"]
[eval exp="f.v4.y.hasTransferShared=false"]
#
俺が引き受けると言うと、世紬は目を伏せた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君が失うものなら、私には何も言う資格がないの？」[p]
#
違う、と答えた。[p]
それなら、先に二人の話をしてほしいと、言われた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"相手の意思と、その後の助けを含めて話し直す",target:"*v4YTransferShared"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"返答を保留し、届くかどうかの確認へ進む",target:"*uiStoryGo0"});
[endscript]
[ui_showChoices layout="encounter" storage="23_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12190

; 重要選択肢の別KSへの接続。
*uiStoryGo0
[ui_hideChoices]
[jump storage="24_setsu.ks" target="*v2Y24"]
