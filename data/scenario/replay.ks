; 既存のエンジン・UI補助。入口と復帰先は各ラベルの処理を参照。
; ========================================================
; replay.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- 初期設定 ----
;=========================================
; 回想モード　画面作成
;=========================================

; ---- start ----
*start
[layopt layer=message0 visible=false]
[clearfix]
[hidemenubutton]
[cm]


[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image name="label_replay" layer=1 left=0 top=0 storage="config/label_recollection.png" folder="image" ]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]




; ---- replaypage ----
*replaypage
[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1150 y=40 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]


; ---- replayview ----
*replayview

[jump target=&tf.target_page]


; ---- page_0 ----
*page_0
[replay_image_button name="replay1" graphic="cat.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=130 width=160 height=140 folder="bgimage" ]
[replay_image_button name="replay2" graphic="toile.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=260 y=130 width=160 height=140 folder="bgimage" ]


[jump target ="*common"]



; ---- common ----
*common

[s]


; ---- backtitle ----
*backtitle
[cm]
[freeimage layer=1]

[iscript]
tf.system.flag_replay = false;
[endscript]

[jump storage="title.ks" target="*start"]


; ---- nextpage ----
*nextpage
[emb exp="tf.page++;"]
[jump target="*replaypage"]



; ---- backpage ----
*backpage
[emb exp="tf.page--;"]
[jump target="*replaypage"]


; ---- clickcg ----
*clickcg
[cm]

[iscript]
    tf.system.flag_replay = true;
[endscript]

[free layer=1 name="label_replay"]

[jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target]
[s]


; ---- no_image ----
*no_image

[jump  target="*replaypage"]


