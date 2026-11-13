; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_ito.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftMeetItoEntry ----
*draftMeetItoEntry
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_entry')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今日は、どちらの用だ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どちら？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「身体の話か、別の話か。お前のその紙、両方書いてあるだろう」[p]
#
よく見ている。紙を伏せ、まず椅子を示した。[p]
[chara_hide name="ito" time="200"]
[return]


; 装備について話す
; 前提なし。生活・技能の会話。

; source:3617

; ---- draftMeetItoTalk1 ----
*draftMeetItoTalk1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_talk1')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoJito]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前の留め具、また緩んでいるぞ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここから見えるのか？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「さっき歩いていた時からだ」[p]
#
呼ばれてもいないのに見ていたことを指摘すると、一十が眉を寄せた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「落として探す羽目になったら、面倒だろう」[p]
[chara_hide name="ito" time="200"]
[return]


; 昔と今の好みを聞く
; 前提なし。古虫の既知の過去と本人の現在の答えを分ける。

; source:3633

; ---- draftMeetItoTalk2 ----
*draftMeetItoTalk2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_talk2')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSmile]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今も、あれが好きなのか？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今は、違う」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なら、今の方を教えてくれ」[p]
#
一十の指が止まる。俺が昔の話を続けないのを、少し不思議そうに見ていた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……覚えても、何も出ないぞ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞いておきたいだけだ」[p]
[chara_hide name="ito" time="200"]
[return]


; 本人が許した身体項目を調べる
; 同意と関係条件。検査可能な項目を選択。クローンの正体を一回で完全開示しない。

; source:3651

; ---- draftMeetItoExam ----
*draftMeetItoExam
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_exam')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「必要な範囲を、先に言え」[p]
#
説明すると、彼女は頷いた。許された所まで確かめ、結果を別の欄へ記す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここは、こうだった。思い当たることはあるか？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……質問は、別なんだろう」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。今は結果だけ残す」[p]
; 検査値はmedic_data.js等の正本と要照合。
[chara_hide name="ito" time="200"]
[return]


; 所見を本人が知っていたか尋ねる
; 前提：対応する実測所見。本人の自覚という独立情報。

; source:3668

; ---- draftMeetItoFinding1 ----
*draftMeetItoFinding1
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_finding1')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この状態は、前から自覚していたか？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……聞かれれば、答えなければならないのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「答えたくないなら、それも聞く」[p]
#
彼女は少し考え、話せる部分だけを選んだ。俺は、選ばれなかった部分へ答えを埋めなかった。[p]
[chara_hide name="ito" time="200"]
[return]


; 以前の説明と照合する
; 前提：両方の記録を取得。時期・言葉の具体内容は事件設計へ。

; source:3682

; ---- draftMeetItoFinding2 ----
*draftMeetItoFinding2
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_finding2')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「私を、疑っているのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「話が合わない所がある。だから、本人に聞きに来た」[p]
#
彼女は目を逸らさなかった。その強さが、安心にも怖さにもなった。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「なら、何が違うのか言え。お前の考えまで、私が答えることは出来ない」[p]
[chara_hide name="ito" time="200"]
[return]


; 根拠を示して追及する
; 事件に関わる具体的な取得情報が必要。親密度だけで罪を消さない。自白剤の使用有無は行動選択時に明示する設計が必要。

; source:3696

; ---- draftMeetItoPress ----
*draftMeetItoPress
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_press')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「曖昧にしたまま、終われない」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……それで、私に何をさせる」[p]
#
声が低くなった。昔の言い合いと同じ顔なのに、同じ場所へは戻れないと分かった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この行動について、説明してくれ」[p]
; 成功の情報・関係の代償・不成功の反応は個別に設定。旧コードの固定-30や失敗0を新方針の確定数値として移さない。
[chara_hide name="ito" time="200"]
[return]


; 用事なく話す
; 一定の親密さ。調査の免罪とは別。

; source:3711

; ---- draftMeetItoClose ----
*draftMeetItoClose
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_close')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今日は、質問が多いな」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、少し、何でもない話をするか」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「何でもない話を、わざわざ始めるのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前相手だと、意外と難しい」[p]
#
一十が鼻で笑う。俺も笑った。こんな時間まで嘘だったことにしたくはなかった。[p]
[chara_hide name="ito" time="200"]
[return]



; source:3725

; ---- draftMeetItoEnd ----
*draftMeetItoEnd
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_meet_ito_end')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSmile]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「続きは、また今度だな」[p]
#
彼女が立ち上がる。聞けなかったことを急いで口へ出しかけ、飲み込んだ。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。また、本人に聞く」[p]
[chara_hide name="ito" time="200"]
[return]


; source:3740

; ---- v2MeetIWhere ----
*v2MeetIWhere
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_i_where')"]
; DAY17以降。前提：物資の受渡記録を取得。本人の初回説明をそのまま保存。
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この荷物を置いた後、どこへ行った？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「戻った」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「途中で、立ち寄った所は」[p]
#
一十は俺の紙を見た。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「何を、確かめたい」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「受渡の記録に、空いている所がある。お前が見た範囲を、知りたい」[p]
#
; 低い信頼や高い負担なら、ここで個別拒否へ。答えないことは、行動の確定ではない。
; 十分話せる場合の続き。
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「呼び止められた。誰からかは、今は言えない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それも、そのまま残す」[p]
#
一十は頷かなかった。俺も、記録を彼女に見えない所へ隠さなかった。[p]
[chara_hide name="ito" time="200"]
[return]


; source:4236

; ---- v2MeetINow ----
*v2MeetINow
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_meet_i_now')"]
; 親密な雑談。所在追及と別の選択。
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「昔の話を、したくないのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「したくない時は、ある。でも、昔のお前しか知らないままなのも、嫌だ」[p]
#
一十は、何を答えるか迷った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日、何があった？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……それだけでいいのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞きたいんだ」[p]
#
彼女が、俺のいなかった場所の話をした。途中で、あまり面白くないぞ、と付け足す。[p]
俺は、面白いかどうかは聞いてから決めると答えた。[p]
[chara_hide name="ito" time="200"]
[return]


; source:4255

; ---- draftRefuseIto ----
*draftRefuseIto
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_refuse_ito')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoSerious]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「そこまで答える約束はしていない」[p]
#
視線は強かった。知っている顔だからといって、踏み込める範囲まで昔と同じとは限らない。[p]
[chara_hide name="ito" time="200"]
[return]


; source:4414

; ---- draftStressIto ----
*draftStressIto
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_stress_ito')"]
; DAY01〜10で使う既存の立ち絵・表情。
[itoAngry]
[itoShow]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「同じことを聞かれても、答えは変わらない」[p]
[chara_hide name="ito" time="200"]
[return]


; source:4449

; ---- v6ChatItoCommon01 ----
*v6ChatItoCommon01
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_01')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その鞄、重くないか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前の方が重い。余計な物が入っている。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「全部、必要だ。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「そう言って、使っていない物を三つは知っている。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_01=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5027

; ---- v6ChatItoCommon02 ----
*v6ChatItoCommon02
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_02')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoJito]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の字、前より悪くなった？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「急ぐと、最後の線が消える。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「よく見てるな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「読まされる方の身にもなれ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_02=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5044

; ---- v6ChatItoCommon03 ----
*v6ChatItoCommon03
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_03')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「髪、何かついてる？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「ついているというより、跳ねている。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教えてくれよ。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今、教えている。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_03=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5061

; ---- v6ChatItoCommon04 ----
*v6ChatItoCommon04
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_04')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し、借りていいか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「返す場所を覚えたらな。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「信用ないな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「返す時に別の棚へ入れるからだ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_04=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5078

; ---- v6ChatItoCommon05 ----
*v6ChatItoCommon05
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_05')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か、言おうとした？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「言う前に、こっちを見るな。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見てないと分からないだろ。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……今は、いい。後で言う。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_05=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5095

; ---- v6ChatItoCommon06 ----
*v6ChatItoCommon06
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_06')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、いつもと違う気がする。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が、ちゃんと味を見ているからじゃないか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「普段も見てる。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「食べながら別の記録を読む奴が、よく言う。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_06=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5112

; ---- v6ChatItoCommon07 ----
*v6ChatItoCommon07
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_07')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この縫い方、難しい？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「手を動かせば分かる。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「教えてくれる？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「針をなくさないと約束したらな。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_07=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5129

; ---- v6ChatItoCommon08 ----
*v6ChatItoCommon08
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_08')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここだと、苗字で呼ばれることが多いな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前も、私を変な呼び方にするか。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「変なのって？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「今、考えなくていい。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_08=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5146

; ---- v6ChatItoCommon09 ----
*v6ChatItoCommon09
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_09')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待たせたか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「少し。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ごめん。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「次は、一言寄越せ。それで済む。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_09=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5163

; ---- v6ChatItoCommon10 ----
*v6ChatItoCommon10
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_10')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoJito]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今のは、冗談だったんだけど。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「知っている。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「顔が変わらないから。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「笑うかどうかまで、指定するな。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_10=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5180

; ---- v6ChatItoCommon11 ----
*v6ChatItoCommon11
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_11')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「落としたの、見てた？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「音がした。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「手が早いな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が蹴る前に拾っただけだ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_11=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5197

; ---- v6ChatItoCommon12 ----
*v6ChatItoCommon12
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_12')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日は、ここまでにするか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「珍しいな。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「変か？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「いや。言い出した方が、後でこっそり続けなければな。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_12=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5214

; ---- v6ChatItoCommon13 ----
*v6ChatItoCommon13
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_13')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そこへ置くの、邪魔じゃない？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が通る方は空けてある。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が来ると思ったのか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「誰が来ても、通れる方がいいだろ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_13=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5231

; ---- v6ChatItoCommon14 ----
*v6ChatItoCommon14
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_14')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「知らない顔が、まだ多い。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「腕章だけ見ていれば、そうなる。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「人の顔も見てるよ。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「では、今日礼を言った相手の顔を、後で思い出してみろ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_14=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5248

; ---- v6ChatItoCommon15 ----
*v6ChatItoCommon15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_15')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今度、模型の話をしてもいいか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「途中で、相手が分からない所を飛ばすなよ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そんなことしてた？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前は、分かると急に早口になる。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_15=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5265

; ---- v6ChatItoCommon16 ----
*v6ChatItoCommon16
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_16')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「返事が短いと、怒ってるのかと思う。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「怒っていたら、言う。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「それなら安心か。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「安心して、怒らせるなよ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_16=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5282

; ---- v6ChatItoCommon17 ----
*v6ChatItoCommon17
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_17')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「少し、歩くの速かった？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が考え事をすると、遅くなる。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「置いていけばよかったのに。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「話している途中だった。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_17=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5299

; ---- v6ChatItoCommon18 ----
*v6ChatItoCommon18
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_18')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「表紙が、少し擦れてるな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「中は見せないぞ。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「見せてくれとは言ってない。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「顔に出る前に、言っておいた。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_18=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5316

; ---- v6ChatItoCommon19 ----
*v6ChatItoCommon19
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_19')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「人の好きな物って、変わるんだな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「変わらない方が、おかしいだろう。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、また聞かないとな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「聞いた後は、覚えておけ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_19=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5333

; ---- v6ChatItoCommon20 ----
*v6ChatItoCommon20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_20')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoJito]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何だよ。何か変だった？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……別に。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「別に、の顔じゃないだろ。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前に言われると、余計に言いたくなくなるな。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_20=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5350

; ---- v6ChatItoCommon21 ----
*v6ChatItoCommon21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_21')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これで、借り一つか。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「何でも数えるな。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「返さなくていい？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「物は返せ。そこは別だ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_21=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5367

; ---- v6ChatItoCommon22 ----
*v6ChatItoCommon22
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_22')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、黙ってたのは、考えてただけだ。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「分かっている。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「待っててくれたんだな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「続きを言う顔を、していただろう。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_22=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5384

; ---- v6ChatItoCommon23 ----
*v6ChatItoCommon23
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_23')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日、何か手を貸せることは？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「先に、自分の予定を言え。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺の？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「空いている時間を全部渡す癖を、やめろ。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_23=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5401

; ---- v6ChatItoCommon24 ----
*v6ChatItoCommon24
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v6_chat_ito_common_24')"]
; 前提：本人が面談出来る状態。事件の核心・高親密の接触を無条件に開示しない。
; DAY01〜10で使う既存の立ち絵・表情。
[itoNormal]
[itoShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「もう、時間だな。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が言うと、急に現実に戻るな。」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「続きは、今度。」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……忘れるなよ。忘れたら、こっちから言う。」[p]
[eval exp="f.storyTopicsSeen=f.storyTopicsSeen||{};f.storyTopicsSeen.v6_chat_ito_common_24=true"]
[chara_hide name="ito" time="200"]
[return]

; source:5420
