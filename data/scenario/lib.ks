; 設定・人物記録・チュートリアルの閲覧。入口: *start。終了: *awakeGameで中断したゲームへ復帰。*recordsはcall/return。
; 設定閲覧。ゲーム進行と数値ステータスの表示は行わない。
*start
[stop_keyconfig]
[iscript]
if (window.tempHideBattleCursor) window.tempHideBattleCursor();
window.fiaLibrary.initialize();
[endscript]
[loadcss file="./data/others/css/library_manager.css"]
[loadcss file="./data/others/css/day10_trial.css"]
[loadcss file="./data/others/css/crt_overlay.css"]
[uiDestroy]
[nolog]
[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]
[hidemenubutton]
[html]
<div id="library-viewer" class="device-container">
    <nav class="device-nav" aria-label="資料の種類">
        <button type="button" id="lib-nav-data" class="nav-item active">用語一覧</button>
        <button type="button" id="lib-nav-inv" class="nav-item">怪異要覧</button>
        <button type="button" id="lib-nav-characters" class="nav-item">人物記録</button>
        <button type="button" id="lib-nav-tutorials" class="nav-item">チュートリアル</button>
        <button type="button" id="lib-nav-radio" class="nav-item">險倬鹸</button>
    </nav>
    <section id="tab-data" class="device-content active">
        <div class="reference-list-panel">
            <div class="reference-tools">
                <input id="word-search" type="search" placeholder="用語を検索" aria-label="用語を検索">
                <select id="word-category" aria-label="用語の分類"><option value="">すべての分類</option></select>
            </div>
            <div class="col-list" id="word-list"></div>
        </div>
        <div class="col-detail" id="word-detail"><p>項目を選択してください。</p></div>
    </section>
    <section id="tab-inv" class="device-content">
        <div class="reference-list-panel">
            <div class="reference-tools">
                <input id="monster-search" type="search" placeholder="怪異を検索" aria-label="怪異を検索">
                <select id="monster-category" aria-label="怪異の分類"><option value="">すべての分類</option></select>
            </div>
            <div class="col-list" id="monster-list"></div>
        </div>
        <div class="col-detail" id="monster-detail"></div>
    </section>
    <section id="tab-characters" class="device-content">
        <div class="reference-list-panel"><div class="col-list" id="character-list"></div></div>
        <div class="col-detail" id="character-detail"><p>古虫が見聞きした範囲の人物情報です。</p></div>
    </section>
    <section id="tab-tutorials" class="device-content">
        <div class="reference-list-panel"><div class="col-list" id="tutorial-list"></div></div>
        <div class="col-detail" id="tutorial-detail"><p>読み返すチュートリアルを選択してください。</p></div>
    </section>
    <section id="tab-radio" class="device-content"><div class="chat-area"><p id="chat-text"></p></div></section>
    <footer class="device-footer">
        <button type="button" class="footer-btn" id="day10-lib-records">診療記録・カルテ</button>
        <button type="button" class="footer-btn" id="lib-close">ゲームへ戻る</button>
    </footer>
</div>
[endhtml]
[iscript]
window.fiaLibraryUI.restore();
window.fiaDay10Trial.restore();
[endscript]
[s]

*awakeGame
[iscript]
window.fiaLibraryUI.close();
if (window.restoreBattleCursor) window.restoreBattleCursor();
[endscript]
[start_keyconfig]
[endnolog]
[awakegame]
[s]

; 面談・DAY15からcallされる無料の記録閲覧と、端末の本文。
*draft323Chat
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('draft_323_chat')"]
; 323は光海の記憶データベースAI。世界の知識や豆知識を話す。
#kiichi
「もっと、役に立たない話はないのか」[p]
#323
「役に立たないことが条件なら、候補は多数あります」[p]
#kiichi
「それはそれで、困るな」[p]
; 通常会話の選択・抽選へ。パスワードそのものは未確定なので、この稿で数字を作らない。
; 数字だけが出る隠し応答は、プレイヤーだけが受け取る表示層。古虫の読み上げや反応を付けない。
; 入力場所もプレイヤー側。入力後、未観測の未来に関わる選択肢が開く。
; 世紬は原因を知らず、古虫が自分の知らない行動を取った事実を経験する。
[return]

; source:4600

*terminal323
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[call storage="lib.ks" target="*draft323Chat"]
[cm]
#
SYSTEM-323&gt; 入力しますか。[r]
[edit name="f.storyPassword" left="300" top="300" width="600" size="30"]
[link storage="lib.ks" target="*submitPassword"]入力する[endlink][r]
[link target="*afternoon" storage="daily.ks"]端末を閉じる[endlink][r]
[s]

*submitPassword
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[commit]
[eval exp="f.storyV6.hasPasswordAccepted=window.fiaStory.unlock(f.storyPassword); f.storyPassword='' "]
[cm]
#
[if exp="f.storyV6.hasPasswordAccepted"]
    SYSTEM-323&gt; 接続を受理しました。[p]
[else]
    SYSTEM-323&gt; 該当する接続はありません。[p]
[endif]
[jump target="*afternoon" storage="daily.ks"]

*records
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="30"]
[cm]
[eval exp="window.fiaStory.recordText()"]
#
[emb exp="f.storyV6.recordsText"][p]
[return]

