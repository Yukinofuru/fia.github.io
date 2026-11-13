/* 第6稿の保存可能な進行。本文はDAY別・人物別KS、ここは条件・履歴だけを扱う。 */
(function () {
    'use strict';
    const kag = TYRANO.kag;
    const ids = ['airan', 'ito', 'akehiru', 'setsu', 'momona'];
    const names = {
        airan:'藍爛',
        ito:'一十',
        akehiru:'明昼',
        setsu:'世紬',
        momona:'百七',
        tota:'東太',
        ayase:'綾瀬'
    };
    const letters = {
        airan:'a',
        ito:'i',
        akehiru:'h',
        setsu:'y',
        momona:'m'
    };
    const config = () => window.FiaStoryConfig;
    const game = () => kag.stat.f;
    function label(id) {
        return String(id).replace(/_([a-z0-9])/g, function (_, letter) {
            return letter.toUpperCase();
        });
    }
    function storage(id) {
        const filename = window.FiaScenarioLocations[label(id)];
        if (!filename) throw new Error('Unknown scenario label: ' + id);
        return filename;
    }
    const catalog = () => window.FiaStoryCatalog || {};
    function initialize() {
        const f = game();
        if (f.isFullScenario === undefined) f.isFullScenario = true;
        if (!f.storyV6) f.storyV6 = {};
        const s = f.storyV6;
        // 旧セーブで共通ルート名だけが未設定の場合に補完する。個別ルートは変更しない。
        if (s.route === undefined || s.route === null || s.route === '') s.route = 'common';
        const defaults = {
            version:1,
            route:'common',
            dayStarted:0,
            hasMomona:false,
            hasDay15Rescue:false,
            isHiddenUnlocked:false,
            hasWorldRescued:false,
            hasRightArm:true,
            isKiichiAlive:true,
            phase:'morning',
            target:'',
            remaining:0,
            page:0,
            category:'talk',
            menuKind:'',
            endId:'',
            dateCandidate:'',
            dateCurrent:'',
            pendingLabel:'',
            recordsText:'',
            beforeBreakDay:0,
            selectedAction:null,
            isMeetingReturn:false
        };
        Object.keys(defaults).forEach(k => {
            if (s[k] === undefined) s[k] = defaults[k];
        });
        ['visited', 'read', 'evidence', 'findings', 'testimony', 'stress', 'relations', 'coopExperience', 'dayDone', 'usageKeys', 'dateProgress', 'checks', 'breaks'].forEach(k => {
            if (!s[k]) s[k] = {};
        });
        s.usage = s.usage || {
            irmMg:0,
            solarineMg:0,
            history:[],
            hasCompletePriorHistory:false
        };
        s.menuItems = s.menuItems || [];
        f.storyTopicsSeen = f.storyTopicsSeen || {};
        f.storyDatesSeen = f.storyDatesSeen || {};
        f.storyCoopSeen = f.storyCoopSeen || {};
        f.v4 = f.v4 || {};
        f.v4.d15 = f.v4.d15 || {
            reference:'none',
            scout:'none',
            hasWidthChecked:false,
            hasSignChecked:false,
            candidate:'none',
            isConnectionVerified:false,
            transport:'none'
        };
        f.v4.d20 = f.v4.d20 || {
            explanation:'none',
            isContactKnown:false,
            hasMotiveHeard:false,
            custody:'none',
            hasWeaponsSecured:false,
            hasPublicRecord:false,
            hasPublicAuthority:false,
            isRepaired:false,
            disposition:'none'
        };
        f.v4.a = f.v4.a || {
            plan:'none',
            hasWishHeard:false,
            hasReturnShared:false,
            isTransformConfirmed:false,
            isResponseChecked:false
        };
        f.v4.h = f.v4.h || {
            inquiry:'none',
            hasAlternativeExamined:false,
            hasPriceExamined:false,
            isBackingReady:false,
            hasReturnPlan:false,
            hasEndWillConfirmed:false,
            isRepaired:false
        };
        f.v4.m = f.v4.m || {
            hasSharedPlan:false,
            hasRetreat:false,
            hasAutonomyRespected:false,
            hasAfterShared:false
        };
        f.v4.y = f.v4.y || {
            hasPersonalHeard:false,
            isRoleFirst:false,
            hasClosedPersonal:false,
            hasWorldExamined:false,
            hasBodyExamined:false,
            hasTransferShared:false
        };
        return s;
    }
    function char(id) {
        const f=game();
        f.chara_state=f.chara_state||{};
        if (!f.chara_state[id]) f.chara_state[id]={
            affinity:0,
            erosion:10,
            alive:true,
            info:0,
            viewed:{}
        };
        return f.chara_state[id];
    }
    function available(id) {
        const s=initialize(),
        f=game();
        if (!char(id).alive) return false;
        if (id==='momona' && !s.hasMomona) return false;
        if (id==='ayase' && f.dayCount>=20) return false;
        if (s.route!=='common' && id==='ito') return false;
        // Bの一十は生存だが別所在
        if (s.route!=='common' && ids.includes(id) && id!==s.route) return false;
        return ids.includes(id)||id==='tota'||id==='ayase';
    }
    function hasEvidence(key) {
        return !!initialize().evidence[key];
    }
    function evidence(key, source) {
        const s=initialize();
        if (!s.evidence[key]) s.evidence[key]={
            source,
            day:game().dayCount,
            type:/^(P|O|K|F|L)/.test(key)?'記録・観察':'所在・証言'
        };
        sync();
    }
    function hasPhotos() {
        return ['P11', 'P12', 'P13', 'K31', 'K32'].some(hasEvidence);
    }
    function hasVisited(id) {
        return !!initialize().visited[id];
    }
    function sync() {
        const f=game(),
        s=initialize(),
        c=config();
        f.isStationPrepared = !!s.checks.hasStationDiagram && !!s.checks.hasStationPower;
        f.isAiranQualified = char('airan').affinity>=c.routeAffinity && !!s.relations.airan;
        f.hasAkehiruAffinity = char('akehiru').affinity>=c.routeAffinity && !!s.relations.akehiru;
        f.canAkehiruConfide = char('akehiru').affinity>=c.confideAffinity && !!s.findings.akehiru;
        f.hasAyaseTrust = char('ayase').affinity>=c.ayaseTrust;
        f.hasMonsterTruth = hasEvidence('L1') && !!s.checks.hasResearchCompared;
        f.canAiranReturn = char('airan').affinity>=c.returnAffinity && !!s.relations.airan && (c.airanReturnMinimumIrmMg===null || s.usage.irmMg>=c.airanReturnMinimumIrmMg) && (c.airanReturnMaximumSolarineMg===null || s.usage.solarineMg<=c.airanReturnMaximumSolarineMg);
        f.canWorldReach = (Number(f.kno)||0)+(Number(f.spi)||0)>=c.worldSkillMinimum;
        f.hasExceptionUnlocked = s.isHiddenUnlocked===true;
        f.isWorldQualified = s.hasDay15Rescue && s.isHiddenUnlocked && !!s.checks.isWorldPrepared && char('setsu').alive;
    }
    const days = {
        'v3_a21':20,
        'v3_a20_group':21,
        'v3_a21_raid':22,
        'v3_a21_monster':23,
        'v4_a_aftermonster':24,
        'v3_h20':20,
        'v3_h21_name':21,
        'v3_h22_plan':22,
        'v3_h24_wait':24,
        'v3_m21':21,
        'v3_m22_capture':22,
        'v3_m23_recover':23,
        'v3_m24_future':24,
        'v3_m25':25,
        'v2_y21':21,
        'v2_y22':22,
        'v2_y23':23,
        'v2_y24':24,
        'v2_y25':25
    };
    function enter(id) {
        const f=game(),
        s=initialize();
        s.visited[id]=true;
        if (id==='v2_15_rescue') s.hasMomona=true;
        if (id==='v2_day11_request' && !s.checks.hasAyaseRequest) {
            s.checks.hasAyaseRequest=true;
            char('ayase').affinity=Math.min(100,char('ayase').affinity+10);
        }
        if (id==='v2_day16_report' && !s.checks.hasAyaseReport) {
            s.checks.hasAyaseReport=true;
            char('ayase').affinity=Math.min(100,char('ayase').affinity+10);
        }
        if (id==='v3_a20') {
            char('ito').alive=false;
            s.route='common';
        }
        const routes={
            'v3_a21':'airan',
            'v3_h20':'akehiru',
            'v3_m21':'momona',
            'v2_y21':'setsu'
        };
        if (routes[id]) s.route=routes[id];
        if (id==='v3_20_fish' && !f.isWorldQualified) {
            char('setsu').alive=false;
            s.hasSetsuDisappeared=true;
        }
        if (id==='v3_20_train') {
            s.isAyaseMissing=true;
            s.hasTrainBlast=true;
        }
        if (id==='v3_20_world_rescue') {
            s.hasWorldRescued=true;
            s.isAyaseMissing=false;
        }
        if (id==='v3_a21_notebook') {
            s.isAyaseMissing=false;
            s.hasAyaseSacrificed=true;
            char('ayase').alive=false;
        }
        if (id==='v3_m24_future'||id==='v2_y_exception') s.hasRightArm=false;
        if (id==='v3_a_normal_last') s.isKiichiAlive=false;
        if (days[id]) f.dayCount=days[id];
        if (id.startsWith('end_')) {
            s.endId=id;
            f.dayCount=25;
        }
        if (id==='v3_20_evidence15') s.checks.evidence15=true;
        if (id==='v3_20_evidence20') s.checks.evidence20=true;
        if (id==='v3_20_testimony') s.checks.testimony20=true;
        if (id==='v2_15_blast_call') s.hasDroppedCamera=true;
        if (id==='v2_15_exitplan' && s.hasDroppedCamera) s.hasRecoveredMedia=true;
        sync();
    }
    function canAccuse() {
        const s=initialize();
        return !!(s.checks.evidence15 && s.checks.evidence20 && s.checks.testimony20 && hasEvidence('K32') && hasEvidence('F1') && hasEvidence('contact20'));
    }
    function completeDay15() {
        const s=initialize();
        s.hasMomona=true;
        s.hasDay15Rescue=hasEvidence('L1')&&hasEvidence('O23')&&hasEvidence('F1')&&game().v4.d15.isConnectionVerified;
        s.dayDone[15]=true;
        sync();
    }
    function progress(id) {
        const s=initialize();
        s.relations[id]=(s.relations[id]||0)+1;
    }
    function gain(id,type) {
        const st=char(id);
        st.affinity=Math.min(100,st.affinity+(config().affinityGain[type]||0));
        progress(id);
        sync();
    }
    function startMeeting(id, isReturn) {
        const s=initialize();
        if (!available(id)||!ids.includes(id))return false;
        const key='meeting'+game().dayCount;
        if(s.dayDone[key])return false;
        s.target=id;
        s.targetName=names[id];
        s.remaining=config().meetingActions;
        s.category='talk';
        s.page=0;
        s.isMeetingReturn=!!isReturn;
        s.menuKind='meeting';
        s.selectedAction=null;
        return true;
    }
    function actionList() {
        const f=game(),
        s=initialize(),
        id=s.target,
        st=char(id),
        result=[];
        const add=(key,label,title,type,requirement)=>{
            if(!requirement||requirement())result.push({
                key,
                label,
                title,
                type
            });
        };
        const read=k=>!!s.read[k];
        if(s.category==='talk') {
            ['talk1', 'talk2'].forEach((v,i)=>add('draft_meet_'+id+'_'+v,'draft_meet_'+id+'_'+v,'日々の話 '+(i+1),'talk'));
            Object.keys(catalog()).filter(k=>k.startsWith('v6_chat_'+id+'_'+(s.route==='common'?'common':'route')+'_')).forEach(k=>add(k,k,catalog()[k].title,'talk'));
        } else if(s.category==='exam') add('draft_meet_'+id+'_exam','draft_meet_'+id+'_exam','身体の状態を確認する（同意を得て診療）','exam');
        else if(s.category==='finding') {
            ['finding1', 'finding2'].forEach((v,i)=>add('draft_meet_'+id+'_'+v,'draft_meet_'+id+'_'+v,'所見について聞く '+(i+1),'finding',()=>!!s.findings[id]));
            const extra={
                airan:['v2_meet_a_photo', 'v2_meet_a_aftercare'],
                ito:['v2_meet_i_where', 'v2_meet_i_now'],
                akehiru:['v2_meet_h_exampermit', 'v2_meet_h_wait'],
                momona:['v2_meet_m_record', 'v2_meet_m_preference'],
                setsu:['v2_meet_y_boundary', 'v2_meet_y_request']
            };
            extra[id].forEach((k,i)=>add(k,k,['記録と経験を確かめる','今の気持ちを聞く'][i],'finding',()=>{
                if(k==='v2_meet_a_photo')return hasEvidence('P12')&&hasEvidence('K32')&&f.dayCount>15;
                if(k==='v2_meet_a_aftercare')return f.dayCount>15;
                if(k==='v2_meet_i_where')return hasEvidence('delivery');
                if(k==='v2_meet_m_record')return hasEvidence('L1');
                return true;
            }));
        } else if(s.category==='press') add('draft_meet_'+id+'_press','draft_meet_'+id+'_press','取得済みの所在・記録と説明を照合する','press',()=>hasEvidence('delivery')&&hasEvidence('K32'));
        else if(s.category==='close') add('draft_meet_'+id+'_close','draft_meet_'+id+'_close','調査を置いて、一緒に過ごす','close',()=>st.affinity>=config().intimateAffinity);
        return result.map(a=>Object.assign(a,{
            title:a.title+(read(a.key)?'［既読・報酬なし］':'')
        }));
    }
    function menu() {
        const s=initialize();
        const all=actionList();
        s.totalPages=Math.max(1,Math.ceil(all.length/6));
        s.page=Math.max(0,Math.min(s.page,s.totalPages-1));
        s.menuItems=all.slice(s.page*6,s.page*6+6);
        return s.menuItems;
    }
    function setCategory(category){
        const s=initialize();
        s.category=category;
        s.page=0;
        menu();
    }
    function select(index, consent) {
        const s=initialize();
        menu();
        const a=s.menuItems[index];
        if(!a||s.remaining<=0)return false;
        s.selectedAction=Object.assign({},a);
        s.pendingLabel=a.label;
        s.hasRefused=false;
        s.hasRead=!!s.read[a.key];
        if(a.type==='exam'&&!consent){
            s.isExamPending=true;
            return 'consent';
        }
        if(!s.hasRead) {
            if((s.stress[s.target]||0)>=config().stressLimit && ['exam','finding','press'].includes(a.type)){
                s.pendingLabel='draft_stress_'+s.target;
                s.hasRefused=true;
            } else if((a.type==='exam'&&char(s.target).affinity<config().examAffinity)||(['finding','press'].includes(a.type)&&char(s.target).affinity<config().findingAffinity)){
                s.pendingLabel='draft_refuse_'+s.target;
                s.hasRefused=true;
            }
        } s.remaining-=1;
        s.isExamPending=false;
        return true;
    }
    function consent(){
        const s=initialize();
        const a=s.selectedAction;
        if(!a)return false;
        const ix=s.menuItems.findIndex(x=>x.key===a.key);
        return select(ix,true);
    }
    function completeAction() {
        const s=initialize(),
        a=s.selectedAction;
        if(!a)return;
        if(!s.hasRead&&!s.hasRefused){
            s.read[a.key]=true;
            gain(s.target,a.type);
            if(a.type==='exam')s.findings[s.target]={
                day:game().dayCount,
                source:a.label,
                type:'現在の身体所見'
            };
            if(a.type==='finding'||a.type==='press')s.testimony[a.key]={
                day:game().dayCount,
                person:s.target,
                type:'本人の説明',
                source:a.label
            };
            s.stress[s.target]=Math.max(0,Math.min(100,(s.stress[s.target]||0)+(a.type==='press'?15:a.type==='close'?-10:-3)));
        } else if(s.hasRefused)s.stress[s.target]=Math.min(100,(s.stress[s.target]||0)+5);
        s.selectedAction=null;
        s.pendingLabel='';
        sync();
    }
    function finishMeeting(){
        const s=initialize();
        s.dayDone['meeting'+game().dayCount]=true;
        s.remaining=0;
        s.phase='sleep';
    }
    function dateCandidate(id) {
        const s=initialize(),
        f=game(),
        c=config();
        if(!available(id)||s.phase!=='afternoon'||([15,20].includes(f.dayCount) || window.fiaDaily.isEmergencyDay()))return '';
        if(!s.coopExperience[id])return '';
        for(let stage=1;stage<=3;stage++){
            const key='v6_date_'+id+stage;
            if(f.storyDatesSeen[key])continue;
            if(char(id).affinity<c.dateAffinity[stage-1])return '';
            const previous=s.dateProgress[id];
            if(stage>1&&(!previous||f.dayCount<=previous.day||(s.relations[id]||0)<=previous.progress))return '';
            if(id==='momona'&&stage===3&&(!f.v4.m.hasAutonomyRespected||s.route!=='momona'))return '';
            return key;
        }
        return '';
    }
    function chooseCoop(id){
        const s=initialize();
        if(!available(id))return false;
        s.target=id;
        s.dateCandidate=ids.includes(id)?dateCandidate(id):'';
        s.dateCurrent='';
        game().dailyGrowthText='';
        s.coopBefore=Object.keys(game().storyCoopSeen).filter(k=>game().storyCoopSeen[k]).length;
        return true;
    }
    function completeCoop(){
        const s=initialize(),
        f=game();
        if(s.dateCurrent&&f.storyDatesSeen[s.dateCurrent]){
            gain(s.target,'date');
            s.dateProgress[s.target]={
                day:f.dayCount,
                progress:s.relations[s.target]
            };
        } else {
            const now=Object.keys(f.storyCoopSeen).filter(k=>f.storyCoopSeen[k]).length;
            if (s.coopRoutePending && s.isCoopRouteNew) { s.read[s.coopRoutePending] = true; s.coopRoutePending = null; }
            if(now>s.coopBefore||s.isCoopRouteNew){
                gain(s.target,'coop');
                s.coopExperience[s.target]=(s.coopExperience[s.target]||0)+1;
            }s.isCoopRouteNew=false;
        }
        if(s.target==='ayase'||s.target==='tota'){
            const key='support_'+s.target+'_'+(s.supportTopic||'free');
            if(!s.read[key]){
                s.read[key]=true;
                gain(s.target,'coop');
            }
        }
        window.fiaDaily.coopGrowth(s.target);
        s.dayDone['afternoon'+f.dayCount]=true;
        s.phase='evening';
        sync();
    }
    function setPhase(phase){
        initialize().phase=phase;
    }
    function study(){
        const f=game(),
        s=initialize();
        f.kno=(Number(f.kno)||0)+1;
        f.spi=(Number(f.spi)||0)+1;
        s.dayDone['afternoon'+f.dayCount]=true;
        sync();
    }
    function recordText(){
        const s=initialize();
        const labels={
            P11:'配電箱脇の三条痕',
            P11B:'未登録の下部扉',
            P12:'局所的な溶損',
            P13:'ネットの損壊',
            O21:'旧移動命令',
            O22:'避難用簡略図',
            O23:'移送計画の断片',
            K31:'保守側の部品除去',
            K32:'切断と変色',
            F1:'保存区画と管理札',
            B1:'百七の救出',
            L1:'融合研究記録',
            delivery:'物資の受渡記録',
            numbering:'新旧の設備番号',
            K20_MARK:'印持ちを伝えた相手',
            contact20:'当日の連絡・所在証言'
        };
        s.recordsText=Object.keys(s.evidence).map(k=>'【'+k+'】'+(labels[k]||k)+'／取得元：'+((catalog()[s.evidence[k].source]||{}).title||'現場の記録')).join('　\n');
        if(!s.recordsText)s.recordsText='まだ記録を取得していない。';
        s.recordsText+='\n所見：'+Object.keys(s.findings).map(k=>names[k]).join('、')+'\n本人の説明：'+Object.keys(s.testimony).length+'件';
        return s.recordsText;
    }
    function prepareStation(kind){
        initialize().checks[kind]=true;
        sync();
    }
    function compareResearch(){
        if(hasEvidence('L1'))initialize().checks.hasResearchCompared=true;
        sync();
    }
    function prepareWorld(){
        const s=initialize();
        if(s.hasDay15Rescue&&hasEvidence('L1'))s.checks.isWorldPrepared=true;
        sync();
    }
    function unlock(password){
        if(typeof config().hiddenPassword!=='string'||config().hiddenPassword.length===0)return false;
        if(password!==config().hiddenPassword)return false;
        initialize().isHiddenUnlocked=true;
        sync();
        return true;
    }
    function trackUsage(kind,mg,key){
        const s=initialize();
        if(s.usageKeys[key]||!Number.isFinite(Number(mg))||Number(mg)<=0)return false;
        s.usageKeys[key]=true;
        s.usage[kind==='solarine'?'solarineMg':'irmMg']+=Number(mg);
        s.usage.history.push({
            kind,
            mg:Number(mg),
            day:game().dayCount,
            key
        });
        sync();
        return true;
    }
    function routeCoop(){
        const s=initialize(),
        id=s.target,
        letter=letters[id];
        const next=[4, 5, 6].find(n=>!s.read['v2_coop_'+letter+n]);
        if(next){
            s.pendingLabel='v2_coop_'+letter+next;
            s.coopRoutePending=s.pendingLabel;
            s.isCoopRouteNew=true;
        }else{
            s.pendingLabel='v2_meeting_repeat';
            s.isCoopRouteNew=false;
        }
    }
    function hasFreeAfternoon(){
        const s=initialize();
        const free={
            airan:[23, 24],
            akehiru:[23],
            momona:[23],
            setsu:[22, 23]
        };
        return (free[s.route]||[]).includes(game().dayCount);
    } // 遭遇！と同じく選択による突破。新しい章専用の状態はfに保存し抽選しない。
    function beginBattle(){
        const s=initialize();
        s.battle={
            kind:s.battleKind,
            observed:0,
            guarded:false,
            opened:0,
            isWon:false
        };
    }
    function battleStatus(){
        const s=initialize(),
        b=s.battle;
        s.battleText=(b.kind==='fish'?'魚影が通路を塞いでいる。':'闇の中から怪異が迫る。')+'　INS '+game().ins+'／開いた道 '+b.opened+'/2';
    }
    function battleAction(action){
        const s=initialize(),
        b=s.battle;
        if(!b||b.isWon)return;
        if(action==='observe'){
            b.observed=Math.min(2,b.observed+1);
            s.battleLog='動きの切れ目を確かめた。';
        }
        if(action==='guard'){
            b.guarded=true;
            s.battleLog='仲間と位置を合わせ、移動する人を守った。';
        }
        if(action==='strike'){
            if(b.observed>0&&b.guarded){
                b.opened+=1;
                b.observed-=1;
                b.guarded=false;
                s.battleLog='確認した隙へ動き、通れる範囲を広げた。';
            } else{
                game().ins=Math.max(0,game().ins-2);
                s.battleLog='動きを合わせられず、押し戻された。INSが2減った。';
            }
        }
        if(b.opened>=2){
            b.isWon=true;
            s.battleLog+='　最後の人が通った。';
        }
    }
    function finish(){
        const f=game(),
        s=initialize();
        if(!s.endId)return;
        kag.variable.sf.storyEndings=kag.variable.sf.storyEndings||{};
        kag.variable.sf.storyEndings[s.endId]=true;
        if(kag.saveSystemVariable)kag.saveSystemVariable();
    }
    window.fiaStory={storage,
        label,
        initialize,
        char,
        available,
        hasEvidence,
        evidence,
        hasPhotos,
        hasVisited,
        sync,
        enter,
        canAccuse,
        completeDay15,
        startMeeting,
        actionList,
        menu,
        setCategory,
        select,
        consent,
        completeAction,
        finishMeeting,
        dateCandidate,
        chooseCoop,
        completeCoop,
        setPhase,
        study,
        recordText,
        prepareStation,
        compareResearch,
        prepareWorld,
        unlock,
        trackUsage,
        finish,
        days,
        routeCoop,
        hasFreeAfternoon,
        beginBattle,
        battleStatus,
        battleAction
    };
})();
