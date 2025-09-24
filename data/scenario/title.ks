[cm]

@clearstack
@bg storage ="white.png" time=100
@wait time = 200

[loadcss file="./data/others/css/snow.css" ]

*start 
[html top=100 left=-960]
<div class="snows">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div> 
[endhtml]
[playbgm storage="main.mp3"]
[image name="title_name" storage="title_name.png" layer="2" x="0" y="0"]
@layopt layer="2" visible=true

[button x=800 y=730 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart" keyfocus="1"]
[button x=800 y=820 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" keyfocus="2"]
;[button x=135 y=910 graphic="title/button_cg.png" enterimg="title/button_cg2.png" storage="cg.ks" keyfocus="3"]
[button x=800 y=910 graphic="title/button_replay.png" enterimg="title/button_replay2.png" storage="replay.ks" keyfocus="4"]
[button x=800 y=1000 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" keyfocus="5"]

[s]

*gamestart
[stopbgm]
;一番最初のシナリオファイルへジャンプする
@jump storage="0_0.ks"



