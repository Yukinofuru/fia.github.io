; DAY25の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 25_setsu.ks / DAY25 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v2Y25"]
[s]

; ---- v2Y25 ----
*v2Y25
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=25"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v2_y25')"]
#
世紬は、世界を残す道を説明した。[p]
自分が消えることを、必要な処理のようには話さなかった。俺に別れを告げる声だった。[p]
彼女を残す道も、話した。失われる人々のことを隠さなかった。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「どちらを選んでも、君を責めるつもりはないわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君は、どうしたい」[p]
#
彼女の目が揺れた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……生きたい」[p]
#
短い言葉だった。続きが、なかなか出てこなかった。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君と。でも、皆も……」[p]
#
俺は、その途中を切らなかった。[p]
; プレイヤーだけが解放した例外の有無で三番目を制御する。正式入力文字列は未提示のため捏造しない。
[jump target="*v4YFinal"]


; source:10956

; ---- v2YException ----
*v2YException
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_y_exception')"]
; 例外の機構は既定の遺骨・世界設定に照合。以下は採用済みの到達点へ至る演出案。
; 操作するのはプレイヤー。パスワードを古虫の台詞・推理・記憶に変換しない。
#
見えていた道が、途中から続かなくなった。[p]
世紬が俺を見た。何が起きたのか、彼女にも分からなかった。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……ここから先は、見えない」[p]
#
その言葉を、初めて不幸の予告だと思わずに聞けた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「なら、一緒に決めよう」[p]
#
彼女が頷く。[p]
元の世界へ彼女を繋ぎ止めていたものと、俺の腕に結びついた遺骨。その繋がりが離れる時、右手の感触が途切れた。[p]
何かを掴む指は、もうなかった。[p]
左腕を伸ばす。世紬も、自分から手を伸ばした。[p]
痛みの向こうで、二人分の重さが移った。[p]
; 元世界は世紬の存在しなかった歴史として存続。二人は別世界へ。片腕喪失は不可逆。灰化は継続。
[jump target="*endYTrue" storage="ending_setsu.ks"]

; source:10984

; ---- v4YFinal ----
*v4YFinal
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_final')"]
#
何を守り、何を失うかを、二人で口にした。[p]
最後の言葉だけが、今までと切り離されているわけではなかった。[p]
知った人々。聞いた望み。出来る所まで作った準備。その全てが、今の選択の中にあった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"世界を残す道を実行する",target:"*v4YChooseWorld"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"世紬を残す道を実行する",target:"*v4YChoosePerson"});
[endscript]
; 以下はプレイヤー側の例外解放がある時のみ表示。入力文字列を捏造しない。
[if exp="f.hasExceptionUnlocked"]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"二つの道の接続そのものを、最後に確かめる",target:"*v4YChooseException"});
[endscript]
[endif]
[ui_showChoices layout="encounter" storage="25_setsu.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:12203

; ---- v4YChooseWorld ----
*v4YChooseWorld
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_choose_world')"]
#
世界を残すと言った。[p]
世紬が、自分の手で、残すための最後の動きへ移った。[p]
俺はその手を、止めなかった。[p]
[jump target="*endYC" storage="ending_setsu.ks"]


; source:12210

; ---- v4YChoosePerson ----
*v4YChoosePerson
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_choose_person')"]
#
彼女を選ぶと伝えた。[p]
世界へ何が起きるかを、今さら知らなかったことには出来ない。[p]
世紬はそのことも分かったうえで、俺の手を取った。[p]
[jump target="*endYD" storage="ending_setsu.ks"]


; source:12217

; ---- v4YChooseException ----
*v4YChooseException
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_y_choose_exception')"]
[if exp="f.hasExceptionUnlocked && f.v4.y.hasWorldExamined && f.v4.y.hasBodyExamined && f.v4.y.hasTransferShared && f.canWorldReach"]
    #
    元の世界を残す条件と、二人をここから離す条件を、同じ一つの物として扱うのをやめた。[p]
    別々に確かめたことが、初めて、同時に使える形へ並んだ。[p]
    ; 開く原因を知るのはプレイヤーだけ。古虫の推理からパスワードが生まれたことにしない。
    [jump target="*v2YException"]
[else]
    #
    別の道があると感じても、二人がそこで何をするかが、まだ繋がっていなかった。[p]
    俺は、望めば道が完成すると言いかけた。[p]
    世紬の手を見て、その言葉を止めた。[p]
    ; 最後に都合よく未取得情報を補わない。準備不足でもC/Dは残る。能力不足はBの既定判定へ。
    [jump target="*v4YFinal"]
[endif]

; source:12240
