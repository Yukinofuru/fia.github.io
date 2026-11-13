/* 交流の連絡先／カウンセリングのカルテ名簿。選択だけでは行動を消費しない。 */
(function () {
    'use strict';
    const contacts = [
        { id: 'airan', reading: 'あおば', index: 'あ' },
        { id: 'akehiru', reading: 'あけひる', index: 'あ' },
        { id: 'ayase', reading: 'あやせ もりうじ', index: 'あ' },
        { id: 'ito', reading: 'あけぼの いと', index: 'あ' },
        { id: 'syuuichi', reading: 'やまもと しゅういち', index: 'や' },
        { id: 'setsu', reading: 'はつあかり せつ', index: 'は' },
        { id: 'tota', reading: 'とやま とうた', index: 'た' },
        { id: 'momona', reading: 'ももな', index: 'ま' }
    ];
    const coopTargets = { airan: '*coopAiran', ito: '*coopIto', akehiru: '*coopAkehiru', setsu: '*coopSetsu', momona: '*coopMomona', tota: '*coopTota', ayase: '*coopAyase' };
    const medicTargets = { airan: '*meetAiran', ito: '*meetIto', akehiru: '*meetAkehiru', setsu: '*meetSetsu', momona: '*meetMomona' };

    function element(tag, className, text) {
        const node = document.createElement(tag);
        if (className) node.className = className;
        if (text !== undefined) node.textContent = text;
        return node;
    }

    /** LIBと同じ既知情報だけを使い、作者用プロフィールは表示しない。 */
    function character(id) {
        const known = window.fiaLibrary.getCharacter(id);
        const basic = window.FiaLibraryContent.characters[id];
        return known || { name: basic.name, summary: '', facts: [], conversations: [] };
    }

    function section(container, title, text) {
        const node = element('section', 'directory-note');
        node.append(element('h3', '', title));
        node.append(element('p', '', text));
        container.append(node);
    }

    /** 保存されたHTMLにもイベントを張り直す。選択中の人物が不在なら選択を解除する。 */
    function bind(root, isCoop) {
        if (!root) return false;
        const targets = isCoop ? coopTargets : medicTargets;
        const list = root.querySelector('.directory-list');
        const detail = root.querySelector('.directory-detail');
        const action = root.querySelector('.directory-action');
        const back = root.querySelector('.directory-back');
        // 旧版の保存画面は、現在のKSから描き直す。
        if (!list || !detail || !action || !back) {
            root.remove();
            TYRANO.kag.ftag.startTag('jump', { storage: isCoop ? 'coop.ks' : 'medic.ks', target: isCoop ? '*cooperation' : '*evening' });
            return true;
        }
        const trial = window.fiaDay10Trial?.active();
        const available = id => trial
            ? id !== 'momona' && (id === 'syuuichi' ? !!TYRANO.kag.stat.f.chara_state?.syuuichi?.alive : window.fiaStory.available(id))
            : !!targets[id] && window.fiaStory.available(id);
        const candidates = contacts.filter(item => available(item.id));
        // 電話帳は読み順。名簿の患者番号は常に同じ人物を指す。
        if (isCoop) candidates.sort((a, b) => a.reading.localeCompare(b.reading, 'ja'));
        // ティラノの保存形式では独自data属性が除去されるため、保存形式が保持するname属性にも保持する。
        let selection = root.querySelector('.directory-selection');
        if (!selection) {
            selection = element('input', 'directory-selection');
            selection.type = 'hidden';
            selection.setAttribute('name', '');
            root.append(selection);
        }
        const previous = selection.getAttribute('name') || root.getAttribute('data-selected-id');
        selection.setAttribute('name', '');
        root.removeAttribute('data-selected-id');
        list.replaceChildren();
        action.disabled = true;
        let hasSubmitted = false;
        let selectedId = null;
        const rows = [];
        const day = Number(TYRANO.kag.stat.f.dayCount) || 0;
        root.querySelector('.directory-date').textContent = 'DAY ' + String(day).padStart(2, '0') + (isCoop ? ' ／ 午後' : ' ／ 夜');
        root.querySelector('.directory-count').textContent = candidates.length + ' 名';
        detail.replaceChildren(element('div', 'directory-empty', isCoop ? '連絡先から、会いに行く相手を選ぶ。' : '右の名簿から、カルテを開く。'));
        if (!candidates.length) detail.replaceChildren(element('div', 'directory-empty', isCoop ? '今は会いに行ける相手がいない。' : '今夜、呼び出せる相手はいない。'));

        function select(item, button) {
            selectedId = item.id;
            root.setAttribute('data-selected-id', item.id);
            selection.setAttribute('name', item.id);
            for (const row of rows) {
                row.classList.toggle('is-selected', row === button);
                row.setAttribute('aria-pressed', row === button ? 'true' : 'false');
            }
            action.disabled = false;
            const info = character(item.id);
            const serial = String(contacts.findIndex(contact => contact.id === item.id) + 1).padStart(3, '0');
            detail.replaceChildren();
            detail.append(element('div', 'directory-eyebrow', isCoop ? '連絡先 ／ ' + item.index + '行' : '個人カルテ ／ No. ' + serial));
            detail.append(element('h2', 'directory-name', info.name));
            section(detail, isCoop ? '覚え書き' : '基本記録', info.summary || 'まだ詳しい記録はない。');
            if (!isCoop) {
                const finding = TYRANO.kag.stat.f.storyV6?.findings?.[item.id];
                section(detail, '診療の記録', finding ? 'DAY ' + String(finding.day).padStart(2, '0') + ' に診療を実施。所見の詳細は、取得した面談記録を参照。' : '診療で得た所見は、まだ記録されていない。');
            }
            for (const fact of info.facts) section(detail, fact.title, fact.text);
            const records = element('section', 'directory-note');
            records.append(element('h3', '', isCoop ? 'これまでの会話' : '本人の発言・面談記録'));
            if (!info.conversations.length) records.append(element('p', 'directory-muted', '記録はまだない。'));
            for (const conversation of info.conversations) {
                const fold = element('details', 'directory-record');
                fold.append(element('summary', '', conversation.title));
                fold.append(element('p', '', conversation.text));
                records.append(fold);
            }
            detail.append(records);
            detail.scrollTop = 0;
        }

        for (const item of candidates) {
            const info = character(item.id);
            const button = element('button', 'directory-person');
            button.type = 'button';
            button.setAttribute('aria-pressed', 'false');
            const serial = String(contacts.findIndex(contact => contact.id === item.id) + 1).padStart(3, '0');
            button.append(element('span', 'directory-person-index', isCoop ? item.index : serial));
            button.append(element('span', 'directory-person-name', info.name));
            button.onclick = () => select(item, button);
            rows.push(button);
            list.append(button);
            if (previous === item.id) select(item, button);
        }
        function leave(storage, target) {
            if (hasSubmitted) return;
            hasSubmitted = true;
            root.remove();
            TYRANO.kag.ftag.startTag('jump', { storage, target });
        }
        action.onclick = () => {
            if (!selectedId || !available(selectedId)) return;
            if (trial) {
                window.fiaDay10Trial.state().person = selectedId;
                const destination = isCoop ? '*afternoonTalk' : '*interview';
                leave('daily.ks', destination);
                return;
            }
            leave(isCoop ? 'coop.ks' : 'medic.ks', targets[selectedId]);
        };
        back.onclick = () => {
            if (trial) leave('daily.ks', '*dayEnd');
            else leave(isCoop ? 'coop.ks' : 'daily.ks', isCoop ? '*coopBack' : '*sleep');
        };
        return true;
    }

    function restore() { return bind(document.getElementById('patient-select-ui'), false); }
    function restoreCoop() { return bind(document.getElementById('coop-select-ui'), true); }
    window.fiaMedicRegistry = { restore, restoreCoop };
})();
