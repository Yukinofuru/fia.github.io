; 既存のエンジン・UI補助。入口と復帰先は各ラベルの処理を参照。
; ========================================================
; game_over.ks / 担当パート
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================


; ---- 初期設定 ----
; ========================================================
; ゲームオーバー画面
; ========================================================


; ---- start ----
*start
[if exp="window.fiaDay10Trial.active() && window.fiaDay10Trial.state().isExploring"]
    [jump storage="daily.ks" target="*failedExplore"]
[endif]
[fadeoutbgm time=500]
[wait time="500"]
[playbgm storage="noise.m4a"]
[bg2 storage="noise.png" time=100 wait=true left=0 top=0 width=1920 height=1800]
[bgmovie storage="game_over.mp4" loop="true"]
[uiDestroy]
[layopt layer=message1 visible=false]
[layopt layer=message0 visible=false]
[ptext layer="0" x="310" y="400" color="#ffffffff" width="1900" size="150" edge="#000000ff" text="You have mutated"]
[layopt layer=0 visible=true time="1000"]
[ptext layer="0" x="800" y="720" color="#ffffffff" width="1900" size="34" edge="#000000ff" text="Do you want to Undo?"]
[glink text="Yes" color="button_52" x="800" y="800" size="34" target="*undo" clickse="clickse.ogg"]
[glink text="No" color="button_52" x="950" y="800" size="34" target="*title" clickse="clickse.ogg"]
[s]


; ---- undo ----
*undo
[cm]
[stop_bgmovie]
[freeimage layer="0"]
[iscript]
TYRANO.kag.menu.displayLoad(function () {
    TYRANO.kag.ftag.nextOrderWithLabel('*start', 'game_over.ks');
});
[endscript]
[s]


; ---- title ----
*title
[cm]
[stop_bgmovie time="0"]
[uiDestroy]
[iscript]
// bg2の画像と継承された背景を、タイトルへ移動する前に両面から消す。
['fore', 'back'].forEach(function (page) {
    TYRANO.kag.layer.getLayer('base', page).empty().css('background-image', 'none');
});
[endscript]
[bg storage="black.png" time="0" wait="true"]
[jump storage="title.ks" target="*title"]
[s]
