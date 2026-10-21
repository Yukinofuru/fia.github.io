// 特殊分岐の再描画に必要な情報は、一時変数ではなくセーブ対象に保持する。
(function () {
    const kag = TYRANO.kag;

    function prepare(params, count) {
        const game = kag.stat.f;
        if (params.restore !== 'true') {
            const caller = kag.getStack('macro');
            const normal = [];
            const secret = [];
            for (let index = 1; index <= count; index++) {
                if (params['text' + index]) {
                    normal.push({ text: params['text' + index], target: params['target' + index], disable: params['disable' + index] || 'false' });
                }
                if (params['secret_text' + index]) {
                    secret.push({ text: params['secret_text' + index], target: params['secret_target' + index], disable: 'false' });
                }
            }
            game.choiceContext = {
                storage: params.storage || (caller && caller.storage) || kag.stat.current_scenario,
                normal: normal, secret: secret, mode: params.secretMode || 'replace',
                fontSize: params.fontSize || '38', isSecret: false, page: 0
            };
        }
        const context = game.choiceContext;
        kag.variable.tf.orig_storage = context.storage;
        kag.variable.tf.hasSecretChoice = context.secret.length > 0 && !context.isSecret;
        kag.variable.tf.choiceFontSize = context.fontSize;
        // 再描画・ロード後に装飾が重ならないよう、描画前に古い装飾を除く。
        $('.choice-wires,.retro-window,.password-tab-window').remove();
    }

    function visibleChoices() {
        const context = kag.stat.f.choiceContext;
        let choices = context.normal;
        if (context.isSecret) {
            choices = context.mode === 'append' ? context.normal.concat(context.secret) : context.secret;
        }
        return [0, 1, 2, 3].map(function (index) {
            return choices[index] || { text: '', target: '', disable: 'false' };
        });
    }

    // 5択以上は3択＋移動ボタンのページに分ける。ページ位置もセーブする。
    function prepareEncounter(params) {
        prepare(params, 6);
        const context = kag.stat.f.choiceContext;
        const all = context.normal;
        const paged = all.length > 4;
        const lastPage = paged ? Math.ceil(all.length / 3) - 1 : 0;
        context.page = Math.max(0, Math.min(Number(context.page) || 0, lastPage));
        const choices = paged ? all.slice(context.page * 3, context.page * 3 + 3) : all.slice();
        if (paged) choices.push(context.page < lastPage
            ? { text: '次の選択肢', target: '*encounterChoicesNext', disable: 'false', navigation: 'next' }
            : { text: '前の選択肢', target: '*encounterChoicesPrevious', disable: 'false', navigation: 'previous' });
        kag.variable.tf.encounterChoiceView = Array.from({ length: 4 }, function (_, index) {
            const choice = choices[index];
            if (!choice) return { text: '', target: '', className: '', y: 0 };
            const disabled = choice.disable === 'true' || choice.disable === true;
            return { ...choice, y: 0, className: 'choice-btn,encounter-choice,btn4-anim-' + (index + 1) + (disabled ? ',choice-disabled,encounter-disabled' : '') + (choice.navigation ? ',encounter-page-' + choice.navigation : '') };
        });
        const layer = kag.layer.getLayer('0', 'fore');
        layer.append($("<div class='retro-window encounter-window'></div>"));
        layer.append($("<div class='choice-wires'></div>"));
    }

    function layoutEncounter() {
        const buttons = kag.layer.getFreeLayer().find('.encounter-choice').toArray();
        if (!buttons.length) return;
        // 長文は実際の折返し高さで測る。通常と同じ38pxでも重ならない配置にする。
        const heights = buttons.map(function (button) {
            button.style.height = 'auto';
            return Math.max(70, Math.ceil(button.offsetHeight));
        });
        const total = heights.reduce((sum, height) => sum + height, 0);
        const gap = buttons.length > 1 ? Math.min(buttons.length === 4 ? 70 : 90, Math.max(18, (640 - total) / (buttons.length - 1))) : 0;
        let cursor = 0;
        const tops = heights.map(function (height) { const top = cursor; cursor += height + gap; return top; });
        const anchors = tops.map((top, index) => top + heights[index] - 2);
        const middle = Math.floor(buttons.length / 2);
        const center = buttons.length % 2 ? anchors[middle] : (anchors[middle - 1] + anchors[middle]) / 2;
        const fullHeight = total + gap * (buttons.length - 1);
        const shift = Math.max(160, Math.min(490 - center, 800 - fullHeight));
        let html = '<div class="encounter-wire" style="left:310px;top:488px;width:30px;--encounter-wire-delay:0.2s"></div>';
        buttons.forEach(function (button, index) {
            const top = Math.round(tops[index] + shift), height = heights[index];
            button.style.top = top + 'px';
            button.style.height = height + 'px';
            const endY = top + height - 2;
            const dy = endY - 490, dx = 170;
            const diagonal = Math.hypot(dx, dy), angle = Math.atan2(dy, dx) * 180 / Math.PI;
            const cls = button.classList.contains('choice-disabled') ? ' encounter-wire-disabled' : '';
            const delay = index * .2;
            html += '<div class="encounter-wire' + cls + '" style="left:340px;top:488px;width:' + diagonal + 'px;transform:rotate(' + angle + 'deg);--encounter-wire-delay:' + (delay + .3) + 's"></div>';
            html += '<div class="encounter-wire encounter-wire-end' + cls + '" style="left:510px;top:' + (endY - 2) + 'px;width:40px;--encounter-wire-delay:' + (delay + .6) + 's"></div>';
        });
        kag.layer.getLayer('0', 'fore').find('.choice-wires').html(html);
    }

    function decorateSecretChoices() {
        const context = kag.stat.f.choiceContext;
        if (!context || !context.isSecret) return;
        kag.layer.getFreeLayer().find('.choice-btn').each(function () {
            const params = JSON.parse(this.getAttribute('data-event-pm'));
            if (context.secret.some(choice => choice.target === params.target && choice.text === params.text)) {
                $(this).addClass('choice-secret');
            }
        });
    }

    function restorePasswordInput() {
        const input = kag.layer.getFreeLayer().find(".text_box[name='f.secret_password']");
        if (!input.length) return;
        input.attr({ 'aria-label': 'ENTER OVERRIDE KEY', spellcheck: 'false', autocapitalize: 'characters' });
        input.off('.fiaPassword').on('pointerdown.fiaPassword mousedown.fiaPassword click.fiaPassword touchstart.fiaPassword', function (event) {
            event.stopPropagation();
        }).on('input.fiaPassword', function () {
            kag.stat.f.secret_password = this.value;
            // Tyranoの標準ロードが入力途中の文字も復元できるようにする。
            const params = JSON.parse(this.getAttribute('data-event-pm'));
            params.initial = this.value;
            this.setAttribute('data-event-pm', JSON.stringify(params));
        });
        input[0].focus({ preventScroll: true });
    }

    window.fiaChoices = { prepare: prepare, prepareEncounter: prepareEncounter, layoutEncounter: layoutEncounter, visibleChoices: visibleChoices, decorateSecretChoices: decorateSecretChoices, restorePasswordInput: restorePasswordInput };
})();
