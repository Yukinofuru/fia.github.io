; CONFIG：タグを順番に実行し、スライダー生成中にシナリオを進めない。
[mask time="200" wait="true"]
; 中断元のcall/macroはsleepgameのスナップショットに保持し、設定画面では分離する。
[clearstack]
[cm]
[layopt layer="message0" visible="false"]
[layopt layer="message1" visible="false"]
[uiDestroy]
[stop_keyconfig]
[free_layermode time="100" wait="true"]
[reset_camera time="100" wait="true"]
[hidemenubutton]
[loadcss file="./data/others/css/config_controls.css"]
[iscript]
window.fiaConfig.enter();
[endscript]
[bg storage="../image/config/bg_config.png" time="100"]
[button fix="true" graphic="config/c_btn_back.png" enterimg="config/c_btn_back2.png" target="*back" x="1200" y="20"]

*config_page
[slider name="bgmvol" var="tf.current_bgm_vol" target="*vol_bgm_change" x="590" y="370" width="800" height="5" min="0" max="100" step="1" border="5" border_color="#66cdaa" thumb_color="#66cdaa" thumb_radius="0" thumb_height="80" thumb_width="20" base_color="#000000" active_color="#66cdaa"]
[ptext name="bgmvoltext" layer="fix" x="1500" y="350" text="&tf.current_bgm_vol" size="32" face="Tegomin" color="#66cdaa"]
[slider name="sevol" var="tf.current_se_vol" target="*vol_se_change" x="590" y="460" width="800" height="5" min="0" max="100" step="1" border="5" border_color="#66cdaa" thumb_color="#66cdaa" thumb_radius="0" thumb_height="80" thumb_width="20" base_color="#000000" active_color="#66cdaa"]
[ptext name="sevoltext" layer="fix" x="1500" y="440" text="&tf.current_se_vol" size="32" face="Tegomin" color="#66cdaa"]
[slider name="ch" var="tf.set_ch_speed_alt" target="*ch_speed_change" x="590" y="615" width="800" height="5" min="0" max="100" step="1" border="5" border_color="#66cdaa" thumb_color="#66cdaa" thumb_radius="0" thumb_height="80" thumb_width="20" base_color="#000000" active_color="#66cdaa"]
[ptext name="chtext" layer="fix" x="1500" y="595" text="&tf.set_ch_speed_alt" size="32" face="Tegomin" color="#66cdaa"]
[slider name="auto" var="tf.set_auto_speed" target="*auto_speed_change" x="590" y="710" width="800" height="5" min="200" max="4000" step="100" border="5" border_color="#66cdaa" thumb_color="#66cdaa" thumb_radius="0" thumb_height="80" thumb_width="20" base_color="#000000" active_color="#66cdaa"]
[ptext name="autotext" layer="fix" x="1500" y="690" text="&tf.set_auto_speed" size="32" face="Tegomin" color="#66cdaa"]
[switch name="unread" var="tf.unread" target="*skip_change" x="590" y="881" width="150" height="4" thumb_radius="0" thumb_height="80" thumb_width="20" base_color="#000000" thumb_color="#66cdaa" active_color="#66cdaa"]
[switch name="full" var="tf.is_fullscreen_now" target="*screen" x="1300" y="881" width="150" height="4" thumb_radius="0" thumb_height="80" thumb_width="20" base_color="#000000" thumb_color="#66cdaa" active_color="#66cdaa"]
[iscript]
$('.range.fixlayer,.unread.fixlayer,.full.fixlayer').addClass('fia-config-control');
[endscript]
[mask_off time="200"]
[s]

*back
[cm]
[clearfix]
[start_keyconfig]
[awakegame]
[s]

*vol_bgm_change
[clearfix name="bgmvoltext"]
[ptext name="bgmvoltext" layer="fix" x="1500" y="350" text="&tf.current_bgm_vol" color="#66cdaa" size="32" face="Tegomin"]
[bgmopt volume="&tf.current_bgm_vol" effect="true"]
[return]

*vol_se_change
[clearfix name="sevoltext"]
[ptext name="sevoltext" layer="fix" x="1500" y="440" text="&tf.current_se_vol" color="#66cdaa" size="32" face="Tegomin"]
[seopt volume="&tf.current_se_vol" effect="true"]
[return]

*ch_speed_change
[clearfix name="chtext"]
[ptext name="chtext" layer="fix" x="1500" y="595" text="&tf.set_ch_speed_alt" color="#66cdaa" size="32" face="Tegomin"]
[eval exp="tf.current_ch_speed = 100 - Number(tf.set_ch_speed_alt)"]
[configdelay speed="&tf.current_ch_speed"]
[iscript]
// awakegameで以前の個別delay値が戻らないようにする。
if (TG.tmp.sleep_game) TG.tmp.sleep_game.stat.ch_speed = '';
[endscript]
[return]

*auto_speed_change
[clearfix name="autotext"]
[ptext name="autotext" layer="fix" x="1500" y="690" text="&tf.set_auto_speed" color="#66cdaa" size="32" face="Tegomin"]
[autoconfig speed="&tf.set_auto_speed"]
[return]

*skip_change
[iscript]
TG.config.unReadTextSkip = tf.unread ? 'true' : 'false';
sf._system_config_unread_text_skip = TG.config.unReadTextSkip;
TG.saveSystemVariable();
[endscript]
[return]

*screen
[screen_full]
[return]
