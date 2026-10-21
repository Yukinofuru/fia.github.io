// 用語・要覧の本文と解放状態を分離。取得できない項目の本文は画面へ渡さない。
(function () {
    const source = window.FIA_REFERENCE_DATA;
    const terms = new Map(source.glossary.entries.map(entry => [entry.id, entry]));
    const monsters = new Map(source.handbook.entries.map(entry => [entry.code, entry]));
    const normalize = value => String(value || '').normalize('NFKC').toLowerCase();
    const isSecret = entry => ['秘匿情報', '人物の秘密'].includes(entry.category);

    function initialize() {
        const game = TYRANO.kag.stat.f;
        if (!game.dictionary) {
            game.dictionary = { terms: {}, handbook: {} };
            source.glossary.entries.forEach(function (entry) {
                if (entry.kind !== 'handbook-reference' && !isSecret(entry)) game.dictionary.terms[entry.id] = true;
            });
        }
        return game.dictionary;
    }

    function canReadMonster(code) {
        const entry = monsters.get(code);
        return !!(entry && entry.contentStatus === 'ready' && entry.sections.length && initialize().handbook[code] === true);
    }

    function getMonster(code) {
        return canReadMonster(code) ? monsters.get(code) : null;
    }

    function getTerm(id) {
        const entry = terms.get(id);
        if (!entry || entry.contentStatus === 'needs_content') return null;
        if (entry.kind === 'handbook-reference') {
            const monster = getMonster(entry.handbookCode);
            return monster ? Object.assign({}, entry, { text: monster.text, sections: monster.sections }) : null;
        }
        return initialize().terms[id] === true ? entry : null;
    }

    function unlockTerm(id) {
        const entry = terms.get(id);
        if (!entry || entry.kind === 'handbook-reference') return false;
        initialize().terms[id] = true;
        return true;
    }

    // 遭遇の生還処理から呼ぶ。開いただけ・KNO上昇だけでは解放しない。
    function unlockMonster(code) {
        if (!monsters.has(code)) return false;
        initialize().handbook[code] = true;
        return true;
    }

    function addParagraphs(container, text) {
        String(text || '').split(/\n\s*\n/).filter(Boolean).forEach(function (paragraph) {
            container.append($('<p class="reference-paragraph"></p>').text(paragraph));
        });
    }

    function showDetail(container, entry, title) {
        container.empty().append($('<h2 class="reference-title"></h2>').text(title));
        if (entry.sections) {
            entry.sections.forEach(function (section) {
                container.append($('<h3 class="reference-section-title"></h3>').text(section.title));
                addParagraphs(container, section.text || (section.paragraphs || []).join('\n\n'));
            });
        } else {
            addParagraphs(container, entry.text);
        }
        container.scrollTop(0);
    }

    function attachPanel(kind) {
        const isHandbook = kind === 'handbook';
        const list = $(isHandbook ? '#monster-list' : '#word-list');
        const detail = $(isHandbook ? '#monster-detail' : '#word-detail');
        const search = $(isHandbook ? '#monster-search' : '#word-search');
        const category = $(isHandbook ? '#monster-category' : '#word-category');
        const entries = isHandbook ? source.handbook.entries.slice().sort((a, b) => a.sortOrder - b.sortOrder) : source.glossary.entries;
        const categories = Array.from(new Set(entries.map(entry => entry.category)));
        const categoryNames = { L: 'L：生物', O: 'O：物体', A: 'A：地域', P: 'P：現象', C: 'C：複合体' };
        categories.forEach(function (name) {
            category.append($('<option></option>').val(name).text(isHandbook ? categoryNames[name] || name : name));
        });
        // 標準selectのOSポップアップはCRTより手前に出るため、画面内のメニューを使う。
        category.hide().attr({ 'aria-hidden': 'true', tabindex: '-1' });
        const categoryId = category.attr('id');
        const dropdown = $('<div class="reference-category"></div>').insertAfter(category);
        const toggle = $('<button type="button" class="reference-category-toggle" role="combobox" aria-haspopup="listbox" aria-expanded="false"></button>')
            .attr({ id: categoryId + '-toggle', 'aria-label': category.attr('aria-label'), 'aria-controls': categoryId + '-menu' }).appendTo(dropdown);
        const menu = $('<div class="reference-category-menu" role="listbox" hidden></div>')
            .attr({ id: categoryId + '-menu', 'aria-label': category.attr('aria-label') }).appendTo(dropdown);
        const options = [];
        function closeCategory(returnFocus) {
            menu.prop('hidden', true);
            toggle.attr('aria-expanded', 'false');
            if (returnFocus) toggle[0].focus();
        }
        function syncCategory() {
            toggle.text(category.find('option:selected').text());
            options.forEach(function (option) {
                const selected = option.val() === category.val();
                option.attr('aria-selected', String(selected)).toggleClass('selected', selected);
            });
        }
        function openCategory() {
            dropdown.closest('.device-container').find('.reference-category').not(dropdown).each(function () {
                $(this).find('.reference-category-menu').prop('hidden', true);
                $(this).find('.reference-category-toggle').attr('aria-expanded', 'false');
            });
            menu.prop('hidden', false);
            toggle.attr('aria-expanded', 'true');
            const selected = options.find(option => option.val() === category.val()) || options[0];
            if (selected) selected[0].focus();
        }
        category.find('option').each(function () {
            const option = $('<button type="button" class="reference-category-option" role="option" tabindex="-1"></button>').val(this.value).text(this.textContent);
            option.on('click', function () {
                category.val(option.val()).trigger('change');
                closeCategory(true);
            });
            menu.append(option);
            options.push(option);
        });
        toggle.on('click', function () {
            if (menu.prop('hidden')) openCategory();
            else closeCategory(false);
        }).on('keydown', function (event) {
            if (event.key === 'ArrowDown' || event.key === 'ArrowUp') {
                event.preventDefault();
                openCategory();
            }
        });
        menu.on('keydown', function (event) {
            const index = options.findIndex(option => option[0] === document.activeElement);
            let next;
            if (event.key === 'ArrowDown') next = (index + 1) % options.length;
            if (event.key === 'ArrowUp') next = (index + options.length - 1) % options.length;
            if (event.key === 'Home') next = 0;
            if (event.key === 'End') next = options.length - 1;
            if (next !== undefined) {
                event.preventDefault();
                options[next][0].focus();
            }
            if ((event.key === 'Enter' || event.key === ' ') && index >= 0) {
                event.preventDefault();
                options[index].trigger('click');
            }
            if (event.key === 'Escape') {
                event.preventDefault();
                closeCategory(true);
            }
        });
        dropdown.on('focusout', function () {
            setTimeout(function () {
                if (!dropdown[0].contains(document.activeElement)) closeCategory(false);
            }, 0);
        });
        dropdown.closest('.device-container').off('pointerdown.referenceCategories').on('pointerdown.referenceCategories', function (event) {
            $(this).find('.reference-category').each(function () {
                if (!this.contains(event.target)) {
                    $(this).find('.reference-category-menu').prop('hidden', true);
                    $(this).find('.reference-category-toggle').attr('aria-expanded', 'false');
                }
            });
        });
        syncCategory();
        let selectedId = null;
        function showIntroduction() {
            selectedId = 'introduction';
            list.find('.list-item').removeClass('selected');
            list.find('[data-reference-id="introduction"]').addClass('selected');
            detail.empty().append($('<h2 class="reference-title"></h2>').text('怪異要覧'));
            addParagraphs(detail, source.handbook.introduction);
            detail.append($('<h3 class="reference-section-title"></h3>').text('怪異要覧の見方'));
            addParagraphs(detail, source.handbook.readingGuide);
            detail.scrollTop(0);
        }
        function renderList() {
            list.empty();
            const query = normalize(search.val());
            const filter = category.val();
            if (isHandbook && !query && !filter) {
                list.append($('<button type="button" class="list-item"></button>').attr('data-reference-id', 'introduction').text('怪異要覧').on('click', showIntroduction));
            }
            entries.forEach(function (entry) {
                if (filter && entry.category !== filter) return;
                const readable = isHandbook ? getMonster(entry.code) : getTerm(entry.id);
                // 未解放項目の名前・別名・本文を検索結果から漏らさない。
                if (query && (!readable || !normalize([entry.code, entry.title, entry.reading, ...(entry.aliases || []), readable.text].join(' ')).includes(query))) return;
                const item = $('<button type="button" class="list-item"></button>').attr('data-reference-id', entry.id);
                if (readable) {
                    const title = isHandbook ? entry.code + '　' + entry.title : entry.title;
                    item.text(title).toggleClass('selected', selectedId === entry.id).on('click', function () {
                        selectedId = entry.id;
                        list.find('.list-item').removeClass('selected');
                        item.addClass('selected');
                        showDetail(detail, readable, title);
                    });
                } else {
                    item.text('---------------').addClass('locked').prop('disabled', true);
                }
                list.append(item);
            });
            if (!list.children().length) list.append($('<p class="reference-empty"></p>').text('該当する項目はありません'));
        }
        search.off('.reference').on('input.reference', renderList);
        category.off('.reference').on('change.reference', function () { syncCategory(); renderList(); });
        renderList();
        if (isHandbook) showIntroduction();
        return renderList;
    }

    window.fiaReference = { initialize: initialize, unlockTerm: unlockTerm, unlockMonster: unlockMonster, getTerm: getTerm, getMonster: getMonster, canReadMonster: canReadMonster };
    window.fiaReferenceUI = { attachPanel: attachPanel };
})();
