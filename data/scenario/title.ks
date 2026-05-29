; ========================================================
; タイトル
; ========================================================
*start
[cm]
[loadcss file="./data/others/css/snow.css" ]
[loadcss file="./data/others/css/scroll.css"]

@clearstack
@bg storage="warning.png" time=1000
@wait time=2500
@bg storage ="black.png" time=1000
@wait time = 200
@jump target=*scroll_text
[s]

*scroll_text
[cm]
[uiDestroy]
[playbgm storage="noise.m4a"]
@layopt layer="message0" visible=false
@layopt layer="message1" visible=false
[bg storage="sea_mono.png" time=1000 wait=true]

[html]
<div class="scroll-container" style="position: absolute; width: 1920px; height: 1200px; overflow: hidden; left: 0; top: 0; z-index: 100; pointer-events: none;">
    <div class="scroll-text" style="position: absolute; width: 100%; top: 1200px; text-align: center; color: #ffffff; font-size: 40px; line-height: 2.2; padding: 0 15%; box-sizing: border-box; text-shadow: 2px 2px 4px rgba(0,0,0,0.8);">
        「その日も、何でもない憂鬱な月曜日だった」<br>
        ――2502年12月25日 街頭インタビュー (新帝国新報 電子版より)<br><br><br>
        25年前、2502年の11月。<br>
        太平洋に突如として謎の黒い四角が出現した。<br>
        光を一切反射しない黒々としたその物体は、<br>
        一枚の紙のような薄さでありながら、<br>
        大きさは東京タワー位はあったらしい。<br><br>
        大昔の娯楽映画になぞらえて「モノリス」と名付けられたそれは、<br>
        直ぐに世界中の研究機関によって研究が行われた。<br>
        しかし、研究は直ぐに中断されることとなる。<br><br>
        『怪物』が出現したからだ。<br><br>
        何千年も前から、妖怪、クリーチャー、妖精、神、魔物、<br>
        様々な呼び名があるあちら側の存在である『怪物』。<br>
        こちらの物理法則が一切通用しない彼らが一斉に溢れだし、<br>
        瞬く間に多くの生命は死に絶え、<br>
        人類もまた滅びの一途を辿ることとなった。<br><br>
        そんな中、ある研究者が『怪物』に対抗する手段として<br>
        ソーラインという薬品を開発した。<br>
        端的に言えば、これを投与された人間は<br>
        『怪物』にこちらの物理法則を適応させ、<br>
        殺すことができるようになる代物だ。<br><br><br><br><br><br><br><br>
        これにより、残された人々は再び世界を取り戻し始める。<br>
        <div style="height: 70vh;"></div>
    </div>
</div>
[endhtml]
[clickable x="0" y="0" width="1920" height="1200" target="*title"]
[s]


*title
[cm]
[fadeoutbgm time="500"]
[uiDestroy]
@bg storage ="white.png" time=1000
[html top=100 left=-960]
<div class="snows">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div> 
[endhtml]
[playbgm storage="main.m4a"]
[image name="title_name" storage="title_name.png" layer="2" x="0" y="0"]
@layopt layer="2" visible=true

[button x=776 y=730 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
[button x=768 y=820 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
;[button x=135 y=910 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
[button x=804 y=910 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
[button x=820 y=1000 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="0_0.ks"
