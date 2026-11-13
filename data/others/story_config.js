// 第6稿で未確定のバランス値。正式な物語設定とは分けて調整する。
window.FiaStoryConfig = {
    version: 1,
    meetingActions: 3,
    dateAffinity: [30, 60, 85],
    routeAffinity: 45,
    confideAffinity: 60,
    returnAffinity: 75,
    ayaseTrust: 30,
    examAffinity: 15,
    findingAffinity: 30,
    intimateAffinity: 40,
    stressLimit: 70,
    affinityGain: {
        talk: 3,
        exam: 1,
        finding: 2,
        press: 0,
        close: 4,
        coop: 7,
        date: 8
    },
    // 薬量による物語判定は原稿で閾値未定。nullなら量の条件だけは課さない。
    airanReturnMinimumIrmMg: null,
    airanReturnMaximumSolarineMg: null,
    worldSkillMinimum: 6,
    // 作者未提示。実際の文字列が確定するまで数字を捏造しない。
    hiddenPassword: null,
    itoScenario: null
};
