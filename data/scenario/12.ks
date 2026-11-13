; DAY12の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 12.ks / DAY12 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day12Morning"]
[return]

; ---- v2Day12Morning ----
*v2Day12Morning
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day12_morning')"]
#
通常診療の記録を閉じた。最後の患者が、扉を押さえて後ろの人を通した。[p]
その人が歩けるようになった時のことは、覚えている。今日、他人のために扉を押さえる顔は、初めて見た。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「こっちは、終わったか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ひとまず。お前は？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「移動に使えそうな物を分けている。お前の字は読みにくい」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「読めてるだろ」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「昔から読んでいるからな」[p]
#
一十が記録を置く。その指が、綾瀬から渡された紙へ近づき、何も触らずに離れた。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「夜も、仕事か」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「話を聞く。来たい人がいれば」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……そうか」[p]
#
聞きたいことがあったのか、用が済んだだけなのか。今の俺は、それまで考えずにはいられなかった。[p]
; これだけで一十の事件関与を示す取得情報にはしない。
[return]


; source:3103

; ---- v2Day12Evening ----
*v2Day12Evening
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day12_evening')"]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「今日はどうだった」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何が？」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「午後。診療の報告なら、さっき見た」[p]
#
自分で選んだ行動を話した。富山は、なるほど、と聞いた。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「またやりたいか？」[p]
#
役に立ったか、ではなかった。[p]
答えを考えていると、富山は先に食事へ手を伸ばした。急かされないのに慣れるのは、案外難しかった。[p]
[return]


; source:3119
