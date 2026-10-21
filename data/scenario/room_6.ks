;-----------------------------------------------------------
; ROOM 6: （部屋名をここに記入）
; TODO: 背景画像・場所名・敵HP・怪異コードを設定してください
;-----------------------------------------------------------
*start
[cm]
;TODO: 背景画像を設定する（現在は黒背景）
[bg2 storage="adv_room/room6.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

;TODO: 場所名を設定する
[eval exp="f.currentPlaceName = '旧第十二基地　第6室'"]
[uiSetPlace]

;TODO: 敵HPを設定する
[eval exp="f.enemyHp = 30"]
[eval exp="f.inputAlpha = ''; f.inputNum = ''"]

;TODO: 正解の怪異コードを設定する
[iscript]
f.targetAlpha = "L";
f.targetNum   = "012";
[endscript]

@jump target=*ch
[s]

*ch
[cm]
#kiichi
;TODO: セリフを追加する
[link target=*battle]【1】戦闘[endlink][r]
[link target=*observe]【2】観察[endlink][r]
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
[if exp="!Number.isFinite(f.enemyHp)"]
    [iscript]
    if (window.endBattleMode) window.endBattleMode();
    [endscript]
    [jump storage="adv.ks" target="*adv_chooseRoom"]
[endif]
#kiichi
攻撃箇所を決めて攻撃しよう。[r]
;TODO: ボタンサイズ・位置を部屋ごとに調整する
[button name="normal_point" graphic="transparent.png" target=*attackNormal x="180" y="85" width="1440" height="850"]
[button name="weak_point" graphic="transparent.png" target=*attackWeak x=800 y=300 width=100 height=200]
[glink text="【1】戻る" color="glink_link_like" x="190" y="1100" size="34" target="*exitBattle"]
[s]

*exitBattle
[iscript]
if(window.endBattleMode) window.endBattleMode();
[endscript]
@jump target=*ch
[s]

*attackWeak
[if exp="!Number.isFinite(f.enemyHp)"]
    [iscript]
    if (window.endBattleMode) window.endBattleMode();
    [endscript]
    [jump storage="adv.ks" target="*adv_chooseRoom"]
[endif]
[cm]
[quake count=3 time=300 hmax=20]
#kiichi
「急所だ！」[p]
[eval exp="tf.damageVal = (f.phi * 2) + 5"]
[eval exp="f.enemyHp = f.enemyHp - tf.damageVal"]
@jump target=*battleCostCalc
[s]

*attackNormal
[if exp="!Number.isFinite(f.enemyHp)"]
    [iscript]
    if (window.endBattleMode) window.endBattleMode();
    [endscript]
    [jump storage="adv.ks" target="*adv_chooseRoom"]
[endif]
[cm]
[quake count=1 time=100 hmax=5]
#kiichi
「硬いな……」[p]
[eval exp="tf.damageVal = f.phi"]
[eval exp="f.enemyHp = f.enemyHp - tf.damageVal"]
@jump target=*battleCostCalc
[s]

*battleCostCalc
[eval exp="f.ins = f.ins - 1"]
[uiUpdateIns]

[if exp="f.ins <= 0"]
    [cm]
    [iscript]
    if(window.endBattleMode) window.endBattleMode();
    [endscript]
    #kiichi
    そして、視界が黒に覆われた。[p]
    @jump storage="game_over.ks"
[endif]

[if exp="f.enemyHp <= 0"]
    [cm]
    [iscript]
    if(window.endBattleMode) window.endBattleMode();
    [endscript]
    #kiichi
    なんとか倒せた。[l][r]
    早くIR-Mを回収してこの部屋を出よう。[p]
    [eval exp="f.cleanRoomCount = f.cleanRoomCount + 1"]
    [eval exp="f.phi = (f.phi || 0) + 1"]
    [eval exp="f.irmCount = (f.irmCount || 0) + 1"]
    [eval exp="f.advIrmGained = (f.advIrmGained || 0) + 1"]
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
[link target=*modeLook]【1】調査 [endlink][r]
[link target=*modeName]【2】名前照合 [endlink][r]
[link target=*ch]【3】戻る[endlink][r]
[s]

*modeLook
[cm]
#kiichi
[link target=*lookHead]【1】頭部を調査[endlink][r]
[link target=*lookBody]【2】胴体部を調査[endlink][r]
[link target=*observationMenu]【3】戻る[endlink]
[s]

*lookHead
[cm]
#kiichi
;TODO: 頭部の調査テキストを設定する
@jump target=*modeLook

*lookBody
[cm]
#kiichi
;TODO: 胴体の調査テキストと識別番号のヒントを設定する
@jump target=*modeLook
[s]

*modeName
[cm]
#kiichi
この怪異の名前を思い出そう。[p]
まず、分類コードは……[p]
[cm]
[link target=*setL]【1】Ｌ [endlink][r]
[link target=*setO]【2】Ｏ [endlink][r]
[link target=*setA]【3】Ａ [endlink][r]
[s]

*setL
[eval exp="f.inputAlpha = 'L'"]
@jump target=*inputNum
*setO
[eval exp="f.inputAlpha = 'O'"]
@jump target=*inputNum
*setA
[eval exp="f.inputAlpha = 'A'"]
@jump target=*inputNum
[s]

*inputNum
[cm]
#kiichi
現在の分類コードは「[emb exp="f.inputAlpha"]」だ。[l][r]
次に、識別番号は……[p]
[cm]
[link target=*set003]【1】003[endlink][r]
[link target=*set012]【2】012[endlink][r]
[link target=*set108]【3】108[endlink][r]
[s]

*set003
[eval exp="f.inputNum = '003'"]
@jump target=*judgeProcess
*set012
[eval exp="f.inputNum = '012'"]
@jump target=*judgeProcess
*set108
[eval exp="f.inputNum = '108'"]
@jump target=*judgeProcess

*judgeProcess
[if exp="!f.targetAlpha || !f.targetNum"]
    [jump storage="adv.ks" target="*adv_chooseRoom"]
[endif]
[if exp="!f.inputAlpha || !f.inputNum"]
    [jump target="*modeName"]
[endif]
[cm]
#kiichi
怪異コードは……『[emb exp="f.inputAlpha"]-[emb exp="f.inputNum"]』。[p]
これで、弱点がわかるはずだ。[p]

[if exp="f.inputAlpha == f.targetAlpha && f.inputNum == f.targetNum"]
    #kiichi
    「急所をついてくれ！」[p]
    みんなが戦っている内にIR-Mを回収しないと。[p]
    [eval exp="f.cleanRoomCount = f.cleanRoomCount + 1"]
    [eval exp="f.enemyHp = 0"]
    [eval exp="f.irmCount = (f.irmCount || 0) + 1"]
    [eval exp="f.advIrmGained = (f.advIrmGained || 0) + 1"]
    @jump storage="adv.ks" target="*adv_chooseRoom"
    [s]
[else]
    [quake count=2 time=200 hmax=10]
    #kiichi
    「違う……！ しまった！逃げるぞ！」[p]
    [eval exp="f.ins = f.ins - 2"]
    [uiUpdateIns]
    @jump target=*judgeProcessEnd
[endif]
[s]

*judgeProcessEnd
[cm]
[if exp="f.ins < 1"]
    @jump storage="game_over.ks"
[endif]
@jump storage="adv.ks" target="*adv_chooseRoom"
[s]