; DAY20の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 20_airan.ks / DAY20 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3A21"]
[s]

; ---- v3A21 ----
*v3A21
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_a21')"]
; 章開始時に一度だけ初期化。
; DAY20夜、診療室。
#
扉を叩く音がした。[p]
返事をしなければ、いなくなると思った。音は、もう一度した。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私です。入っても、いいですか」[p]
#
鍵はかけていなかった。俺がそう言うと、藍爛が扉を開けた。[p]
彼女は慰める言葉を、すぐには出さなかった。床に落ちた物を拾い、俺が座る所を空ける。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が治さなければ、一十は」[p]
#
言い終われなかった。[p]
藍爛が、俺を見る。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も昔、人を沢山、死なせたことがあるんです」[p]
[eval exp="window.fiaLibrary.learn('airanPast')"]
#
慰めとして聞ける言葉ではなかった。[p]
俺は初めて、自分の考えから顔を上げた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「だから、同じだと言いたいわけではありません。古虫さんが今、全部をご自分のせいにしたら……私も、何も話せなくなります」[p]
#
彼女の手が、膝の上で固くなる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……話してくれ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「今は、まだ、全部は言えません。でも、一緒にここを出たいです」[p]
#
俺が役に立つから必要だとは、言わなかった。[p]
出たい、と言った。その望みの中へ、俺を入れた。[p]
俺は道具から手を離した。彼女の話を聞くために、椅子へ座った。[p]
[jump target="*v3A20Group" storage="21_airan.ks"]


; source:10459
