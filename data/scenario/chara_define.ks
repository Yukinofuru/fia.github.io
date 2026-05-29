; === chara_define.ks ===
; キャラクター定義ファイル
; このファイルは first.ks から [call] タグで読み込まれる。
; 末尾に [return] を必ず記述すること。

;=========================================
; 古虫 紀一
;=========================================
[chara_new  name="kiichi"  storage="chara/empty.png"  jname="古虫 紀一"]

;=========================================
; 初明 世紬（setsu）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="setsu"  storage="chara/setsu/face.png"  jname="初明 世紬"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="setsu" part="body" id="body0" storage="chara/setsu/body0.png" frame_image="body1" frame_time="1200,1200" zindex="10"]
[chara_layer name="setsu" part="body" id="body1" storage="chara/setsu/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="setsu" part="face" id="normal" storage="chara/setsu/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="setsu" part="eye" id="eye0" storage="chara/setsu/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye1" storage="chara/setsu/eye1.png" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye2" storage="chara/setsu/eye2.png" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye3" storage="chara/setsu/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye4" storage="chara/setsu/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye5" storage="chara/setsu/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye6" storage="chara/setsu/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye7" storage="chara/setsu/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="setsu" part="mouth" id="mouth0" storage="chara/setsu/mouth0.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth1" storage="chara/setsu/mouth1.png" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth3" storage="chara/setsu/mouth3.png" lip_image="mouth0" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth4" storage="chara/setsu/mouth4.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth5" storage="chara/setsu/mouth5.png" lip_image="mouth0" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth6" storage="chara/setsu/mouth6.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth7" storage="chara/setsu/mouth7.png" lip_image="mouth1" lip_time="100" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="setsu" part="hat" id="none" storage="chara/setsu/empty.png" zindex="40"]
[chara_layer name="setsu" part="hat" id="hat" storage="chara/setsu/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="setsuNormal"]
  [chara_part name="setsu" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="setsuNormalHat"]
  [chara_part name="setsu" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="setsuSurprise"]
  [chara_part name="setsu" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="setsuSurpriseHat"]
  [chara_part name="setsu" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="setsuSmile"]
  [chara_part name="setsu" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="setsuSmileHat"]
  [chara_part name="setsu" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="setsuSad"]
  [chara_part name="setsu" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="setsuSadHat"]
  [chara_part name="setsu" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="setsuAngry"]
  [chara_part name="setsu" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="setsuAngryHat"]
  [chara_part name="setsu" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="setsuJito"]
  [chara_part name="setsu" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="setsuJitoHat"]
  [chara_part name="setsu" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 青葉 藍爛（airan）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="airan"  storage="chara/airan/face.png"  jname="青葉 藍爛"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="airan" part="body" id="body0" storage="chara/airan/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="airan" part="body" id="body1" storage="chara/airan/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="airan" part="face" id="normal" storage="chara/airan/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="airan" part="eye" id="eye0" storage="chara/airan/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye1" storage="chara/airan/eye1.png" zindex="35"]
[chara_layer name="airan" part="eye" id="eye2" storage="chara/airan/eye2.png" zindex="35"]
[chara_layer name="airan" part="eye" id="eye3" storage="chara/airan/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye4" storage="chara/airan/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye5" storage="chara/airan/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye6" storage="chara/airan/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye7" storage="chara/airan/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="airan" part="mouth" id="mouth0" storage="chara/airan/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth1" storage="chara/airan/mouth1.png" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth3" storage="chara/airan/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth4" storage="chara/airan/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth5" storage="chara/airan/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth6" storage="chara/airan/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth7" storage="chara/airan/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="airan" part="hat" id="none" storage="chara/airan/empty.png" zindex="40"]
[chara_layer name="airan" part="hat" id="hat" storage="chara/airan/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="airanNormal"]
  [chara_part name="airan" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="airanNormalHat"]
  [chara_part name="airan" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="airanSurprise"]
  [chara_part name="airan" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="airanSurpriseHat"]
  [chara_part name="airan" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="airanSmile"]
  [chara_part name="airan" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="airanSmileHat"]
  [chara_part name="airan" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="airanSad"]
  [chara_part name="airan" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="airanSadHat"]
  [chara_part name="airan" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="airanAngry"]
  [chara_part name="airan" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="airanAngryHat"]
  [chara_part name="airan" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="airanJito"]
  [chara_part name="airan" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="airanJitoHat"]
  [chara_part name="airan" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 曙 一十（ito）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="ito"  storage="chara/ito/face.png"  jname="曙 一十"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="ito" part="body" id="body0" storage="chara/ito/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="ito" part="body" id="body1" storage="chara/ito/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="ito" part="face" id="normal" storage="chara/ito/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="ito" part="eye" id="eye0" storage="chara/ito/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye1" storage="chara/ito/eye1.png" zindex="35"]
[chara_layer name="ito" part="eye" id="eye2" storage="chara/ito/eye2.png" zindex="35"]
[chara_layer name="ito" part="eye" id="eye3" storage="chara/ito/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye4" storage="chara/ito/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye5" storage="chara/ito/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye6" storage="chara/ito/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye7" storage="chara/ito/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="ito" part="mouth" id="mouth0" storage="chara/ito/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth1" storage="chara/ito/mouth1.png" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth3" storage="chara/ito/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth4" storage="chara/ito/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth5" storage="chara/ito/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth6" storage="chara/ito/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth7" storage="chara/ito/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="ito" part="hat" id="none" storage="chara/ito/empty.png" zindex="40"]
[chara_layer name="ito" part="hat" id="hat" storage="chara/ito/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="itoNormal"]
  [chara_part name="ito" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="itoNormalHat"]
  [chara_part name="ito" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="itoSurprise"]
  [chara_part name="ito" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="itoSurpriseHat"]
  [chara_part name="ito" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="itoSmile"]
  [chara_part name="ito" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="itoSmileHat"]
  [chara_part name="ito" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="itoSad"]
  [chara_part name="ito" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="itoSadHat"]
  [chara_part name="ito" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="itoAngry"]
  [chara_part name="ito" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="itoAngryHat"]
  [chara_part name="ito" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="itoJito"]
  [chara_part name="ito" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="itoJitoHat"]
  [chara_part name="ito" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 綾瀬 護氏（ayase）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="ayase"  storage="chara/ayase/face.png"  jname="綾瀬 護氏"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="ayase" part="body" id="body0" storage="chara/ayase/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="ayase" part="body" id="body1" storage="chara/ayase/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="ayase" part="face" id="normal" storage="chara/ayase/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="ayase" part="eye" id="eye0" storage="chara/ayase/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye1" storage="chara/ayase/eye1.png" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye2" storage="chara/ayase/eye2.png" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye3" storage="chara/ayase/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye4" storage="chara/ayase/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye5" storage="chara/ayase/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye6" storage="chara/ayase/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye7" storage="chara/ayase/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="ayase" part="mouth" id="mouth0" storage="chara/ayase/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth1" storage="chara/ayase/mouth1.png" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth3" storage="chara/ayase/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth4" storage="chara/ayase/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth5" storage="chara/ayase/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth6" storage="chara/ayase/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth7" storage="chara/ayase/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="ayase" part="hat" id="none" storage="chara/ayase/empty.png" zindex="40"]
[chara_layer name="ayase" part="hat" id="hat" storage="chara/ayase/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="ayaseNormal"]
  [chara_part name="ayase" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="ayaseNormalHat"]
  [chara_part name="ayase" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="ayaseSurprise"]
  [chara_part name="ayase" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="ayaseSurpriseHat"]
  [chara_part name="ayase" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="ayaseSmile"]
  [chara_part name="ayase" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="ayaseSmileHat"]
  [chara_part name="ayase" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="ayaseSad"]
  [chara_part name="ayase" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="ayaseSadHat"]
  [chara_part name="ayase" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="ayaseAngry"]
  [chara_part name="ayase" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="ayaseAngryHat"]
  [chara_part name="ayase" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="ayaseJito"]
  [chara_part name="ayase" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="ayaseJitoHat"]
  [chara_part name="ayase" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 明昼 優知（akehiru）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="akehiru"  storage="chara/akehiru/face.png"  jname="明昼 優知"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="akehiru" part="body" id="body0" storage="chara/akehiru/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="akehiru" part="body" id="body1" storage="chara/akehiru/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="akehiru" part="face" id="normal" storage="chara/akehiru/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="akehiru" part="eye" id="eye0" storage="chara/akehiru/eye0.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye1" storage="chara/akehiru/eye1.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye2" storage="chara/akehiru/eye2.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye3" storage="chara/akehiru/eye3.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye4" storage="chara/akehiru/eye4.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye5" storage="chara/akehiru/eye5.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye6" storage="chara/akehiru/eye6.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye7" storage="chara/akehiru/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="akehiru" part="mouth" id="mouth0" storage="chara/akehiru/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth1" storage="chara/akehiru/mouth1.png" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth3" storage="chara/akehiru/mouth3.png" lip_image="mouth0" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth4" storage="chara/akehiru/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth5" storage="chara/akehiru/mouth5.png" lip_image="mouth6" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth6" storage="chara/akehiru/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth7" storage="chara/akehiru/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="akehiru" part="hat" id="none" storage="chara/akehiru/empty.png" zindex="40"]
[chara_layer name="akehiru" part="hat" id="hat" storage="chara/akehiru/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="akehiruNormal"]
  [chara_part name="akehiru" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="akehiruNormalHat"]
  [chara_part name="akehiru" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="akehiruSurprise"]
  [chara_part name="akehiru" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="akehiruSurpriseHat"]
  [chara_part name="akehiru" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="akehiruSmile"]
  [chara_part name="akehiru" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="akehiruSmileHat"]
  [chara_part name="akehiru" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="akehiruSad"]
  [chara_part name="akehiru" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="akehiruSadHat"]
  [chara_part name="akehiru" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="akehiruAngry"]
  [chara_part name="akehiru" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="akehiruAngryHat"]
  [chara_part name="akehiru" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="akehiruJito"]
  [chara_part name="akehiru" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="akehiruJitoHat"]
  [chara_part name="akehiru" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 富山 東太（tota）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="tota"  storage="chara/tota/face.png"  jname="富山 東太"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="tota" part="body" id="body0" storage="chara/tota/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="tota" part="body" id="body1" storage="chara/tota/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="tota" part="face" id="normal" storage="chara/tota/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="tota" part="eye" id="eye0" storage="chara/tota/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye1" storage="chara/tota/eye1.png" zindex="35"]
[chara_layer name="tota" part="eye" id="eye2" storage="chara/tota/eye2.png" zindex="35"]
[chara_layer name="tota" part="eye" id="eye3" storage="chara/tota/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye4" storage="chara/tota/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye5" storage="chara/tota/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye6" storage="chara/tota/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye7" storage="chara/tota/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="tota" part="mouth" id="mouth0" storage="chara/tota/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth1" storage="chara/tota/mouth1.png" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth3" storage="chara/tota/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth4" storage="chara/tota/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth5" storage="chara/tota/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth6" storage="chara/tota/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth7" storage="chara/tota/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="tota" part="hat" id="none" storage="chara/tota/empty.png" zindex="40"]
[chara_layer name="tota" part="hat" id="hat" storage="chara/tota/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="totaNormal"]
  [chara_part name="tota" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="totaNormalHat"]
  [chara_part name="tota" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="totaSurprise"]
  [chara_part name="tota" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="totaSurpriseHat"]
  [chara_part name="tota" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="totaSmile"]
  [chara_part name="tota" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="totaSmileHat"]
  [chara_part name="tota" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="totaSad"]
  [chara_part name="tota" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="totaSadHat"]
  [chara_part name="tota" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="totaAngry"]
  [chara_part name="tota" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="totaAngryHat"]
  [chara_part name="tota" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="totaJito"]
  [chara_part name="tota" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="totaJitoHat"]
  [chara_part name="tota" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 百七（momona）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="momona"  storage="chara/momona/face.png"  jname="百七"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="momona" part="body" id="body0" storage="chara/momona/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="momona" part="body" id="body1" storage="chara/momona/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="momona" part="face" id="normal" storage="chara/momona/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="momona" part="eye" id="eye0" storage="chara/momona/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye1" storage="chara/momona/eye1.png" zindex="35"]
[chara_layer name="momona" part="eye" id="eye2" storage="chara/momona/eye2.png" zindex="35"]
[chara_layer name="momona" part="eye" id="eye3" storage="chara/momona/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye4" storage="chara/momona/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye5" storage="chara/momona/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye6" storage="chara/momona/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye7" storage="chara/momona/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="momona" part="mouth" id="mouth0" storage="chara/momona/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth1" storage="chara/momona/mouth1.png" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth3" storage="chara/momona/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth4" storage="chara/momona/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth5" storage="chara/momona/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth6" storage="chara/momona/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth7" storage="chara/momona/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="momona" part="hat" id="none" storage="chara/momona/empty.png" zindex="40"]
[chara_layer name="momona" part="hat" id="hat" storage="chara/momona/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="momona_normal"]
  [chara_part name="momona" eye="eye0" mouth="mouth0"]
[endmacro]
[macro name="momona_normal_hat"]
  [chara_part name="momona" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]


; 驚き（surprise）
[macro name="momonaSurprise"]
  [chara_part name="momona" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="momonaSurpriseHat"]
  [chara_part name="momona" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="momonaSmile"]
  [chara_part name="momona" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="momonaSmileHat"]
  [chara_part name="momona" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="momonaSad"]
  [chara_part name="momona" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="momonaSadHat"]
  [chara_part name="momona" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="momonaAngry"]
  [chara_part name="momona" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="momonaAngryHat"]
  [chara_part name="momona" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="momonaJito"]
  [chara_part name="momona" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="momonaJitoHat"]
  [chara_part name="momona" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 山本 秀一（syuuichi）
;=========================================
; 基本のベース画像として face.png を登録
[chara_new  name="syuuichi"  storage="chara/syuuichi/face.png"  jname="山本 秀一"]

; -- 体（body）: 一番下 --
; body0を基本とし、body1と交互に表示して呼吸を表現
[chara_layer name="syuuichi" part="body" id="body0" storage="chara/syuuichi/body0.png" frame_image="body1" frame_time="1500,1500" zindex="10"]
[chara_layer name="syuuichi" part="body" id="body1" storage="chara/syuuichi/body1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="syuuichi" part="face" id="normal" storage="chara/syuuichi/face.png" zindex="20"]

; -- 目（eye）: faceの上 --
[chara_layer name="syuuichi" part="eye" id="eye0" storage="chara/syuuichi/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye1" storage="chara/syuuichi/eye1.png" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye2" storage="chara/syuuichi/eye2.png" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye3" storage="chara/syuuichi/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye4" storage="chara/syuuichi/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye5" storage="chara/syuuichi/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye6" storage="chara/syuuichi/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye7" storage="chara/syuuichi/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="syuuichi" part="mouth" id="mouth0" storage="chara/syuuichi/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth1" storage="chara/syuuichi/mouth1.png" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth3" storage="chara/syuuichi/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth4" storage="chara/syuuichi/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth5" storage="chara/syuuichi/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth6" storage="chara/syuuichi/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth7" storage="chara/syuuichi/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 帽子（hat）: 一番上 --
[chara_layer name="syuuichi" part="hat" id="none" storage="chara/syuuichi/empty.png" zindex="40"]
[chara_layer name="syuuichi" part="hat" id="hat" storage="chara/syuuichi/hat.png" zindex="40"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="syuuichiNormal"]
  [chara_part name="syuuichi" eye="eye0" mouth="mouth0" hat="none"]
[endmacro]
[macro name="syuuichiNormalHat"]
  [chara_part name="syuuichi" eye="eye0" mouth="mouth0" hat="hat"]
[endmacro]

; 驚き（surprise）
[macro name="syuuichiSurprise"]
  [chara_part name="syuuichi" eye="eye3" mouth="mouth3" hat="none"]
[endmacro]
[macro name="syuuichiSurpriseHat"]
  [chara_part name="syuuichi" eye="eye3" mouth="mouth3" hat="hat"]
[endmacro]

; 喜び（smile）
[macro name="syuuichiSmile"]
  [chara_part name="syuuichi" eye="eye4" mouth="mouth4" hat="none"]
[endmacro]
[macro name="syuuichiSmileHat"]
  [chara_part name="syuuichi" eye="eye4" mouth="mouth4" hat="hat"]
[endmacro]

; 悲しみ（sad）
[macro name="syuuichiSad"]
  [chara_part name="syuuichi" eye="eye5" mouth="mouth5" hat="none"]
[endmacro]
[macro name="syuuichiSadHat"]
  [chara_part name="syuuichi" eye="eye5" mouth="mouth5" hat="hat"]
[endmacro]

; 怒り（angry）
[macro name="syuuichiAngry"]
  [chara_part name="syuuichi" eye="eye6" mouth="mouth6" hat="none"]
[endmacro]
[macro name="syuuichiAngryHat"]
  [chara_part name="syuuichi" eye="eye6" mouth="mouth6" hat="hat"]
[endmacro]

; じと（jito）
[macro name="syuuichiJito"]
  [chara_part name="syuuichi" eye="eye7" mouth="mouth7" hat="none"]
[endmacro]
[macro name="syuuichiJitoHat"]
  [chara_part name="syuuichi" eye="eye7" mouth="mouth7" hat="hat"]
[endmacro]

;=========================================
; 名前表示エリアの設定
;=========================================
[chara_config ptext="chara_name_area"]

; 元のファイルに戻る
[return]
