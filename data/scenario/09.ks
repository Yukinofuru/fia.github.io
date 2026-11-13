; DAY09の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 09.ks / DAY09 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*day9"]
[s]

; ---- day9 ----
*day9
[cm]
[uiDestroy]
[start_keyconfig]
[fxMaskLight]
[endnolog]
;メッセージウィンドウの表示
[layopt layer=message0 visible=false]
[layopt layer=message1 visible=true]
[current layer="message1"]


[uiSetMenu]
;背景画像の表示

;場所名の表示
[stopbgm]
[playbgm storage="noise.m4a"]

[bg2 storage="black.png" time="500" wait="true" left="180" top="80" width="1440" height="900"]
#kiichi
暗闇の中、何かにぶつかった鈍い感触だけは確かだった。[l][r]
下を見れば、鳩尾から何かが突き出ていて、赤黒い血が服に広がっていくのが見えた。[p]

どうやら、俺は失敗したようだ。[p]

遠くで誰かが叫んでいる。[l][r]
一緒に探索へ来た皆には、申し訳ないことをした――。[p]

[bg2 storage="my_room_akehiru.png" time="0" wait="true" left="180" top="80" width="1440" height="900"]
[eval exp="f.currentPlaceName = '第十二基地　自室'"]
[uiSetPlace]
[akehiruJito]
[akehiruShow]
#akehiru
「……それで、どうしてここに？ ここ、僕のテントですよね」[p]

#kiichi
「こっちが聞きたいよ。探索に行っていたはずなのに、気づいたらここにいたんだ」[p]

#akehiru
「絶対、世紬の仕業ですね。はぁ、折角の休日が最悪ですよ。ベッドを奪われてますし」[p]

#kiichi
「なあ、俺と探索に行っていた連中はどうなったんだ？ 無事か！？」[p]

[akehiruSmile]
#akehiru
「君が治療を頑張ったおかげで物資もありますし、旧型IR-Mを使える人間も増えたので、全員生きてますよ」[p]

#kiichi
「……よかった」[p]

#akehiru
「外では、君は今、重傷患者として医務室で治療を受けて面会謝絶らしいですよ」[p]

#kiichi
「なら、みんなに無事を伝えないと……」[p]

[akehiruSurprise]
#akehiru
「やめといたほうがいいですよ。ここ数日の君のせいで、全員、過保護が暴走してるので」[p]

#kiichi
「過保護が暴走？」[p]

[akehiruJito]
#akehiru
「叱られながら延々と世話されます。ペットみたいに」[p]

#kiichi
「……嘘だろ？」[p]

[akehiruSmile]
#akehiru
「嘘だと思います？ 先ほど、山本さんと曙さんが血相を変えて医務室に向かってましたよ。あれは心配というより、本気でキレてましたね」[p]

#kiichi
「……しばらく、ここを借りていいか？」[p]

#akehiru
「お好きにどうぞ」[p]

明昼はため息をつき、近くの椅子に座って本を開いた。[p]

目を閉じても、人の部屋では流石に落ち着かず眠れそうにない。[l][r]
手持ち無沙汰だったので、明昼に声をかけた。[p]

#kiichi
[link target="*day9_1"]【１】「明昼、そういえば仕事はどうした？」[endlink][r]
[link target="*day9_2"]【２】「俺を助けてくれたのは初明か？」[endlink][r]
[link target="*day9_3"]【３】「何読んでるんだ？」[endlink]
[s]

*day9_1
[cm]
#kiichi
「明昼、そういえば仕事はどうした？」[p]

#akehiru
「サボタージュ中です。やることはやったので、後は仕事終わりの他の連中が代わりにやってくれるかどうかですね」[p]

#kiichi
そういえば、初めて会った時も本を読んでいて仕事していなかった気がする。[p]

#kiichi
「……明昼は自分がサボってる間に、誰かがそれで死ぬとか考えたことはないのか？」[p]

[akehiruAngry]
#akehiru
「考えないですね。僕がどうこうしたところで、助けられる人数には限りがあります。仕方ないと割り切るだけですよ」[p]

#kiichi
「秀一と同じだ。アンタもそうやって、見捨てるんだな」[p]

[akehiruSmile]
#akehiru
「人一人が救える数にも限りがあるんですよ。だから、僕は助けたい人のために温存してるだけです」[p]
「それに、君みたいに無茶をして倒れたら、かえって周りを危険にさらすだけですから」[p]

#kiichi
「……」[p]
[jump target="*day9_4"]

*day9_2
[cm]
#kiichi
「俺を助けてくれたのは初明か？」[p]

#akehiru
「ええ、回復術で君を治療して、わざわざここまで連れてきましたよ。本当に、迷惑な奴です」[p]

#kiichi
「回復術が使えるなら、どうして彼女は皆を助けないんだ？」[p]

[akehiruAngry]
#akehiru
「色々と理由があるんですよ。そもそも、術は別に無尽蔵に使える便利な物じゃありませんから」[p]

#kiichi
「俺も回復術が使えたら、自分の傷も治して、もっと多くの人を助けられただろうか」[p]

[akehiruNormal]
#akehiru
「……」[p]
[akehiruSmile]
「まあ、精々頑張ってください」[p]
[jump target="*day9_4"]

*day9_3
[cm]
#kiichi
「何読んでるんだ？」[p]

#akehiru
「別に、ただの技術書ですよ」[p]

#kiichi
本の背表紙には『術理論体系』と書いてあった。[p]

#kiichi
「明昼も初明と同じ術使なのか？」[p]

[akehiruAngry]
#akehiru
「一応は」[p]

#kiichi
「何の術を使うんだ？」[p]

[akehiruSmile]
#akehiru
「さあ、企業秘密です」[p]

#kiichi
「この場で見せてくれないのか？」[p]

#akehiru
「面倒なので」[p]
[jump target="*day9_4"]

*day9_4
[cm]
#kiichi
連日の過労と怪我の反動が来たのか、明昼と話している内に段々と瞼が重くなってきた。[p]

#kiichi
「……悪い、なんだか、急に眠くなってきた」[p]

[akehiruSmile]
#akehiru
「そうですか。なら、最後に一つだけ忠告しておきます」[p]
「君は自分が思っている以上に、今、微妙な立場です」[p]
「だから、大事な人を守りたいなら、もっと自分を大切にした方がいいですよ」[p]
[akehiruNormal]
「僕が言えた立場じゃないですが」[p]

#kiichi
「それは……？」[p]

[akehiruSmile]
#akehiru
「まあ、いずれ分かります」[p]

#kiichi
もっと色々と聞きたかったが、抗いがたいほどの眠気に襲われ、そのまま深い眠りへと落ちていった。[p]

[chara_hide name="akehiru"]

[jump storage="daily.ks" target="*addDay"]
[s]
