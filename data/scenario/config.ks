;=========================================
; コンフィグ モード　画面作成
;=========================================
	
;	メッセージレイヤ0を不可視に
	[layopt layer="message0" visible="false"]

;	fixボタンをクリア
	[clearfix]

;	キーコンフィグの無効化
  [stop_keyconfig]

;	レイヤーモードの解放
	[free_layermode time="100" wait="true"]

;	カメラのリセット
	[reset_camera time="100" wait="true"]
	
;	前景レイヤの中身をすべて空に
	[iscript]
	$(".layer_camera").empty();
	$("#bgmovie").remove();
	[endscript]

;	メニューボタン非表示
	[hidemenubutton]

	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume); // BGM音量
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume); // SE音量
	
	tf.current_ch_speed = parseInt(TG.config.chSpeed); // テキスト表示速度
	tf.current_auto_speed = parseInt(TG.config.autoSpeed); // オート時のテキスト表示速度
	
	tf.text_skip ="ON"; // 未読スキップ
	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	tf.user_setting = TG.config.alreadyReadTextColor;
	if(tf.user_setting != 'default'){
		TG.config.alreadyReadTextColor = 'default'; // 一時的に既読テキストの文字色を変更しないようにしています
	}

	tf.set_ch_speed = tf.current_ch_speed;
	tf.set_ch_speed_alt = 100-tf.set_ch_speed;
	tf.set_auto_speed = tf.current_auto_speed;

	//フルスクリーン
	tf.is_fullscreen = document.webkitFullscreenElement || document.mozFullScreenElement || document.msFullscreenElement || document.fullScreenElement || false;
	tf.is_fullscreen_now = tf.is_fullscreen;
	[endscript]

	[iscript]

	/* 画像類のパス */
	tf.img_path = '../image/config/';

	/* 画像類のパス（ボタン） */
	tf.btn_path_off = tf.img_path + 'c_btn.gif';
	tf.btn_path_on  = tf.img_path + 'c_set.png';

	// テキスト速度のサンプルテキストとして表示する文字列（お好みに合わせて変更してください）
	tf.text_sample = 'こちらはテストメッセージです。このスピードでテキストが表示されます。';

	// サンプルテキストを表示しておく時間（テキストを表示し終わってから700ミリ秒で消去させています）
	tf.text_sample_speed;

	// 既読スキップの画像ファイル名を格納しておく変数
	tf.img_unread_skip;

	tf.unread = TG.config.unReadTextSkip;

	[endscript]

[cm]

;	コンフィグ用の背景を読み込んでトランジション
[bg storage="&tf.img_path +'bg_config.png'" time="100"]

;	画面右上の「Back」ボタン
[button fix="true" graphic="../image/config/c_btn_back.png" enterimg="../image/config/c_btn_back2.png" target="*back" x="1200" y="20"]

[jump target="*config_page"]


*config_page
[iscript]
var config_items = [
  {
    name: "bgmvol",
    var: "tf.current_bgm_vol",
    target: "*vol_bgm_change",
    y: 370,
    texty: 350,
  },
  {
    name: "sevol",
    var: "tf.current_se_vol",
    target: "*vol_se_change",
    y: 460,
    texty: 440,
  },
  {
    name: "ch",
    var: "tf.set_ch_speed_alt",
    target: "*ch_speed_change",
    y: 615,
    texty: 595,
  },
  {
    name: "auto",
    var: "tf.set_auto_speed",
    target: "*auto_speed_change",
    y: 710,
    texty: 690,
  }
];

/* スライダーとテキストを一括生成 */
config_items.forEach(function(item){
  TYRANO.kag.ftag.startTag("slider", {
    name: item.name,
    var: item.var,
    target: item.target,
    x: "590",
    y: item.y,
    width: "800",
    height: "5",
    border: "5",
    border_color: "#66cdaa",
    thumb_color: "#66cdaa",
    thumb_radius: "0",
    thumb_height: "80",
    thumb_width: "20",
    base_color: "#000000ff",
    active_color: "#66cdaa"
  });

  TYRANO.kag.ftag.startTag("ptext", {
    name: item.name + "text",
    layer: "fix",
    x: "1500",
    y: item.texty,
    text: eval(item.var),
    color: "#66cdaa",
    time: "100",
    size: "32",
    face: "幻",
    wait: "false"
  });
});

/* 未読スキップスイッチ */
TYRANO.kag.ftag.startTag("switch", {
  name: "unread",
  width: "150",
  height: "4",
  thumb_radius: "0",
  thumb_height: "80",
  thumb_width: "20",
  base_color: "#000000ff",
  thumb_color: "#66cdaa",
  active_color: "#66cdaa",
  x: "590",
  y: "881",
  var: "tf.unread",
  target: "*skip_change"
});

/* フルスクリーンスイッチ */
TYRANO.kag.ftag.startTag("switch", {
  name: "full",
  width: "150",
  height: "4",
  thumb_radius: "0",
  thumb_height: "80",
  thumb_width: "20",
  base_color: "#000000ff",
  thumb_color: "#66cdaa",
  active_color: "#66cdaa",
  x: "1300",
  y: "881",
  var: "tf.is_fullscreen_now",
  target: "*screen"
});

[endscript]

[s]

;--------------------------------------------------------------------------------
; コンフィグモードの終了
;--------------------------------------------------------------------------------
*back
[cm]
[iscript]
TG.config.alreadyReadTextColor = tf.user_setting; // 既読テキストの文字色を復帰
[endscript]
;	テキスト速度のサンプル表示に使用していたメッセージレイヤを非表示に
[layopt layer="message1" visible="false"]

;	fixボタンをクリア
[clearfix]

;	キーコンフィグの有効化
[start_keyconfig]

;	コールスタックのクリア
[clearstack]

;	ゲーム復帰
[awakegame]

;================================================================================

; ボタンクリック時の処理

;================================================================================
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_change

[clearfix name="bgmvoltext"]
[ptext name="bgmvoltext" layer="fix" x="1500" y="350" text="&tf.current_bgm_vol" color="#66cdaa" time="100" size="32" face="幻" wait="false"]
[bgmopt volume="&tf.current_bgm_vol"]
[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_change

[clearfix name="sevoltext"]
[ptext name="sevoltext" layer="fix" x="1500" y="440" text="&tf.current_se_vol" color="#66cdaa" time="100" size="32" face="幻" wait="false"]
[seopt volume="&tf.current_se_vol"]

[return]

;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------
*ch_speed_change
	[clearfix name="chtext"]
	[iscript]
	tf.set_ch_speed = 100-tf.set_ch_speed_alt;
	tf.current_ch_speed = tf.set_ch_speed;
	[endscript]
	[ptext name="chtext" layer="fix" x="1500" y="595" text="&tf.set_ch_speed_alt" color="#66cdaa" time="100" size="32" face="幻" wait="false"]

	[configdelay speed="&tf.set_ch_speed"]

;	テキスト表示速度のサンプルに使用するメッセージレイヤの設定
	[position layer="message1" left="100" top="920" width="1720" height="300" margint="10" marginl="10" page="fore" visible="true" opacity="0"]
	[layopt layer="message1" visible="true"]
	[current layer="message1"]

;	サンプルテキストを表示する
	[emb exp="tf.text_sample"]

		[iscript]
		$(".current_span").css("color","#66cdaa"); // サンプルテキストのフォントカラーを指定
		tf.system.backlog.pop(); // サンプルテキストを履歴から削除（nolog～endnologタグと同じです）
		[endscript]

;	待ち時間をテキスト速度とサンプルの文字数に対応（消えるのが早すぎるときは後ろの数字を好きなだけ増やそう）
	[eval exp="tf.text_sample_speed = tf.set_ch_speed * tf.text_sample.length+700"]
	[wait time="&tf.text_sample_speed"]

	[er]
	[layopt layer="message1" visible="false"]

[return]

;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*auto_speed_change
	[clearfix name="autotext"]
	[ptext name="autotext" layer="fix" x="1500" y="690" text="&tf.set_auto_speed" color="#66cdaa" time="100" size="32" face="幻" wait="false"]

	[autoconfig speed="&tf.set_auto_speed"]

[return]

*skip_change
[if exp="tf.unread==true"]
	[jump target=*skip_on]
[else]
	[jump target=*skip_off]
[endif]
;--------------------------------------------------------------------------------
; スキップ処理-OFF
;--------------------------------------------------------------------------------
*skip_off

	[iscript]
	tf.text_skip = "OFF";
	[endscript]

	[config_record_label skip="false"]

[return]

;--------------------------------------------------------------------------------
; スキップ処理-ON
;--------------------------------------------------------------------------------
*skip_on

	[iscript]
	tf.text_skip = "ON";
	[endscript]

	[config_record_label skip="true"]

[return]

*screen
[screen_full cond="tf.is_fullscreen != tf.is_fullscreen_now"]
[eval exp="tf.is_fullscreen = tf.is_fullscreen_now"]
[return]
