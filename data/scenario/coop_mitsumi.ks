; 人物別の交流・デート・明示した回想。入口: 指定ラベル。終了: returnで呼出元へ戻る。
; ========================================================
; coop_mitsumi.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- draftMitsumiMemory ----
*draftMitsumiMemory
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_mitsumi_memory')"]
; 世紬が話す光海の思い出、または明示した過去視点。古虫が直接体験した記憶にはしない。
#光海
[eval exp="window.fiaLibrary.observe('光海')"]
「それ、みんなの都合でしょう。あなたは？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「私の都合を聞いても、面白くないわよ」[p]
#光海
[eval exp="window.fiaLibrary.observe('光海')"]
「私が聞きたいから聞いてるの」[p]
#
世紬は返事を考えた。光海は、急かすふりをしながら待った。[p]
世界のためでない用事を決めるのに、二人はずいぶん時間を使った。[p]
; 具体的な思い出の場所・時期・内容は過去設定に合わせる。この台詞だけで過去の事件を新設しない。
[return]


; source:4556

; ---- draftMitsumiFarewell ----
*draftMitsumiFarewell
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_mitsumi_farewell')"]
; 別れの感情案。光海の最期の具体的事件は既定設定へ接続。
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「あなたも、一緒に来て」[p]
#光海
[eval exp="window.fiaLibrary.observe('光海')"]
「……私だって、そうしたい」[p]
#
離しかけた手が、一度止まった。[p]
共に生きたいと思ったことまで、最初から諦めていたわけではなかった。[p]
; 光海の愛を古虫より低く描かない。古虫へ名指しでパスワードを渡したことにしない。
[return]

; source:4572
