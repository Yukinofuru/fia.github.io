// 既読キーには0_3-0_9.ks等のファイル名が含まれる。コードへ連結しない。
(function () {
    const kag = TYRANO.kag;
    kag.ftag.master_tag.label.start = function (pm) {
        const game = this.kag;
        if (game.config.autoRecordLabel === 'true') {
            const key = 'trail_' + game.stat.current_scenario.replace('.ks', '').replace(/\u002f/g, '').replace(/:/g, '').replace(/\./g, '') + '_' + pm.label_name;
            const previous = game.stat.buff_label_name;
            if (previous) {
                const record = game.variable.sf.record || (game.variable.sf.record = {});
                record[previous] = (Number(record[previous]) || 0) + 1;
                game.saveSystemVariable();
            }
            game.stat.already_read = !!(game.variable.sf.record && game.variable.sf.record[key]);
            game.stat.buff_label_name = key;
        }
        if (pm.nextorder === 'true') game.ftag.nextOrder();
    };

    function number(value, fallback, minimum, maximum) {
        const parsed = Number(value);
        return Number.isFinite(parsed) ? Math.max(minimum, Math.min(maximum, parsed)) : fallback;
    }
    function fullscreen() {
        return !!(document.fullscreenElement || document.webkitFullscreenElement || document.mozFullScreenElement || document.msFullscreenElement || document.fullScreenElement);
    }
    function enter() {
        const tf = kag.variable.tf;
        kag.config.autoRecordLabel = 'true';
        tf.current_bgm_vol = number(kag.config.defaultBgmVolume, 100, 0, 100);
        tf.current_se_vol = number(kag.config.defaultSeVolume, 100, 0, 100);
        tf.set_ch_speed_alt = 100 - number(kag.config.chSpeed, 20, 0, 100);
        tf.set_auto_speed = number(kag.config.autoSpeed, 1300, 200, 4000);
        tf.unread = kag.config.unReadTextSkip === 'true' || kag.config.unReadTextSkip === true;
        tf.is_fullscreen_now = fullscreen();
        $('.choice-wires,.retro-window,#encounter-timer').remove();
    }
    document.addEventListener('fullscreenchange', function () {
        if (kag.stat.current_scenario !== 'config.ks') return;
        kag.variable.tf.is_fullscreen_now = fullscreen();
        $('#input_full').prop('checked', fullscreen());
    });
    window.fiaConfig = { enter: enter };
})();

var config_menu = {
    config: function () {
        if (TYRANO.kag.stat.current_scenario === 'config.ks') return;
        $('.layer.layer_menu').hide();
        TYRANO.kag.ftag.startTag('sleepgame', { storage: 'config.ks', next: false });
    }
};
