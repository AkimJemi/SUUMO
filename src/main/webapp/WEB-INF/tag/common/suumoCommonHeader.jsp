 <%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/header-gnav.css" media="screen" />
<header>
    <div id="js-mylist" class="mylist">
        <div class="mylist-inner">
            <div id="js-mylist-historyBox" class="browsearea dn">
                <ul class="browselist">
                    <li id="js-mylist-historyBox-popLatestBukken"
                        class="browselist-box"></li>
                    <li id="js-mylist-historyBox-popLatestSearch"
                        class="browselist-box"></li>
                </ul>
                <div id="js-mylist-historyBox-close"
                    class="browsearea-close">
                    <a href="javascript:void(0);">×&nbsp;閉じる</a>
                </div>
            </div>
            <div id="js-mylist-logo" class="mylist-logo"
                style="display: none;">
                <a class="js-setCookieArZenkoku" href="/">suumo</a>
            </div>
            <ul class="mylist-list">
                <li>
                    <div class="mylistbarbox">
                        <div class="mylistbarbox-inner">
                            <div class="mylistbarbox-inner-contents">
                                <div class="mylistbar">
                                    <p class="mylistbar-title">お気に入り</p>
                                    <ul class="mylistbar-inbar">
                                        <li class="mylistbar-inbar-item">
                                            <a
                                            href="/jj/common/service/JJ901FM203/?ar=010&amp;cts=01"
                                            class="mylistbarlink mylistbarlink--bukken"><span
                                                class="mylistbarlink-title">物件</span>
                                                <!--
                                                    --> <span
                                                id="js-mylistbarcnt-bukken"
                                                class="mylistbarcnt">
                                            </span></a>
                                        </li>
                                        <li class="mylistbar-inbar-item">
                                            <a
                                            href="/jj/common/service/JJ901FM203/?ar=010&amp;cts=02"
                                            class="mylistbarlink mylistbarlink--company"><span
                                                class="mylistbarlink-title">会社</span>
                                                <!--
                                                    --> <span
                                                id="js-mylistbarcnt-company"
                                                class="mylistbarcnt">
                                            </span></a>
                                        </li>
                                        <li class="mylistbar-inbar-item">
                                            <a
                                            id="js-mylist-myKensakuJoken"
                                            class="mylistbarlink mylistbarlink--sch"
                                            href="javascript:void(0);">
                                                <span
                                                class="mylistbarlink-title">検索条件</span>
                                                <!--
                                                    --> <span
                                                id="js-mylistbarcnt-sch"
                                                class="mylistbarcnt">
                                            </span>
                                        </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="mylistnbbox">
                        <div class="mylistbar mylistbar--nb">
                            <ul class="mylistbar-inbar">
                                <li class="mylistbar-inbar-item"><a
                                    href="javascript:void(0);"
                                    id="js-mylist-myHistory"
                                    class="mylistbarlink mylistbarlink--browse"><span
                                        class="mylistbarlink-title">閲覧履歴</span><span
                                        class="mylistbarlink-arw mylisticon mylisticon--arw"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <ul class="mylist-member">
                        <li><a
                            href="/jj/common/common/JJ901FK101/showMemRegist/"
                            class="member-entry js-member-entry"><span>会員登録</span></a></li>
                        <li><a
                            href="/jj/common/common/JJ901FK101/showLogin/"
                            class="mylist-login js-mylist-login"><span>ログイン</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="headercontainer">
        <!-- smpBanner Start -->
        <!-- smpBanner End -->
        <noscript>
            <div class="headjsalart">
                <div class="headjsalart-coution ui-media">
                    <span class="ui-icon--exclamation1 ui-media-object"></span>
                    <div class="ui-media-body">
                        <div class="headjsalart-title">本サイトはJavaScriptをオンにした状態でお使いください</div>
                        <p class="headjsalart-txt">
                            ブラウザのJavaScriptの設定が有効になっていません。JavaScriptが有効になっていないとすべての機能をお使いいただけないことがあります。（<a
                                href="https://suumo.jp/help/guide.html"
                                target="_blank">JavaScriptを有効にする方法</a>）
                        </p>
                    </div>
                </div>
            </div>
        </noscript>
        <!-- ↓===================================================================================================================↓ -->
        <!-- ↓/common/CM_000_000_HF_notice.html↓ -->
        <style type="text/css">
<!--
.headinfo .headinfo-box {
    margin-top: 5px;
}
-->
</style>

        <script
            src="/edit/assets/suumo/js/include/inc-common-kokuchi.js?20210818"></script>
        <!-- ↑/common/CM_000_000_HF_notice.html↑ -->
        <!-- ↑===================================================================================================================↑ -->
        <div class="siteheadercontainer">
            <div class="siteheader">
                <div class="desc">
                    <p class="desc-title">SUUMO(スーモ)は、北海道の住宅・不動産購入や売買をサポートする住宅情報サイトです。</p>
                </div>
                <div class="siteheader-inner">
                    <div class="logo">
                        <div class="logo-object">
                            <a href="/"><img
                                src="/img/sprite/logo.png"
                                alt="SUUMO(スーモ)" width="138" height="46"></a>
                        </div>
                        <div class="logo-field">
                            <div class="logo-field-link">
                                <a href="/"
                                    class="js-setCookieArZenkoku">全国へ</a>
                            </div>
                            <div class="logo-field-area">北海道版</div>
                        </div>
                    </div>
                    <div class="gnav">
                        <ul class="gnav_list">
                            <li>
                                <dl class="gnav_item gnav_item--chintai">
                                    <dt class="gnav_item-title">借りる</dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/chintai/"
                                                class="gnav_btn gnav_btn--chintai "
                                                title="賃貸">賃貸</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="gnav_item gnav_item--ms">
                                    <dt class="gnav_item-title">
                                        <a href="/ms/" title="マンションの購入">マンション</a>を買う
                                    </dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/ms/shinchiku/"
                                                class="gnav_btn gnav_btn--shinchiku gnav_btn--left "
                                                title="新築マンションの購入（築1年以上未入居を含む）">新築</a>
                                        </div>
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/ms/chuko/"
                                                class="gnav_btn gnav_btn--chukomansion gnav_btn--right "
                                                title="中古マンションの購入">中古</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="gnav_item gnav_item--kodate">
                                    <dt class="gnav_item-title">一戸建てを買う</dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/ikkodate/"
                                                class="gnav_btn gnav_btn--ikkodate gnav_btn--left "
                                                title="新築一戸建ての購入（築1年以上未入居・建築条件付土地を含む）">新築</a>
                                        </div>
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/chukoikkodate/"
                                                class="gnav_btn gnav_btn--chukoikkodate gnav_btn--right "
                                                title="中古一戸建ての購入">中古</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="gnav_item gnav_item--chumon">
                                    <dt class="gnav_item-title">建てる</dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/chumon/"
                                                class="gnav_btn gnav_btn--chumon gnav_btn--left"
                                                title="注文住宅">注文住宅</a>
                                        </div>
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/tochi/"
                                                class="gnav_btn gnav_btn--tochi gnav_btn--right "
                                                title="土地の購入">土地</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="gnav_item gnav_item--reform">
                                    <dt class="gnav_item-title">リフォームする</dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/remodel/"
                                                class="gnav_btn gnav_btn--reform "
                                                title="リフォーム">リフォーム</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl
                                    class="gnav_item gnav_item--baikyaku">
                                    <dt class="gnav_item-title">売る</dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a href="/baikyaku/"
                                                class="gnav_btn gnav_btn--baikyaku "
                                                title="売却査定">売却査定</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <dl class="gnav_item gnav_item--counter">
                                    <dt class="gnav_item-title">住まいの相談</dt>
                                    <dd class="gnav_item-definition">
                                        <div
                                            class="gnav_item-definition-list">
                                            <a
                                                href="https://www.suumocounter.jp/?vos=dsmcrecb20110926001"
                                                class="gnav_btn gnav_btn--counter"
                                                target="_blank"
                                                title="講座/相談">講座/相談</a>
                                        </div>
                                    </dd>
                                </dl>
                            </li>
                            <li>
                                <div
                                    class="gnav_item gnav_item--kurashi">
                                    <div class="balloon_nav">
                                        <div class="balloon_nav-action">
                                            <div
                                                class="balloon_nav-action-link">
                                                <a
                                                    href="javascript:void(0);"
                                                    class="gnav_btn gnav_btn--kurashi"
                                                    title="暮らし">暮らし</a>
                                            </div>
                                            <div
                                                class="balloon_nav-action-item">
                                                <div
                                                    class="gnav_drop_list">
                                                    <ul
                                                        class="gnav_drop_list-item">
                                                        <li><a
                                                            href="http://hikkoshi.suumo.jp/"
                                                            target="_blank"
                                                            class="gnav_drop gnav_drop--moving"
                                                            title="SUUMO引越し見積もり"><span
                                                                class="gnav_drop-text">SUUMO引越し見積もり</span></a></li>
                                                        <li><a
                                                            href="https://www.suumocounter.jp/fp/?suit=STct20170606005"
                                                            target="_blank"
                                                            class="gnav_drop gnav_drop--fp"
                                                            title="SUUMO家とお金の相談"><span
                                                                class="gnav_drop-text">SUUMO家とお金の相談</span></a></li>
                                                    </ul>
                                                    <ul
                                                        class="gnav_drop_list-item">
                                                        <li><a
                                                            href="https://finance.recruit.co.jp/quick/?utm_source=scomgnav&amp;utm_medium=link&amp;utm_campaign=ret181001xx01"
                                                            target="_blank"
                                                            class="gnav_drop gnav_drop--loan"
                                                            title="スゴい速い住宅ローン審査"><span
                                                                class="gnav_drop-text">スゴい速い住宅ローン審査</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcrumb">
        <div class="breadcrumb-inner">
            <ol class="breadcrumb-list">
                <li><a class="js-setCookieArZenkoku" href="/">不動産・住宅サイト
                        SUUMO(スーモ)トップ</a>&nbsp;&gt;&nbsp;</li>
                <li>北海道の不動産・住宅情報</li>
            </ol>
        </div>
    </div>
</header>