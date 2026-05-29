;-----------------------------------------------------------
; ROOM 3: （部屋名をここに記入）
; TODO: 背景画像・場所名・敵HP・怪異コードを設定してください
;-----------------------------------------------------------
*start
[cm]
;TODO: 背景画像を設定する（現在は黒背景）
[bg2 storage="adv_room/room3.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

;TODO: 場所名を設定する
[eval exp="sf.currentPlaceName = '部屋3'"]
[uiSetPlace]

;TODO: 敵HPを設定する
[eval exp="tf.enemyHp = 30"]

;TODO: 正解の怪異コードを設定する
[iscript]
tf.targetAlpha = "L";
tf.targetNum   = "012";
[endscript]

@jump target=*ch
[s]

*ch
[cm]
#kiichi
;TODO: セリフを追加する
（TODO: セリフ）[r]
[link target=*battle]【１】戦闘[endlink][r]
[link target=*observe]【２】観察[endlink][r]
[s]

;-----------------------------------------------------------
; 戦闘
;-----------------------------------------------------------
*battle
[cm]
[iscript]
if(window.startBattleMode) window.startBattleMode();
[endscript]
#kiichi
戦闘開始だ。[r]
@jump target=*battleLoop
[s]

*battleLoop
#kiichi
攻撃箇所を決めて攻撃しよう。[r]
;TODO: ボタンサイズ・位置を部屋ごとに調整する
[button name="normal_point" graphic="transparent.png" target=*attackNormal x="180" y="85" width="1440" height="850"]
[button name="weak_point" graphic="transparent.png" target=*attackWeak x=800 y=300 width=100 height=200]
[glink text="【１】戻る" color="glink_link_like" x="190" y="1100" size="34" target="*exitBattle"]
[s]

*exitBattle
[iscript]
if(window.endBattleMode) window.endBattleMode();
[endscript]
@jump target=*ch
[s]

*attackWeak
[cm]
[quake count=3 time=300 hmax=20]
#kiichi
「急所だ！」[p]
[eval exp="tf.damageVal = (sf.phi * 2) + 5"]
[eval exp="tf.enemyHp = tf.enemyHp - tf.damageVal"]
@jump target=*battleCostCalc
[s]

*attackNormal
[cm]
[quake count=1 time=100 hmax=5]
#kiichi
「硬いな……」[p]
[eval exp="tf.damageVal = sf.phi"]
[eval exp="tf.enemyHp = tf.enemyHp - tf.damageVal"]
@jump target=*battleCostCalc
[s]

*battleCostCalc
[eval exp="sf.ins = sf.ins - 1"]
[uiUpdateIns]

[if exp="sf.ins <= 0"]
    [cm]
    [iscript]
    if(window.endBattleMode) window.endBattleMode();
    [endscript]
    #kiichi
    そして、視界が黒に覆われた。[p]
    @jump storage="game_over.ks"
[endif]

[if exp="tf.enemyHp <= 0"]
    [cm]
    [iscript]
    if(window.endBattleMode) window.endBattleMode();
    [endscript]
    #kiichi
    なんとか倒せた。[l][r]
    早くIR-Mを回収してこの部屋を出よう。[p]
    [eval exp="f.cleanRoomCount = f.cleanRoomCount + 1"]
    [eval exp="sf.phi = (sf.phi || 0) + 1"]
    [eval exp="sf.irmCount = (sf.irmCount || 0) + 1"]
    @jump storage="adv.ks" target="*adv_chooseRoom"
[endif]

; ループに戻る
@jump target=*battleLoop
[s]

;-----------------------------------------------------------
; 観察
;-----------------------------------------------------------
*observe
[cm]
#kiichi
怪異名を特定できれば、何とか抑え込めるかもしれない。[p]
@jump target=*observationMenu
[s]

*observationMenu
[cm]
#kiichi
[link target=*modeLook]【１】調査 [endlink][r]
[link target=*modeName]【２】名前照合 [endlink][r]
[link target=*ch]【３】戻る[endlink][r]
[s]

*modeLook
[cm]
#kiichi
[link target=*lookHead]【１】頭部を調査[endlink][r]
[link target=*lookBody]【２】胴体部を調査[endlink][r]
[link target=*observationMenu]【３】戻る[endlink]
[s]

*lookHead
[cm]
#kiichi
;TODO: 頭部の調査テキストを設定する
（TODO: 頭部の観察テキスト）[p]
@jump target=*modeLook

*lookBody
[cm]
#kiichi
;TODO: 胴体の調査テキストと識別番号のヒントを設定する
（TODO: 胴体の観察テキスト）[p]
@jump target=*modeLook
[s]

*modeName
[cm]
#kiichi
この怪異の名前を思い出そう。[p]
まず、分類コードは……[p]
[cm]
[link target=*setL]【１】Ｌ [endlink][r]
[link target=*setO]【２】Ｏ [endlink][r]
[link target=*setA]【３】Ａ [endlink][r]
[s]

*setL
[eval exp="tf.inputAlpha = 'L'"]
@jump target=*inputNum
*setO
[eval exp="tf.inputAlpha = 'O'"]
@jump target=*inputNum
*setA
[eval exp="tf.inputAlpha = 'A'"]
@jump target=*inputNum
[s]

*inputNum
[cm]
#kiichi
現在の分類コードは「[emb exp="tf.inputAlpha"]」だ。[l][r]
次に、識別番号は……[p]
[cm]
[link target=*set003]【１】003[endlink][r]
[link target=*set012]【２】012[endlink][r]
[link target=*set108]【３】108[endlink][r]
[s]

*set003
[eval exp="tf.inputNum = '003'"]
@jump target=*judgeProcess
*set012
[eval exp="tf.inputNum = '012'"]
@jump target=*judgeProcess
*set108
[eval exp="tf.inputNum = '108'"]
@jump target=*judgeProcess

*judgeProcess
[cm]
#kiichi
怪異コードは……『[emb exp="tf.inputAlpha"]-[emb exp="tf.inputNum"]』。[p]
これで、弱点がわかるはずだ。[p]

[if exp="tf.inputAlpha == tf.targetAlpha && tf.inputNum == tf.targetNum"]
    #kiichi
    「急所をついてくれ！」[p]
    みんなが戦っている内にIR-Mを回収しないと。[p]
    [eval exp="f.cleanRoomCount = f.cleanRoomCount + 1"]
    [eval exp="tf.enemyHp = 0"]
    [eval exp="sf.irmCount = (sf.irmCount || 0) + 1"]
    @jump storage="adv.ks" target="*adv_chooseRoom"
    [s]
[else]
    [quake count=2 time=200 hmax=10]
    #kiichi
    「違う……！ しまった！逃げるぞ！」[p]
    [eval exp="sf.ins = sf.ins - 2"]
    [uiUpdateIns]
    @jump target=*judgeProcessEnd
[endif]
[s]

*judgeProcessEnd
[cm]
[if exp="sf.ins < 1"]
    @jump storage="game_over.ks"
[endif]
@jump storage="adv.ks" target="*adv_chooseRoom"
[s]