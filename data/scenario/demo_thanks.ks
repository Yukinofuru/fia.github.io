; 予告映像の後に、利用者作成の謝礼画像を表示。クリックでタイトルへ戻る。
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
[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]
[bg storage="black.png" time="1" wait="true"]
[image name="demo-thanks-image" layer="2" folder="image" storage="end/demo_thanks.png" x="0" y="0" width="1920" height="1200"]
[layopt layer="2" visible="true"]
[loadcss file="./data/others/css/demo_thanks.css"]
[clickable x="0" y="0" width="1920" height="1200" target="*finish"]
[s]

*finish
[cm]
[freeimage layer="2"]
[iscript]
// bg2の画像はfreeimage layer="base"では消えない。切替中の旧レイヤーと裏面も含めて消す。
$("#tyrano_base .base_fore, #tyrano_base .base_back").each(function () {
    $(this).find("img").remove();
    $(this).css({ "background-image": "none", "background-color": "#000000" });
});
[endscript]
[start_keyconfig]
[jump storage="title.ks" target="*title"]
[s]
