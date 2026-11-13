; DAY22の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 22_setsu.ks / DAY22 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v2Y22"]
[s]

; ---- v2Y22 ----
*v2Y22
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=22"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v2_y22')"]
#
診る前に、どこまで触れてよいかを尋ねた。[p]
世紬は長く黙った。俺は道具を広げず、返事を待った。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「見たら、君は、自分のせいだと思うのでしょうね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そうかもしれない。でも、分からないまま決めたくない」[p]
#
彼女が頷く。[p]
背に残る潰瘍と、灰へ変わっていく身体。目を逸らしたくなったのは、恐ろしいからだけではなかった。[p]
もっと早く気づけたはずだ、と考えかけた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君と会う前からなの」[p]
[eval exp="window.fiaLibrary.learn('setsuCondition')"]
#
言葉が、先に俺を止めた。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君のせいだけにしたら、私がそれまで生きてきたことが、なくなってしまうわ」[p]
#
俺は手を止め、息を吐いた。[p]
今、楽に出来ることと、治せると分かっていることを分ける。治せない物を前にしても、何も出来ないわけではなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「痛かったら、止める。途中でも、言ってくれ」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「……ええ」[p]
#
彼女が、疲れたと言った。俺は道具を置き、休める姿勢を一緒に探した。[p]
[jump target="*v2Y22Evening"]


; source:10853

; ---- v2Y22Evening ----
*v2Y22Evening
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_y22_evening')"]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「会う前から、君を見ていたの。未来の中で」[p]
[eval exp="window.fiaLibrary.learn('setsuFuture')"]
#
手当てを終えた後で、世紬が話し始めた。[p]
俺の知らない俺を、彼女は知っていた。その言い方をされると、今までの時間を奪われるようにも思えた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今の俺が、違ったら？」[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「違うことも、あるわ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「嫌じゃ、ないのか」[p]
#
彼女は俺の顔を見た。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「知っていることと、目の前で言われることは、同じではなかった」[p]
#
容器の置き場所。用事のない訪問。俺が何を話すか迷う時間。実際に選んだ交流があれば、彼女はそこへ触れる。[p]
#setsu
[eval exp="window.fiaLibrary.observe('setsu')"]
「君には、初めてだったでしょう。だから、私も、その返事を待ちたかったの」[p]
#
俺は、彼女が知っていた未来に勝とうとは思わなかった。[p]
今、何を言うかを考えた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「明日も、会いに来たい」[p]
#
世紬が、ゆっくり頷いた。[p]
[jump target="*v2Y23" storage="23_setsu.ks"]


; source:10882
