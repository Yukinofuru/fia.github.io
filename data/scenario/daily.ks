; ========================================================
; 日常パート
; ========================================================

*start
[fadeoutbgm time="500"]
[cm]
[uiDestroy]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[fxMaskLight]
[font color="#66cdaa"]
[uiUpdateParam]

[loadcss file="./data/others/css/daily_button.css"]
[uiSetMenu]
;背景画像の表示
[bg2 storage="my_room.png" time=1500 wait=true left=180 top=80 width=1440 height=900]
[playbgm storage="daily.m4a"]

;場所名の表示
[eval exp="sf.currentPlaceName = '拠点'"]
[uiSetPlace]
[eval exp="sf.ins = 8"]
[uiUpdateIns]
[jump target="*menu"]

*menu
[cm]
#古虫 紀一
今日は何をしよう。
; coop_button:
[button name="daily-btn" graphic="coop_button.png" x=235 y=489 width=174 height=244.5 target="*confirmCoop"]
; study_button:
[button name="daily-btn" graphic="study_button.png" x=182 y=691 width=150 height=195 target="*confirmStudy"]
; adv_button:
[button name="daily-btn" graphic="adv_button.png" x=464 y=580 width=108 height=154.5 target="*confirmAdv"]
; care_button:
[button name="daily-btn" graphic="care_button.png" x=590 y=609 width=318 height=277.5 target="*confirmCare"]
[s]

*confirmStudy
[cm]
#古虫 紀一
勉強しようか？[l][r]
[link target="*doStudy"]【１】はい[endlink][r]
[link target="*menu"]【２】いいえ[endlink][r]
[s]

*doStudy
[cm]
[eval exp="sf.survivorCount = (sf.survivorCount || 0) - 3"]
[eval exp="sf.kno = (sf.kno || 0) + 1"]
KNOパラメータが１上昇した。[l][r]
[jump target="*night"]
[s]

*confirmAdv
[cm]
#古虫 紀一
探索に行こうか？[l][r]
[link target="*doAdv"]【１】はい[endlink][r]
[link target="*menu"]【２】いいえ[endlink][r]
[s]

*doAdv
[cm]
[eval exp="sf.survivorCount = (sf.survivorCount || 0) - 3"]
[jump storage="adv.ks"]
[s]

*confirmCare
[cm]
#古虫 紀一
怪我人の治療に行こうか？[l][r]
[if exp="sf.irmCount > 0"]
[link target="*doCare"]【１】はい[endlink][r]
[else]
【１】はい（治療薬が不足している）[r]
[endif]
[link target="*menu"]【２】いいえ[endlink][r]
[s]

*doCare
[cm]
[eval exp="sf.irmCount = (sf.irmCount || 0) - 1"]
[jump storage="care.ks" target="*startBgm"]
[s]

*confirmCoop
[cm]
#古虫 紀一
誰かに会いに行こうか？[l][r]
[link target="*doCoop"]【１】はい[endlink][r]
[link target="*menu"]【２】いいえ[endlink][r]
[s]

*doCoop
[cm]
[eval exp="sf.survivorCount = (sf.survivorCount || 0) - 3"]
[jump storage="coop.ks"]
[s]

;-----------------------------------------------------------
;夜パート
;-----------------------------------------------------------
*night
[fadeoutbgm time="500"]
[cm]
[uiDestroy]
[playbgm storage="daily.m4a"]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[fxMaskLight]
[font color="#66cdaa"]
[uiUpdateParam]
[uiSetMenu]
[bg2 storage="my_room.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[filter layer="base" brightness="45" contrast="120"]
[eval exp="sf.currentPlaceName = '拠点'"]
[uiSetPlace]
#古虫 紀一
診療に行くか？[l][r]
[link target="*goMedic"]【１】はい[endlink][r]
[link target="*goSleep"]【２】いいえ[endlink][r]
[s]

*goMedic
[cm]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[free_filter layer="base"]
[jump storage="medic.ks"]
[s]

*goSleep
[cm]
[fadeoutbgm time=500]
[bg2 storage="black.png" time=1000 wait=true left=180 top=80 width=1440 height=900]
[free_filter layer="base"]
#古虫 紀一
一日が終了した。[p]
[jump target="*addDay"]
[s]

;-----------------------------------------------------------
;日付表示
;-----------------------------------------------------------
*addDay
[eval exp="sf.dayCount = (sf.dayCount || 0) + 1"]
[fadeoutbgm time="500"]
[cm]
[uiDestroy]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
[current layer="message1"]
[fxMaskLight]
[font color="#66cdaa"]
[uiUpdateParam]
[uiSetMenu]

[iscript]
var BASE_DAY_OF_YEAR = 188; // 基準日: 07/07 (通算188日目)
var monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

// 指定した日数オフセットから日付文字列(mm, dd)を計算する関数
function calcDateString(offset) {
    var remaining = BASE_DAY_OF_YEAR + offset;
    var m = 0;
    for (var i = 0; i < 12; i++) {
        if (remaining <= monthDays[i]) { m = i + 1; break; }
        remaining -= monthDays[i];
    }
    var d = remaining;
    return {
        month: (m < 10 ? '0' + m : '' + m),
        day:   (d < 10 ? '0' + d : '' + d)
    };
}

var oldOffset = sf.dayCount - 2;
var newOffset = sf.dayCount - 1;

var oldDate = calcDateString(oldOffset);
var newDate = calcDateString(newOffset);

// 月はそのまま表示し続けるため、最初から表示用の変数に入れておく
sf.displayMonth = newDate.month;
sf.oldDay       = oldDate.day;
sf.displayDay   = newDate.day;
[endscript]

[uiDestroy]
[chara_ptext name=""] 
[bg2 storage="date.png" time=500 wait=false left=180 top=80 width=1440 height=900]
@layopt layer=message1 visible=true
[current layer="message1"]
[backlay]
; --- 1. 月（固定）と「古い日（前日）」を表示する ---
[ptext name="date_month" layer="message1" page="back" text="&sf.displayMonth" x="357" y="169" size="410" color="#ffffffff"]
[ptext name="old_day"    layer="message1" page="back" text="&sf.oldDay"       x="832" y="169" size="410" color="#ffffffff"]

[trans layer="message1" time=500]
[wt]

; トランジションで停止したパルスメータのアニメーションを再起動する
[xanim name="pulse_line" keyframe="yoko" count="infinite" time="2500" direction="normal" easing="linear"]

; 少し間を置く
[wait time=1000]

; --- 2. 日だけをゆっくりパタッと倒す（時間: 600ミリ秒） ---
[kanim name="old_day" keyframe="flip_out" time=600]
[wait time=600]

; 見えなくなった前日の日を削除
[free name="old_day" layer="message1"]

; --- 3. 新しい日をセット ---
[ptext name="date_day" layer="message1" text="&sf.displayDay" x="832" y="169" size="410" color="#ffffffff"]

; --- 4. 新しい日をゆっくり起こす（時間: 600ミリ秒） ---
[kanim name="date_day" keyframe="flip_in" time=600]
[wait time=600]

; 変更後の日付を眺める時間
[wait time=2000]

; --- 5. 背景と一緒に月と日をフェードアウトして消す ---
[bg2 storage="black.png" time=500 left=180 top=80 width=1440 height=900 wait="false"]

; 月と日を同時にフェードアウト
[anim name="date_month" opacity="0" time=500]
[anim name="date_day"   opacity="0" time=500]
[wait time=500]

; 透明になったテキストをシステム上から削除
[free name="date_month" layer="message1"]
[free name="date_day"   layer="message1"]
SYSTEM-323>　記録を再生します。[p]
[if exp="sf.dayCount == 1"]
    [jump storage="0_1.ks"]
[elsif exp="sf.dayCount == 5"]
    [jump storage="game_over.ks"]
[elsif exp="sf.dayCount == 6"]
    [jump storage="0_5.ks"]
[elsif exp="sf.dayCount == 10"]
    [jump storage="0_10.ks"]
[else]
    [jump target="*start"]
[endif]
[s]