; 呼び出し前に f.irmMixCaseId を設定。結果は f.irmMixResult。
*start
[eval exp="window.fiaMix.reset(f.irmMixCaseId, false); f.irmMixResult = null"]
[jump target="*opening"]

*day
[if exp="!window.fiaMix.beginDay()"]
    [return]
[endif]
[eval exp="f.irmMixResult = null"]

*opening
[eval exp="f.irmMixBgmBefore = TG.stat.current_bgm"]
[playbgm storage="medic.m4a" restart="false"]
[if exp="!f.hasSeenIrmMixTutorial"]
    [jump target="*guideDrugs"]
[endif]
[jump target="*screen"]

*lab
[eval exp="window.fiaMix.reset('01', true); f.irmMixResult = null"]
[eval exp="f.irmMixBgmBefore = TG.stat.current_bgm"]
[playbgm storage="medic.m4a" restart="false"]
[jump target="*screen"]

*guideDrugs
[cm]
[layopt layer="message1" visible="false"]
[image name="irm-guide" layer="1" folder="image" storage="tutorial/irm_drugs.png" x="0" y="0" width="1920" height="1200"]
[layopt layer="1" visible="true"]
[loadcss file="./data/others/css/care_tutorial.css"]
[glink name="care-tutorial-next" text="次へ" x="1510" y="1095" width="300" height="70" face="Tegomin" size="32" target="*guideMix"]
[s]

*guideMix
[cm]
[free name="irm-guide" layer="1"]
[image name="irm-guide" layer="1" folder="image" storage="tutorial/irm_mix.png" x="0" y="0" width="1920" height="1200"]
[glink name="care-tutorial-next" text="戻る" x="120" y="1095" width="240" height="70" face="Tegomin" size="32" target="*guideBack"]
[glink name="care-tutorial-next" text="治療を始める" x="1510" y="1095" width="300" height="70" face="Tegomin" size="32" target="*guideDone"]
[s]

*guideBack
[free name="irm-guide" layer="1"]
[jump target="*guideDrugs"]

*guideDone
[free name="irm-guide" layer="1"]
[layopt layer="message1" visible="true"]
[eval exp="f.hasSeenIrmMixTutorial = true"]
[jump target="*screen"]

*screen
[cm]
[html]
<main id="irm-mix" aria-label="旧型IR-Mの調合"></main>
[endhtml]
[eval exp="window.fiaMix.render()"]
[s]

*inject
[if exp="window.fiaMix.session().lab"]
    [jump target="*labInject"]
[endif]
[eval exp="window.fiaMix.session().status = 'success'; window.fiaMix.phase('success')"]
[jump target="*patientOutcome"]

*patientFailure
*patientOutcome
[cm]
[current layer="message1"]
[layopt layer="message1" visible="true"]
#kiichi
投薬を行った。[r]
[if exp="window.fiaMix.session().status === 'failure'"]
    患者は悶え苦しみだした。緊急の処置を始める。[p]
    呼吸は落ち着いたが、予断は許されない状況だ。[p]
    「……すまない……」[p]
[else]
    患者の呼吸が落ちつく。[p]
    あとは、目覚めるのを待つだけだ。[p]
[endif]
[jump target="*patientResult"]

*labInject
[cm]
[current layer="message1"]
[layopt layer="message1" visible="true"]
#
調合確定。旧型IR-Mを投与する。[r]
[wait time="650"]
[cm]
#患者
[emb exp="window.fiaMix.currentPatient().reaction"][p]
#
[eval exp="window.fiaMix.session().status = 'success'; window.fiaMix.phase('success')"]
[jump target="*screen"]

*patientResult
[cm]
#kiichi
[if exp="window.fiaMix.session().daily && f.irmMixDay.index+1<f.irmMixDay.patients.length"]
    [link storage="irm_mix.ks" target="*acceptResult"]【1】次の患者へ[endlink]
[else]
    [jump target="*acceptResult"]
[endif]
[s]

*acceptResult
[eval exp="tf.irmMixNext=window.fiaMix.advance(window.fiaMix.session().status)"]
[if exp="tf.irmMixNext"]
    [jump target="&tf.irmMixNext"]
[endif]
[s]

*finish
[cm]
[if exp="typeof f.irmMixBgmBefore === 'string'"]
    [if exp="f.irmMixBgmBefore"]
        [playbgm storage="&f.irmMixBgmBefore" restart="false"]
    [else]
        [stopbgm]
    [endif]
    [eval exp="delete f.irmMixBgmBefore"]
[endif]
[eval exp="delete f.irmMix"]
[return]
