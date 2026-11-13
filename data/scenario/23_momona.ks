; DAY23の人物別本文。入口: *start または指定場面。次のDAY・結末へjumpする。
; ========================================================
; 23_momona.ks / DAY23 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[jump target="*v3M23Recover"]
[s]

; ---- v3M23Recover ----
*v3M23Recover
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="f.storyV6.nextDay=23"]
[call storage="daily.ks" target="*routeInterval"]
[eval exp="window.fiaStory.enter('v3_m23_recover')"]
#
記録のどこを変えられたかを、回収した資料から探した。[p]
命令の内容を知ることと、百七が戻ることは同じではない。[p]
俺たちは外からの命令が届く経路を断ち、彼女へ話しかけられる時間を作った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺が誰か、今すぐ答えなくていい」[p]
#
百七の指が動いた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「お前が嫌なことを、嫌だと言ってくれ。命令じゃなくて」[p]
#
返事はなかった。[p]
一度で戻ると思うのをやめた。安全を確保し、同じ働きかけをただ繰り返すのではなく、反応した所を確かめた。[p]
彼女が実際に話したことを、俺も話した。未読の約束を、都合のいい鍵にしなかった。[p]
百七が顔をしかめた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……しつこい」[p]
#
俺は、息を止めた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そんな顔、しないでよ。アタシが、悪いみたいでしょ」[p]
#
命令にはない文句だった。[p]
それを聞いて初めて、俺は彼女の名をもう一度呼べた。[p]
; 記憶回復は命令経路の無効化と本人の再選択を伴う。恋愛の台詞一つでデータが全復元する処理にはしない。
[jump target="*v3M24Future" storage="24_momona.ks"]


; source:10755
