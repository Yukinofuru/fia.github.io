; DAY15の本文・入口。入口: *start。日課はdaily.ks、日中のcallはreturnで呼出元へ戻る。
; ========================================================
; 15.ks / DAY15 本文
; 本文はKS、状態判定はstory_system.js。別ファイルへはstorageを明示。
; ========================================================

*start
[call target="*v315Gate"]
[return]

; ---- v315Gate ----
*v315Gate
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_15_gate')"]
; 必要な探索資料・電源確保の進捗で判定。閾値は仮名。
[if exp="f.isStationPrepared"]
    [jump target="*v215Start"]
[else]
    [jump target="*v315Dark"]
[endif]


; source:9283

; ---- v315Dark ----
*v315Dark
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v3_15_dark')"]
#
灯りが、点かなかった。[p]
図にある所まで来ても、電源へ繋がる手掛かりが足りない。[p]
闇の向こうで、何かが床を擦った。[p]
藍爛が、俺の袖を掴んだ。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さん。こちらへ」[p]
#
照らせる範囲の外から、怪異が現れた。[p]
; 既存の遭遇！へ接続。無作為なダイスは使わない。突破後も未確保の設備情報を取得済みにしない。
; ここでは突破した場合の本文へ。敗北は既存の遭遇結果を使い、新しい恋愛ENDを増やさない。
[call storage="room.ks" target="*darkEncounter"]
[jump target="*v215Start"]

; source:9303

; ---- v215Start ----
*v215Start
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_start')"]
; 章開始時に一度だけ初期化。
#
四番、と書かれた標識が、光の届く範囲へ浮かんだ。[p]
その下で、古い電光掲示板が短く点滅している。文字にはならない。切れた線が、何かを表示しようとしては消える。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ここが、担当範囲の端です」[p]
#
藍爛が図面と実物を見比べた。ホームの奥から、低い機械音が聞こえる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「主電源は、まだ入れてないんだよな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。別の電源が残っている場所は、あるそうです」[p]
#
足元の線を踏まないように、位置を変える。俺たちが判断するのは、直していいかではない。どこが、どうなっているかだ。[p]
空気に、微かな臭いが混じっていた。何の臭いか考えかけて、藍爛が鼻先を押さえた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ガス……でしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「場所を記録しよう。元が分からない間は、触らないでおこう」[p]
#
藍爛が紙へ書く。俺は、改札とホームの位置が同時に入る写真を撮った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私が図を持ちます。写真は、古虫さんにお願いしても？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。俺が見落としたら、止めてくれ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私の時も、お願いします」[p]
#
二人で同じ紙を見た。確認のために寄せた肩が、一度触れた。彼女は謝りかけ、紙の方を向き直った。[p]
[jump target="*v215Hub"]


; source:9336

; ---- v215Hub ----
*v215Hub
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_hub')"]
; 未調査・調査済・追加質問ありを表示。撮影記録と既知情報は自由に閲覧可能。
#
改札前へ戻った。遠くで、金属が小さく鳴った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「次は、どちらを見ますか」[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"ホーム・線路周辺を確認する",target:"*v215Platform"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"駅員室と管理設備を確認する",target:"*v215Office"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"キオスクとコンコースを確認する",target:"*v215Kiosk"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"写真と点検記録を見直す",target:"*v215Review"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9348

; ---- v215Platform ----
*v215Platform
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_platform')"]
#
ホームの縁へ近づくと、風が足元を抜けた。[p]
線路の向こうは見えない。声をかければ、思っていたより遠くから返ってきそうだった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"下りホーム先端の配電ボックスを見る",target:"*v21511"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"給電設備とジャンクション付近を見る",target:"*v21512"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"柱のケーブルと防護ネットを見る",target:"*v21513"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"改札前へ戻る",target:"*v215Hub"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9358

; ---- v21511 ----
*v21511
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_11')"]
#
配電ボックスの扉は、途中まで開いていた。[p]
配線へ手を入れず、灯りを向ける。内部の札と、ボックス全体を別に撮った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「この線は、切れてる？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「影かもしれません。反対から、照らしてもいいですか」[p]
#
灯りの向きが変わる。暗い線は影だった。藍爛が図に丸をつける。[p]
その手が止まった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さん。こちらを」[p]
#
ボックスの脇のコンクリートが、深く抉れていた。表面を擦った跡ではない。何かが、中まで食い込んでいる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……工具？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「分かりません。でも、三本とも、途中で曲がっています」[p]
#
藍爛の指は、傷に触れない距離で止まっていた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"傷の位置と大きさを記録する",target:"*v21511Photo"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"線路へ降りる側にも続くか確かめる",target:"*v21511Exitcheck"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9383

; ---- v21511Photo ----
*v21511Photo
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_11_photo')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Platform"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_11_photo')"]
#
設備の番号と傷を、同じ画面に入れた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何がつけたかは、戻ってから考えよう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。……今、いないとは限りませんから」[p]
#
彼女の言葉で、音のない場所へ耳が向いた。[p]
; 取得P11：配電箱脇の三条痕。原因は未確定。
[eval exp="window.fiaStory.evidence('P11','v2_15_11_photo')"]
[jump target="*v215Platform"]


; source:9395

; ---- v21511Exitcheck ----
*v21511Exitcheck
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_11_exitcheck')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v21511Photo"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_11_exitcheck')"]
#
線路へ降りる側の柵から先へ、灯りを伸ばした。[p]
低い所にも、同じ向きの傷がある。追っていた物が登ったのか、逃げた物が這い上がったのか。傷だけでは分からない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「この足場は、図にあります。けれど、奥の扉はありません」[p]
#
暗い壁の下に、四角い継ぎ目が見えた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今は降りない。位置だけ残そう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい」[p]
#
残念そうではなかった。藍爛は、俺が引き返す方へ一緒に足を向けた。[p]
; 取得P11B：未登録の下部扉の位置。後半で位置の照合が可能。
[eval exp="window.fiaStory.evidence('P11B','v2_15_11_exitcheck')"]
[jump target="*v21511Photo"]


; source:9412

; ---- v21512 ----
*v21512
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_12')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Platform"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_12')"]
#
設備の金属が、途中から丸みを失っていた。[p]
腐食という言葉は浮かんだが、そのまま書くのをやめた。原因まで分かったわけではない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「留めていた所も、同じです」[p]
#
離れた二か所で、似た崩れ方をしている。周囲の埃は、その場所だけ違う色だった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「熱でこうなったのか、何かをかけたのか……」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「写真にすると、似て見えますね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「じゃあ、近くと遠くを残そう」[p]
#
藍爛が、写る範囲の外へ足を動かした。俺が撮り終える前に戻りかけ、慌てて止まる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「入っても平気だよ。人がいた方が、大きさも分かる」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、記録になるんですね」[p]
#
その言い方がおかしくて、少し笑った。彼女も、つられて笑った。[p]
; 取得P12：局所的な溶損と周囲の変色。工作の可能性を追加し、犯人確定にはしない。
[eval exp="window.fiaStory.evidence('P12','v2_15_12')"]
[jump target="*v215Platform"]


; source:9437

; ---- v21513 ----
*v21513
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_13')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Platform"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_13')"]
#
柱を這う線の上で、防護ネットが垂れていた。[p]
藍爛が灯りを上へ向ける。破れた目に、黒ずんだ布が引っかかっている。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「服……でしょうか」[p]
#
布の端から、柱へ跡が続いていた。見上げる姿勢のまま、喉が固くなる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「上へ運ばれたのか」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「落ちた物が、引っかかったのかもしれません」[p]
#
彼女の言葉に頷き、どちらとも書かずに撮った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「怖い？」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい。古虫さんは？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一人じゃなくてよかった、とは思ってる」[p]
#
藍爛が俺を見た。返事を探してから、小さく頷く。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「私も、そう思っています」[p]
; 取得P13：上部ネットの損壊・布片・付着物。後半で頭上の経路を警戒する根拠になる。
[eval exp="window.fiaStory.evidence('P13','v2_15_13')"]
[jump target="*v215Platform"]


; source:9464

; ---- v215Office ----
*v215Office
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_office')"]
#
窓口のガラスは、内側から紙で塞がれていた。[p]
隙間に残った時刻表だけが、何事もなかった頃の仕事を続けている。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"窓口の管理・配電ログを調べる",target:"*v21521"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"ロッカールームと扉を調べる",target:"*v21522"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"バックヤードとシュレッダーを調べる",target:"*v21523"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"改札前へ戻る",target:"*v215Hub"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9474

; ---- v21521 ----
*v21521
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_21')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Office"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_21')"]
#
管理端末の横に、印刷された記録が挟まっていた。[p]
端末を操作する前に、そちらを開く。閉鎖当日の表題と、途中で途切れた連絡記録があった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「避難先が、地下になっています」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ホームより、下か」[p]
#
図面のどこにも、同じ区画名がない。後半の記録では、通信の遮断が命令されていた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「残った人には、何も知らせなかったのでしょうか」[p]
#
紙を持つ指が強くなる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「知らせた記録は、今の所、ないな」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……すみません。決めつけてしまって」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「怒ってもいいと思う。何があったかは、別に確かめよう」[p]
#
藍爛は深く息を吐いた。俺へ渡す前に、紙の折れた端を直した。[p]
; 取得O21：閉鎖当日の地下区画への移動命令と通信遮断。現在の情報漏洩と同一犯と決めない。
[eval exp="window.fiaStory.evidence('O21','v2_15_21')"]
[jump target="*v215Office"]


; source:9499

; ---- v21522 ----
*v21522
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_22')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Office"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_22')"]
; 元チャートの「ロッカーの内側から施錠」は構造を整理し、部屋への籠城痕と破損ロッカーを分けて描く。
#
ロッカーの扉が、何枚も外れていた。[p]
部屋の出入口には、机を引きずった跡が残っている。閉めた扉を押さえるために、内側から積んだらしい。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「入ろうとしたのではなくて……出られないようにしたんですね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「外の何かから、隠れていたのかもしれない」[p]
#
空調の吹き出し口へ灯りを向ける。格子が奥へ曲がっていた。藍爛が、自分の背後を見た。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「扉を塞いでも、上から……」[p]
#
続きは言わなかった。俺も、足元から頭上へ視線を上げた。[p]
隅に避難用の札があった。通路名と、設備の配置が簡略化されている。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これ、借りよう。戻る道にも使える」[p]
; 取得O22：籠城痕、上部格子の変形、避難用簡略図。後半の搬送経路候補が読める。
[eval exp="window.fiaStory.evidence('O22','v2_15_22')"]
[jump target="*v215Office"]


; source:9520

; ---- v21523 ----
*v21523
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_23')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Office"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_23')"]
#
シュレッダーは止まっていた。底の紙くずは、細かいものと、途中で切れた長いものが混ざっている。[p]
全てを繋ぎ直す時間はない。藍爛が、文字の残る断片だけを分けた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「被検体、移送……この後は、読めません」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「隠蔽、か」[p]
#
別の紙だった。二つの単語を並べるだけで、一つの文章に見えそうになる。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「同じ書類でしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分けて撮ろう。裏も」[p]
#
彼女が頷き、紙片を離す。裏に、区画を示す記号が残っていた。[p]
拾った順序と、元の文章の順序は違う。俺は記録の端へ、わざわざそう書いた。[p]
; 取得O23：移送計画の断片、別紙の隠蔽の語、区画記号。完全な計画本文の取得にはしない。
[eval exp="window.fiaStory.evidence('O23','v2_15_23')"]
[jump target="*v215Office"]


; source:9540

; ---- v215Kiosk ----
*v215Kiosk
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_kiosk')"]
#
キオスクの戸は、半分だけ下りていた。閉店を知らせる札が、床へ落ちている。[p]
臭いが、さっきより強かった。藍爛も気づいたらしく、図面の端を押さえた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"改札機列の電源端子を調べる",target:"*v21531"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"キオスク裏の主幹ケーブルを調べる",target:"*v21532"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"職員用休憩室・給湯スペースを確認する",target:"*v21533"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"改札前へ戻る",target:"*v215Hub"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9550

; ---- v21531 ----
*v21531
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_31')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Kiosk"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_31')"]
#
改札機の保守扉が外されていた。[p]
中の部品は、乱暴に引き抜かれたようには見えない。接続の位置に、何もなくなった所がある。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「抜いて、持っていったのでしょうか」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「壊して通った感じではないな」[p]
#
落ちているねじと、開かれた扉を撮った。鍵の有無だけでは、誰が開けたかは分からない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「入れる人だったのか、開けられる人だったのか……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「その違いは、残しておこう」[p]
; 取得K31：保守側から部品を取り外した痕跡。内通者の単独確定証拠ではない。
[eval exp="window.fiaStory.evidence('K31','v2_15_31')"]
[jump target="*v215Kiosk"]


; source:9567

; ---- v21532 ----
*v21532
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_32')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Kiosk"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_32')"]
#
売店の裏で、主幹ケーブルが途切れていた。[p]
断面の形が、さっきの溶けた金属とは違う。藍爛が二枚の写真を並べた。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「同じ傷では、なさそうです」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こっちは、切った後に何かを使ったのか」[p]
#
変色した所へ触れかけて、手を止める。確認する方法を持っていない物へ、指を出す理由はない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「途中でやめましたね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「止めてくれって、先に言っただろ」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「はい。でも、今は、私が言う前でした」[p]
#
褒められるほどのことではない。そう返しかけて、やめた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……見てくれてて、ありがとう」[p]
; 取得K32：切断と変色の併存。人為的な破壊の疑い。薬品・刃物の種類と犯人は未確定。
[eval exp="window.fiaStory.evidence('K32','v2_15_32')"]
[jump target="*v215Kiosk"]


; source:9590

; ---- v215Review ----
*v215Review
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_review')"]
[call storage="lib.ks" target="*records"]
[jump target="*v215Hub"]

; source:9605

; ---- v21533 ----
*v21533
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_33')"]
#
職員用、と書かれた扉の前で足を止めた。[p]
臭いは、ここから漏れている。遠くで聞いていた機械音に、短い規則音が混じっていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを開ける前に、記録を見直そう」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「ほかの点検に戻ることも、出来ます」[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"まだ確認していない場所へ戻る",target:"*v215Hub"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"危険箇所の確認へ進む",target:"*v215Door"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9617

; ---- v215Door ----
*v215Door
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_door')"]
#
扉の鍵を開けると、重い空気が流れ出した。[p]
藍爛が図を胸元へ引いた。俺は一歩退く。[p]
壁際の給湯器。その下にあるはずのない小さな物が、灯りを返した。[p]
カチ、と音がした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「下がれ！」[p]
; 後半差分：距離を取る判断は携行品と即時の位置へ反映。爆発そのものは固定事件。
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"藍爛を連れて壁際へ退く",target:"*v215BlastCover"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"危険を叫んで、退路を指す",target:"*v215BlastCall"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9630

; ---- v215BlastCover ----
*v215BlastCover
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_blast_cover')"]
; 携行写真機を保持。藍爛が古虫を庇う位置へ動く。
#
彼女の腕を引いた。来た方へ退こうとした瞬間、その手が逆に俺を押した。[p]
[jump target="*v215Blast"]


; source:9636

; ---- v215BlastCall ----
*v215BlastCall
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_blast_call')"]
; 写真機は落下するが記録媒体を後で回収可能。未取得の写真は増えない。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「改札へ、戻れ！」[p]
#
藍爛が動いた。けれど、俺が示した方ではなく、俺の前へ。[p]
[jump target="*v215Blast"]


; source:9644

; ---- v215Blast ----
*v215Blast
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_blast')"]
#
音が、光に遅れて来た。[p]
身体が床を滑る。何かが背中へ乗り、熱と破片の向こうから、息を詰める声がした。[p]
藍爛の声だった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「藍爛さん！」[p]
#
返事がない。俺に覆いかぶさった身体を、崩さないように支える。[p]
顔へ触れる前に、息を確かめた。ある。浅いが、ある。[p]
彼女の腕が、俺の服を掴んだままだった。指を一本ずつ外す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「俺は、動ける。だから……」[p]
#
言い終わる前に、ホームの方で金属が軋んだ。[p]
煙の奥に、銀色の輪郭が立っていた。狼に似た顔が、俺たちへ向く。[p]
頭上で、濡れた物が壁を打つ音もした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……くそ」[p]
#
立ち向かうための手は、彼女を支えるために使っていた。[p]
崩れた壁の奥に、暗い隙間がある。図にない場所だった。[p]
俺は藍爛の身体を抱え直した。背後の音を数えず、隙間へ入った。[p]
[jump target="*v215Shelter"]


; source:9669

; ---- v215Shelter ----
*v215Shelter
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_shelter')"]
#
通路を曲がった所で、床へ膝をついた。[p]
追ってくる音が遠ざかったわけではない。壁が一枚増えただけだった。[p]
藍爛を横たえ、短く呼びかけた。返事はない。[p]
火傷と傷を見て、持ってきた物を並べる。手が震えていた。[p]
手順を知っていることと、落ち着いて出来ることは、別だった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……今、出来ることから」[p]
; 固定の緊急処置場面。通常のcare急患日を勝手に追加しない。現行IR-Mで処置可能な範囲と患者状態を分ける。
#
必要な処置を終えても、彼女は目を開けなかった。傷が塞がることと、すぐ歩けることは同じではない。[p]
俺は上着を敷き、身体が冷えないようにした。[p]
少し離れた壁に、業務用の搬送台が立てかけられている。車輪を確かめる。一つは動かない。残りは回った。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「運ぶぞ。痛かったら、怒ってくれ」[p]
#
返事のない相手に、言った。[p]
; この稿の移動案：低い搬送台で藍爛を運ぶ。狭い段差は運び直し、行動中の所在を省略しない。
[jump target="*v215BackHub"]


; source:9690

; ---- v215BackHub ----
*v215BackHub
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_back_hub')"]
#
細い通路が、三方向へ分かれていた。[p]
太い冷却管の続く扉。床の下へ伸びる業務通路。重い防爆扉。[p]
来た方へ灯りを戻す。崩れた壁の向こうで、何かが擦れる音がした。[p]
藍爛の呼吸を、もう一度確かめた。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"冷気の漏れる鉄扉を調べる",target:"*v215Freezer"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"低い業務通路を調べる",target:"*v215Lower"});
[endscript]
[if exp="f.storyV6.hasMomona"]
    [iscript]
tf.storyBranchChoices.push({text:"防爆扉と設備表示を調べる",target:"*v215Security"});
[endscript]
[endif]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"藍爛の状態と搬送台を確かめる",target:"*v215CheckAiran"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9702

; ---- v215CheckAiran ----
*v215CheckAiran
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_check_airan')"]
#
名前を呼び、反応を待った。[p]
; 初期は反応なし。研究室で休止後は短い開眼・握り返し。反復して回復値を稼ぐ操作にはしない。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「置いていかない。少し、道を調べる」[p]
#
台の固定を確かめる。彼女の顔が見える向きへ、灯りを戻した。[p]
[jump target="*v215BackHub"]


; source:9712

; ---- v215Freezer ----
*v215Freezer
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_freezer')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215BackHub"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_freezer')"]
#
冷凍庫の扉は、図面にある物より、ずっと厚かった。[p]
内側に何を入れるつもりで、こんな所へ作ったのか。[p]
開けた隙間から、冷気が流れ出す。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こんな部屋、設計図にはなかったぞ……」[p]
#
返事が欲しくて言ったのだと、遅れて分かった。藍爛は台の上で動かなかった。[p]
俺は彼女を冷気の直撃しない位置へ寄せ、扉から離れすぎない範囲へ入った。[p]
黒い袋が、並んでいた。[p]
吊られた物。積まれた物。床へ落ちた物。[p]
札には、人を数えるための番号があった。名前がある物も、塗りつぶされた物もあった。[p]
袋を全て開くことは出来ない。目に入る札と、配置を記録した。[p]
同じ規則の番号が、札に繰り返されていた。[p]
中の人が誰かを確かめるために、片端から開けるわけにはいかない。保存の仕組みも、停止した時に何が起きるかも、まだ分からなかった。[p]
俺は閉じたまま、札と設備の状態を撮った。[p]
; 取得F1：保存区画・管理札・保存装置。古虫は死体袋と思うが死亡を確認していない。作者の真相は仮死状態の一十のバックアップ。
#
最奥で、袋の端が動いた。[p]
何かが落ちたのかと思った。[p]
もう一度、動いた。[p]
[eval exp="window.fiaStory.evidence('F1','v2_15_freezer')"]
[jump target="*v215Rescue"]


; source:9736

; ---- v215Lower ----
*v215Lower
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_lower')"]
#
下り通路の床に、搬送台の通った跡が残っていた。[p]
幅は、今使っている台より少し広い。先には、冷凍庫の下部へ通じる扉があった。[p]
; O22取得時のみ、簡略図の業務通路と一致することが分かる。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「こっちなら、段差が少ない……」[p]
#
戻る時に使える。印を残し、台を進めた。[p]
扉の向こうで、何かが息を吸った。[p]
[jump target="*v215Freezer"]


; source:9748

; ---- v215Rescue ----
*v215Rescue
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_rescue')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215BackHub"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_rescue')"]
; 百七未救出時のみ。再訪では救出後の空間だけ表示。
#
聞き間違いではなかった。[p]
袋の山の下で、呼吸が続いていた。[p]
上の袋をずらす。手が滑った。もう一度持ち直す。誰かの身体の重さを、荷物として数えないようにした。[p]
一番下の大きな袋へ、声をかける。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「聞こえるか。今、開ける」[p]
#
内側の身体へ刃を向けないように、布を裂いた。[p]
女の子がいた。[p]
血で汚れた顔が、灯りを嫌がるように歪む。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……まぶし……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「生きてるな。俺は衛生兵だ。動かなくていい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「動けるなら……とっくに、出てるわよ」[p]
#
怒る声が返ってきた。俺は初めて、息を吐けた。[p]
息を確かめ、必要な処置をする。彼女は何度か身を引いたが、次に何をするか告げると、短く頷いた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「名前は？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「百七」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「百七。俺は古虫紀一。あっちに、仲間がいる」[p]
#
彼女の視線が、扉の外へ向く。藍爛を見て、口を閉じた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……アンタ、二人とも運ぶつもり？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「そのつもりで、道を探してる」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシは、少し休めば足が動く。勝手に、荷物を増やさないで」[p]
#
強がりかどうかを、今の声だけで決めなかった。座らせたまま反応を確かめる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「動けるかどうか、一緒に確かめよう。それまでは座っててくれ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……命令ばっかり」[p]
#
そう言いながら、彼女は座っていた。[p]
; 取得B1：百七の救出・本人の名乗り。冷凍されていないのは、保存・搬送の仕組みを利用して脱出を図ったため。
; 他の袋は解凍の管理が要る。勝手に開ければ死ぬ危険があるとして、無差別に開封しない。
[eval exp="window.fiaStory.evidence('B1','v2_15_rescue')"]
[jump target="*v215WithMomona"]


; source:9796

; ---- v215WithMomona ----
*v215WithMomona
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_with_momona')"]
#
百七へ水を渡した。彼女は飲む前に、藍爛を見た。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「彼女には、今は別の対応をしてる」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……聞こうと思っただけ」[p]
#
飲み終えた容器を、自分で返す。立とうとして、片膝が揺れた。[p]
手を出すと、叩かれるかと思った。百七は文句を言う顔で、俺の手首を掴んだ。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「今だけ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった」[p]
#
床へ置いた図を見せる。彼女はしばらく黙っていたが、やがて一点を指した。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこ、今は通れないかもしれない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「来たことが？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……知ってる部分がある、ってだけ」[p]
#
知っている理由と、言った経路が正しいかは、別だ。[p]
俺は彼女の指した所に、確定ではない印をつけた。[p]
; 以後、百七は移動に同行。長い駆け足は不可。自力で歩ける範囲を場面内で確認。
[jump target="*v215BackHub"]


; source:9824

; ---- v215Security ----
*v215Security
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_security')"]
[if exp="!f.storyV6.hasMomona"]
    #
    奥から、人の呼吸のような音がした。先に確かめよう。[p]
    [jump target="*v215Freezer"]
[endif]
#
防爆扉の脇で、古い区画記号が擦れていた。[p]
; O23取得時のみ紙片との照合を表示。未取得なら脇の避難表示から対応表を見つける専用観察を挟む。
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
[if exp="window.fiaStory.hasEvidence('O23')"]
    「この印、移送の記録にもあった」[p]
[else]
    「この印、何を示してるんだ」[p]
[endif]
; 上の一行はO23未取得なら「この印、何を示してるんだ」に差し替え。
#
扉の表示と、横に残された点検札を並べた。通常の入口と、非常時の経路は違うらしい。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"扉そのものを押してみる",target:"*v215SecurityForce"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"非常時の表示と退避先を照合する",target:"*v215SecurityRead"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9837

; ---- v215SecurityForce ----
*v215SecurityForce
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_security_force')"]
#
押しても、重さは変わらなかった。[p]
外から開けないための扉だとすれば、力をかけるだけでは足りない。[p]
; 百七救出済なら以下。
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「意地を張る場所、そこじゃないでしょ」[p]
#
息が切れているくせに、口は止まらない。俺は扉から手を離した。[p]
; 百七未救出なら独白で表示へ注意を戻す。不可逆の罰を付けない。
[jump target="*v215Security"]


; source:9849

; ---- v215SecurityRead ----
*v215SecurityRead
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_security_read')"]
#
表示にあるのは、扉の開け方だけではなかった。閉じ込められた時に、人をどちらへ逃がすかが書かれている。[p]
図の線を追う。扉の脇の別経路へ続いていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを突破するんじゃなくて、回り込むのか」[p]
#
脇の業務扉には、非常時に外れる構造が残っていた。札の手順を読み、動かせるかを確かめた。[p]
重い音がして、扉の向こうへ隙間が出来た。[p]
; 解法案：防爆扉を爆破・通電せず、表示から避難用の迂回経路を発見。前半の図があれば照合短縮。
[jump target="*v215Lab"]


; source:9861

; ---- v215Lab ----
*v215Lab
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[if exp="window.fiaStory.hasVisited('v2_15_lab')"]
    #
    ここは確認済みだ。記録を確かめ、先へ進もう。[p]
    [jump target="*v215Exitplan"]
[endif]
[eval exp="window.fiaStory.enter('v2_15_lab')"]
[if exp="!f.storyV6.hasMomona"]
    #
    奥から、人の呼吸のような音がした。先に確かめよう。[p]
    [jump target="*v215Freezer"]
[endif]
#
医学研究室、と書かれた札が、裏返って床に落ちていた。[p]
倒れた器具の向こうに、横になれる台がある。俺は藍爛をそこへ移し、扉が見える位置へ百七の椅子を置いた。[p]
; 百七未救出なら空席。研究室調査後、呼吸音を聞く導線を追加して救出へ戻る。
棚の記録を開く。診療のためのカルテに似ていた。項目を読むほど、似ているだけだと分かった。[p]
怪異の組織。人間の組織。反応の記録。[p]
対象の訴えを書いた欄は、途中からなかった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「人を、何だと思って……」[p]
; 百七救出済。
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「資料が欲しいなら、名前の所だけ見ないで。何をしたかも、持って帰って」[p]
#
百七は、紙を見ていなかった。目を伏せているのか、見る必要がないのかは、分からない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「君の話として、今、全部聞こうとはしない」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、手を動かして」[p]
#
持てる分と、撮る分を分けた。[p]
藍爛の指が動く。俺は記録を置き、そばへ屈んだ。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……古虫、さん」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「いる。ここにいる」[p]
#
彼女の目が少しだけ開いた。俺を見て、その向こうの百七を見た。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「その方は……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここで見つけた。百七だ。一緒に帰る」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「よろしく、は、出てからにするわ」[p]
#
藍爛の唇が、笑おうとして動いた。続けて話させず、俺は水の容器を脇へ戻した。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「歩くのは、まだ駄目だ。道が分かるまで、休んでて」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……はい」[p]
; 昏睡から短時間の応答へ。以後も搬送継続。本人の会話参加を回復し、無傷に戻さない。
; 取得L1：融合研究の記録。氏名や担当者欄を取得範囲ごとに保存。黒幕の最終断定はDAY20以降へ。
[eval exp="window.fiaStory.evidence('L1','v2_15_lab')"]
[jump target="*v215Exitplan"]


; source:9905

; ---- v215Exitplan ----
*v215Exitplan
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_exitplan')"]
[if exp="!f.storyV6.hasMomona"]
    #
    奥から、人の呼吸のような音がした。先に確かめよう。[p]
    [jump target="*v215Freezer"]
[endif]
; 百七未救出なら、奥からの呼吸音に気づき* v2_15_freezerへ戻す。未救出のまま三人脱出を再生しない。
#
研究室の壁に、区画同士の接続を示す古い図が残っていた。[p]
来た方と反対へ伸びる線の先に、管制端末がある。
; 作者の真相：証拠隠滅のために部屋の接続をずらされた。自然発生の迷宮変化とは区別する。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「そこからなら、外へ繋がるかもしれない」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「さっきの道じゃないのか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「さっきの道が、まだあるとは限らないの」[p]
#
確認に戻った。[p]
通路はあった。けれど、同じ場所へ続いていなかった。[p]
付けた印が、向かい合う壁の両方にある。進んだはずの台の跡が、俺の足元へ戻っていた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……戻るだけじゃ、出られないのか」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「だから、別の目印を使う」[p]
#
百七が、壁の管と区画記号を指す。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「古虫さん。写真の、番号を……」[p]
#
藍爛は息を整えてから、続きを言った。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「見える位置だけでは、同じかどうか、分かりません」[p]
#
写真の中の番号と、今の表示を比べる。似た位置にある扉が、別の区画へ移っている。[p]
; 記録保持時は実際の写真だけ使う。落下時は戻る足場で媒体を回収する短場面を挿入。
; 写真不足時は研究室の接続図と各扉の刻印を現地確認する。未取得写真を生成しない。
[jump target="*v415Records"]


; source:9939

; ---- v215Terminal ----
*v215Terminal
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_terminal')"]
#
青白い光が、折れ曲がった鉄骨の向こうで点滅していた。[p]
扉は何枚もあった。どれも同じくらい、帰れそうに見える。[p]
俺は台を止め、藍爛の固定を確かめた。百七が端末へ近づく。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「動いてる。全部じゃないけど」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「どれを選ぶ？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「アタシの勘だけで選んでほしいの？」[p]
#
言い返され、口を閉じた。[p]
端末には、現在の扉の番号と、接続先の区画が並んでいる。研究室の図と、実際の刻印を照合出来る。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"来た時に見えた方角だけを頼りに選ぶ",target:"*v215Wrongexit"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"区画記号・刻印・接続表示を照合する",target:"*v415Crossing"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"百七が知っている範囲を尋ねる",target:"*v215Askexit"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:9958

; ---- v215Wrongexit ----
*v215Wrongexit
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_wrongexit')"]
#
選んだ扉を開いた。[p]
向こうに、さっきまでいた研究室の札が見えた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「外れね。次」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……ずいぶん、あっさり言うんだな」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「間違った扉に、ずっと立っていたい？」[p]
#
違う、と答えた。俺は扉を閉じ、今の接続を記録した。[p]
; 誤選択は接続候補の除外。回数制限は未採用。危険が進む演出を入れるなら事前の手掛かりを追加する。
[jump target="*v215Terminal"]


; source:9973

; ---- v215Askexit ----
*v215Askexit
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_askexit')"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「何を知っていて、何は分からない？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「この印が業務用の出口に使われてたこと。でも、今も同じ場所とは、言えない」[p]
#
百七が表示の一つを指した。答えそのものではないが、比べる相手が絞られた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。それで、確かめよう」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……最初から、そう聞きなさいよ」[p]
; 百七の証言を取得。現物照合と区別する。
[jump target="*v415Crossing"]


; source:9987

; ---- v215Compareexit ----
*v215Compareexit
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_compareexit')"]
#
扉の位置を、頭の中の駅へ無理に戻そうとするのをやめた。[p]
区画の印。業務通路。仮設拠点へ続く側の表示。[p]
一つずつ、今ある物を比べる。[p]
一致する扉があった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これだと思う」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「根拠は？」[p]
#
指を置いて説明した。百七は最後まで聞いてから、頷いた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「じゃあ、開けましょ」[p]
#
扉の先に、空気の流れがあった。[p]
遠くから、人が何かを呼ぶ声が聞こえた。こちらを真似る声かもしれない。俺は足元の表示を確かめてから、返事をした。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「古虫だ！　負傷者がいる！」[p]
#
向こうの光が動く。富山の、ひどく大きな声が返ってきた。[p]
その声を聞いた途端、台を押す手から力が抜けかけた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「まだ。渡してから、休みなさい」[p]
#
百七が台の横を押した。藍爛が、短く息を吐く。[p]
俺たちは、三人で最後の段差を越えた。[p]
[jump target="*v215Return"]


; source:10016

; ---- v215Return ----
*v215Return
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v2_15_return')"]
#
藍爛を寝台へ移す時、彼女の手が俺の袖を掴んだ。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「……戻れましたね」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ああ。戻った」[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「よかった……」[p]
#
彼女の顔を見て、怒りたいことがあるのに気づいた。どうして庇ったのか。どうして自分を後にしたのか。[p]
どれも、俺が今まで人から言われたことだった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「話は、またする。今は、休んでくれ」[p]
#
藍爛は頷いた。今度は、自分から指を離した。[p]
扉の外で、百七が壁に背をつけていた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「で。アタシの席は？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「用意してもらう。その前に、もう一度、状態を確かめたい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「順番が逆じゃない？　座らせてから、言って」[p]
#
俺は椅子を運んだ。富山が、もう一つ隣へ置いた。[p]
#tota
[eval exp="window.fiaLibrary.observe('tota')"]
「お前の分」[p]
#
座ると、膝が震えていたことが分かった。[p]
持ち帰った写真を、綾瀬へ渡す。何があったか、今言える順番で話した。[p]
怖くて、分からなかった所も、そのまま話した。[p]
; DAY15クリア：百七保護、藍爛搬送、取得資料保持。研究の全貌や裏切り者は未解決。
; 夜の通常面談を自動追加しない。百七の初回状態確認は救出の後処理であり、三行動の無料増枠ではない。
[eval exp="window.fiaStory.completeDay15()"]
[return]

; source:10064

; ---- v415Records ----
*v415Records
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_records')"]
#
研究室で、持っている物を全て机へ出した。[p]
写真。点検図。藍爛の書き込み。拾った札。百七が、どこまで見ればいいのかと俺を見た。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「帰るために使う物と、持ち帰るための物を、分けたい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「一緒じゃ、駄目なの？」[p]
#
同じだと思っていた。[p]
工作を示す写真は、ここで出口を選ぶ役には立たないかもしれない。逆に、扉の刻印は、俺たちが何を見つけたかを証明してくれる物ではない。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「点検の場所と、今の場所を……」[p]
#
藍爛が、息を整えて続きを言う。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「同じだと思わないで、比べた方が……」[p]
#
彼女を長く喋らせず、俺が紙を寄せた。[p]
; 写真の有無は実際の取得履歴へ。以下の選択で未取得の写真を取得扱いにしない。
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"撮った写真から、変わらない刻印を探す",target:"*v415UsePhotos"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"来た時の道順を、順番に書き直す",target:"*v415UseRoute"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"百七が知る設備と、知らない範囲を聞く",target:"*v415UseWitness"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11009

; ---- v415UsePhotos ----
*v415UsePhotos
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_use_photos')"]
[if exp="!window.fiaStory.hasPhotos()"]
    #
    照合に使える写真は持っていない。現地の刻印を確かめよう。[p]
    [jump target="*v415UseRoute"]
[endif]
[eval exp="f.v4.d15.reference='photographs'"]
#
写真に、実物の番号が写っているかを確かめた。[p]
写っていない所は、推測で埋めない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「これだけでは、足りない所がある。刻印を、もう一度見たい」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「なら、何を見に行くか先に決める。行ってから全部探すんじゃ、また戻ることになるわよ」[p]
#
対応する扉の位置へ印をつけた。戻る時には、そこだけを確かめればいい。[p]
; 写真が十分なら照合点を絞れる。不足なら現地で確認する経路へ。どちらも脱出可能。
[jump target="*v415PlanRoles"]


; source:11023

; ---- v415UseRoute ----
*v415UseRoute
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_use_route')"]
[eval exp="f.v4.d15.reference='directions'"]
#
右へ曲がり、段差を下り、左へ進んだ。[p]
書き終えた線が、今いる場所へ戻ってきた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……これだと、同じ所を回る」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「道順は、間違えてないのかもしれないわよ。繋がる先が、変わったの」[p]
#
扉を目印にしたつもりで、扉のある方角しか覚えていなかった。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「扉に、印が……」[p]
#
藍爛の声で、扉にあった刻印へ注意を戻した。[p]
俺は道順の線を消さず、使えない根拠として残した。その下へ、刻印を比べる欄を作る。[p]
[eval exp="f.v4.d15.reference='onsite'"]
[jump target="*v415PlanRoles"]


; source:11042

; ---- v415UseWitness ----
*v415UseWitness
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_use_witness')"]
[eval exp="f.v4.d15.reference='witness'"]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「ここを知ってるなら、教えてほしい。でも、分からない所も分けてくれ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「全部知ってたら、こんな所で座ってないでしょ」[p]
#
百七は文句を言ってから、図へ指を置いた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「この記号は、搬送に使う所。こっちは、人だけ通す所。今の扉の先がどっちかは、表示を見るしかない」[p]
#
彼女が指した物を、俺が実物で確認する。言葉と一致した所へだけ、印をつけた。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「分かった。君が知ることを、使いたい。君が知らない所を、勝手に補わずに」[p]
#
百七は、少しだけ顔を上げた。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「……なら、次は、そっちの番」[p]
[jump target="*v415PlanRoles"]


; source:11062

; ---- v415PlanRoles ----
*v415PlanRoles
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_plan_roles')"]
#
図を見ている間にも、藍爛の呼吸を確かめた。[p]
歩けるかと聞くことは、やめた。ここで頷かせても、急に歩けるようにはならない。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「台ごと通せる所を、探す。狭い所は、俺が先に確かめる」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「それ、アタシが先に行ったら、何が違うの」[p]
#
違いを考えた。俺は彼女の身体も、まだ十分に知らない。百七も、藍爛へ何が必要かを、全ては知らない。[p]
誰を先に行かせれば正解か、ではなかった。[p]
何をして戻るかを、決める必要があった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"古虫が幅を確認し、百七には台の位置を守ってもらう",target:"*v415KiichiChecks"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"百七に扉の表示を見てもらい、古虫は藍爛の傍へ残る",target:"*v415MomonaChecks"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11078

; ---- v415KiichiChecks ----
*v415KiichiChecks
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_kiichi_checks')"]
[eval exp="f.v4.d15.scout='kiichi';f.v4.d15.hasWidthChecked=true"]
#
戻る場所を示してから、台を通せる幅まで歩いた。[p]
曲がった先に、段差がある。回り道なら、傾きが少ない。[p]
一人なら越えられる物が、三人で通る時には、別の問題になる。[p]
戻ると、百七が藍爛へ何か話していた。[p]
俺が来ると、すぐに、何、と顔を上げる。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「台のままなら、こっちだ」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「じゃあ、表示は、途中で見ましょ」[p]
[jump target="*v415ConfirmRoute"]


; source:11092

; ---- v415MomonaChecks ----
*v415MomonaChecks
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_momona_checks')"]
[eval exp="f.v4.d15.scout='momona';f.v4.d15.hasSignChecked=true"]
#
百七へ、扉の向こうへは入らないでほしいと言った。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「見て、戻る。聞こえてる」[p]
#
彼女は、出る前に俺の指した場所を見直した。[p]
藍爛の手が動いた。名前を呼ぶと、短く握り返される。[p]
#airan
[eval exp="window.fiaLibrary.observe('airan')"]
「あの方も……」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「一緒に、出る。今、道を見てくれてる」[p]
#
百七が戻った。表示の一つは読めず、もう一つは確認出来たと報告した。[p]
俺は、読めなかった方を消さずに残した。[p]
[jump target="*v415ConfirmRoute"]


; source:11110

; ---- v415ConfirmRoute ----
*v415ConfirmRoute
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_confirm_route')"]
#
管制端末へ進む前に、二つの扉を比べた。[p]
一つは、来た方へ近い位置にある。もう一つは、搬送の記号が付いている。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「どっち？」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「位置だけなら、こっち。でも……」[p]
#
俺は、今まで確かめた物を思い返した。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"帰り道に近い位置の扉を、候補にする",target:"*v415ConfirmPosition"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"区画記号と搬送表示が一致する扉を、候補にする",target:"*v415ConfirmMark"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11124

; ---- v415ConfirmPosition ----
*v415ConfirmPosition
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_confirm_position')"]
[eval exp="f.v4.d15.candidate='position'"]
#
扉を少し開け、向こうを照らした。[p]
来たはずの方に、研究室の札があった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「……位置は、あてにならない」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「確かめたから、今度は使わずに済むでしょ」[p]
#
俺は候補へ線を引いた。扉を開けてから台を押していたら、また狭い通路で運び直す所だった。[p]
; 誤った仮説を、移動前の観察で棄却する。無条件の即死や任意の失敗ENDにはしない。
[jump target="*v415ConfirmRoute"]


; source:11138

; ---- v415ConfirmMark ----
*v415ConfirmMark
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_confirm_mark')"]
[eval exp="f.v4.d15.candidate='marked';f.v4.d15.isConnectionVerified=true"]
#
扉の刻印と、端末の表示を比べた。[p]
同じ記号でも、数字の末尾が違う物は除いた。百七が指を置き、俺が声に出して確かめる。[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「一人で、決まったことにしないでよ」[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「今、確かめてもらってる」[p]
#
彼女が少し笑った。[p]
藍爛が、台の上から俺たちを見ていた。[p]
[jump target="*v215Terminal"]


; source:11152

; ---- v415Crossing ----
*v415Crossing
[ui_hideChoices]
[iscript]
tf.storyBranchChoices=[];
[endscript]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_crossing')"]
; 元の「照合する」を選んだ後も、この場面で三人の実行手順を選ぶ。
#
出口の候補が分かっても、運び終えるまでは終わらない。[p]
台を動かす間、扉を押さえる人が要る。段差で止まった時、支え直す場所も必要だった。[p]
#kiichi
[eval exp="window.fiaLibrary.observe('kiichi')"]
「百七。どこまで、支えられる？」[p]
#momona
[eval exp="window.fiaLibrary.observe('momona')"]
「全部、とは言わないわよ。短い間なら」[p]
#
そう答えてくれたことが、ありがたかった。[p]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"扉を押さえてもらい、台を区切って進める",target:"*v415CrossForward"});
[endscript]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[iscript]
tf.storyBranchChoices.push({text:"先に途中で休める場所を作り、二人で台を動かす",target:"*v415CrossPause"});
[endscript]
[ui_showChoices layout="encounter" storage="15.ks" text1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].text : ''" target1="&tf.storyBranchChoices[0] ? tf.storyBranchChoices[0].target : ''" text2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].text : ''" target2="&tf.storyBranchChoices[1] ? tf.storyBranchChoices[1].target : ''" text3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].text : ''" target3="&tf.storyBranchChoices[2] ? tf.storyBranchChoices[2].target : ''" text4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].text : ''" target4="&tf.storyBranchChoices[3] ? tf.storyBranchChoices[3].target : ''" text5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].text : ''" target5="&tf.storyBranchChoices[4] ? tf.storyBranchChoices[4].target : ''" text6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].text : ''" target6="&tf.storyBranchChoices[5] ? tf.storyBranchChoices[5].target : ''"]
[s]


; source:11167

; ---- v415CrossForward ----
*v415CrossForward
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_cross_forward')"]
[eval exp="f.v4.d15.transport='door_support'"]
#
百七が扉を押さえた。[p]
俺は急ぎすぎないよう、台を短く進めた。動かす度に、藍爛の顔を見た。[p]
百七が、今、と言った所で止まる。彼女が持ち直す時間を取った。[p]
一人の合図だけで、全員を動かさなかった。[p]
[jump target="*v415CrossCheck"]


; source:11176

; ---- v415CrossPause ----
*v415CrossPause
[ui_hideChoices]
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_cross_pause')"]
[eval exp="f.v4.d15.transport='rest_space'"]
#
途中の物を寄せ、台を止められる場所を作った。[p]
百七が、こっちなら押せる、と位置を変える。[p]
一度止まり、息を整えてから進む。最後の扉まで、同じ速さで走ることを諦めた。[p]
時間をかけた分だけ、戻れない方の音が気になった。[p]
それでも、止まる場所を決めたことで、手を離す理由を作れた。[p]
[jump target="*v415CrossCheck"]


; source:11186

; ---- v415CrossCheck ----
*v415CrossCheck
[cm]
[position layer="message1" margint="980" marginl="200" marginr="110" marginb="60"]
[font size="34"]
[eval exp="window.fiaStory.enter('v4_15_cross_check')"]
[if exp="!f.v4.d15.isConnectionVerified"]
    #
    接続を、まだ確かめていない。[p]
    俺は台を止め、百七へ、ここで待ってほしいと伝えた。[p]
    [jump target="*v415ConfirmRoute"]
[else]
    #
    三人が、同じ扉の前へ揃った。[p]
    俺たちが入る前に、扉の向こうの表示をもう一度見る。[p]
    来た時とは違う道だった。[p]
    けれど、今、確かめたことが、そこへ続いていた。[p]
    [jump target="*v215Compareexit"]
[endif]

; source:11208
