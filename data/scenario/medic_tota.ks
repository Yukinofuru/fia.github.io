; 人物別カウンセリング本文。入口: 指定ラベル。終了: returnでmedic.ksなどの呼出元へ戻る。
; ========================================================
; medic_tota.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftTotaMeeting ----
*draftTotaMeeting
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_tota_meeting')"]
; DAY01〜10で使う既存の立ち絵・表情。
[totaSmile]
[totaShow]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「真面目に答える方がいいか？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「普段も、別に不真面目だとは思ってない」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
[totaBlush]
「……そう言われると、返しづらいな」[p]
#
彼が笑う。聞く側へ回ると、いつも俺の顔を見ていたことが分かった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「富山は、誰に話してる？」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「今は、お前だ」[p]
#
簡単な答えに、俺の方が黙ってしまった。[p]
; 取得する所在や目撃証言は、実際の事件の設定へ。気さくさを無条件の無罪判定にはしない。
[chara_hide name="tota" time="200"]
[return]


; source:4502
