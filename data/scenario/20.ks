; DAY20の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 20.ks / DAY20 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v320Power"]
[s]

; ---- v320Power ----
*v320Power
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_power')"]
; 章開始時に一度だけ初期化。
#
地下鉄が動く、と聞いた時、最初は誰も大きな声を出さなかった。[p]
言い切ってから違ったと分かるのを、皆が怖がっているように見えた。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「電源は使える。車両も、動かせる所まで確認できた」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「あとは道、か」[p]
#
綾瀬少尉が図を指した。中心部の通路が、黒く塗られている。[p]
魚影。俺が廊下で見た怪異と、同じ名前だった。だが、今度は、逃げる道そのものへ根を張っていた。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「ここを通せれば、乗り込める」[p]
#
誰かが帰れると言い、別の誰かが、まだだと止めた。[p]
俺は名簿を開いた。歩ける人。運ぶ人。最後に乗る人。[p]
自分の欄も、今度は埋めた。[p]
[jump target="*v320Mark"]


; source:10085

; ---- v320Mark ----
*v320Mark
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_mark')"]
#
一十と明昼に、少しだけ時間をもらった。[p]
右腕のこと。遺骨のこと。自分が印持ちであること。[p]
隠していた全てを、一度に説明出来たわけではない。俺自身が分かっている範囲を話した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何か起きた時、何も知らないまま対処してほしくなかった」[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「万が一を口実に、また一人で残る気ですか。懲りませんね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……分かった」[p]
#
一十は、腕を見ていた。俺が袖を戻すと、ようやく顔を上げる。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「ほかに、知っている人間は」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「事情を知る人はいる。でも、皆に話したわけじゃない」[p]
#
一十が頷いた。[p]
その質問が何のためだったかを、俺は後から何度も思い返すことになる。[p]
; 取得K20_MARK：古虫が印持ちと伝えた相手。これだけで犯人確定にはしない。
[eval exp="window.fiaStory.evidence('K20_MARK','v3_20_mark')"]
[jump target="*v320Fish"]


; source:10108

; ---- v320Fish ----
*v320Fish
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_fish')"]
; 世界条件成立周回では、後述の犠牲・先頭車両死亡を再生せず、専用の回避展開へ。
[if exp="f.isWorldQualified"]
    [jump target="*v320WorldRescue"]
[endif]
#
魚影の根が、通路の幅を奪っていた。[p]
目の前の一本を断っても、その奥から別の物が動く。空いた場所へ、人を通す時間が必要だった。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「運べる奴から行け！　こっちは、まだ持つ！」[p]
#
東太の声に合わせ、寝台を進めた。明昼が通路の脇へ動き、戻ってくるはずの人が一人、戻らなかった。[p]
俺は名前を呼んだ。返事を待つ間にも、次の人が通る。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「先へ行け！」[p]
#
綾瀬少尉が向こう側へ残った。[p]
腕を伸ばしかけた時、通路が塞がる。姿が見えなくなった。[p]
; 通常枝では綾背の死の偽装。古虫視点では犠牲に見える。後の再登場まで生死を確定するナレーションを置かない。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「綾瀬さん！」[p]
#
返ってきたのは、崩れる音だった。[p]
東太が俺を引いた。戻ろうとした足を止められる。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「今、戻ったら、あの人が通した奴まで止まる！」[p]
#
言い返せなかった。[p]
魚影を押さえ、残る根を断ち、最後の人を通す。戦っている間に、一人ずつの名が、返事をしない欄へ移った。[p]
; 戦闘・遭遇！の担当領域へ接続。勝利の判定は既定の戦闘へ。本文だけで無条件勝利に変更しない。
[call storage="room.ks" target="*fishBattle"]
[jump target="*v320Train"]


; source:10140

; ---- v320Train ----
*v320Train
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_train')"]
#
車内の灯りが点いた。[p]
誰かが泣いた。人の肩が揺れ、笑い声と、嗚咽が重なった。[p]
動き始めた床の上で、俺もようやく息を吐いた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「動いて、いますね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ」[p]
#
座席に座る彼女の膝へ、俺が回収した記録を置いた。藍爛は両手で抱え直した。[p]
向かいで、百七が窓へ顔を向ける。外は暗い。それでも、暗闇が後ろへ流れていくことを見ていた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……ちゃんと、進むじゃない」[p]
#
前の車両から、声が聞こえた。[p]
次に、光が来た。[p]
床が跳ねた。[p]
俺の身体が倒れるより先に、前方の扉が変形した。声が一度に消え、別の悲鳴だけが残る。[p]
列車が止まる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「前へ……」[p]
#
行こうとすると、東太が俺を押さえた。扉の向こうは、もう人が通れる形ではなかった。[p]
さっきまで名前を呼べた人が、先頭車両にいた。[p]
俺は、その名前を言えなくなった。[p]
[jump target="*v320Attack"]


; source:10168

; ---- v320Attack ----
*v320Attack
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_attack')"]
#
向かいから、別の車両の光が来た。[p]
助けだと思った人が、手を上げた。[p]
黒い服が降りてきた。[p]
連盟だった。[p]
彼らは、負傷者の声へ向かなかった。俺を指し、連れていこうとした。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「下がってろ！」[p]
#
東太が間へ入った。さっきまで働いていた腕が、今度は俺を守るために動いた。[p]
俺が抵抗すれば終わる話ではなかった。俺の周りへ人が集まり、その人々へ危険が向いていた。[p]
一十が扉を示す。明昼がその先を確かめた。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「長くは、持ちません。今です」[p]
#
別時空へ繋がる扉へ、飛び込んだ。[p]
最後に東太が入り、向こうの光が閉じた。[p]
[jump target="*v320Accusation"]


; source:10188

; ---- v320Accusation ----
*v320Accusation
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_accusation')"]
#
音のない場所だった。[p]
さっきまでの衝撃が、身体の中だけで続いている。[p]
東太が人数を数えた。足りない名前を、もう一度数え直した。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「……裏切り者がいる」[p]
#
誰も、聞き返さなかった。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「動かす時刻も、経路も、向こうは知ってた。しかも、古虫を連れていこうとした」[p]
#
視線が俺へ集まる。[p]
裏切ったのは誰か。その問いの中へ、俺も入っていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「調べたことを、見せる。俺が知っていたことも、全部」[p]
; ここから調査ADV。証言・写真・供述・推測を区別して並べる。
[jump target="*v320Hub"]


; source:10207

; ---- v320Hub ----
*v320Hub
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_hub')"]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="20.ks" target="*v320Evidence15"]DAY15の爆発と保管庫を振り返る[endlink][r]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="20.ks" target="*v320Evidence20"]印持ちを話した相手と連盟の行動を比べる[endlink][r]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="20.ks" target="*v320Testimony"]これまでの所在と証言を照合する[endlink][r]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[link storage="20.ks" target="*v320Answer"]東太へ判断を伝える[endlink][r]
[s]


; source:10214

; ---- v320Evidence15 ----
*v320Evidence15
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_evidence15')"]
#
給湯設備は、人の手で壊されていた。[p]
点検の予定を知っていれば、人をそこへ向かわせられる。だが、設備を壊せる人間は、一人とは限らない。[p]
保管庫にあった袋も、今は死体の隠蔽だけとは考えられなかった。百七が、あそこでどうやって生きていたかを話した。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「ほかの袋を開けなかったのは、正解。あの状態から勝手に出したら、死ぬかもしれない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「中は、全員……生きてるのか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「個別の状態までは分からない。でも、ただの死体置場じゃない」[p]
#
一十と似た顔を写した記録が、あるか。札の番号は、何を示すか。実際に持ち帰った物だけを照合した。[p]
; 正式真相：一十のバックアップ保管庫。百七は仕組みを利用して脱出を図り、冷凍されていなかった。
; 未取得の顔・番号を写真へ後付けしない。写真不足なら百七の説明の取得範囲に留める。
[jump target="*v320Hub"]


; source:10231

; ---- v320Evidence20 ----
*v320Evidence20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_evidence20')"]
#
印持ちであることを、今日、一十と明昼に話した。[p]
連盟は俺を捕らえようとした。[p]
それだけでは、二人のどちらかが裏切ったと決められない。以前から知られていた可能性もある。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「知ってるだけで犯人なら、君も同じでしょう。一十さんの話も、そこは分けたらどうです」[p]
#
明昼の言葉を、そのまま書いた。[p]
同じ内容を知った人間の中で、実際に外へ接触出来た区間はどこか。問いを、もう一段小さくした。[p]
[jump target="*v320Hub"]


; source:10243

; ---- v320Testimony ----
*v320Testimony
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_testimony')"]
#
物資を渡した時の記録を開いた。[p]
一十が、戻ったと話した区間。呼び止められたと話した区間。今の説明が、以前の言葉と同じかを確かめる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その連絡は、何だった」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……今、それを」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、聞く必要がある」[p]
#
俺は、一十だけを見ないようにした。ほかの人へも、実際に見た所までを聞いた。[p]
藍爛は、箱を運んだ先を話した。東太は、連盟が俺を名指しした時の位置を図へ落とした。[p]
百七は、一十について、自分が知っている範囲を説明した。[p]
; 一十の接触記録・所在証言は取得済み情報と当日の聞き取りで構成。性別・病状・怯えは証拠へ転用しない。
[eval exp="window.fiaStory.evidence('contact20','v3_20_testimony')"]
[jump target="*v320Hub"]


; source:10260

; ---- v320Answer ----
*v320Answer
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_answer')"]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「分かったか」[p]
#
俺は、名前を一つ言えば済むのかを考えた。[p]
間違っていれば、別の人間を殺すかもしれない。合っていても、死んだ人は戻らない。[p]
; 必要な根拠を組み立てた場合だけ一十を立証した枝へ。名前の総当たりで自白を引かせない。
[if exp="window.fiaStory.canAccuse()"]
    [iscript]
tf.storyBranchChoices.push({text:"一十への根拠を示し、本人へ確認する",target:"*v320Ito"});
[endscript]
[else]
    一十への根拠を示す（工作・所在・連絡の照合が必要）[r]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"現時点では、誰とも断定できないと伝える",target:"*v320Unknown"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:10271

; ---- v320Ito ----
*v320Ito
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_ito')"]
[if exp="!window.fiaStory.canAccuse()"]
    #
    まだ根拠を結びつけられていない。記録を見直そう。[p]
    [jump target="*v320Hub"]
[endif]
#
給湯設備への工作。空いた行動区間。連盟への連絡。俺を別扱いにした理由。[p]
確認出来た範囲を、一つずつ言った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前なのか」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「紀一」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「答えてくれ」[p]
#
一十は、目を逸らさなかった。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……お前だけは、助けると」[p]
[eval exp="window.fiaLibrary.learn('itoStatement')"]
#
言い終わる前に、誰かが怒鳴った。[p]
俺は動けなかった。俺を助けようとしたという言葉が、俺以外の死と一緒に置かれていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「藍爛さんが、あそこにいたんだぞ」[p]
#
一十の顔が変わった。知らなかったのか、知っていて見ないようにしていたのか。答えを聞く前に、周囲の声が増えた。[p]
; 一十の犯行と、今回の爆発の関与を作者の真相として反映。プレイヤーが立証する範囲は取得情報で制御。
[jump target="*v420Ground"]


; source:10295

; ---- v320Unknown ----
*v320Unknown
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_unknown')"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……今は、分からない」[p]
#
東太は、すぐに俺を責めなかった。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「分かったふりをされるよりは、いい。だが、分からないまま動くことになる」[p]
#
全員で基地へ戻る。そう決めた時、一十が俺の傍らへ来た。[p]
; C通常：異空間を出た後、一十が古虫を拘束して連盟へ連れ去る筋へ。
; 世界条件成立時のみ、別の接続が残る。犯人不明そのものを救済の条件にはしない。
[if exp="f.isWorldQualified"]
    [jump target="*v3WorldEntry"]
[else]
    [jump target="*v3C20"]
[endif]


; source:10312

; ---- v3C20 ----
*v3C20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_c20')"]
#
空間を出た所で、一十が俺の腕を取った。[p]
庇うための位置ではなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一十？」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「……すまない」[p]
#
向こうに、連盟がいた。[p]
東太の声が聞こえた。身体を動かそうとしても、一十の手が離れない。[p]
俺は初めて、彼女が何を選んだかを、その手の重さで知った。[p]
; 一十の外部委託ルート入口。今回の依頼により、この先の個別・END本文は収録しない。
; ここを新しいENDとして登録しない。委託シナリオへ引き継ぐ境界。

[jump storage="ending.ks" target="*handoff"]

; source:10328

; ---- v3B20 ----
*v3B20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_b20')"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「殺せば、今は止まる。でも、俺を狙う理由まで消えるわけじゃない」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「それだけの理由で、庇うのか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……それだけじゃない。俺が、殺したくない」[p]
#
言い訳に使える理由だけを並べたくなかった。[p]
一十は武器を預けた。許された顔をしなかった。[p]
百七が俺を呼ぶ。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「逃げるなら、アタシの知ってる道も使う。連盟のやり方を、もっと聞きたいんでしょ」[p]
; Bでは一十を生存状態で保持するが、今回収録の個別は百七。外部委託一十への選択肢を新設しない。
[jump target="*v3M21" storage="21_momona.ks"]


; source:10344

; ---- v3A20 ----
*v3A20
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a20')"]
[if exp="f.v4 && f.v4.d20 && f.v4.d20.disposition==='failed_stop'"]
    #
    止めると言った。その言葉を、人を止めるための行動へ変えきれなかった。[p]
[endif]
#
一十は、最後まで俺を見ていた。[p]
誰かが前へ出た。止める声と、止めるなという声が重なった。[p]
俺が口を開くより先に、その時間は終わった。[p]
; A：一十処断。以後の面談・交流・所在表から外す。処断の手段を見せ場にしない。
#
拠点へ戻り、診療室の扉を閉めた。[p]
使える物を並べる。いつもと同じことをすれば、いつもと同じ場所へ戻れる気がした。[p]
先頭車両にいた人の名が、浮かんだ。[p]
俺が、もっと早く分かっていれば。[p]
印持ちだと、話していなければ。[p]
助けた一十が、あの時いなければ。[p]
最後の考えが浮かんで、手が止まった。[p]
助けたことまで、間違いにしたかった。[p]
; 条件は仮名。数値は未確定。藍爛を人化させる枝は総IR-M/ソーラインの経過も保持する。
[if exp="f.isAiranQualified && f.hasAkehiruAffinity"]
    [call storage="daily.ks" target="*chooseRoute"]
[endif]
[if exp="f.isAiranQualified"]
    [jump target="*v3A21" storage="20_airan.ks"]
[elsif exp="f.hasAkehiruAffinity"]
    [jump target="*v3H20" storage="20_akehiru.ks"]
[else]
    [jump target="*endAllA3" storage="ending.ks"]
[endif]


; source:10372

; ---- v3WorldEntry ----
*v3WorldEntry
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_world_entry')"]
#
戻るはずの場所へ、扉が繋がらなかった。[p]
世紬が、そこにいた。[p]
; 通常では消滅済み。DAY15救済とプレイヤー側の隠し条件で契約成立の経過を外れた状態だけで再生。
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……君は、また、私の知らない方へ行くのね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君は、どうして」[p]
#
問いかけると、彼女は答えようとして、息を詰めた。[p]
俺は先に椅子を探した。[p]
; AとBに加えて別の救済を立てる世界枝。全員生存の具体的な回避範囲は固有救済条件で判定。
[jump target="*v2Y21" storage="21_setsu.ks"]


; source:10387

; ---- v320WorldRescue ----
*v320WorldRescue
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_20_world_rescue')"]
; 専用救済の本文案。DAY15の固有救済によって契約承認前の世紬へ届き、予測された経過から外れる。
; プレイヤー側の入力を古虫が知る展開にはしない。
#
世紬が、まだそこにいた。[p]
別れるための言葉を、口にしかけている。その前に、俺は、彼女が今どこへ行くのかを尋ねた。[p]
返事が変わった。[p]
全てを説明する時間はなかった。それでも、一人が消えれば全員が通れるという順番を、組み直す時間が出来た。[p]
; 固有救済の正式な術理は既定稿へ照合。以下は全員生存結果に必要な具体的な行動の配置案。
#
魚影を押さえる役を、交代出来る形へ変えた。[p]
綾瀬少尉が残ろうとした所へ、別の退路を示した。本人は一瞬、俺を見た。予定と違うのだと、その顔で分かった。[p]
最後の人を通した後、列車の先頭車両へ人を乗せるのを止めた。[p]
点検で得た記録と、百七の知る連盟の動きを、もう一度比べたからだった。[p]
; 発見の根拠は取得済みの点検記録・危険兆候・連盟情報へ。条件がない周回で予知として発言しない。
発車の直後、前方で爆発が起きた。[p]
空にしていた車両が、光の中へ消えた。[p]
誰も、喜べなかった。だが、名前を呼ぶと返事があった。[p]
連盟が現れ、東太が道を守る。全員で別の空間へ逃れ、人数を数えた。[p]
俺は、世紬の名前も呼んだ。[p]
返事が、遅れた。[p]
彼女は壁へ手をつき、俺たちが来るのを待っていた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……皆は」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いる。君も、いる」[p]
; ここで世界枝へ接続。通常版の死亡・消滅を通った人物を、後から生き返らせた処理にはしない。
[call storage="room.ks" target="*fishBattle"]
[jump target="*v2Y21" storage="21_setsu.ks"]

; source:10423

; ---- v420Ground ----
*v420Ground
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_ground')"]
#
一十の返事を、皆が聞いていた。[p]
自分だけが助かるはずだった、と俺が言えば、誰かの怒りを強めるかもしれない。[p]
それでも、話さなければ、別の形の嘘になる。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「何を、知ってた」[p]
#
東太は、一十と俺の両方を見た。[p]
俺も、問われる側にいた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"俺を助ける取引と、他の人へ向いた被害を分けて説明する",target:"*v420GroundHarm"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"印持ちを話した経緯から、知っていた範囲を説明する",target:"*v420GroundSecret"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11222

; ---- v420GroundHarm ----
*v420GroundHarm
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_ground_harm')"]
[eval exp="f.v4.d20.explanation='harm'"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一十は、俺を生かすつもりだったと言った。俺は、その取引を知らなかった」[p]
#
知らなかった、だけで終えなかった。[p]
俺が診療し、一十を助け、同じ拠点で過ごしたことも話した。助けたことと、犯行へ同意したことを、同じにしないでほしいと伝えた。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「あいつが、お前を助けたがった理由は」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「まだ全部は、聞いてない」[p]
#
分からない所を、俺の代わりに一十へ答えさせようとはしなかった。[p]
[jump target="*v420AskMotive"]


; source:11237

; ---- v420GroundSecret ----
*v420GroundSecret
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_ground_secret')"]
[eval exp="f.v4.d20.explanation='mark'"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今日、印持ちであることを話した。一十と、明昼に」[p]
#
明昼が、聞いた時の状況を補った。[p]
いつ、誰がいたか。話した内容がどこまでか。俺が省いた所を、確かめながら説明してくれる。[p]
#隊員
[eval exp="window.fiaLibrary.observe('隊員')"]
「それを、先に言えよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……そうだな」[p]
#
謝っただけで、全員が信用したわけではなかった。[p]
だが、俺が知らなかったことまで知っていたとされる前に、事実の範囲は示せた。[p]
[jump target="*v420AskMotive"]


; source:11253

; ---- v420AskMotive ----
*v420AskMotive
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_ask_motive')"]
#
一十へ、何を聞くかを考えた。[p]
俺を助けたいと思った理由を、聞きたい。その答えで、まだ彼女を知っていると思いたかった。[p]
一方で、今から来る危険の方を知るべきだとも思った。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「聞きたいことがあるなら、聞け」[p]
#
彼女は、俺の答えを待っていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"今も使える連絡経路と、次に渡る情報を聞く",target:"*v420AskContact"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"なぜ俺だけを助けようとしたのか、本人に聞く",target:"*v420AskReason"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11266

; ---- v420AskContact ----
*v420AskContact
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_ask_contact')"]
[eval exp="f.v4.d20.isContactKnown=true;f.v4.d20.hasMotiveHeard=false"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今も、向こうへ連絡出来るのか」[p]
#
一十が、使った経路を話した。[p]
俺には確かめられない部分がある。百七へ、分かる範囲だけを見てもらった。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこまで。先は、アタシも断言出来ない」[p]
#
一十へ、まだ渡していない情報があるかを聞いた。今の避難先を、外へ知らせないために必要なことを確かめる。[p]
俺を助けたかった理由は、後に残った。[p]
[jump target="*v420Custody"]


; source:11280

; ---- v420AskReason ----
*v420AskReason
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_ask_reason')"]
[eval exp="f.v4.d20.hasMotiveHeard=true"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どうして、俺だけならいいと思った」[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「いいとは、思っていなかった」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「でも、やった」[p]
#
一十が頷く。[p]
#ito
[eval exp="window.fiaLibrary.observe('ito')"]
「お前が生きていれば、後のことは……考えないようにした」[p]
#
聞きたかった答えではなかった。[p]
それでも、俺が勝手に想像していた彼女より、目の前の一十の言葉だった。[p]
後ろで、東太が、今も連絡が来るのかと尋ねた。[p]
その問いを、聞き逃していたことに気づいた。[p]
; 動機を先に聞いても生存枝を失わない。接触の確認を他者へ依頼する別経路を残す。
[jump target="*v420Custody"]


; source:11300

; ---- v420Custody ----
*v420Custody
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_custody')"]
#
話を続けている間に、一人が一十の方へ歩いた。[p]
武器を持っていた。[p]
東太が、まだ近づくなと言った。その声だけで、いつまでも止まるとは思えなかった。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「誰が、こいつを見てる」[p]
#
罪を決める話と、今、危険を増やさないための話が重なっていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"一十の武器を預かり、東太と明昼に見張りの交代を頼む",target:"*v420CustodyTeam"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"自分で傍に残り、一十の説明を続けて聞く",target:"*v420CustodySelf"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"隊へ身柄を預け、皆の判断に従うと伝える",target:"*v420CustodyHandover"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11314

; ---- v420CustodyTeam ----
*v420CustodyTeam
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_custody_team')"]
[eval exp="f.v4.d20.custody='team';f.v4.d20.hasWeaponsSecured=true"]
#
一十へ、武器を置くように言った。[p]
置いたことを、二人へ確認してもらう。俺が背を向けても、誰が見ているかが分かるようにした。[p]
#akehiru
[eval exp="window.fiaLibrary.observe('akehiru')"]
「一人で見張って、一人で治療して。そのうち分裂でもするつもりですか」[p]
#
明昼は俺にも言った。[p]
動機を聞いていた場合は、東太へ、連絡経路の確認も頼んだ。全部を俺だけで聞き終える必要はなかった。[p]
[eval exp="f.v4.d20.isContactKnown=true"]
[jump target="*v420Public"]


; source:11327

; ---- v420CustodySelf ----
*v420CustodySelf
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_custody_self')"]
[eval exp="f.v4.d20.custody='kiichi'"]
#
俺が残ると言うと、東太の顔が固くなった。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「お前が、ほかへ呼ばれたら？」[p]
#
返事をする前に、負傷者の方から声が来た。[p]
一十が、行けと言った。[p]
俺は立ちかけて、止まった。ここにいると約束したことと、目の前の必要を、同じ身体で果たせなかった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"交代を頼んでから、負傷者の方へ向かう",target:"*v420SelfDelegate"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"一十へ動くなと告げ、先に負傷者へ向かう",target:"*v420SelfLeave"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11341

; ---- v420SelfDelegate ----
*v420SelfDelegate
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_self_delegate')"]
[eval exp="f.v4.d20.custody='team';f.v4.d20.hasWeaponsSecured=true;f.v4.d20.isContactKnown=true"]
#
俺は明昼へ、ここで交代してほしいと頼んだ。[p]
頷くのを見届けてから、離れた。[p]
; 自分一人で担おうとした後でも、委ね直せる。最初の選択だけで不可逆に断罪しない。
[jump target="*v420Public"]


; source:11349

; ---- v420SelfLeave ----
*v420SelfLeave
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_self_leave')"]
[eval exp="f.v4.d20.custody='unassigned'"]
#
戻るつもりだった。[p]
だが、診るべき人は一人ではなかった。[p]
顔を上げると、一十の近くに人が集まっていた。誰が見張りで、誰が責めているのか、遠くからは分からない。[p]
俺は、戻るための時間を、急いで作らなければならなくなった。[p]
[jump target="*v420Public"]


; source:11358

; ---- v420CustodyHandover ----
*v420CustodyHandover
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_custody_handover')"]
[eval exp="f.v4.d20.custody='unit';f.v4.d20.hasPublicAuthority=true"]
#
自分だけでは決められないと伝えた。[p]
それは、本当だった。[p]
俺が殺したくないと思うことと、被害を受けた人々の望みを、同じ答えへ押し込めることも出来なかった。[p]
東太は、分かったと言った。[p]
俺が異議を出さないと聞いて、武器を握る手が変わった。[p]
[jump target="*v420Public"]


; source:11368

; ---- v420Public ----
*v420Public
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_public')"]
#
皆へ、ここまで確かめたことを伝えた。[p]
何を、先に言うか。[p]
それで結論が変わるなら、操っているようにも思えた。だが、何も話さずに引き渡すのも、一つの行動だった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"被害、根拠、本人の供述と、まだ分からない所を示す",target:"*v420PublicFacts"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"自分を助けようとした事情を中心に、処断を待つよう訴える",target:"*v420PublicPlea"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11377

; ---- v420PublicFacts ----
*v420PublicFacts
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_public_facts')"]
[eval exp="f.v4.d20.hasPublicRecord=true"]
#
被害を受けた人の名前を省かなかった。[p]
一十が俺を助けようとしたことも、罪を軽くする答えとしてではなく、行動の理由として話した。[p]
#隊員
[eval exp="window.fiaLibrary.observe('隊員')"]
「聞いた。それで、今後はどうする」[p]
#
同意ではなかった。[p]
それでも、次の話へ進めるだけの間が出来た。[p]
[jump target="*v420Decision"]


; source:11389

; ---- v420PublicPlea ----
*v420PublicPlea
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_public_plea')"]
[eval exp="f.v4.d20.hasPublicRecord=false"]
#
待ってほしいと、俺は言った。[p]
俺へ向けられた視線が、冷えた。[p]
#隊員
[eval exp="window.fiaLibrary.observe('隊員')"]
「お前だけ助かる取引だったから、待てるんだろ」[p]
#
違うと言いかけた。そう聞こえる理由は、あった。[p]
一十を見た。彼女も、俺の言葉を聞いていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"事情と被害を分け直し、根拠から説明し直す",target:"*v420PublicFacts"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"納得は得られないまま、次の行動を選ぶ",target:"*v420Decision"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11403

; ---- v420Decision ----
*v420Decision
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_decision')"]
#
一十が、俺の名を呼んだ。[p]
俺は、名前に答える前に、彼女の近くに誰がいるかを見た。[p]
武器は、誰が持っているか。接触先は、封じられたか。俺が行かなければ、誰が話を続けるか。[p]
もう、気持ちだけの話ではなくなっていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"示した事実をもとに、処断への異議を出さず身柄を渡す",target:"*v420Accept"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"処断を止め、一十を管理しながら次の接触先を追う",target:"*v420Stop"});
[endscript]
[ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11413

; ---- v420Accept ----
*v420Accept
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_accept')"]
[eval exp="f.v4.d20.disposition='accept'"]
#
俺は、異議を出さなかった。[p]
出せなかっただけなのか、受け入れたのか。自分の言葉で言わなければ、その違いさえ消えてしまう気がした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……この判断を、俺が知らなかったことにはしない」[p]
[jump target="*v3A20"]


; source:11422

; ---- v420Stop ----
*v420Stop
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_stop')"]
[if exp="f.v4.d20.custody==='team' && f.v4.d20.isContactKnown && f.v4.d20.hasPublicRecord"]
    #
    止めると言った時、明昼が一十の前へ動いた。[p]
    東太が、次の指示を皆へ出す。[p]
    俺の言葉が、実際に人を動かした。頼んでいたことを、彼らが引き受けてくれたからだった。[p]
    [jump target="*v3B20"]
[else]
    #
    止めると叫んだ。[p]
    だが、俺が来る前に、人が動いていた。[p]
    誰へ見張りを頼んだか。何を説明したか。考えた時には、もう、声を届ける間が狭くなっていた。[p]
    #tota
    [eval exp="window.fiaLibrary.observe('tota')"]
    「止めたいなら、こっちへ来い！　どうするか、今、言え！」[p]
    ; 修復の最終機会。既に処断が始まった段階を巻き戻すのではなく、まだ東太が止めている場面。
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"東太へ一十の保護を頼み、明昼と証拠・連絡経路を示す",target:"*v420LastOrganize"});
[endscript]
    [position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
    [iscript]
tf.storyBranchChoices.push({text:"理由を示さず、自分だけで群衆へ割って入る",target:"*v420LastAlone"});
[endscript]
    [ui_showChoices layout="encounter" storage="20.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]
[endif]


; source:11442

; ---- v420LastOrganize ----
*v420LastOrganize
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_last_organize')"]
[eval exp="f.v4.d20.custody='team';f.v4.d20.isContactKnown=true;f.v4.d20.hasPublicRecord=true;f.v4.d20.isRepaired=true"]
#
東太へ、名前を呼んで頼んだ。[p]
一十を見ていてほしい。その間に、俺と明昼が、分かったことを短く示す。[p]
百七にも、接触の確認を頼んだ。[p]
全員が同じ場所で怒鳴る状態から、仕事を分けた。[p]
時間は失った。信じてもらえたとも言えない。[p]
それでも、一十が今、殺されるのを止める所までは、届いた。[p]
[jump target="*v3B20"]


; source:11453

; ---- v420LastAlone ----
*v420LastAlone
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_20_last_alone')"]
[eval exp="f.v4.d20.disposition='failed_stop'"]
#
一十へ届く前に、俺が押し戻された。[p]
誰へ何を頼むかを言わず、俺が行けば止まると思った。[p]
東太が俺を支えた。[p]
その手を振りほどこうとした時、もう、向こうの声が変わっていた。[p]
; Aへ至る失敗差分。処断を望んだ場合と、本文の後悔・仲間の台詞を変える。
[jump target="*v3A20"]

; source:11470
