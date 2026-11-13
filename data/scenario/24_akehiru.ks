; DAY24の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 24_akehiru.ks / DAY24 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3H24Wait"]
[s]

; ---- v3H24Wait ----
*v3H24Wait
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=24"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_h24_wait')"]
#
姫彗がいない間、何度も連絡の時刻を確かめた。[p]
待っているだけでいいのかと思う度、自分へ割り当てられた仕事へ戻った。[p]
戻ってきた時に、手当てをする場所を作る。仲間の状態を確かめる。俺が倒れて、もう一人分の仕事を増やさない。[p]
返事が途切れた。[p]
決めていた時間まで、待った。勝手に一人で出なかった。[p]
その時間の終わりに、彼女の声が戻った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「……聞こえていますか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞こえる」[p]
#
俺が名前を呼ぶと、少し間を置いて返事が来た。[p]
; 真の提案拒否は家を味方にする交渉と帰還作戦の成立が前提。文字通りの提案受諾では移植・癒し・自我の代償へ進む。
[jump target="*v4HCommit"]

; source:10688

; ---- v4HCommit ----
*v4HCommit
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_commit')"]
#
姫彗の返事が来た。[p]
家の協力がどこまで得られるか。本人が継ぐなら何が出来るか。その二つが、別の答えとして置かれた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「君の答えも、聞かせてください」[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"今の当主の協力を得る計画を実行する",target:"*v4HExecuteHouse"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"継承の代償を確かめ、本人の提案へ答える",target:"*v4HAcceptTerms"});
[endscript]
[ui_showChoices layout="encounter" storage="24_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11785

; ---- v4HExecuteHouse ----
*v4HExecuteHouse
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_execute_house')"]
[if exp="f.v4.h.hasAlternativeExamined && f.v4.h.isBackingReady && f.v4.h.hasReturnPlan"]
    #
    俺は、準備した紙を開いた。[p]
    断る理由だけではなく、代わりに何をするかが、そこにあった。[p]
    [jump target="*endHTrue" storage="ending_akehiru.ks"]
[else]
    #
    借りる力と、渡す記録と、帰る約束。そのどこかが、まだ繋がっていなかった。[p]
    拒むだけで、皆を助けられる案ではなかった。[p]
    #akehiru
    [eval exp="window.fiaLibrary.observe('akehiru')"]
    「その穴だらけの案で出るんですか。直すなら、今でしょう」[p]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"不足した協力・資料・帰還計画を整え直す",target:"*v4HRepair"});
[endscript]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"代案を断念し、継承の条件へ向き合う",target:"*v4HAcceptTerms"});
[endscript]
    [ui_showChoices layout="encounter" storage="24_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]
[endif]


; source:11802

; ---- v4HRepair ----
*v4HRepair
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_repair')"]
; この場面は決行前の一度だけ。実行後に遡って失った物を再取得する操作にはしない。
#
足りない所を、相手の失敗のように話さないようにした。[p]
姫彗へ、何を頼めるかを聞き、俺が渡していなかった記録を並べた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"家へ何を求め、何を渡すかを本人と確認する",target:"*v4HRepairHouse"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"医療記録と受入れ先を、自分の担当として整える",target:"*v4HRepairRecords"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"帰還と中止の合図を、関係する仲間へ共有する",target:"*v4HRepairReturn"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"ここまでの準備で、提案への返答へ戻る",target:"*v4HCommit"});
[endscript]
[ui_showChoices layout="encounter" storage="24_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11813

; ---- v4HRepairHouse ----
*v4HRepairHouse
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_repair_house')"]
[if exp="!f.v4.h.hasAlternativeExamined"]
    #
    今の当主へ協力を求めるために、渡す記録と、こちらの受け持つ役割を整理した。[p]
    姫彗が、俺たちの希望だけでは通らない所を指した。そこを、次に確かめる問いへ変える。[p]
    [eval exp="f.v4.h.hasAlternativeExamined=true"]
[else]
    #
    家への条件は、既に確認した。返事が変わっていないかだけを確かめ、同じ説明を重ねなかった。[p]
[endif]
[jump target="*v4HRepair"]


; source:11825

; ---- v4HRepairRecords ----
*v4HRepairRecords
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_repair_records')"]
[if exp="!f.v4.h.isBackingReady"]
    #
    患者の記録を、受け取る相手の必要な順へ並べ直した。[p]
    これが届いた時、誰が準備を始められるかを確かめた。自分が渡したつもりで終わらせなかった。[p]
    [eval exp="f.v4.h.isBackingReady=true"]
[else]
    #
    記録は揃っている。未確定の項目を、都合のいい数字へ書き換えずに残した。[p]
[endif]
[jump target="*v4HRepair"]


; source:11837

; ---- v4HRepairReturn ----
*v4HRepairReturn
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_repair_return')"]
[if exp="!f.v4.h.hasReturnPlan"]
    #
    帰る時刻を、俺が先に書いた。[p]
    その紙を姫彗が持ち、仲間にも同じ内容を渡す。誰の返事がなければ、誰が確認に動くかまで決めた。[p]
    [eval exp="f.v4.h.hasReturnPlan=true"]
[else]
    #
    合図を言い直した。同じ紙を持っていることより、同じ時に動けることを確かめた。[p]
[endif]
[jump target="*v4HRepair"]


; source:11849

; ---- v4HAcceptTerms ----
*v4HAcceptTerms
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_accept_terms')"]
#
本人へ、もう一度、何を望むかを聞いた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「妹に、全部を渡したくない。君を、助けたい。それから……」[p]
#
言葉が止まる。俺は待った。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「私として、生きている時間は、君といたい」[p]
; 代償への理解を、エンド名ではなく具体的な約束として確かめる。
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"癒す役目だけでなく、本人の生と意思の確認を引き受ける",target:"*v4HAcceptPerson"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"今の返答では決められないと伝え、代案へ戻る",target:"*v4HCommit"});
[endscript]
[ui_showChoices layout="encounter" storage="24_akehiru.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11863

; ---- v4HAcceptPerson ----
*v4HAcceptPerson
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_h_accept_person')"]
[eval exp="f.v4.h.hasPriceExamined=true;f.v4.h.hasEndWillConfirmed=true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一度の約束で、その後の君の返事まで決めない。生きている間の話も、聞かせてくれ」[p]
#
姫彗が、ようやく頷いた。[p]
[jump target="*endHNormal" storage="ending_akehiru.ks"]

; source:11875
