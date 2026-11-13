; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_syuuichi.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftSyuuichiMemory ----
*draftSyuuichiMemory
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_syuuichi_memory')"]
; 古虫の回想。生存者リストからの呼出イベントではない。
; DAY01〜10で使う既存の立ち絵・表情。
[syuuichiSmile]
[syuuichiShow]
#syuuichi
[eval exp="window.fiaLibrary.observe('syuuichi')"]
「お前、出来た物を片づけるの、早くないか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「置く場所がない」[p]
#syuuichi
[eval exp="window.fiaLibrary.observe('syuuichi')"]
「俺がまだ見てないだろ」[p]
#
そう言って、秀一は勝手に椅子を引いた。[p]
ろくに分かっていないくせに、細かい所を指さして聞いてくる。[p]
俺は面倒がりながら、思ったより長く説明していた。[p]
; 回想を閉じる。現在へ戻る時に、この時間が既に失われたことを短く示す。
[chara_hide name="syuuichi" time="200"]
[return]


; source:4542
