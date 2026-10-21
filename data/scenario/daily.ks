; ========================================================
; 日常パート
; ========================================================

*start
[iscript]
if (window.endBattleMode) window.endBattleMode();
[endscript]
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
[eval exp="f.currentPlaceName = '拠点'"]
[uiSetPlace]
[uiUpdateIns]
[jump target="*menu"]

*menu
[cm]
#kiichi
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
#kiichi
「勉強しようか？」[r]
[link target="*doStudy"]【1】はい[endlink][r]
[link target="*menu"]【2】いいえ[endlink][r]
[s]

*doStudy
[cm]
[eval exp="f.kno = (f.kno || 0) + 1"]
KNOパラメータが１上昇した。[l][r]
[jump target="*night"]
[s]

*confirmAdv
[cm]
#kiichi
「探索に行こうか？」[r]
[link target="*doAdv"]【1】はい[endlink][r]
[link target="*menu"]【2】いいえ[endlink][r]
[s]

*doAdv
[cm]
[jump storage="adv.ks"]
[s]

*confirmCare
[cm]
#kiichi
「怪我人の治療に行こうか？」[r]
[if exp="f.irmCount > 0"]
[link target="*doCare"]【1】はい[endlink][r]
[else]
【1】はい（治療薬が不足している）[r]
[endif]
[link target="*menu"]【2】いいえ[endlink][r]
[s]

*doCare
[cm]
[eval exp="f.irmCount = (f.irmCount || 0) - 1"]
[jump storage="care.ks" target="*startBgm"]
[s]

*confirmCoop
[cm]
#kiichi
「誰かに会いに行こうか？」[r]
[link target="*doCoop"]【1】はい[endlink][r]
[link target="*menu"]【2】いいえ[endlink][r]
[s]

*doCoop
[cm]
[jump storage="coop.ks"]
[s]

;-----------------------------------------------------------
;夜パート
;-----------------------------------------------------------
*night
[iscript]
if (window.endBattleMode) window.endBattleMode();
[endscript]
[fadeoutbgm time="500"]
[wait time="500"]
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
[eval exp="f.currentPlaceName = '拠点'"]
[uiSetPlace]
#kiichi
「診療に行くか？」[r]
[link target="*goMedic"]【1】はい[endlink][r]
[link target="*goSleep"]【2】いいえ[endlink][r]
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
#kiichi
一日が終了した。[p]
[jump target="*addDay"]
[s]

;-----------------------------------------------------------
;日付表示
;-----------------------------------------------------------
*addDay
[eval exp="f.dayCount = (f.dayCount || 0) + 1"]
[eval exp="f.ins = 8"]
[uiUpdateIns]
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
    // 年を越えても、基準と同じ平年365日の暦で繰り返す。
    var remaining = ((BASE_DAY_OF_YEAR + offset - 1) % 365 + 365) % 365 + 1;
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

var oldOffset = f.dayCount - 2;
var newOffset = f.dayCount - 1;

var oldDate = calcDateString(oldOffset);
var newDate = calcDateString(newOffset);

// 前日と当日の月を別々に保持し、月替わりも正しく表示する
f.oldMonth     = oldDate.month;
f.displayMonth = newDate.month;
f.oldDay       = oldDate.day;
f.displayDay   = newDate.day;
[endscript]

[uiDestroy]
[chara_ptext name=""] 
[bg2 storage="date.png" time=500 wait=false left=180 top=80 width=1440 height=900]
@layopt layer=message1 visible=true
[current layer="message1"]
[backlay]
; --- 1. 前日の月と日を表示する ---
[ptext name="date_month" layer="message1" page="back" text="&f.oldMonth" x="357" y="169" size="410" color="#ffffffff"]
[ptext name="old_day"    layer="message1" page="back" text="&f.oldDay"       x="832" y="169" size="410" color="#ffffffff"]

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

; --- 3. 新しい月と日をセット ---
[free name="date_month" layer="message1"]
[ptext name="date_month" layer="message1" text="&f.displayMonth" x="357" y="169" size="410" color="#ffffffff"]
[ptext name="date_day" layer="message1" text="&f.displayDay" x="832" y="169" size="410" color="#ffffffff"]

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
[if exp="f.dayCount == 1"]
    [jump storage="0_1.ks"]
[elsif exp="f.dayCount == 2"]
    [jump storage="0_2.ks"]
[elsif exp="f.dayCount == 3"]
    [jump storage="0_3-0_9.ks" target=*day3]
[elsif exp="f.dayCount == 4"]
    [jump storage="0_3-0_9.ks" target=*day4]
[elsif exp="f.dayCount == 5"]
    [jump storage="0_3-0_9.ks" target=*day5]
[elsif exp="f.dayCount == 6"]
    [jump storage="0_3-0_9.ks" target=*day6]
[elsif exp="f.dayCount == 7"]
    [jump storage="0_3-0_9.ks" target=*day7]
[elsif exp="f.dayCount == 8"]
    [jump storage="0_3-0_9.ks"  target=*day8]
[elsif exp="f.dayCount == 9"]
    [jump storage="0_3-0_9.ks"  target=*day9]
[elsif exp="f.dayCount == 10"]
    [jump storage="0_10.ks"]
[else]
    [jump target="*start"]
[endif]
[s]
