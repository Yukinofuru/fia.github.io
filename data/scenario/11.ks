; DAY11の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 11.ks / DAY11 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v2Day11Room"]
[return]

; ---- v2Day11Room ----
*v2Day11Room
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day11_room')"]
#
水の容器が、手の届く所にあった。[p]
飲もうとして起き上がると、脇に置かれた椅子が鳴った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さん。ゆっくり、お願いします」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「患者は」[p]
#
言ってから、彼女の顔を見た。眠っていないのか、目元に疲れが残っていた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さんも、患者です」[p]
#
俺がいつも口にする言葉だった。自分へ向けられると、返事の仕方が分からなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「仕事は、どうなってる」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今は待てる人に、待っていただいています。道具の準備と、記録を分けるところまでは、私たちで」[p]
#
棚の上に、見慣れた薬と見慣れない筆跡が並んでいた。誰かが、分からない欄を空白にしている。[p]
俺がいないと何も動かないわけではなかった。安心するより先に、取り残されたような気がした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……ありがとう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい」[p]
#
彼女は、俺が水を飲むのを見届けてから、少しだけ肩を下ろした。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「入ってもいいかしら」[p]
#
世紬が扉から顔を出した。俺の腕を見て、椅子を一つ借りる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「その腕のこと、いつまでも黙ってはいられないわね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「『遺骨』か」[p]
#
袖をずらした。動く指。知らない感触の残る皮膚。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君が運んでいたものが、身体と結びついた。今も、完全に馴染んだとは言えないわ」[p]
[eval exp="window.fiaLibrary.learn('kiichiRelic')"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「外せるのか」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「元の荷物へ戻すようには、いかない」[p]
#
秀一に頼まれた物だ。届ける先より先に、俺の身体の一部になっていた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「未来の見え方から、君の行動が外れることがある。ただ、それで何でも出来るわけではないの」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分からないことは、分からないと教えてくれ」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「ええ。そうする」[p]
#
世紬は俺の腕へ勝手に触れなかった。藍爛も、俺が袖を戻すまで待った。[p]
自分の身体の話をする時、人に待ってもらうだけで、こんなに気持ちが違うのかと思った。[p]
[jump target="*v2Day11News"]


; source:2998

; ---- v2Day11News ----
*v2Day11News
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day11_news')"]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「生き返ったか、働き者」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「死んでない」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「知ってる。死なれたら怒る暇もない」[p]
#
富山の後ろから、綾瀬が入ってきた。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「地下鉄が見つかった」[p]
#
病室の空気が変わった。藍爛が顔を上げ、富山が、な、と俺に笑いかける。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「動くんですか」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「まだ分からない。設備を確認して、電力を確保する必要がある」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「患者も運べる？」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「そのための計画だ。寝台を使う者も、置いていく予定はない」[p]
#
頭の中に、移送する順番が並んだ。途中まで考えて、富山の視線に気づく。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「お前も乗るんだぞ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かってる」[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「なら、いい」[p]
#
分かっていなかったのだろう、と顔に書いてあった。[p]
綾瀬が日課の紙を机に置いた。午前の通常診療。午後の裁量時間。夜の面談。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「午後を空けても、間に合うんですか」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「空けるために、今まで君だけがしていた仕事を分ける。処置の判断は君に頼る。道具の用意まで、君一人でやる必要はない」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「教えていただきたいです。私たちが出来るところを」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「出来ないことを、出来るふりはしないでほしい」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。古虫さんも、お願いします」[p]
#
富山が声を立てずに笑った。俺は、返事を飲み込まないようにした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……分かった」[p]
[jump target="*v2Day11Request"]


; source:3046

; ---- v2Day11Request ----
*v2Day11Request
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_day11_request')"]
#
午後、綾瀬から呼ばれた。[p]
部屋には椅子が二つあり、綾瀬は俺が座るまで話を始めなかった。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「面談で、不安を抱えている者の話を聞いてほしい。それから、別の頼みがある」[p]
#
紙に書かれたのは、名前ではなかった。所在の不明な物資。共有したはずのない経路情報。どれも、裏切り者の顔はしていない。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「連盟へ情報が渡っている可能性がある」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「誰か、疑っているんですか」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「候補を決めれば、以後の発言が全てそう聞こえる。今は、何が起きたかを確かめたい」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「患者として聞いた話を、全部報告しろと？」[p]
#
綾瀬はすぐに頷かなかった。[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「事件に関係する事実を。身体の事情を、本人の罪へ置き換えるつもりはない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺にも、その区別がつくかは分かりません」[p]
#ayase
[eval exp="window.fiaLibrary.observe('ayase')"]
「分からないまま書いてくれ。君一人の判断で、結論にしなくていい」[p]
#
紙を受け取った。軽い紙だった。これから名前を書くことになると思うと、畳む手が止まった。[p]
診療室に戻ると、先ほどの容器が洗われていた。誰かに助けられた痕跡と、誰かを疑うための紙を、同じ机に置いた。[p]
; 体調確認を経て日常ハブへ。初日の自由行動の可否は演出上の経過に合わせる。
[return]


; source:3076
