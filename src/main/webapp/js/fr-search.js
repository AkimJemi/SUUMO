/**
 *
 */
var suumo = suumo || {};
suumo.frSearch = function() {
};
suumo.headerfooter = function() {
};
suumo.headerfooter.goScroll = function(options) {
    var scrollBar = options.scrollTarget || 'body, html';
    var adjustVal = options.adjustVal || 0;
    var scrollTopVal = $(options.targetID).offset().top + adjustVal;
    // ライトボックス内のスクロール対応
    if (options.lightboxFlg) {
        scrollTopVal = $(options.targetID).position().top + $(scrollBar).scrollTop() + adjustVal;
    }
    window.setTimeout(function() {
        $(scrollBar).animate({
            scrollTop: scrollTopVal
        }, 500);
    });
};

suumo.frSearch.setHistory = function(options) {
    var $target = $(options.targetId);
    if ($target.length === 0) {
        return;
    }
    var $targetChecked = $target.find('input[type=checkbox], input[type=radio]');
    var $targetSelected = $target.find('option');
    var $targetText = $target.find('input[type=text]');
    var trimSource_ = function($target, key, value) {
        for (var i = 0, len = $target.length; i < len; i++) {
            if ($target.eq(i).attr(key) === true) {
                // 現在チェックされているなら属性に書き込んで次のループへ。
                $target[i].setAttribute(key, value);
                continue;
            }
            if ($target[i].getAttribute(key) === value) {
                if ($target.eq(i).attr(key) === false) {
                    // 属性が設定されていて且つ選択されていないならば属性を消去して次のループへ。
                    $target[i].removeAttribute(key);
                }
                continue;
            }
        }
    };

    for (var i = 0, len = $targetText.length; i < len; i++) {
        if ($targetText.eq(i).val() === $targetText.eq(i).attr('placeholder')) {
            $targetText[i].setAttribute('value', '');
            continue;
        } else if ($targetText.eq(i).val() === '') {
            $targetText[i].setAttribute('value', '');
            continue;
        }
        $targetText[i].setAttribute('value', $targetText.eq(i).attr('value'));
    }
    trimSource_($targetChecked, 'checked', 'checked');
    trimSource_($targetSelected, 'selected', 'selected');
    sessionStorage.setItem(location.href, $target.html());
};



$('#js-contents-mainPanel')
    .delegate('#js-gotoEkiBtn', 'click', function() {
        // チェックした沿線の駅を絞込むボタン
        if ($('#js-gotoEkiForm :checkbox[checked]').length === 0) {
            // エラーメッセージを表示
            $('#js-gotoEkiErrorPanel').show();
            // マイバーがエラー表示に重ならないようにスクロール
            var adjustVal = -56;
            if ($('#js-mylist').length === 0) {
                // マイバーが無い場合、マイバー分値を減らす
                adjustVal = -10;
            }
            suumo.headerfooter.goScroll({
                'targetID': '#js-areaSelectPanel',
                'adjustVal': adjustVal
            });
            return false;
        }

        window.location.href = $('#js-gotoEkiForm').attr('action') + '?' + $('#js-gotoEkiForm').serialize();
        return false;
    })
    .delegate('#js-areatabPanel .js-areatabClickLink', 'click', function() {
        // ヒストリーバックの保存処理
        suumo.frSearch.setHistory({
            targetId: '#js-contents-mainPanel'
        });
        // エリアタブを押下
        var $target = $(this);
        var targetUrl = $('#js-areatabOnClickUrl').attr('rel') + '&' + $target.attr('rel');
        var sdFlg = $('#js-sdFlg').attr('rel');
        if (sdFlg === '1') {
            if ($('.js-ts:checked').length === 1) {
                $('#js-sdParam').removeAttr('disabled');
            }
        }
        // 「その他条件を指定」部存在しないの場合
        if ($('#js-shiborikomiForm').serialize().length === 0) {
            window.location.href = targetUrl;
        } else {
            window.location.href = targetUrl + '&' + $('#js-shiborikomiForm').serialize();
        }
        return false;
    })
    ;