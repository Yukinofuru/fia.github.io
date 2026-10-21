; ========================================================
; 裏コマンド
; ========================================================

*start
[nolog]
[uiDestroy]
[clearstack]
[stop_keyconfig]

;CSSの読み込み
[loadcss file="./data/others/css/crt_overlay.css"]

;文字色を緑に設定
[deffont color="0x66cdaa"]
[resetfont]

;走査線エフェクト
[fxMaskLight]

;メッセージウィンドウの設定
[current layer="message0"]
@layopt layer=message0 visible=true
@layopt layer=message1 visible=true

[resetdelay]

; 画面を開くタイミングで死亡率を計算（隠し要素：debug.ks内のみで完結）
[iscript]
(function(){
    var chars = f.chars;
    var days  = f.dayCount || 0;
    tf.isAlive = [];
    
    for (var i = 0; i < chars.length; i++) {
        var c = chars[i];
        
        if (c.id === 'momona' && (f.dayCount || 0) < 10) {
            tf.isAlive[i] = false;
            continue;
        }

        var alive = !(c.alive === false || c.alive === "false" || c.alive === 0 || c.alive === "0" || !c.alive);
        tf.isAlive[i] = alive;
        
        if (!alive) continue; // 死亡済みはスキップ
        
        var base = 100 - c.intimacy + (days * 2);
        var rand = Math.floor(Math.random() * 21) - 10; // -10〜+10
        var rate = base + rand;
        if (rate > 100) rate = 100;
        if (rate < 0)   rate = 0;
        c.deathRate = rate;
    }
    TYRANO.kag.stat.f.chars = chars;
})();
[endscript]

;-----------------------------------------------------------
; ヘッダー
;-----------------------------------------------------------
\DEBUG MONITOR -- ACCESS LEVEL: ROOT[r]
COMMAND: 0000-A2Z6[r]
--[r][r]

;-----------------------------------------------------------
; ゲーム進行変数
;-----------------------------------------------------------
[r]
GAME STATE[r]
--[r]
DAY COUNT         : [emb exp="f.dayCount"][r]
TREATED COUNT    : [emb exp="f.treatedCount"][r]
IRM COUNT         : [emb exp="f.irmCount"][r]
INS (Instability) : [emb exp="f.ins"][r]
ROOM NUM          : [emb exp="f.roomNum"][r]
CLEAN ROOM COUNT  : [emb exp="f.cleanRoomCount"][r]
CURRENT PLACE     : [emb exp="f.currentPlaceName || '(none)'"][r]
[l][r]
[cm]
;-----------------------------------------------------------
; スキル・リソース変数
;-----------------------------------------------------------
SKILL / RESOURCE[r]
--[r]
SKILL POINTS      : [emb exp="f.skillPoints"][r]
PHI (Physical)    : [emb exp="f.phi"][r]
KNO (Knowledge)   : [emb exp="f.kno"][r]
LUC (Luck)        : [emb exp="f.luc"][r]
SPI (Spirit)      : [emb exp="f.spi"][r]
f.ins             : [emb exp="f.ins"][r]
tf.randNum        : [emb exp="tf.randNum"][r]
tf.clickCount     : [emb exp="tf.clickCount"][r]
tf.currentLevel   : [emb exp="tf.currentLevel"][r]
[r]
--[l][r]
[cm]
;-----------------------------------------------------------
; キャラクター死亡率
;-----------------------------------------------------------
CHARACTER DEATH RATE[r]
--[r]
[if exp="tf.isAlive[0]"][emb exp="f.chars[0].name"] : death=100%[r][endif]
[if exp="tf.isAlive[1]"][emb exp="f.chars[1].name"] : death=[emb exp="f.chars[1].deathRate"]%[r][endif]
[if exp="tf.isAlive[2]"][emb exp="f.chars[2].name"] : death=[emb exp="f.chars[2].deathRate"]%[r][endif]
[if exp="tf.isAlive[3]"][emb exp="f.chars[3].name"] : death=[emb exp="f.chars[3].deathRate"]%[r][endif]
[if exp="tf.isAlive[4]"][emb exp="f.chars[4].name"] : death=[emb exp="f.chars[4].deathRate"]%[r][endif]
[if exp="tf.isAlive[5]"][emb exp="f.chars[5].name"] : death=[emb exp="f.chars[5].deathRate"]%[r][endif]
[if exp="tf.isAlive[6]"][emb exp="f.chars[6].name"] : death=[emb exp="f.chars[6].deathRate"]%[r][endif]
[if exp="tf.isAlive[7]"][emb exp="f.chars[7].name"] : death=[emb exp="f.chars[7].deathRate"]%[r][endif]
[r]
--[r][r]

;-----------------------------------------------------------
; 終了選択肢
;-----------------------------------------------------------
[link target="*close_debug"]Return to tips[endlink][r]
[s]


*close_debug
[cm]
[uiDestroy]
[deffont color="0xffffff"]
[resetfont]
[current layer="message0"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false

;隠しコマンドリスナーをリセットしてからtips画面へ戻る
[iscript]
if (window.checkSecretCommand) {
    document.removeEventListener('keydown', window.checkSecretCommand);
    window.checkSecretCommand = null;
}
window.secretCommandBuffer = "";
[endscript]

[jump storage="lib.ks" target="*start"]
