; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_ayase.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftAyaseFreeTalk ----
*draftAyaseFreeTalk
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_ayase_free_talk')"]
; DAY01〜10で使う既存の立ち絵・表情。
[ayaseSmile]
[ayaseShow]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「君が仕事以外で来るとは、珍しい」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「仕事の話に、戻した方がいいですか」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
[ayaseSmile]
「いや。私にも休憩の口実が出来る」[p]
#
綾瀬が紙を伏せる。部下へ指示する顔ではなくなるまで、少し時間があった。[p]
[chara_hide name="ayase" time="200"]
[return]


; source:4513
