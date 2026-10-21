; DAY10の物語終了後に流す予告映像。完成版はdata/video/devo_cm.mp4へ差し替える。
*start
[cm]
[uiDestroy]
[iscript]
// bg2の画像はfreeimage layer="base"では消えない。切替中の旧レイヤーと裏面も含めて消す。
$("#tyrano_base .base_fore, #tyrano_base .base_back").each(function () {
    $(this).find("img").remove();
    $(this).css({ "background-image": "none", "background-color": "#000000" });
});
[endscript]
[skipstop]
[autostop]
[stop_keyconfig]
[fadeoutbgm time="1000"]
[wait time="1000"]
[stopbgm]
[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]
[bg storage="black.png" time="500" wait="true"]
; この予告動画だけを2倍速にする。音声の高さは保つ。
[iscript]
(function () {
    const container = document.getElementById('tyrano_base');
    const observer = new MutationObserver(function () {
        const video = container.querySelector('video#bgmovie');
        if (!video || video.getAttribute('src') !== './data/video/devo_cm.mp4') return;
        video.preservesPitch = true;
        if ('webkitPreservesPitch' in video) video.webkitPreservesPitch = true;
        video.defaultPlaybackRate = 2;
        video.playbackRate = 2;
        observer.disconnect();
    });
    observer.observe(container, { childList: true, subtree: true });
})();
[endscript]
[movie storage="devo_cm.mp4" skip="true"]
[bg storage="black.png" time="1" wait="true"]
[layopt layer="message1" visible="true"]
[current layer="message1"]
[start_keyconfig]
[return]
