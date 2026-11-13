/* lib.ksの閲覧モデル。本文に現れていない人物・会話・正体を表示しない。 */
(function () {
    'use strict';

    const content = window.FiaLibraryContent;
    const aliases = {
        古虫紀一: 'kiichi', 古虫: 'kiichi', 山本秀一: 'syuuichi', 秀一: 'syuuichi',
        曙一十: 'ito', 一十: 'ito', 青葉藍爛: 'airan', 藍爛: 'airan',
        明昼優知: 'akehiru', 明昼: 'akehiru', 姫彗: 'akehiru',
        初明世紬: 'setsu', 世紬: 'setsu', 富山東太: 'tota', 東太: 'tota',
        綾瀬護氏: 'ayase', 綾瀬: 'ayase', 綾背: 'ayase', 百七: 'momona', 光海: 'mitsumi'
    };

    /** 閲覧履歴と、本文から取得した人物情報の保存領域を用意する。 */
    function initialize() {
        const game = TYRANO.kag.stat.f;
        game.libraryRecords = game.libraryRecords || {};
        const records = game.libraryRecords;
        records.seenCharacters = records.seenCharacters || { kiichi: true };
        records.facts = records.facts || {};
        records.tab = records.tab || 'data';
        return records;
    }

    /** 実際に話者名が表示された人物を登録する。数値や作者用設定は参照しない。 */
    function observe(name) {
        const normalized = String(name).replace(/\s/g, '');
        const id = content.characters[normalized] ? normalized : aliases[normalized];
        if (!id) return false;
        initialize().seenCharacters[id] = true;
        return true;
    }

    /** 対応する台詞を読み終えた時だけ、その明示情報を登録する。 */
    function learn(key) {
        const fact = content.facts[key];
        if (!fact) return false;
        const records = initialize();
        records.seenCharacters[fact.actor] = true;
        records.facts[key] = true;
        return true;
    }

    function hasReadTopic(topic) {
        const game = TYRANO.kag.stat.f;
        if (topic.test === 'coop') return game.storyCoopSeen?.[topic.key] === true;
        if (topic.test === 'date') return game.storyDatesSeen?.[topic.key] === true;
        return game.storyV6?.read?.[topic.key] === true;
    }

    /** 表示可能な会話記録だけから、古虫が出会った人物を列挙する。 */
    function getCharacters() {
        const records = initialize();
        return Object.keys(content.characters).filter(id => {
            return records.seenCharacters[id] || content.topics.some(topic => topic.actor === id && hasReadTopic(topic));
        }).map(id => {
            const item = getCharacter(id);
            return { id, name: item.name };
        });
    }

    /** 人物の数値状態・未開示の性別・過去・作者だけの真相は返さない。 */
    function getCharacter(id) {
        const character = content.characters[id];
        if (!character) return null;
        const records = initialize();
        const topics = content.topics.filter(topic => topic.actor === id && hasReadTopic(topic));
        if (!records.seenCharacters[id] && !topics.length) return null;
        const facts = Object.entries(content.facts).filter(([key, fact]) => fact.actor === id && records.facts[key]);
        const nameFact = facts.find(([, fact]) => fact.name);
        return {
            id,
            name: nameFact ? nameFact[1].name : character.name,
            summary: character.summary,
            facts: facts.map(([, fact]) => ({ title: fact.title, text: fact.text })),
            conversations: topics.map(topic => ({ title: topic.title, text: topic.text }))
        };
    }

    /** PowerPointから書き出した説明画像を、登録順に表示する。 */
    function getTutorials() {
        return content.tutorials.map(({ id, title, text, images }) => ({
            id,
            title,
            text,
            images: images.map(image => './data/image/tutorial/' + image)
        }));
    }

    function showParagraph(container, text, className) {
        container.append($('<p></p>').addClass(className || '').text(text));
    }

    function renderCharacter(id) {
        const character = getCharacter(id);
        const detail = $('#character-detail').empty();
        if (!character) return;
        initialize().selectedCharacter = id;
        detail.append($('<h2 class="reference-title"></h2>').text(character.name));
        showParagraph(detail, '古虫が見聞きし、確認できた内容だけを記録しています。', 'library-note');
        showParagraph(detail, character.summary);
        for (const fact of character.facts) {
            const section = $('<section class="library-section"></section>');
            section.append($('<h3></h3>').text(fact.title));
            showParagraph(section, fact.text);
            detail.append(section);
        }
        if (character.conversations.length) {
            detail.append($('<h3></h3>').text('交わした会話'));
            for (const conversation of character.conversations) {
                const section = $('<details class="library-section"></details>');
                section.append($('<summary></summary>').text(conversation.title));
                showParagraph(section, conversation.text);
                detail.append(section);
            }
        } else {
            showParagraph(detail, 'ここに追記できる会話の記録は、まだありません。', 'library-note');
        }
        detail.scrollTop(0);
    }

    function renderCharacters() {
        const list = $('#character-list').empty();
        const characters = getCharacters();
        for (const character of characters) {
            const button = $('<button type="button" class="list-item"></button>').text(character.name);
            button.on('click.library', () => renderCharacter(character.id));
            list.append(button);
        }
        const selected = initialize().selectedCharacter;
        if (characters.some(character => character.id === selected)) renderCharacter(selected);
        else if (characters.length) renderCharacter(characters[0].id);
        else showParagraph($('#character-detail').empty(), 'まだ人物の記録はありません。');
    }

    function renderTutorial(id) {
        const tutorial = getTutorials().find(item => item.id === id);
        if (!tutorial) return;
        initialize().selectedTutorial = id;
        const detail = $('#tutorial-detail').empty();
        detail.append($('<h2 class="reference-title"></h2>').text(tutorial.title));
        showParagraph(detail, tutorial.text, 'library-note');
        tutorial.images.forEach((src, index) => {
            detail.append($('<img class="library-tutorial-image">').attr({ src, alt: tutorial.title + ' ' + (index + 1) }));
        });
        detail.scrollTop(0);
    }

    function renderTutorials() {
        const tutorials = getTutorials();
        const list = $('#tutorial-list').empty();
        for (const tutorial of tutorials) {
            list.append($('<button type="button" class="list-item"></button>').text(tutorial.title).on('click.library', () => renderTutorial(tutorial.id)));
        }
        renderTutorial(initialize().selectedTutorial || tutorials[0]?.id);
    }

    function updateChat() {
        const chats = window.LibraryData?.Chat || [];
        $('#chat-text').text(chats.length ? chats[Math.floor(Math.random() * chats.length)] : 'SYSTEM-323> 応答を準備しています。');
    }

    function selectTab(tab) {
        const allowed = ['data', 'inv', 'characters', 'tutorials', 'radio'];
        if (!allowed.includes(tab)) return;
        initialize().tab = tab;
        $('#library-viewer .nav-item').removeClass('active').attr('aria-selected', 'false');
        $('#lib-nav-' + tab).addClass('active').attr('aria-selected', 'true');
        $('#library-viewer .device-content').removeClass('active');
        $('#tab-' + tab).addClass('active');
        if (tab === 'characters') renderCharacters();
        if (tab === 'tutorials') renderTutorials();
    }

    function bindSecretCommand() {
        if (window.checkSecretCommand) document.removeEventListener('keydown', window.checkSecretCommand);
        window.secretCommandBuffer = '';
        window.checkSecretCommand = function (event) {
            if (event.key.length !== 1) return;
            window.secretCommandBuffer = (window.secretCommandBuffer + event.key.toUpperCase()).slice(-8);
            if (window.secretCommandBuffer === '0000A2Z6') {
                document.removeEventListener('keydown', window.checkSecretCommand);
                window.checkSecretCommand = null;
                TYRANO.kag.ftag.startTag('jump', { storage: 'debug.ks', target: '*start' });
            }
        };
        document.addEventListener('keydown', window.checkSecretCommand);
    }

    /** ロード時にも保存HTMLへイベントを再設定する。 */
    function restore() {
        if (!$('#library-viewer').length) return false;
        initialize();
        // 保存HTMLに残った分類ウィジェットは再生成し、イベントの二重登録を避ける。
        $('#library-viewer .reference-category').remove();
        $('#word-category').html('<option value="">すべての分類</option>');
        $('#monster-category').html('<option value="">すべての分類</option>');
        window.fiaReferenceUI.attachPanel('glossary');
        window.fiaReferenceUI.attachPanel('handbook');
        for (const tab of ['data', 'inv', 'characters', 'tutorials', 'radio']) {
            $('#lib-nav-' + tab).off('.library').on('click.library', () => selectTab(tab));
        }
        // 旧セーブの保存HTMLに更新ボタンが残っていても表示しない。
        $('#lib-chat-next').remove();
        $('#lib-nav-radio').text('險倬鹸');
        // libを開いた時に一度抽選する。タブを往復しても同じ記録を保つ。
        updateChat();
        $('#lib-close').off('.library').on('click.library', () => TYRANO.kag.ftag.startTag('jump', { storage: 'lib.ks', target: '*awakeGame' }));
        bindSecretCommand();
        selectTab(initialize().tab);
        return true;
    }

    function close() {
        if (window.checkSecretCommand) document.removeEventListener('keydown', window.checkSecretCommand);
        window.checkSecretCommand = null;
        window.secretCommandBuffer = '';
        $('#library-viewer').remove();
    }

    window.fiaLibrary = { initialize, observe, learn, getCharacters, getCharacter, getTutorials };
    window.fiaLibraryUI = { restore, close };
})();
