; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_ayase.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftAyaseMeeting ----
*draftAyaseMeeting
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_ayase_meeting')"]
; DAY01〜10で使う既存の立ち絵・表情。
[ayaseSerious]
[ayaseShow]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「綾瀬さん自身のことも、聞いておきたいんです」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「私が、何を抱えているか？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を抱えていないかまで、俺には分かりません」[p]
#
包帯の向こうの表情は読めなかった。彼はしばらく、紙の端を指で押さえていた。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「……都合のいいことだけ、答えるわけにもいかないね」[p]
; 綾背の正体・研究・事件への関与はルートの公開段階に従う。ここで全真相を自白させない。
[chara_hide name="ayase" time="200"]
[return]


; source:4527
