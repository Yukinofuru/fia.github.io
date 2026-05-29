;===========================================================
; 診療パート：世紬
;===========================================================

;-----------------------------------------------------------
;入室時の反応（信頼度5段階）
;-----------------------------------------------------------
*enter_room
[cm]
;メニュー画面セット
[uiSetMenu]

[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
tf.trust = c.trust;
[endscript]

[setsuSmile]
[chara_show name="setsu" top=140 width=560 height=840]
#setsu
[if exp="tf.trust >= 80"]
    「{世紬：ここに親愛・信頼度極高（80以上）の入室会話}」[r]
    世紬は非常にリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 60"]
    「{世紬：ここに高信頼度（60〜79）の入室会話}」[r]
    世紬はリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 40"]
    「{世紬：ここに中信頼度（40〜59）の入室会話}」[r]
    世紬は淡々と入室してきた。[l][r]
[elsif exp="tf.trust >= 20"]
    「こんばんは、古虫君。元気にしてたかしら？」[p]
    #kiichi
    「まあまあだ」[p]
[else]
    「こんばんは、古虫君。調子はどう？」[p]
    #kiichi
    「まあまあだ」[p]
[endif]
[return]


;-----------------------------------------------------------
;カウンセリング（信頼度5段階に応じた会話 + 信頼度+10）
;-----------------------------------------------------------
*counseling
[cm]
#kiichi
「それで、最近の調子はどうだ？」[l][r]

#setsu
[if exp="tf.trust >= 80"]
    「{世紬：ここにカウンセリング会話（信頼度極高 80以上）}」[l][r]
[elsif exp="tf.trust >= 60"]
    「{世紬：ここにカウンセリング会話（信頼度高 60〜79）}」[l][r]
[elsif exp="tf.trust >= 40"]
    「{世紬：ここにカウンセリング会話（信頼度中 40〜59）}」[l][r]
[elsif exp="tf.trust >= 20"]
    「そうね、私は元気よ。君の方こそ、顔色悪いんじゃない？」[p]
    #kiichi
    「そうだろうか？」[p]
    #setsu
    「今日はカウンセリングを休んで、ベッドで寝ていてもいいわよ」[p]
    #kiichi
    「だが……俺は……」[p]
    #setsu
    「君が倒れたら、困るもの。ほら、布団に入って横になりなさい」[p]
    #kiichi
    「おい、ちょっと……」
    （初明に強引に布団に寝かされたが、自然と眠気が……）[p]

[else]
    #setsu
    「こっちもまあまあよ。君の方こそ、疲れてない？」[p]
    #kiichi
    「まあ、確かにそうだな」[p]
    #setsu
    「時間はあるから、私に話してみて」[p]
    #kiichi
    「そうだな、最近……」[p]
    （何故か自分が世紬に話していた）[p]
[endif]

#kiichi
（世紬と楽しく会話ができた）[p]

[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
c.trust = Math.min(100, c.trust + 10);
tf.trust = c.trust;
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(cg) cg.intimacy = c.trust;
[endscript]

[chara_hide name="setsu"]
[return]


;-----------------------------------------------------------
;診療（信頼度3段階目以上で許可、4段階・5段階で特殊会話）
;-----------------------------------------------------------
*checkup
[cm]
#kiichi
「少し診察させてくれないか?」[p]

[if exp="tf.trust >= 80"]
    ; --- 信頼度極高（80以上：第5段階） ---
    #setsu
    「{世紬：ここに診療・情報開示会話（信頼度極高 80以上）}」[l][r]
    
    #kiichi
    （特に変わりはないようだ）[l][r]
    [iscript]
    var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
    c.info = Math.min(100, (c.info || 0) + 20);
    tf.info = c.info;
    var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
    if(cg) cg.info = c.info;
    [endscript]
    情報度が上がった！（現在: [emb exp="tf.info"]）[l][r]
    
[elsif exp="tf.trust >= 60"]
    ; --- 信頼度高（60〜79：第4段階） ---
    #setsu
    「{世紬：ここに診療・情報開示会話（信頼度高 60〜79）}」[l][r]
    
    #kiichi
    （特に変わりはないようだ）[l][r]
    [iscript]
    var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
    c.info = Math.min(100, (c.info || 0) + 20);
    tf.info = c.info;
    var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
    if(cg) cg.info = c.info;
    [endscript]
    情報度が上がった！（現在: [emb exp="tf.info"]）[l][r]
    
[elsif exp="tf.trust >= 40"]
    ; --- 信頼度中（40〜59：第3段階） ---
    #setsu
    「特に変わりはないようだ」[l][r]
    [iscript]
    var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
    c.info = Math.min(100, (c.info || 0) + 20);
    tf.info = c.info;
    var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
    if(cg) cg.info = c.info;
    [endscript]
    情報度が上がった！（現在: [emb exp="tf.info"]）[l][r]
    
[else]
    ; --- 信頼度不足（40未満：第1〜2段階） ---
    #setsu
    「君にはまだ秘密ね」[p]
    #kiichi
    「そうか、わかった」[p]
    
    #kiichi
    （警戒されてしまい、診療を断られた……）[p]
[endif]
[chara_hide name="setsu"]
[return]


;-----------------------------------------------------------
; 尋問（投与選択肢説得フェーズ、適切な言い訳で成功・他失敗）
;-----------------------------------------------------------
*interrogate
[cm]
[eval exp="tf.correctChoice = 'B'"]

#kiichi
「世紬、健康維持の為にも薬を投与するがいいか？」[p]

#setsu
「構わないわ。でも、裏切り者か知りたいなら、そんな方法を使わなくてもいいのに。[l][r]
まあ、面白そうだから考えていた言い訳、聞かせて頂戴」[p]

#kiichi
「なんだ、もうわかってたのか。それなら、どう言い訳をしようか」[p]

[link target="*interrogate_choice_a"]【１】「君の命が危ないんだ。すぐに治療させてくれ」[endlink][r]
[link target="*interrogate_choice_b"]【２】「裏切り者を見つけるためだ。疑いを晴らすためにも協力してくれ」[endlink][r]
[link target="*interrogate_choice_c"]【３】「囚人兵なのに命令が聞けないのか！？」[endlink][r]
[s]

*interrogate_choice_a
[cm]
#setsu
「ふふ、情熱的で悪くは無いわね。でも、他の人だったら怒られていたと思うわ」[p]
#kiichi
「確かにそうかもしれない」[p]
#setsu
「痛いのは嫌だから、君の聴きたいこと話してあげる」[p]

[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });

if(c) {
    c.info = Math.min(100, (c.info || 0) + 40);
    tf.info = c.info;
}
if(cg) cg.info = tf.info;

// カルテ情報開示（尋問成功のフラグを立てる）
var static_char = window.MedicData.find(function(i){ return i.id === tf.targetId; });
if (static_char && static_char.interrogation_data) {
    if (static_char.interrogation_data.past) static_char.interrogation_data.past.unlocked = true;
    if (static_char.interrogation_data.secret) static_char.interrogation_data.secret.unlocked = true;
    if (static_char.interrogation_data.traitor) static_char.interrogation_data.traitor.unlocked = true;
}
[endscript]
[chara_hide name="setsu"]
[return]


*interrogate_choice_b
[cm]
#setsu
「正直で、人によっては協力してくれるかもしれないわね。[l][r]
でも、それで本当に裏切者がわかるかしら？」[p]
#kiichi
「確かにそうかもしれない」[p]
#setsu
「まあ、その素直さだけは買っておいてあげるわ。裏切者じゃないと示すためにも、[l][r]
君の聴きたいこと話してあげる」[p]

[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });

if(c) {
    c.info = Math.min(100, (c.info || 0) + 40);
    tf.info = c.info;
}
if(cg) cg.info = tf.info;

// カルテ情報開示（尋問成功のフラグを立てる）
var static_char = window.MedicData.find(function(i){ return i.id === tf.targetId; });
if (static_char && static_char.interrogation_data) {
    if (static_char.interrogation_data.past) static_char.interrogation_data.past.unlocked = true;
    if (static_char.interrogation_data.secret) static_char.interrogation_data.secret.unlocked = true;
    if (static_char.interrogation_data.traitor) static_char.interrogation_data.traitor.unlocked = true;
}
[endscript]
[chara_hide name="setsu"]
[return]


*interrogate_choice_c
[cm]
#setsu
「囚人兵相手にはそれで正解ね。でも、やるなら徹底的にやらないと意味が無いと思うけど？」[p]
#kiichi
「確かにそうかもしれない」[p]
#setsu
「言葉だけ厳しくしても、優しさは隠しきれてないわね。ふふ、君のやさしさに免じて、[l][r]
君の聴きたいこと話してあげる」[p]

[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });

if(c) {
    c.info = Math.min(100, (c.info || 0) + 40);
    tf.info = c.info;
}
if(cg) cg.info = tf.info;

// カルテ情報開示（尋問成功のフラグを立てる）
var static_char = window.MedicData.find(function(i){ return i.id === tf.targetId; });
if (static_char && static_char.interrogation_data) {
    if (static_char.interrogation_data.past) static_char.interrogation_data.past.unlocked = true;
    if (static_char.interrogation_data.secret) static_char.interrogation_data.secret.unlocked = true;
    if (static_char.interrogation_data.traitor) static_char.interrogation_data.traitor.unlocked = true;
}
[endscript]
[chara_hide name="setsu"]
[return]