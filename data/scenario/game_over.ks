*start
[bg2 storage="noise.png" time=100 wait=true left=0 top=0 width=1920 height=1800]
[bgmovie storage="game_over.mp4" loop="true"]
[destroy]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=false
[ptext layer="0" x="310" y="400" color="#ffffffff" width="1900" size="150" edge="#000000ff" text="You have mutated"]
@layopt layer=0 visible=true time="1000"
[ptext layer="0" x="800" y="720" color="#ffffffff" width="1900" size="34" edge="#000000ff" text="Do you want to Undo?"]
[glink text="Yes" color="button_52" x="800" y="800" size="34" target="*title" clickse="clickse.ogg"]
[glink text="No" color="button_52" x="950" y="800" size="34" clickse="clickse.ogg"]
[s]

*title
 [iscript]
	location.href="./index.html";
 [endscript]