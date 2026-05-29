// data/others/battle_system.js

(function () {
    // Prevent multiple initializations
    if (window.battleSystemInitialized) return;
    window.battleSystemInitialized = true;

    var isBattleMode = false;
    var $cursor = null;

    // Initialize the cursor element
    window.initBattleCursor = function () {
        if ($('#battle_cursor').length > 0) return;

        // Create cursor structure (Star Wars Target Computer Style)
        $cursor = $('<div id="battle_cursor"><div class="sight-ring"></div><div class="scanner-line"></div></div>');
        $('body').append($cursor);

        // Track mouse movement and Hover detection
        $(document).on('mousemove', function (e) {
            if (isBattleMode && $cursor) {
                // Update cursor position
                $cursor.css({
                    left: e.clientX,
                    top: e.clientY
                });

                // Check hover target
                var $target = $(e.target);
                // TyranoScript buttons might be wrapped or be images. 
                // We check if the target or its parent has the class.
                // The 'name' attribute in [button] tag becomes a class on the element.
                if ($target.hasClass('normal_point') || $target.hasClass('weak_point')) {
                    $cursor.show();
                } else {
                    $cursor.hide();
                }
            }
        });

        // Handle clicks for visual effects (Use capture phase to ensure it works over buttons)
        window.addEventListener('mousedown', function (e) {
            if (isBattleMode) {
                // Check if the clicked element is a target
                var target = e.target;
                var isTarget = (target.classList.contains('normal_point') || target.classList.contains('weak_point'));

                if (isTarget) {
                    var isCritical = target.classList.contains('weak_point');
                    spawnSlashEffect(e.clientX, e.clientY, isCritical);
                }
            }
        }, true);
    };

    // Enable Battle Mode
    window.startBattleMode = function () {
        if (!$cursor) window.initBattleCursor();

        isBattleMode = true;
        // Don't show cursor initially, wait for mousemove over target
        if ($cursor) $cursor.hide();
        $('body').addClass('battle-mode');
        // We do NOT globally hide cursor anymore, CSS handles it for specific targets
    };

    // Disable Battle Mode
    window.endBattleMode = function () {
        isBattleMode = false;
        if ($cursor) $cursor.hide();
        $('body').removeClass('battle-mode');
    };

    // Temporarily hide cursor (for menus/tips)
    window.tempHideBattleCursor = function () {
        if ($cursor) $cursor.hide();
    };

    // Restore cursor if in battle mode
    window.restoreBattleCursor = function () {
        if (isBattleMode && $cursor) {
            $cursor.show();
        }
    };

    // Spawn slash effect
    function spawnSlashEffect(x, y, isCritical) {
        var $effect = $('<div class="slash_effect"></div>');

        // Random angle for the slash
        var angle = Math.floor(Math.random() * 180) - 90; // -90 to 90 degrees

        // Add critical class if needed
        if (isCritical) {
            $effect.addClass('critical');
            // Make the animation more dramatic for critical
            $effect.css('animation', 'slash-anim-critical 0.4s ease-out forwards');
        } else {
            $effect.css('animation', 'slash-anim 0.3s ease-out forwards');
        }

        $effect.css({
            left: x,
            top: y,
            '--angle': angle + 'deg',
            transform: 'translate(-50%, -50%) rotate(' + angle + 'deg)' // Initial state, animation will override but CSS var is key
        });

        $('body').append($effect);

        // Remove element after animation ends
        setTimeout(function () {
            $effect.remove();
        }, 500);
    }

})();
