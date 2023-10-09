/**
 *
 */
var suumo = suumo || {};
suumo.frSearch = function() {
};
/**
 * [ua User Agent]
 */
suumo.frSearch.ua = navigator.userAgent;

/**
 * [isPc PCかどうか判定]
 * @return {Boolean} PCかどうか.
 */
suumo.frSearch.isPc = function() {
    var ua = suumo.frSearch.ua;
    console.log(ua);
    var flag = true;
    if ((ua.indexOf('iPhone') > 0 || ua.indexOf('iPad') > 0) || ua.indexOf('iPod') > 0 || ua.indexOf('Android') > 0 || ua.indexOf('Windows Phone') > 0) {
        flag = false;

    }
    return flag;
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

//検索パネル＆【条件を追加する】ボタン表示判断
suumo.frSearch.setpanelDisplay = function() {
    //PC以外のUAはフロートパーツが非表示
    if (suumo.frSearch.isPc() === true) {
        var $searchpanel = $('#js-searchpanel');
        var jyoukenCheckFlg = false;
        if ($('#js-shiborikomiForm').length > 0) {
            //他の検索条件選択否を判断
            jyoukenCheckFlg = suumo.frSearch.jyoukenChecked();
        }
        //検索パネル表示・非表示を判断
        if ($('.js-fr-checkSingle:checked').length > 0 || jyoukenCheckFlg) {
            //パネル：表示
            $searchpanel.fadeIn(250);
            if ($('.js-fr-checkSingle:checked').length > 0 && !jyoukenCheckFlg) {
                $searchpanel.removeClass('searchpanel--noaction');
                $('#js-searchpanel-action').removeClass('is-hidden');
            } else {
                $searchpanel.addClass('searchpanel--noaction');
                $('#js-searchpanel-action').addClass('is-hidden');
            }
        } else {
            //条件チェックなし場合非表示
            $searchpanel.fadeOut(250);
        }
    }
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
    }).delegate('#js-areatabPanel .js-areatabClickLink', 'click', function() {
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
    }).delegate('.js-ensenSearchBtn', 'click', function() {
        // 検索ボタン
        if ($('.js-checkSingle:checked').length === 0) {
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
        var param = '';
        $('.js-checkall').each(function() {
            if (this.checked) {
                param += '&rn=' + this.value;
            } else {
                var ensenFlag = false;
                $('#js-' + $(this).attr('id') + '-panel .js-checkSingle:checked').each(function() {
                    param += '&ek=' + this.value;
                    ensenFlag = true;
                });
                if (ensenFlag) {
                    param += '&rn=' + this.value;
                }
            }
        });
        var sdFlg = $('#js-sdFlg').attr('rel');
        if (sdFlg === '1') {
            if ($('.js-ts:checked').length === 1) {
                $('#js-sdParam').removeAttr('disabled');
            }
        }
        window.location.href = $('#js-shiborikomiPanel-searchBtnForm').attr('action') + '&' + $('#js-shiborikomiForm').serialize() + param;
        return false;
    }).delegate('.js-checkall', 'click', function() {
        // 対象のチェックボックスにチェックを付ける
        console.log($(this).attr('checked'));
        $('#js-' + $(this).attr('id') + '-panel .js-checkSingle:enabled').attr('checked', $(this).attr('checked'));
    }).delegate('.js-fr-checkSingle, .js-fr-checkall', 'click', function() {
        //検索パネルの表示判定
        suumo.frSearch.setpanelDisplay();
    }).delegate('.js-shikugunSearchBtn', 'click', function() {
        // 検索ボタン
        alert("test");
        if ($('.js-checkEkiError:checked').length === 0) {
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
        } else {
            var sdFlg = $('#js-sdFlg').attr('rel');
            if (sdFlg === '1') {
                if ($('.js-ts:checked').length === 1) {
                    $('#js-sdParam').removeAttr('disabled');
                }
            }
        }

        window.location.href = $('#js-shiborikomiPanel-searchBtnForm').attr('action') + '?' + $('#js-areaSelectForm, #js-shiborikomiForm').serialize();
        return false;
    });

//他の検索条件選択否を判断
suumo.frSearch.jyoukenChecked = function() {
    var $checkedCondition = $('.js-checkCondition:checked');
    var $radiocheckedCondition = $('.js-checkCondition:radio:checked');
    var $selectedCondition = $('#js-shiborikomiForm select');

    //ドロップダウンのdefalt値の判定
    var selectedFlg = false;
    //賃料、専有面積と周辺環境と駅徒歩
    for (var j = 0, len2 = $selectedCondition.length; j < len2; j++) {
        var thisVal2 = $selectedCondition.eq(j).val();
        if (0 < thisVal2 && thisVal2 < 9999999 && thisVal2 !== '03') {
            selectedFlg = true;
            break;
        }
    }

    //ラジオボタンのdefalt値の個数
    var radioCount = 0;
    //築後年数と駅徒歩
    for (var k = 0, len3 = $radiocheckedCondition.length; k < len3; k++) {
        var thisVal3 = $radiocheckedCondition.eq(k).next().html();
        if (thisVal3.indexOf('指定しない') !== -1) {
            radioCount++;
        }
    }

    //その他検索条件が判定
    if ($checkedCondition.length > 0 && $checkedCondition.length !== radioCount || selectedFlg) {
        //他の検索条件選択済み
        return true;
    } else {
        //他の検索条件未選択
        return false;
    }
};