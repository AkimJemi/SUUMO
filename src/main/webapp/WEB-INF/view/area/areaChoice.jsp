<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:th="http://www.thymeleaf.org"
    xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
    layout:decorate="../layout/layout">
<head>
<meta charset="UTF-8">
<title>SUUMO不動産</title>
<%@ include file="/WEB-INF/tag/area/suumoAreaHeader.tag"%>
<link rel="stylesheet" href="/css/ou-zen-top.css" media="screen" />
</head>
<body>
    <div class="logoarea">
        <div>
            <img src="/img/sprite/logo2.png" alt="SUUMO(スーモ)"
                width="235" height="100">
        </div>
        <div class="logoarea-suumo">
            <i class="ui-icon--suumo00"></i>
        </div>
    </div>
    <div class="areamap">
        <div class="areamap-map">
            <div class="areamap-map-inner">
                <section class="ui-section--map">
                    <header class="ui-section-header">
                        <h2 class="areatitle">
                            <i class="ui-icon--loupe8"></i>エリア<span
                                class="areatitle-label">から探す</span>
                        </h2>
                    </header>
                    <div class="ui-section-body">
                        <div class="areamap-field">
                            <div id="js-areamap_monthly_background"
                                class="areamap_monthly_background js-areamap_monthly_background--09">
                                <div class="areabox areabox--hokkaido">
                                    <a href="/hokkaido/"
                                        class="areabox-link">
                                        <div class="areabox-title">北海道</div>
                                        <div class="areabox-list">北海道</div>
                                    </a>
                                </div>
                                <div class="areabox areabox--tohoku">
                                    <a href="/tohoku/"
                                        class="areabox-link">
                                        <div class="areabox-title">東北</div>
                                        <div class="areabox-list">
                                            青森|岩手|秋田<br>宮城|山形|福島
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--hokuriku">
                                    <a href="/koshinetsu/"
                                        class="areabox-link">
                                        <div class="areabox-title">甲信越・北陸</div>
                                        <div class="areabox-list">
                                            山梨|長野|新潟<br>富山|石川|福井
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--kanto">
                                    <a href="/kanto/"
                                        class="areabox-link">
                                        <div class="areabox-title">関東</div>
                                        <div class="areabox-list">
                                            東京|神奈川<br>千葉|埼玉|茨城<br>栃木|群馬
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--tokai">
                                    <a href="/tokai/"
                                        class="areabox-link">
                                        <div class="areabox-title">東海</div>
                                        <div class="areabox-list">
                                            愛知|静岡<br>岐阜|三重
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--chugoku">
                                    <a href="/chugoku/"
                                        class="areabox-link">
                                        <div class="areabox-title">中国</div>
                                        <div class="areabox-list">
                                            岡山|広島<br>鳥取|島根<br>山口
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--kansai">
                                    <a href="/kansai/"
                                        class="areabox-link">
                                        <div class="areabox-title">関西</div>
                                        <div class="areabox-list">
                                            大阪|兵庫|京都<br>滋賀|奈良|和歌山
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--sikoku">
                                    <a href="/shikoku/"
                                        class="areabox-link">
                                        <div class="areabox-title">四国</div>
                                        <div class="areabox-list">
                                            愛媛|香川<br>高知|徳島
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--kyushu">
                                    <a href="/kyushu/"
                                        class="areabox-link">
                                        <div class="areabox-title">九州・沖縄</div>
                                        <div class="areabox-list">
                                            福岡|佐賀|長崎<br>熊本|大分|宮崎<br>鹿児島|沖縄
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="areamap_assist areamap_assist--small">
                    <dl class="areamap_assist-1g">
                        <dt class="areamap_assist-title">不動産会社を探す</dt>
                        <dd>
                            <a href="/fudousankaisha/"
                                class="ui-btn ui-btn--base areamap_assist-btn1">不動産会社ガイド<br>
                                <span class="areamenu-label2">(分譲・仲介会社)</span></a>
                        </dd>
                    </dl>
                    <dl class="areamap_assist-2g">
                        <dt class="areamap_assist-title">売る・貸す</dt>
                        <dd>
                            <ul class="ui-list--hz">
                                <li><a href="/baikyaku/"
                                    class="ui-btn ui-btn--base areamap_assist-btn3">不動産売却</a></li>
                                <li><a href="/kasu/"
                                    class="ui-btn ui-btn--base areamap_assist-btn2">部屋を貸す・賃貸経営</a></li>
                            </ul>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
        <div id="js-areamap-nav" class="areamap-nav">
            <div class="areamenu_group">
                <dl class="areamenu areamenu--zen">
                    <dt class="ui-sprite--menu_rent_s">借りる</dt>
                    <dd>
                        <ul>
                            <li id="js-areamenuChintai"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn2">賃貸<br>
                                    <span class="areamenu-label1">マンション・アパート・<br>一戸建て
                                </span></a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="areamenu areamenu--zen">
                    <dt class="ui-sprite--menu_buy_s">買う</dt>
                    <dd>
                        <div class="areamenu-title">
                            <i class="ui-icon--building2"></i><span><a
                                href="/ms/">マンション</a></span>
                        </div>
                        <ul>
                            <li id="js-areamenuMsShinchiku"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1"><span>新築マンション</span></a></li>
                            <li id="js-areamenuMsChuko"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1"><span>中古マンション</span></a></li>
                        </ul>
                        <div class="areamenu-title">
                            <i class="ui-icon--house2"></i><span>一戸建て</span>
                        </div>
                        <ul>
                            <li id="js-areamenuIkkodate"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1">新築一戸建て</a></li>
                            <li id="js-areamenuChukoIkkodate"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1">中古一戸建て</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="areamenu areamenu--zen">
                    <dt class="ui-sprite--menu_build_s">建てる</dt>
                    <dd>
                        <ul>
                            <li id="js-areamenuChumon"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1">注文住宅</a></li>
                            <li id="js-areamenuTochi"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1">土地</a></li>
                        </ul>
                    </dd>
                </dl>
                <dl class="areamenu areamenu--zen">
                    <dt class="ui-sprite--menu_reform_s">リフォームする</dt>
                    <dd>
                        <ul>
                            <li id="js-areamenuReform"
                                class="js-areamenu"><a
                                href="javascript:void(0);"
                                class="ui-btn ui-btn--base areamenu-btn1">リフォーム</a></li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <div id="js-areamenuChintaiPanel"
                class="areamenu_detail areamenu_detail--fr dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/chintai/"
                                class="js-setCookieArZenkoku">賃貸<span>マンション・アパート・一戸建て</span></a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/chintai/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/chintai/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/chintai/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/chintai/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/chintai/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/chintai/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/chintai/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/chintai/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/chintai/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/chintai/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuMsShinchikuPanel"
                class="areamenu_detail areamenu_detail--ms dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/ms/shinchiku/"
                                class="js-setCookieArZenkoku">新築マンション</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/ms/shinchiku/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/ms/shinchiku/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/ms/shinchiku/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/ms/shinchiku/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/ms/shinchiku/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/ms/shinchiku/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/ms/shinchiku/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/ms/shinchiku/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/ms/shinchiku/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/ms/shinchiku/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuMsChukoPanel"
                class="areamenu_detail areamenu_detail--chukoms dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/ms/chuko/"
                                class="js-setCookieArZenkoku">中古マンション</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/ms/chuko/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/ms/chuko/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/ms/chuko/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/ms/chuko/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/ms/chuko/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/ms/chuko/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/ms/chuko/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/ms/chuko/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/ms/chuko/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/ms/chuko/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuIkkodatePanel"
                class="areamenu_detail areamenu_detail--ikkodate dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/ikkodate/"
                                class="js-setCookieArZenkoku">新築一戸建て</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/ikkodate/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/ikkodate/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/ikkodate/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/ikkodate/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/ikkodate/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/ikkodate/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/ikkodate/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/ikkodate/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/ikkodate/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/ikkodate/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuChukoIkkodatePanel"
                class="areamenu_detail areamenu_detail--chukoikkodate dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/chukoikkodate/"
                                class="js-setCookieArZenkoku">中古一戸建て</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/chukoikkodate/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/chukoikkodate/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/chukoikkodate/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/chukoikkodate/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a
                                href="/chukoikkodate/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/chukoikkodate/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/chukoikkodate/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/chukoikkodate/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/chukoikkodate/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/chukoikkodate/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuChumonPanel"
                class="areamenu_detail areamenu_detail--chumon dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/chumon/"
                                class="js-setCookieArZenkoku">注文住宅</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/chumon/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/chumon/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/chumon/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/chumon/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/chumon/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/chumon/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/chumon/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/chumon/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/chumon/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/chumon/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuTochiPanel"
                class="areamenu_detail areamenu_detail--tochi dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/tochi/"
                                class="js-setCookieArZenkoku">土地</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/tochi/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/tochi/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/tochi/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/tochi/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/tochi/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/tochi/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/tochi/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/tochi/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/tochi/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/tochi/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="js-areamenuReformPanel"
                class="areamenu_detail areamenu_detail--reform dn">
                <div class="areamenu_detail-inner">
                    <div class="areamenu_detail-title">
                        <div class="areamenu_detail-title-txt">
                            <a href="/remodel/"
                                class="js-setCookieArZenkoku">リフォーム</a>
                        </div>
                        <div class="areamenu_detail-title-link">
                            <div class="ui-iconbox ui-iconbox--arrow01">
                                <span
                                    class="ui-iconbox-icon ui-icon--arrow01"></span><a
                                    href="/remodel/"
                                    class="js-setCookieArZenkoku">全国</a>
                            </div>
                        </div>
                        <div
                            class="areamenu_detail-title-close js-areamenuClose">
                            <img
                                src="/img/sprite/inc_OU_top_000_menuclose.png"
                                width="20" height="20" alt="">
                        </div>
                    </div>
                    <div class="areamenu_detail-body">
                        <ul class="ui-list--hz">
                            <li><a href="/remodel/hokkaido/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">北海道</a></li>
                            <li><a href="/remodel/tohoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東北</a></li>
                            <li><a href="/remodel/kanto/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関東</a></li>
                            <li><a href="/remodel/koshinetsu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">甲信越・北陸</a></li>
                            <li><a href="/remodel/tokai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">東海</a></li>
                            <li><a href="/remodel/kansai/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">関西</a></li>
                            <li><a href="/remodel/shikoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">四国</a></li>
                            <li><a href="/remodel/chugoku/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">中国</a></li>
                            <li><a href="/remodel/kyushu/"
                                class="ui-btn ui-btn--base areamenu_detail-btn">九州・沖縄</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>