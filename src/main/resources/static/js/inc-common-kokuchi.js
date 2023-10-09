
/**
 * @license Copyright (C) Recruit Co., Ltd.
 */

/**
 * [kokuchi 告知表示用用]
 * @constructor
 */
var kokuchi = kokuchi || function() {};

/**
 * [judgeDay 日付判定]
 * @constructor
 * @param {string} start 開始日.
 * @param {string} end 落とし日.
 */
kokuchi.judgeDay = function(start, end){
    today = new Date();
    nowDay = today.getTime();
    startDay = start.getTime();
    endDay = end.getTime();
    if(startDay <= nowDay && endDay >= nowDay) {
        return true;
    } else {
        return false;
    }
};


/**
 * [appendKokuchi 告知用DOM生成]
 * @constructor
 * @param {Object} options.url JSONファイルパス.
 */
kokuchi.init = function(options){
    var url = options.url;
    var successfunc = options.successfunc;
    console.log(url);
    console.log(successfunc);
    kokuchi.ajax({
        url: url,
        successfunc: successfunc
    });
};

/**
 * [ajax ajaxでJSON取得]
 */
kokuchi.ajax = function(options){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4) {
            if (xhr.status == 200) {
                options.successfunc(JSON.parse(xhr.responseText));
            } else {
                console.log('Communication failure');
            }
        }
    };
    var now = new Date();
    xhr.open('GET', options.url + '?' + now.getTime(), true);
    xhr.send(null);
};

/**
 * [controlDom DOM生成]
 * @constructor
 * @param {Array} data 告知生成用のJSONデータ.
 */
kokuchi.controlDom = function(options){

    var $targetID = document.getElementById(options.targetID);
    var $elemParent = document.getElementById(options.elemParent);
    // エリア取得
    var area = $targetID.getAttribute('data-area');

    var html = '';
    var elem = options.data[area];
    var items = '';
    for (var i = 0; options.data[area].length > i; i++) {
        items = elem[i]
        if(kokuchi.judgeDay(new Date(items['startday']), new Date(items['endday']))) {
            kokuchi.setTemplate(items, area);
            html += template[area + linkflg];
        }
    }

    // 告知要素の確認
    if(html === '') {
        // 告知がない場合は告知エリアごと削除
        $targetID.parentNode.removeChild($targetID);
    } else {
        // 告知がある場合
        // 告知DOMを出力する場所を指定しているクラスがない場合は告知エリアの下に出力
        // クラスが存在する場合はその下に出力
        if($elemParent === null) {
            $targetID.innerHTML = html;
        } else {
            $elemParent.innerHTML = html;
        }
        // 告知エリアを表示する
        $targetID.style.display = 'block';
    }
};

/**
 * [subControlDom サブ告知枠用DOM生成]
 * @constructor
 * @param {Array} data サブ告知生成用のJSONデータ.
 */
kokuchi.subControlDom = function(options){

    var $targetID = document.getElementById(options.targetID);
    var $elemParent = document.getElementById(options.elemParent);

    // トップページ以外はサブ告知枠がないため return
    if($targetID === null) return

    // サブ告知枠用のjsonデータがない場合 return
    if(options.data === undefined) {
        $targetID.parentNode.removeChild($targetID);
        return
    }

    // エリア取得
    var area = $targetID.getAttribute('data-area');

    var html = '';
    var elem = options.data;
    var items = '';
    for (var i = 0; elem.length > i; i++) {
        items = elem[i]
        if(kokuchi.judgeDay(new Date(items['startday']), new Date(items['endday']))) {
            kokuchi.setTemplate(items, area);
            html += template[area + linkflg];
        }
    }

    // 告知要素の確認
    if(html === '') {
        // 告知がない場合は告知エリアごと削除
        $targetID.parentNode.removeChild($targetID);
    } else {
        // 告知がある場合
        // 告知DOMを出力する場所を指定しているクラスがない場合は告知エリアの下に出力
        // クラスが存在する場合はその下に出力
        if($elemParent === null) {
            $targetID.innerHTML = html;
        } else {
            $elemParent.innerHTML = html;
        }
        // 告知エリアを表示する
        $targetID.style.display = 'block';
    }
};

/**
 * [setTemplate テンプレートに値をセット]
 * @constructor
 * @param {Array} items DOMを生成するためのデータ.
 * @param {string} area テンプレート判別用
 */
kokuchi.setTemplate = function(elem, area){
    // テンプレート用変数
    var link = '';
    var title = '';
    var text = '';

    link = elem['link'];
    // リンクがない場合はキーの末尾に"_nolink"を付与
    linkflg = link === undefined ? '_nolink' : '';
    title = elem['title'];
    text = elem['text'] === undefined ? '' : elem['text'];

    // テンプレート
    template = {
        // SUUMO本体用
        suumo_top: '<div class="headinfo-box"><div class="headinfo-inner"><div class="headinfo-link"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></div><p class="headinfo-txt">' + text + '</p></div></div>',
        // SUUMO本体用（リンクなし）
        suumo_top_nolink: '<div class="headinfo-box"><div class="headinfo-inner"><div class="headinfo-link">' + title + '</div><p class="headinfo-txt">' + text + '</p></div></div>',

        // 日経用
        nikkei_top: '<div class="headinfo-box"><div class="headinfo-inner"><div class="headinfo-link"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></div><p class="headinfo-txt">' + text + '</p></div></div>',
        // 日経用（リンクなし）
        nikkei_top_nolink: '<div class="headinfo-box"><div class="headinfo-inner"><div class="headinfo-link">' + title + '</div><p class="headinfo-txt">' + text + '</p></div></div>',

        // リゾートトップ用
        resort_top: '<p class="news_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></p>',
        // リゾートトップ用（リンクなし）
        resort_top_nolink: '<p class="news_wrap-box">' + title + '</p>',

        // 田舎暮らしトップ用
        inaka_top: '<p class="news_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></p>',
        // 田舎暮らしトップ用（リンクなし）
        inaka_top_nolink: '<p class="news_wrap-box">' + title + '</p>',

        // ブライダル全国トップ用
        bridal_top: '<p class="news_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></p>',
        // ブライダル全国トップ用（リンクなし）
        bridal_top_nolink: '<p class="news_wrap-box">' + title + '</p>',

        // ブライダルエリアトップ
        bridal_area_top: '<p class="ic icArrow bri_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></p>',
        // ブライダルエリアトップ（リンクなし）
        bridal_area_top_nolink: '<p class="ic icArrow bri_wrap-box">' + title + '</p>',

        // 学生版全国トップ
        gakusei_top: '<span class="ic icArrow gakusei_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></span>',
        // 学生版全国トップ（リンクなし）
        gakusei_top_nolink: '<span class="ic icArrow gakusei_wrap-box">' + title + '</span>',

        // 学生版エリアトップ
        gakusei_area_top: '<div class="ic icArrow gakusei_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></div>',
        // 学生版エリアトップ（リンクなし）
        gakusei_area_top_nolink: '<span class="ic icArrow gakusei_wrap-box">' + title + '</span>',

        // 学生マンション・学生会館ナビ
        gakusei_mansion_nav: '<div class="bullet_link gakusei_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></div>',
        // 学生マンション・学生会館ナビ（リンクなし）
        gakusei_mansion_nav_nolink: '<div class="bullet_link gakusei_wrap-box">' + title + '</div>',

        // 学生会館パンフレット一覧
        gakusei_pam: '<p class="ic icArrow pam_wrap-box"><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></p>',
        // 学生会館パンフレット一覧（リンクなし）
        gakusei_pam_nolink: '<p class="ic icArrow pam_wrap-box">' + title + '</p>',
        // サブ告知枠
        sub_kokuchi: '<li class="ui-iconbox ui-iconbox--arrow04 sub_notice-list"><span class="ui-iconbox-icon ui-icon--arrow04"></span><a href="' + link + '" target="_blank" rel="noopener">' + title + '</a></li>'
    };
    return template[area + linkflg];
};


// controller
kokuchi.init({
    url: '/js/inc-common-kokuchi.json',
    successfunc: function(data){
        kokuchi.controlDom({
            targetID: 'js-notice',
            elemParent: 'js-noticeElemParent',
            data: data
        });
        kokuchi.subControlDom({
            targetID: 'js-subNotice',
            elemParent: 'js-subNoticeElemParent',
            data: data['sub_kokuchi']
        });
    }
});
