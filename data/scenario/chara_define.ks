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
[chara_layer name="setsu" part="body" id="body_blood0" storage="chara/setsu/body_blood0.png" frame_image="body_blood1" frame_time="1200,1200" zindex="10"]
[chara_layer name="setsu" part="body" id="body_blood1" storage="chara/setsu/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="setsu" part="face" id="normal" storage="chara/setsu/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="setsu" part="face_blood" id="none" storage="chara/setsu/empty.png" zindex="25"]
[chara_layer name="setsu" part="face_blood" id="blood" storage="chara/setsu/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="setsu" part="eye" id="eye0" storage="chara/setsu/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye1" storage="chara/setsu/eye1.png" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye2" storage="chara/setsu/eye2.png" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye3" storage="chara/setsu/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye4" storage="chara/setsu/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye5" storage="chara/setsu/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye6" storage="chara/setsu/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye7" storage="chara/setsu/eye7.png" frame_image="eye2, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye8" storage="chara/setsu/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye9" storage="chara/setsu/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye10" storage="chara/setsu/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="setsu" part="eye" id="eye11" storage="chara/setsu/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="setsu" part="mouth" id="mouth0" storage="chara/setsu/mouth0.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth1" storage="chara/setsu/mouth1.png" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth3" storage="chara/setsu/mouth3.png" lip_image="mouth0" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth4" storage="chara/setsu/mouth4.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth5" storage="chara/setsu/mouth5.png" lip_image="mouth0" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth6" storage="chara/setsu/mouth6.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth7" storage="chara/setsu/mouth7.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth8" storage="chara/setsu/mouth8.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth9" storage="chara/setsu/mouth9.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth10" storage="chara/setsu/mouth10.png" lip_image="mouth1" lip_time="100" zindex="30"]
[chara_layer name="setsu" part="mouth" id="mouth11" storage="chara/setsu/mouth11.png" lip_image="mouth1" lip_time="100" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="setsu" part="hair" id="normal" storage="chara/setsu/hair_normal.png" zindex="38"]
[chara_layer name="setsu" part="hair" id="hat" storage="chara/setsu/hair_hat.png" zindex="38"]
[chara_layer name="setsu" part="hair" id="blood" storage="chara/setsu/hair_blood.png" zindex="38"]
[chara_layer name="setsu" part="hair" id="blood_hat" storage="chara/setsu/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="setsuNormal"]
  [chara_part name="setsu" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuNormalHat"]
  [chara_part name="setsu" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuNormalBlood"]
  [chara_part name="setsu" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuNormalBloodHat"]
  [chara_part name="setsu" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="setsuBlush"]
  [chara_part name="setsu" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuBlushHat"]
  [chara_part name="setsu" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuBlushBlood"]
  [chara_part name="setsu" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuBlushBloodHat"]
  [chara_part name="setsu" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="setsuSurprise"]
  [chara_part name="setsu" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuSurpriseHat"]
  [chara_part name="setsu" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuSurpriseBlood"]
  [chara_part name="setsu" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuSurpriseBloodHat"]
  [chara_part name="setsu" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="setsuSmile"]
  [chara_part name="setsu" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuSmileHat"]
  [chara_part name="setsu" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuSmileBlood"]
  [chara_part name="setsu" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuSmileBloodHat"]
  [chara_part name="setsu" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="setsuSad"]
  [chara_part name="setsu" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuSadHat"]
  [chara_part name="setsu" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuSadBlood"]
  [chara_part name="setsu" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuSadBloodHat"]
  [chara_part name="setsu" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="setsuAngry"]
  [chara_part name="setsu" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuAngryHat"]
  [chara_part name="setsu" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuAngryBlood"]
  [chara_part name="setsu" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuAngryBloodHat"]
  [chara_part name="setsu" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="setsuJito"]
  [chara_part name="setsu" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuJitoHat"]
  [chara_part name="setsu" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuJitoBlood"]
  [chara_part name="setsu" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuJitoBloodHat"]
  [chara_part name="setsu" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="setsuSad2"]
  [chara_part name="setsu" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuSad2Hat"]
  [chara_part name="setsu" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuSad2Blood"]
  [chara_part name="setsu" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuSad2BloodHat"]
  [chara_part name="setsu" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="setsuSmile2"]
  [chara_part name="setsu" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuSmile2Hat"]
  [chara_part name="setsu" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuSmile2Blood"]
  [chara_part name="setsu" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuSmile2BloodHat"]
  [chara_part name="setsu" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="setsuSerious"]
  [chara_part name="setsu" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="setsuSeriousHat"]
  [chara_part name="setsu" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="setsuSeriousBlood"]
  [chara_part name="setsu" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="setsuSeriousBloodHat"]
  [chara_part name="setsu" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="airan" part="body" id="body_blood0" storage="chara/airan/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="airan" part="body" id="body_blood1" storage="chara/airan/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="airan" part="face" id="normal" storage="chara/airan/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="airan" part="face_blood" id="none" storage="chara/airan/empty.png" zindex="25"]
[chara_layer name="airan" part="face_blood" id="blood" storage="chara/airan/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="airan" part="eye" id="eye0" storage="chara/airan/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye1" storage="chara/airan/eye1.png" zindex="35"]
[chara_layer name="airan" part="eye" id="eye2" storage="chara/airan/eye2.png" zindex="35"]
[chara_layer name="airan" part="eye" id="eye3" storage="chara/airan/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye4" storage="chara/airan/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye5" storage="chara/airan/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye6" storage="chara/airan/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye7" storage="chara/airan/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye8" storage="chara/airan/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye9" storage="chara/airan/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye10" storage="chara/airan/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="airan" part="eye" id="eye11" storage="chara/airan/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="airan" part="mouth" id="mouth0" storage="chara/airan/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth1" storage="chara/airan/mouth1.png" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth3" storage="chara/airan/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth4" storage="chara/airan/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth5" storage="chara/airan/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth6" storage="chara/airan/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth7" storage="chara/airan/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth8" storage="chara/airan/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth9" storage="chara/airan/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth10" storage="chara/airan/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="airan" part="mouth" id="mouth11" storage="chara/airan/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="airan" part="hair" id="normal" storage="chara/airan/hair_normal.png" zindex="38"]
[chara_layer name="airan" part="hair" id="hat" storage="chara/airan/hair_hat.png" zindex="38"]
[chara_layer name="airan" part="hair" id="blood" storage="chara/airan/hair_blood.png" zindex="38"]
[chara_layer name="airan" part="hair" id="blood_hat" storage="chara/airan/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="airanNormal"]
  [chara_part name="airan" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanNormalHat"]
  [chara_part name="airan" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanNormalBlood"]
  [chara_part name="airan" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanNormalBloodHat"]
  [chara_part name="airan" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="airanBlush"]
  [chara_part name="airan" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanBlushHat"]
  [chara_part name="airan" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanBlushBlood"]
  [chara_part name="airan" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanBlushBloodHat"]
  [chara_part name="airan" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="airanSurprise"]
  [chara_part name="airan" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanSurpriseHat"]
  [chara_part name="airan" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanSurpriseBlood"]
  [chara_part name="airan" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanSurpriseBloodHat"]
  [chara_part name="airan" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="airanSmile"]
  [chara_part name="airan" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanSmileHat"]
  [chara_part name="airan" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanSmileBlood"]
  [chara_part name="airan" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanSmileBloodHat"]
  [chara_part name="airan" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="airanSad"]
  [chara_part name="airan" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanSadHat"]
  [chara_part name="airan" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanSadBlood"]
  [chara_part name="airan" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanSadBloodHat"]
  [chara_part name="airan" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="airanAngry"]
  [chara_part name="airan" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanAngryHat"]
  [chara_part name="airan" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanAngryBlood"]
  [chara_part name="airan" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanAngryBloodHat"]
  [chara_part name="airan" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="airanJito"]
  [chara_part name="airan" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanJitoHat"]
  [chara_part name="airan" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanJitoBlood"]
  [chara_part name="airan" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanJitoBloodHat"]
  [chara_part name="airan" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="airanSad2"]
  [chara_part name="airan" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanSad2Hat"]
  [chara_part name="airan" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanSad2Blood"]
  [chara_part name="airan" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanSad2BloodHat"]
  [chara_part name="airan" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="airanSmile2"]
  [chara_part name="airan" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanSmile2Hat"]
  [chara_part name="airan" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanSmile2Blood"]
  [chara_part name="airan" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanSmile2BloodHat"]
  [chara_part name="airan" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="airanSerious"]
  [chara_part name="airan" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="airanSeriousHat"]
  [chara_part name="airan" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="airanSeriousBlood"]
  [chara_part name="airan" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="airanSeriousBloodHat"]
  [chara_part name="airan" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="ito" part="body" id="body_blood0" storage="chara/ito/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="ito" part="body" id="body_blood1" storage="chara/ito/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="ito" part="face" id="normal" storage="chara/ito/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="ito" part="face_blood" id="none" storage="chara/ito/empty.png" zindex="25"]
[chara_layer name="ito" part="face_blood" id="blood" storage="chara/ito/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="ito" part="eye" id="eye0" storage="chara/ito/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye1" storage="chara/ito/eye1.png" zindex="35"]
[chara_layer name="ito" part="eye" id="eye2" storage="chara/ito/eye2.png" zindex="35"]
[chara_layer name="ito" part="eye" id="eye3" storage="chara/ito/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye4" storage="chara/ito/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye5" storage="chara/ito/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye6" storage="chara/ito/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye7" storage="chara/ito/eye7.png" frame_image="eye2, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye8" storage="chara/ito/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye9" storage="chara/ito/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye10" storage="chara/ito/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ito" part="eye" id="eye11" storage="chara/ito/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="ito" part="mouth" id="mouth0" storage="chara/ito/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth1" storage="chara/ito/mouth1.png" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth3" storage="chara/ito/mouth3.png" lip_image="mouth0" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth4" storage="chara/ito/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth5" storage="chara/ito/mouth5.png" lip_image="mouth0" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth6" storage="chara/ito/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth7" storage="chara/ito/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth8" storage="chara/ito/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth9" storage="chara/ito/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth10" storage="chara/ito/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ito" part="mouth" id="mouth11" storage="chara/ito/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="ito" part="hair" id="normal" storage="chara/ito/hair_normal.png" zindex="38"]
[chara_layer name="ito" part="hair" id="hat" storage="chara/ito/hair_hat.png" zindex="38"]
[chara_layer name="ito" part="hair" id="blood" storage="chara/ito/hair_blood.png" zindex="38"]
[chara_layer name="ito" part="hair" id="blood_hat" storage="chara/ito/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="itoNormal"]
  [chara_part name="ito" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoNormalHat"]
  [chara_part name="ito" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoNormalBlood"]
  [chara_part name="ito" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoNormalBloodHat"]
  [chara_part name="ito" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="itoBlush"]
  [chara_part name="ito" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoBlushHat"]
  [chara_part name="ito" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoBlushBlood"]
  [chara_part name="ito" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoBlushBloodHat"]
  [chara_part name="ito" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="itoSurprise"]
  [chara_part name="ito" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoSurpriseHat"]
  [chara_part name="ito" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoSurpriseBlood"]
  [chara_part name="ito" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoSurpriseBloodHat"]
  [chara_part name="ito" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="itoSmile"]
  [chara_part name="ito" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoSmileHat"]
  [chara_part name="ito" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoSmileBlood"]
  [chara_part name="ito" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoSmileBloodHat"]
  [chara_part name="ito" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="itoSad"]
  [chara_part name="ito" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoSadHat"]
  [chara_part name="ito" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoSadBlood"]
  [chara_part name="ito" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoSadBloodHat"]
  [chara_part name="ito" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="itoAngry"]
  [chara_part name="ito" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoAngryHat"]
  [chara_part name="ito" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoAngryBlood"]
  [chara_part name="ito" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoAngryBloodHat"]
  [chara_part name="ito" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="itoJito"]
  [chara_part name="ito" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoJitoHat"]
  [chara_part name="ito" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoJitoBlood"]
  [chara_part name="ito" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoJitoBloodHat"]
  [chara_part name="ito" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="itoSad2"]
  [chara_part name="ito" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoSad2Hat"]
  [chara_part name="ito" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoSad2Blood"]
  [chara_part name="ito" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoSad2BloodHat"]
  [chara_part name="ito" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="itoSmile2"]
  [chara_part name="ito" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoSmile2Hat"]
  [chara_part name="ito" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoSmile2Blood"]
  [chara_part name="ito" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoSmile2BloodHat"]
  [chara_part name="ito" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="itoSerious"]
  [chara_part name="ito" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="itoSeriousHat"]
  [chara_part name="ito" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="itoSeriousBlood"]
  [chara_part name="ito" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="itoSeriousBloodHat"]
  [chara_part name="ito" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="ayase" part="body" id="body_blood0" storage="chara/ayase/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="ayase" part="body" id="body_blood1" storage="chara/ayase/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="ayase" part="face" id="normal" storage="chara/ayase/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="ayase" part="face_blood" id="none" storage="chara/ayase/empty.png" zindex="25"]
[chara_layer name="ayase" part="face_blood" id="blood" storage="chara/ayase/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="ayase" part="eye" id="eye0" storage="chara/ayase/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye1" storage="chara/ayase/eye1.png" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye2" storage="chara/ayase/eye2.png" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye3" storage="chara/ayase/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye4" storage="chara/ayase/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye5" storage="chara/ayase/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye6" storage="chara/ayase/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye7" storage="chara/ayase/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye8" storage="chara/ayase/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye9" storage="chara/ayase/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye10" storage="chara/ayase/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="ayase" part="eye" id="eye11" storage="chara/ayase/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="ayase" part="mouth" id="mouth0" storage="chara/ayase/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth1" storage="chara/ayase/mouth1.png" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth3" storage="chara/ayase/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth4" storage="chara/ayase/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth5" storage="chara/ayase/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth6" storage="chara/ayase/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth7" storage="chara/ayase/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth8" storage="chara/ayase/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth9" storage="chara/ayase/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth10" storage="chara/ayase/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="ayase" part="mouth" id="mouth11" storage="chara/ayase/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="ayase" part="hair" id="normal" storage="chara/ayase/hair_normal.png" zindex="38"]
[chara_layer name="ayase" part="hair" id="hat" storage="chara/ayase/hair_hat.png" zindex="38"]
[chara_layer name="ayase" part="hair" id="blood" storage="chara/ayase/hair_blood.png" zindex="38"]
[chara_layer name="ayase" part="hair" id="blood_hat" storage="chara/ayase/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="ayaseNormal"]
  [chara_part name="ayase" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseNormalHat"]
  [chara_part name="ayase" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseNormalBlood"]
  [chara_part name="ayase" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseNormalBloodHat"]
  [chara_part name="ayase" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="ayaseBlush"]
  [chara_part name="ayase" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseBlushHat"]
  [chara_part name="ayase" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseBlushBlood"]
  [chara_part name="ayase" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseBlushBloodHat"]
  [chara_part name="ayase" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="ayaseSurprise"]
  [chara_part name="ayase" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseSurpriseHat"]
  [chara_part name="ayase" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseSurpriseBlood"]
  [chara_part name="ayase" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseSurpriseBloodHat"]
  [chara_part name="ayase" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="ayaseSmile"]
  [chara_part name="ayase" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseSmileHat"]
  [chara_part name="ayase" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseSmileBlood"]
  [chara_part name="ayase" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseSmileBloodHat"]
  [chara_part name="ayase" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="ayaseSad"]
  [chara_part name="ayase" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseSadHat"]
  [chara_part name="ayase" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseSadBlood"]
  [chara_part name="ayase" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseSadBloodHat"]
  [chara_part name="ayase" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="ayaseAngry"]
  [chara_part name="ayase" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseAngryHat"]
  [chara_part name="ayase" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseAngryBlood"]
  [chara_part name="ayase" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseAngryBloodHat"]
  [chara_part name="ayase" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="ayaseJito"]
  [chara_part name="ayase" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseJitoHat"]
  [chara_part name="ayase" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseJitoBlood"]
  [chara_part name="ayase" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseJitoBloodHat"]
  [chara_part name="ayase" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="ayaseSad2"]
  [chara_part name="ayase" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseSad2Hat"]
  [chara_part name="ayase" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseSad2Blood"]
  [chara_part name="ayase" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseSad2BloodHat"]
  [chara_part name="ayase" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="ayaseSmile2"]
  [chara_part name="ayase" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseSmile2Hat"]
  [chara_part name="ayase" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseSmile2Blood"]
  [chara_part name="ayase" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseSmile2BloodHat"]
  [chara_part name="ayase" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="ayaseSerious"]
  [chara_part name="ayase" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="ayaseSeriousHat"]
  [chara_part name="ayase" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="ayaseSeriousBlood"]
  [chara_part name="ayase" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="ayaseSeriousBloodHat"]
  [chara_part name="ayase" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="akehiru" part="body" id="body_blood0" storage="chara/akehiru/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="akehiru" part="body" id="body_blood1" storage="chara/akehiru/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="akehiru" part="face" id="normal" storage="chara/akehiru/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="akehiru" part="face_blood" id="none" storage="chara/akehiru/empty.png" zindex="25"]
[chara_layer name="akehiru" part="face_blood" id="blood" storage="chara/akehiru/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="akehiru" part="eye" id="eye0" storage="chara/akehiru/eye0.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye1" storage="chara/akehiru/eye1.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye2" storage="chara/akehiru/eye2.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye3" storage="chara/akehiru/eye3.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye4" storage="chara/akehiru/eye4.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye5" storage="chara/akehiru/eye5.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye6" storage="chara/akehiru/eye6.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye7" storage="chara/akehiru/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye8" storage="chara/akehiru/eye8.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye9" storage="chara/akehiru/eye9.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye10" storage="chara/akehiru/eye10.png" zindex="35"]
[chara_layer name="akehiru" part="eye" id="eye11" storage="chara/akehiru/eye11.png" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="akehiru" part="mouth" id="mouth0" storage="chara/akehiru/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth1" storage="chara/akehiru/mouth1.png" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth3" storage="chara/akehiru/mouth3.png" lip_image="mouth0" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth4" storage="chara/akehiru/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth5" storage="chara/akehiru/mouth5.png" lip_image="mouth6" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth6" storage="chara/akehiru/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth7" storage="chara/akehiru/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth8" storage="chara/akehiru/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth9" storage="chara/akehiru/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth10" storage="chara/akehiru/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="akehiru" part="mouth" id="mouth11" storage="chara/akehiru/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="akehiru" part="hair" id="normal" storage="chara/akehiru/hair_normal.png" zindex="38"]
[chara_layer name="akehiru" part="hair" id="hat" storage="chara/akehiru/hair_hat.png" zindex="38"]
[chara_layer name="akehiru" part="hair" id="blood" storage="chara/akehiru/hair_blood.png" zindex="38"]
[chara_layer name="akehiru" part="hair" id="blood_hat" storage="chara/akehiru/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="akehiruNormal"]
  [chara_part name="akehiru" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruNormalHat"]
  [chara_part name="akehiru" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruNormalBlood"]
  [chara_part name="akehiru" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruNormalBloodHat"]
  [chara_part name="akehiru" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="akehiruBlush"]
  [chara_part name="akehiru" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruBlushHat"]
  [chara_part name="akehiru" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruBlushBlood"]
  [chara_part name="akehiru" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruBlushBloodHat"]
  [chara_part name="akehiru" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="akehiruSurprise"]
  [chara_part name="akehiru" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruSurpriseHat"]
  [chara_part name="akehiru" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruSurpriseBlood"]
  [chara_part name="akehiru" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruSurpriseBloodHat"]
  [chara_part name="akehiru" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="akehiruSmile"]
  [chara_part name="akehiru" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruSmileHat"]
  [chara_part name="akehiru" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruSmileBlood"]
  [chara_part name="akehiru" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruSmileBloodHat"]
  [chara_part name="akehiru" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="akehiruSad"]
  [chara_part name="akehiru" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruSadHat"]
  [chara_part name="akehiru" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruSadBlood"]
  [chara_part name="akehiru" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruSadBloodHat"]
  [chara_part name="akehiru" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="akehiruAngry"]
  [chara_part name="akehiru" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruAngryHat"]
  [chara_part name="akehiru" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruAngryBlood"]
  [chara_part name="akehiru" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruAngryBloodHat"]
  [chara_part name="akehiru" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="akehiruJito"]
  [chara_part name="akehiru" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruJitoHat"]
  [chara_part name="akehiru" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruJitoBlood"]
  [chara_part name="akehiru" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruJitoBloodHat"]
  [chara_part name="akehiru" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="akehiruSad2"]
  [chara_part name="akehiru" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruSad2Hat"]
  [chara_part name="akehiru" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruSad2Blood"]
  [chara_part name="akehiru" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruSad2BloodHat"]
  [chara_part name="akehiru" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="akehiruSmile2"]
  [chara_part name="akehiru" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruSmile2Hat"]
  [chara_part name="akehiru" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruSmile2Blood"]
  [chara_part name="akehiru" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruSmile2BloodHat"]
  [chara_part name="akehiru" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="akehiruSerious"]
  [chara_part name="akehiru" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="akehiruSeriousHat"]
  [chara_part name="akehiru" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="akehiruSeriousBlood"]
  [chara_part name="akehiru" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="akehiruSeriousBloodHat"]
  [chara_part name="akehiru" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="tota" part="body" id="body_blood0" storage="chara/tota/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="tota" part="body" id="body_blood1" storage="chara/tota/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="tota" part="face" id="normal" storage="chara/tota/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="tota" part="face_blood" id="none" storage="chara/tota/empty.png" zindex="25"]
[chara_layer name="tota" part="face_blood" id="blood" storage="chara/tota/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="tota" part="eye" id="eye0" storage="chara/tota/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye1" storage="chara/tota/eye1.png" zindex="35"]
[chara_layer name="tota" part="eye" id="eye2" storage="chara/tota/eye2.png" zindex="35"]
[chara_layer name="tota" part="eye" id="eye3" storage="chara/tota/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye4" storage="chara/tota/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye5" storage="chara/tota/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye6" storage="chara/tota/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye7" storage="chara/tota/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye8" storage="chara/tota/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye9" storage="chara/tota/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye10" storage="chara/tota/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="tota" part="eye" id="eye11" storage="chara/tota/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="tota" part="mouth" id="mouth0" storage="chara/tota/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth1" storage="chara/tota/mouth1.png" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth3" storage="chara/tota/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth4" storage="chara/tota/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth5" storage="chara/tota/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth6" storage="chara/tota/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth7" storage="chara/tota/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth8" storage="chara/tota/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth9" storage="chara/tota/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth10" storage="chara/tota/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="tota" part="mouth" id="mouth11" storage="chara/tota/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="tota" part="hair" id="normal" storage="chara/tota/hair_normal.png" zindex="38"]
[chara_layer name="tota" part="hair" id="hat" storage="chara/tota/hair_hat.png" zindex="38"]
[chara_layer name="tota" part="hair" id="blood" storage="chara/tota/hair_blood.png" zindex="38"]
[chara_layer name="tota" part="hair" id="blood_hat" storage="chara/tota/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="totaNormal"]
  [chara_part name="tota" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaNormalHat"]
  [chara_part name="tota" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaNormalBlood"]
  [chara_part name="tota" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaNormalBloodHat"]
  [chara_part name="tota" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="totaBlush"]
  [chara_part name="tota" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaBlushHat"]
  [chara_part name="tota" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaBlushBlood"]
  [chara_part name="tota" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaBlushBloodHat"]
  [chara_part name="tota" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="totaSurprise"]
  [chara_part name="tota" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaSurpriseHat"]
  [chara_part name="tota" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaSurpriseBlood"]
  [chara_part name="tota" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaSurpriseBloodHat"]
  [chara_part name="tota" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="totaSmile"]
  [chara_part name="tota" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaSmileHat"]
  [chara_part name="tota" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaSmileBlood"]
  [chara_part name="tota" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaSmileBloodHat"]
  [chara_part name="tota" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="totaSad"]
  [chara_part name="tota" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaSadHat"]
  [chara_part name="tota" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaSadBlood"]
  [chara_part name="tota" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaSadBloodHat"]
  [chara_part name="tota" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="totaAngry"]
  [chara_part name="tota" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaAngryHat"]
  [chara_part name="tota" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaAngryBlood"]
  [chara_part name="tota" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaAngryBloodHat"]
  [chara_part name="tota" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="totaJito"]
  [chara_part name="tota" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaJitoHat"]
  [chara_part name="tota" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaJitoBlood"]
  [chara_part name="tota" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaJitoBloodHat"]
  [chara_part name="tota" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="totaSad2"]
  [chara_part name="tota" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaSad2Hat"]
  [chara_part name="tota" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaSad2Blood"]
  [chara_part name="tota" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaSad2BloodHat"]
  [chara_part name="tota" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="totaSmile2"]
  [chara_part name="tota" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaSmile2Hat"]
  [chara_part name="tota" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaSmile2Blood"]
  [chara_part name="tota" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaSmile2BloodHat"]
  [chara_part name="tota" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="totaSerious"]
  [chara_part name="tota" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="totaSeriousHat"]
  [chara_part name="tota" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="totaSeriousBlood"]
  [chara_part name="tota" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="totaSeriousBloodHat"]
  [chara_part name="tota" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="momona" part="body" id="body_blood0" storage="chara/momona/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="momona" part="body" id="body_blood1" storage="chara/momona/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="momona" part="face" id="normal" storage="chara/momona/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="momona" part="face_blood" id="none" storage="chara/momona/empty.png" zindex="25"]
[chara_layer name="momona" part="face_blood" id="blood" storage="chara/momona/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="momona" part="eye" id="eye0" storage="chara/momona/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye1" storage="chara/momona/eye1.png" zindex="35"]
[chara_layer name="momona" part="eye" id="eye2" storage="chara/momona/eye2.png" zindex="35"]
[chara_layer name="momona" part="eye" id="eye3" storage="chara/momona/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye4" storage="chara/momona/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye5" storage="chara/momona/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye6" storage="chara/momona/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye7" storage="chara/momona/eye7.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye8" storage="chara/momona/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye9" storage="chara/momona/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye10" storage="chara/momona/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="momona" part="eye" id="eye11" storage="chara/momona/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="momona" part="mouth" id="mouth0" storage="chara/momona/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth1" storage="chara/momona/mouth1.png" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth3" storage="chara/momona/mouth3.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth4" storage="chara/momona/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth5" storage="chara/momona/mouth5.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth6" storage="chara/momona/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth7" storage="chara/momona/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth8" storage="chara/momona/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth9" storage="chara/momona/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth10" storage="chara/momona/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="momona" part="mouth" id="mouth11" storage="chara/momona/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="momona" part="hair" id="normal" storage="chara/momona/hair_normal.png" zindex="38"]
[chara_layer name="momona" part="hair" id="hat" storage="chara/momona/hair_hat.png" zindex="38"]
[chara_layer name="momona" part="hair" id="blood" storage="chara/momona/hair_blood.png" zindex="38"]
[chara_layer name="momona" part="hair" id="blood_hat" storage="chara/momona/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="momona_normal"]
  [chara_part name="momona" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momona_normal_hat"]
  [chara_part name="momona" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momona_normal_blood"]
  [chara_part name="momona" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momona_normal_blood_hat"]
  [chara_part name="momona" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="momonaBlush"]
  [chara_part name="momona" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaBlushHat"]
  [chara_part name="momona" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaBlushBlood"]
  [chara_part name="momona" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaBlushBloodHat"]
  [chara_part name="momona" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="momonaSurprise"]
  [chara_part name="momona" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaSurpriseHat"]
  [chara_part name="momona" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaSurpriseBlood"]
  [chara_part name="momona" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaSurpriseBloodHat"]
  [chara_part name="momona" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="momonaSmile"]
  [chara_part name="momona" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaSmileHat"]
  [chara_part name="momona" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaSmileBlood"]
  [chara_part name="momona" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaSmileBloodHat"]
  [chara_part name="momona" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="momonaSad"]
  [chara_part name="momona" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaSadHat"]
  [chara_part name="momona" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaSadBlood"]
  [chara_part name="momona" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaSadBloodHat"]
  [chara_part name="momona" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="momonaAngry"]
  [chara_part name="momona" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaAngryHat"]
  [chara_part name="momona" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaAngryBlood"]
  [chara_part name="momona" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaAngryBloodHat"]
  [chara_part name="momona" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="momonaJito"]
  [chara_part name="momona" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaJitoHat"]
  [chara_part name="momona" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaJitoBlood"]
  [chara_part name="momona" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaJitoBloodHat"]
  [chara_part name="momona" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="momonaSad2"]
  [chara_part name="momona" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaSad2Hat"]
  [chara_part name="momona" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaSad2Blood"]
  [chara_part name="momona" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaSad2BloodHat"]
  [chara_part name="momona" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="momonaSmile2"]
  [chara_part name="momona" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaSmile2Hat"]
  [chara_part name="momona" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaSmile2Blood"]
  [chara_part name="momona" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaSmile2BloodHat"]
  [chara_part name="momona" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="momonaSerious"]
  [chara_part name="momona" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="momonaSeriousHat"]
  [chara_part name="momona" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="momonaSeriousBlood"]
  [chara_part name="momona" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="momonaSeriousBloodHat"]
  [chara_part name="momona" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
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
[chara_layer name="syuuichi" part="body" id="body_blood0" storage="chara/syuuichi/body_blood0.png" frame_image="body_blood1" frame_time="1500,1500" zindex="10"]
[chara_layer name="syuuichi" part="body" id="body_blood1" storage="chara/syuuichi/body_blood1.png" zindex="10"]

; -- 顔（face）: bodyの上 --
[chara_layer name="syuuichi" part="face" id="normal" storage="chara/syuuichi/face.png" zindex="20"]

; -- 顔用血濡れ（face_blood）: faceの上 --
[chara_layer name="syuuichi" part="face_blood" id="none" storage="chara/syuuichi/empty.png" zindex="25"]
[chara_layer name="syuuichi" part="face_blood" id="blood" storage="chara/syuuichi/face_blood.png" zindex="25"]

; -- 目（eye）: faceの上 --
[chara_layer name="syuuichi" part="eye" id="eye0" storage="chara/syuuichi/eye0.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye1" storage="chara/syuuichi/eye1.png" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye2" storage="chara/syuuichi/eye2.png" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye3" storage="chara/syuuichi/eye3.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye4" storage="chara/syuuichi/eye4.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye5" storage="chara/syuuichi/eye5.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye6" storage="chara/syuuichi/eye6.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye7" storage="chara/syuuichi/eye7.png" frame_image="eye2, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye8" storage="chara/syuuichi/eye8.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye9" storage="chara/syuuichi/eye9.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye10" storage="chara/syuuichi/eye10.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]
[chara_layer name="syuuichi" part="eye" id="eye11" storage="chara/syuuichi/eye11.png" frame_image="eye1, eye2" frame_time="1000-4000,80,80" zindex="35"]

; -- 口（mouth）: faceの上 --
; すべての発言時（lip_sync）にmouth1（開いた口）を適用して口パク
[chara_layer name="syuuichi" part="mouth" id="mouth0" storage="chara/syuuichi/mouth0.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth1" storage="chara/syuuichi/mouth1.png" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth3" storage="chara/syuuichi/mouth3.png" lip_image="mouth0" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth4" storage="chara/syuuichi/mouth4.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth5" storage="chara/syuuichi/mouth5.png" lip_image="mouth0" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth6" storage="chara/syuuichi/mouth6.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth7" storage="chara/syuuichi/mouth7.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth8" storage="chara/syuuichi/mouth8.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth9" storage="chara/syuuichi/mouth9.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth10" storage="chara/syuuichi/mouth10.png" lip_image="mouth1" lip_time="150" zindex="30"]
[chara_layer name="syuuichi" part="mouth" id="mouth11" storage="chara/syuuichi/mouth11.png" lip_image="mouth1" lip_time="150" zindex="30"]

; -- 髪・帽子（hair）: 一番上 --
[chara_layer name="syuuichi" part="hair" id="normal" storage="chara/syuuichi/hair_normal.png" zindex="38"]
[chara_layer name="syuuichi" part="hair" id="hat" storage="chara/syuuichi/hair_hat.png" zindex="38"]
[chara_layer name="syuuichi" part="hair" id="blood" storage="chara/syuuichi/hair_blood.png" zindex="38"]
[chara_layer name="syuuichi" part="hair" id="blood_hat" storage="chara/syuuichi/hair_blood_hat.png" zindex="38"]

; -- 表情変換マクロ --
; 通常（normal）
[macro name="syuuichiNormal"]
  [chara_part name="syuuichi" eye="eye0" mouth="mouth0" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiNormalHat"]
  [chara_part name="syuuichi" eye="eye0" mouth="mouth0" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiNormalBlood"]
  [chara_part name="syuuichi" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiNormalBloodHat"]
  [chara_part name="syuuichi" eye="eye0" mouth="mouth0" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 赤面（blush）
[macro name="syuuichiBlush"]
  [chara_part name="syuuichi" eye="eye8" mouth="mouth8" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiBlushHat"]
  [chara_part name="syuuichi" eye="eye8" mouth="mouth8" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiBlushBlood"]
  [chara_part name="syuuichi" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiBlushBloodHat"]
  [chara_part name="syuuichi" eye="eye8" mouth="mouth8" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 驚き（surprise）
[macro name="syuuichiSurprise"]
  [chara_part name="syuuichi" eye="eye3" mouth="mouth3" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiSurpriseHat"]
  [chara_part name="syuuichi" eye="eye3" mouth="mouth3" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiSurpriseBlood"]
  [chara_part name="syuuichi" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiSurpriseBloodHat"]
  [chara_part name="syuuichi" eye="eye3" mouth="mouth3" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び（smile）
[macro name="syuuichiSmile"]
  [chara_part name="syuuichi" eye="eye4" mouth="mouth4" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiSmileHat"]
  [chara_part name="syuuichi" eye="eye4" mouth="mouth4" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiSmileBlood"]
  [chara_part name="syuuichi" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiSmileBloodHat"]
  [chara_part name="syuuichi" eye="eye4" mouth="mouth4" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ（sad）
[macro name="syuuichiSad"]
  [chara_part name="syuuichi" eye="eye5" mouth="mouth5" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiSadHat"]
  [chara_part name="syuuichi" eye="eye5" mouth="mouth5" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiSadBlood"]
  [chara_part name="syuuichi" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiSadBloodHat"]
  [chara_part name="syuuichi" eye="eye5" mouth="mouth5" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 怒り（angry）
[macro name="syuuichiAngry"]
  [chara_part name="syuuichi" eye="eye6" mouth="mouth6" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiAngryHat"]
  [chara_part name="syuuichi" eye="eye6" mouth="mouth6" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiAngryBlood"]
  [chara_part name="syuuichi" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiAngryBloodHat"]
  [chara_part name="syuuichi" eye="eye6" mouth="mouth6" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; じと（jito）
[macro name="syuuichiJito"]
  [chara_part name="syuuichi" eye="eye7" mouth="mouth7" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiJitoHat"]
  [chara_part name="syuuichi" eye="eye7" mouth="mouth7" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiJitoBlood"]
  [chara_part name="syuuichi" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiJitoBloodHat"]
  [chara_part name="syuuichi" eye="eye7" mouth="mouth7" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 悲しみ2（sad2）
[macro name="syuuichiSad2"]
  [chara_part name="syuuichi" eye="eye9" mouth="mouth9" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiSad2Hat"]
  [chara_part name="syuuichi" eye="eye9" mouth="mouth9" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiSad2Blood"]
  [chara_part name="syuuichi" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiSad2BloodHat"]
  [chara_part name="syuuichi" eye="eye9" mouth="mouth9" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; 喜び2（smile2）
[macro name="syuuichiSmile2"]
  [chara_part name="syuuichi" eye="eye10" mouth="mouth10" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiSmile2Hat"]
  [chara_part name="syuuichi" eye="eye10" mouth="mouth10" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiSmile2Blood"]
  [chara_part name="syuuichi" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiSmile2BloodHat"]
  [chara_part name="syuuichi" eye="eye10" mouth="mouth10" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

; シリアス（serious）
[macro name="syuuichiSerious"]
  [chara_part name="syuuichi" eye="eye11" mouth="mouth11" body="body0" hair="normal" face_blood="none"]
[endmacro]
[macro name="syuuichiSeriousHat"]
  [chara_part name="syuuichi" eye="eye11" mouth="mouth11" body="body0" hair="hat" face_blood="none"]
[endmacro]
[macro name="syuuichiSeriousBlood"]
  [chara_part name="syuuichi" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood" face_blood="blood"]
[endmacro]
[macro name="syuuichiSeriousBloodHat"]
  [chara_part name="syuuichi" eye="eye11" mouth="mouth11" body="body_blood0" hair="blood_hat" face_blood="blood"]
[endmacro]

;=========================================
; 名前表示エリアの設定
;=========================================
[chara_config ptext="chara_name_area"]

; 元のファイルに戻る
[return]
