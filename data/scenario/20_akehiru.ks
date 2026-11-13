; DAY20の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 20_akehiru.ks / DAY20 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3H20"]
[s]

; ---- v3H20 ----
*v3H20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h20')"]
; 章開始時に一度だけ初期化。
#
資料を、もう一度開いた。[p]
治療の記録。IR-Mの使用履歴。ソーラインの持出し。回復した隊員の、その後。[p]
同じ物を見ていたのに、別の意味が浮かび始めた。[p]
; 探索度の値そのものではなく、該当資料を取得し照合出来る状態を判定。
[if exp="f.hasMonsterTruth"]
    [jump target="*v3H20Truth"]
[else]
    [jump target="*endHBad" storage="ending_akehiru.ks"]
[endif]


; source:10573

; ---- v3H20Truth ----
*v3H20Truth
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_h20_truth')"]
#
俺が延ばした時間が、別の変化を進めていた。[p]
IR-Mの治療記録を読む。助かった人の名を読む。その横へ、怪異化の可能性を書いた。[p]
ペンを持つ手が、止まった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が、やっていたのか」[p]
#
分かっていれば使わなかった、と言い切れなかった。あの時、使わなければ死んだ人もいる。[p]
だから大丈夫だった、とも言えない。[p]
皆へ話すと、最初に返ったのは怒りだった。[p]
#隊員
[eval exp="window.fiaLibrary.observe('隊員')"]
「今さら、何を言ってる。これで助かったんだぞ」[p]
#
俺も、そう言いたかった。[p]
明昼が、机の上へ別の資料を置いた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「僕の知っていることも、話します」[p]
; 親密度不足なら情報の核心を共有出来ず、A_3へ合流。高探索だけで信頼の不足を自動補完しない。
[if exp="f.canAkehiruConfide"]
    [jump target="*v3H21Name" storage="21_akehiru.ks"]
[else]
    [jump target="*endAllA3" storage="ending.ks"]
[endif]


; source:10598
