; ========================================================
; 探索パート（ミニゲーム）
; ========================================================
*start
[fadeoutbgm time=500]
;メッセージウィンドウの表示
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[uiDestroy]
[cm]
[playbgm storage="adv.m4a"]
[loadcss file="data/others/css/battle.css"]
[loadjs storage="battle_system.js"]

[iscript]
f.roomNum = 0;
f.cleanRoomCount = 0;
[endscript]

[uiSetMenu]
;背景画像の表示
[bg2 storage="bg_room/room_a.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="sf.currentPlaceName = '旧第12基地廊下'"]
[uiSetPlace]

#kiichi
探索に行こうか。[r]
[link target=*adv_chooseRoom]【1】先に進む[endlink][r]
[link storage=daily.ks target=*start]【2】戻る[endlink][r]
[s]

;-----------------------------------------------------------
; ルーム選択・進行管理
;-----------------------------------------------------------
*adv_chooseRoom
[cm]
[uiDestroy]
[uiSetMenu]
;背景画像の表示
[bg2 storage="bg_room/room_a.png" time=1500 wait=true left=180 top=80 width=1440 height=900]

;場所名の表示
[eval exp="sf.currentPlaceName = '旧第12基地廊下'"]
[uiSetPlace]

; 1部屋クリアしたらリザルトへ
[if exp="f.roomNum >= 3"]
    @jump target=*result
[endif]
; 部屋数のカウントアップ
[eval exp="f.roomNum = f.roomNum + 1"]

; 部屋の抽選（1〜20）
[sysGetRand min="1" max="6"]

; 飛ぶ先のファイル名を動的に作成（例：room_1.ks）
[iscript]
tf.target_file = "room_" + tf.randNum + ".ks";
[endscript]

; 指定したファイル名の *start ラベルへ飛ぶ
[jump storage="&tf.target_file" target="*start"]
[s]

;-----------------------------------------------------------
; リザルト画面
;-----------------------------------------------------------
*result
[cm]
[bg2 storage="bg_room/room_a.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[eval exp="sf.currentPlaceName = '旧第12基地廊下'"]
#kiichi
探索終了。[p]
正常化した部屋の数は、[emb exp="f.cleanRoomCount"]部屋だ。[p]

[if exp="f.irmCount >= 2"]
    物資を多く獲得した！[p]
[elsif exp="f.irmCount == 1"]
    最低限の物資を獲得した。[p]
[else]
    何も得られなかった……。[p]
[endif]

@jump storage="daily.ks" target="*night"
[s]