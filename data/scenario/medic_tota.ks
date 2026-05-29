;===========================================================
; 診療パート：東太
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

[chara_ptext name="東太"]
#東太
[if exp="tf.trust >= 80"]
    「{東太：ここに親愛・信頼度極高（80以上）の入室会話}」[r]
    東太は非常にリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 60"]
    「{東太：ここに高信頼度（60〜79）の入室会話}」[r]
    東太はリラックスした様子で席についた。[l][r]
[elsif exp="tf.trust >= 40"]
    「{東太：ここに中信頼度（40〜59）の入室会話}」[r]
    東太は淡々と入室してきた。[l][r]
[elsif exp="tf.trust >= 20"]
    「{東太：ここに低信頼度（20〜39）の入室会話}」[r]
    東太は少し警戒した様子で入室してきた。[l][r]
[else]
    「{東太：ここに敵対・信頼度極低（20未満）の入室会話}」[r]
    東太は強い警戒心を露わにして入室してきた。[l][r]
[endif]
[return]


;-----------------------------------------------------------
;カウンセリング（信頼度5段階に応じた会話 + 信頼度+10）
;-----------------------------------------------------------
*counseling
[cm]
#kiichi
「最近の調子はどうだ？」[l][r]

#東太
[if exp="tf.trust >= 80"]
    「{東太：ここにカウンセリング会話（信頼度極高 80以上）}」[l][r]
[elsif exp="tf.trust >= 60"]
    「{東太：ここにカウンセリング会話（信頼度高 60〜79）}」[l][r]
[elsif exp="tf.trust >= 40"]
    「{東太：ここにカウンセリング会話（信頼度中 40〜59）}」[l][r]
[elsif exp="tf.trust >= 20"]
    「{東太：ここにカウンセリング会話（信頼度低 20〜39）}」[l][r]
[else]
    「{東太：ここにカウンセリング会話（信頼度極低 20未満）}」[l][r]
[endif]

#kiichi
（東太の話を聞いた……）[l][r]

[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
c.trust = Math.min(100, c.trust + 10);
tf.trust = c.trust;
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(cg) cg.intimacy = c.trust;
[endscript]

信頼度が上がった！（現在: [emb exp="tf.trust"]）[l][r]
[return]


;-----------------------------------------------------------
;診療（信頼度3段階目以上で許可、4段階・5段階で特殊会話）
;-----------------------------------------------------------
*checkup
[cm]
#kiichi
「少し身体を診させてもらう。……ついでに聞きたいことがあるんだが」[l][r]

[if exp="tf.trust >= 80"]
    ; --- 信頼度極高（80以上：第5段階） ---
    #東太
    「{東太：ここに診療・情報開示会話（信頼度極高 80以上）}」[l][r]
    
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
    #東太
    「{東太：ここに診療・情報開示会話（信頼度高 60〜79）}」[l][r]
    
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
    #東太
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
    #東太
    「診療を断られた」[l][r]
    
    #kiichi
    （警戒されてしまい、診療を断られた……）[l][r]
[endif]
[return]


;-----------------------------------------------------------
; 尋問（投与選択肢説得フェーズ、適切な言い訳で成功・他失敗）
;-----------------------------------------------------------
*interrogate
[cm]
[eval exp="tf.correctChoice = 'B'"]

#kiichi
「東太、この『特別な薬』を投与する。腕を出してくれ」[l][r]

#東太
「{東太：ここに不審がる、または拒絶する会話}」[l][r]

#kiichi
（なんとか相手を納得させなければ……。どの言い訳を使う？）[p]

[link target="*interrogate_choice_a"]【A】「{東太に対する言い訳パターンA}」[endlink][r]
[link target="*interrogate_choice_b"]【B】「{東太に対する言い訳パターンB}」[endlink][r]
[link target="*interrogate_choice_c"]【C】「{東太に対する言い訳パターンC}」[endlink][r]
[s]

*interrogate_choice_a
[cm]
[if exp="tf.correctChoice == 'A'"]
    [jump target="*interrogate_good"]
[else]
    [jump target="*interrogate_bad_a"]
[endif]

*interrogate_choice_b
[cm]
[if exp="tf.correctChoice == 'B'"]
    [jump target="*interrogate_good"]
[else]
    [jump target="*interrogate_bad_b"]
[endif]

*interrogate_choice_c
[cm]
[if exp="tf.correctChoice == 'C'"]
    [jump target="*interrogate_good"]
[else]
    [jump target="*interrogate_bad_c"]
[endif]

; --- 失敗パターンA ---
*interrogate_bad_a
#東太
「{東太：言い訳Aに対する失望・拒絶・怒りの会話}」[l][r]
[jump target="*interrogate_fail"]

; --- 失敗パターンB ---
*interrogate_bad_b
#東太
「{東太：言い訳Bに対する失望・拒絶・怒りの会話}」[l][r]
[jump target="*interrogate_fail"]

; --- 失敗パターンC ---
*interrogate_bad_c
#東太
「{東太：言い訳Cに対する失望・拒絶・怒りの会話}」[l][r]
[jump target="*interrogate_fail"]

; --- 失敗共通処理（ペナルティ：信頼度ゼロ） ---
*interrogate_fail
[iscript]
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
c.trust = 0; 
tf.trust = c.trust;
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(cg) cg.intimacy = 0;
[endscript]

#kiichi
東太は完全に心を閉ざしてしまった……。[p]
[return]

; --- 成功パターン（適切な言い訳） ---
*interrogate_good
#東太
「{東太：言い訳に納得する、あるいは痛いところを突かれて屈する会話}」[l][r]

#kiichi
（薬が回り、東太の意識が混濁し始めた……！）[l][r]

[iscript]
// 情報と引き換えに信頼度が大きく下がる（例：-30）
var c = sf.medicChars.find(function(i){ return i.id === tf.targetId; });
c.trust = Math.max(0, c.trust - 30); 
tf.trust = c.trust;
var cg = sf.chars.find(function(i){ return i.id === tf.targetId; });
if(cg) cg.intimacy = c.trust;

// 尋問成功で情報度も大幅に上昇（+40）
c.info = Math.min(100, (c.info || 0) + 40);
tf.info = c.info;
if(cg) cg.info = c.info;

// カルテ情報開示（尋問成功のフラグを立てる）
var static_char = window.MedicData.find(function(i){ return i.id === tf.targetId; });
if (static_char && static_char.interrogation_data) {
    if (static_char.interrogation_data.past) static_char.interrogation_data.past.unlocked = true;
    if (static_char.interrogation_data.secret) static_char.interrogation_data.secret.unlocked = true;
    if (static_char.interrogation_data.traitor) static_char.interrogation_data.traitor.unlocked = true;
}
[endscript]

#東太
「{東太：自白剤によって漏らしてしまう核心的な情報・本音の会話}」[l][r]

#kiichi
（決定的な証拠となる情報を聞き出し、カルテ情報を開示した！）[r]
（※情報度が大幅に上がった！ 現在: [emb exp="tf.info"]、ただし信頼度は低下した……現在: [emb exp="tf.trust"]）[l][r]
[return]

