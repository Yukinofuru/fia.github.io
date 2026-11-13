; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_tota.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftTotaFreeTalk ----
*draftTotaFreeTalk
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_tota_free_talk')"]
; DAY01〜10で使う既存の立ち絵・表情。
[totaSmile]
[totaShow]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「俺の所へ来る時も、仕事の用事がいるのか？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いらない。……多分」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「多分を外す所から始めよう」[p]
#
富山は椅子を寄せ、どうでもいい話を始めた。どこにも記録しなくていい話だった。[p]
途中で笑うと、彼が少しだけ満足そうにした。[p]
[chara_hide name="tota" time="200"]
[return]


; source:4484
