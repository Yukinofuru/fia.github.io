; エンディング本文・読了処理。入口: 指定の結末ラベル。終了: ending.ksで記録しタイトルへ戻る。
; ========================================================
; ending.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*finish"]
[s]

; ---- endAllA3 ----
*endAllA3
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('end_all_a3')"]
; A_3：A枝で藍爛・明昼からの支えと成立する脱出計画を得られなかった場合。
#
俺が全部やると言った時、誰も安心しなかった。[p]
綾瀬少尉の意思を継ぐ、と続けた。その名が、怒りを強くした。[p]
死んだ人間の名前を使えば、従わせられると思っているのかと、言われた。[p]
否定しようとして、言葉が重なった。[p]
百七が、間へ入った。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「怒鳴ってても、道は開かないでしょ！」[p]
#
その声が、人を止めるより先に、人を向かせた。[p]
連盟の出だと誰かが言った。助けたはずの相手が、敵の名前で呼ばれた。[p]
俺が近づくより先に、百七が倒れた。[p]
何が起きたかを、理解したくなかった。[p]
怒鳴った。手を伸ばした。助けようとした行動まで、抵抗と受け取られた。[p]
俺の腕章は、人を止めなかった。[p]
倒れた視界の中に、百七の手があった。[p]
まだ何かをしようと、動いた気がした。[p]
俺は、そこへ届かなかった。[p]
; 独立のA_3全滅END。個別ヒロインのBadと同一扱いにしない。
[jump target="*v3Finish"]

; source:12594

; ---- v3Finish ----
*v3Finish
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_finish')"]
[jump storage="ending.ks" target="*finish"]

; ---- handoff ----
*handoff
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[cm]
#
一十のシナリオへ続く。[r]
[if exp="window.FiaStoryConfig.itoScenario"]
    [jump storage="&window.FiaStoryConfig.itoScenario" target="*start"]
[endif]
この先の一十個別は委託稿の接続待ちです。[r]
[link storage="ending.ks" target="*backTitle"]タイトルへ戻る[endlink][r]
[s]

; ---- finish ----
*finish
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[eval exp="window.fiaStory.finish()"]
[cm]
#
Falling into Ash　読了[p]
[link storage="ending.ks" target="*backTitle"]タイトルへ戻る[endlink][r]
[s]

; ---- backTitle ----
*backTitle
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[clearstack]
[jump storage="title.ks" target="*title"]
