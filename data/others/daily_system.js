/* 通常診療・追加診療・医療指導・交流育成。表示や閲覧では日課を消費しない。 */
(function () {
    'use strict';
    const game = () => TYRANO.kag.stat.f;
    const config = () => window.FiaDailyConfig;
    function initialize() {
        const f = game();
        f.dailyCare = f.dailyCare || { training: {}, routine: {}, extra: {}, coopRewards: {} };
        for (const key of ['training', 'routine', 'extra', 'coopRewards']) f.dailyCare[key] = f.dailyCare[key] || {};
        return f.dailyCare;
    }
    function capacity() {
        const training = initialize().training;
        return config().routine.basePatients + Math.min(config().routine.maxTeachingBonus, Object.values(training).reduce((sum, count) => sum + count * config().routine.teachingGain, 0));
    }
    function routine() {
        const f = game();
        const state = initialize();
        if (state.routine[f.dayCount]) return state.routine[f.dayCount];
        const count = capacity();
        state.routine[f.dayCount] = { count, teachingBonus: count - config().routine.basePatients };
        f.treatedCount = (Number(f.treatedCount) || 0) + count;
        return state.routine[f.dayCount];
    }
    function extra() {
        const f = game();
        const state = initialize();
        const story = window.fiaStory.initialize();
        if (state.extra[f.dayCount]) return state.extra[f.dayCount];
        if (story.dayDone['afternoon' + f.dayCount]) return null;
        const result = { count: config().routine.extraPatients };
        state.extra[f.dayCount] = result;
        f.treatedCount = (Number(f.treatedCount) || 0) + result.count;
        story.dayDone['afternoon' + f.dayCount] = true;
        return result;
    }
    function teach(id) {
        const f = game();
        const state = initialize();
        const story = window.fiaStory.initialize();
        if (!window.fiaStory.available(id) || story.dayDone['afternoon' + f.dayCount]) return false;
        state.training[id] = (state.training[id] || 0) + 1;
        story.dayDone['afternoon' + f.dayCount] = true;
        return true;
    }
    function coopGrowth(id) {
        const f = game();
        const state = initialize();
        const key = f.dayCount + ':' + id;
        if (state.coopRewards[key]) return false;
        const growth = config().coopGrowth[id];
        if (!growth || !window.fiaStory.available(id)) return false;
        state.coopRewards[key] = true;
        f[growth.parameter] = (Number(f[growth.parameter]) || 0) + growth.amount;
        f.dailyGrowthText = growth.label + 'が' + growth.amount + '上昇した。';
        window.fiaStory.sync();
        return true;
    }
    function isEmergencyDay() { return config().emergencyDays.includes(game().dayCount); }
    window.fiaDaily = { initialize, capacity, routine, extra, teach, coopGrowth, isEmergencyDay };
})();
