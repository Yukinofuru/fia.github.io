;=========================================
; CG モード　画面作成
;=========================================

@layopt layer="message0" visible=false
@layopt layer="message1" visible=false

@clearfix
[hidemenubutton]
[loadcss file="./data/others/css/memori.css"]
[uiDestroy]
[cm]

[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image name="label_memori" layer="1" left="70" top="66" storage="config/label_memori.png" folder="image"]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[free name="memori-caption" layer="1"]
[layopt layer=1 visible=true]

[cm]
[button graphic="config/c_btn_back.png" enterimg="config/c_btn_back2.png" target="*backtitle" x="1200" y="20"]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
; 利用者のCGメモ13件。未閲覧の題名は伏せ、画像比率は16:10を基準とする。
[cg_image_button graphic="stil/stil01.png" no_graphic="noise.png" x=190 y=240 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil01.png']"]
    [ptext name="memori-caption" layer="1" x="190" y="430" width="300" text="01　新聞" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="190" y="430" width="300" text="01　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil02.png" no_graphic="noise.png" x=570 y=240 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil02.png']"]
    [ptext name="memori-caption" layer="1" x="570" y="430" width="300" text="02　一十　背後" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="570" y="430" width="300" text="02　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil03.png" no_graphic="noise.png" x=950 y=240 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil03.png']"]
    [ptext name="memori-caption" layer="1" x="950" y="430" width="300" text="03　瓦礫と手" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="950" y="430" width="300" text="03　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil04.png" no_graphic="noise.png" x=1330 y=240 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil04.png']"]
    [ptext name="memori-caption" layer="1" x="1330" y="430" width="300" text="04　傷だらけ一十" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="1330" y="430" width="300" text="04　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil05.png" no_graphic="noise.png" x=190 y=465 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil05.png']"]
    [ptext name="memori-caption" layer="1" x="190" y="655" width="300" text="05　大蛇の口" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="190" y="655" width="300" text="05　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil06.png" no_graphic="noise.png" x=570 y=465 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil06.png']"]
    [ptext name="memori-caption" layer="1" x="570" y="655" width="300" text="06　血だまり" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="570" y="655" width="300" text="06　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil07.png" no_graphic="noise.png" x=950 y=465 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil07.png']"]
    [ptext name="memori-caption" layer="1" x="950" y="655" width="300" text="07　ポッド内" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="950" y="655" width="300" text="07　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil08.png" no_graphic="noise.png" x=1330 y=465 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil08.png']"]
    [ptext name="memori-caption" layer="1" x="1330" y="655" width="300" text="08　秀一笑顔" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="1330" y="655" width="300" text="08　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil09.png" no_graphic="noise.png" x=190 y=690 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil09.png']"]
    [ptext name="memori-caption" layer="1" x="190" y="880" width="300" text="09　秀一最期" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="190" y="880" width="300" text="09　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil10.png" no_graphic="noise.png" x=570 y=690 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil10.png']"]
    [ptext name="memori-caption" layer="1" x="570" y="880" width="300" text="10　秀一の死、血のみ" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="570" y="880" width="300" text="10　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil11.png" no_graphic="noise.png" x=950 y=690 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil11.png']"]
    [ptext name="memori-caption" layer="1" x="950" y="880" width="300" text="11　魚影襲来" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="950" y="880" width="300" text="11　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil12.png" no_graphic="noise.png" x=1330 y=690 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil12.png']"]
    [ptext name="memori-caption" layer="1" x="1330" y="880" width="300" text="12　魚影" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="1330" y="880" width="300" text="12　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]
[cg_image_button graphic="stil/stil13.png" no_graphic="noise.png" x=190 y=915 width=300 height=187.5 folder="bgimage"]
[if exp="sf.cg_view['stil/stil13.png']"]
    [ptext name="memori-caption" layer="1" x="190" y="1105" width="300" text="13　眠る一十" face="Tegomin" size="24" color="0xffffff" align="center"]
[else]
    [ptext name="memori-caption" layer="1" x="190" y="1105" width="300" text="13　？？？" face="Tegomin" size="24" color="0xffffff" align="center"]
[endif]

@jump target="*common"

*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks target=*title

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]

[layopt layer=1 visible=false]

[eval exp="tf.cg_index=0"]

*cg_next_image

[image name="memori-full-image" layer="0" visible="true" storage=&tf.selected_cg_image[tf.cg_index] folder="bgimage" x="0" y="0" width="1920" height="1200"]
[l]
[free name="memori-full-image" layer="0"]
[bg storage="../../tyrano/images/system/bg_base.png" time=10]

[eval exp="tf.cg_index++"]

@jump target="cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



