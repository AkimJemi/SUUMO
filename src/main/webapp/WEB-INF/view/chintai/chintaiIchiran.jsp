<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>【SUUMO】大鰐温泉駅の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報（${prefectureName }）</title>
<link rel="stylesheet preconnect" href="/css/header-gnav.css"
    media="screen">
<link rel="stylesheet preconnect" href="/css/fr-list.css" media="screen"
    <%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
</head>
<body>
    <form name="chintai_ichiran_FR301FC001ActionForm"
        id="js-leftColumnForm" method="post"
        action="/jj/chintai/ichiran/FR301FC001/">
        <input type="hidden" name="ar" value="020"> <input
            type="hidden" name="clp" value="" class="mail_clp_change">
        <input type="hidden" name="bs" value="040">
        <div id="hidden_post"></div>
        <input type="hidden" disabled="disabled" value="01" id="kskbnId">
        <input type="hidden" disabled="disabled" value="0"
            id="js-dseFlgId">
        <div class="tabmenu tabmenu--04">
            <ul class="ui-tab--base ui-tab--base01 ui-tab--nolink">
                <li class="is-active">
                    <div class="ui-tab-item">
                        <span
                            class="fr_list-eachicon fr_list-eachicon--building"></span>建物ごとに表示
                    </div>
                </li>
                <li id="js-tabListView1">
                    <div class="ui-tab-item">
                        <span
                            class="fr_list-eachicon fr_list-eachicon--door"></span>部屋ごとに表示
                    </div>
                </li>
            </ul>
            <a
                href="/jj/chintai/ichiran/FR301FC001/?ar=020&amp;bs=040&amp;ra=002&amp;rn=5125&amp;ek=512559325&amp;ek=512559335&amp;cb=0.0&amp;ct=9999999&amp;mb=0&amp;mt=9999999&amp;et=9999999&amp;cn=9999999&amp;shkr1=03&amp;shkr2=03&amp;shkr3=03&amp;shkr4=03&amp;sngz=&amp;po1=25"
                class="dn" id="js-pcLink"></a>
        </div>
        <!-- FrBukkenSort03 START -->
        <div class="selectbox">
            <input type="hidden" disabled="disabled" value="25"
                id="_po1"> <input type="hidden" value=""
                id="smk"> <input type="hidden"
                disabled="disabled" value="99" id="_po2">
            <div id="FR301FK0041_OPTIONS" class="dn selectbox">
                <ul>
                    <li id="25">おすすめ順</li>
                    <li id="12">賃料+管理費が安い順</li>
                    <li id="15">賃料+管理費が高い順</li>
                    <li id="09">新着順</li>
                    <li id="04">築年数が新しい順</li>
                    <li id="16">専有面積が広い順</li>
                    <li id="17">住所別</li>
                </ul>
            </div>
            <div class="paginate_set">
                <div class="paginate_set-hit">
                    15<span>件</span> <span
                        class="fr_list-eachicon fr_list-eachicon--info paginate_setitem">
                        <span class="paginate_setitem-tip">不動産会社が掲載している物件総数です。
                            <br>SUUMOでは、同一と思われる物件を１つにまとめて表示しているため、
                            <br>掲載物件総数と物件一覧に表示されている件数が異なる場合があります。
                    </span>
                    </span>
                </div>
            </div>
            <dl>
                <dt>並び替え：</dt>
                <dd>
                    <select name="po1"
                        id="js-sortbox-sortPulldownSingle"
                        class="sortbox-parts"><option
                            value="25" selected="selected" id="opt1_25">おすすめ順</option>
                        <option value="12" id="opt1_12">賃料+管理費が安い順</option>
                        <option value="15" id="opt1_15">賃料+管理費が高い順</option>
                        <option value="09" id="opt1_09">新着順</option>
                        <option value="04" id="opt1_04">築年数が新しい順</option>
                        <option value="16" id="opt1_16">専有面積が広い順</option>
                        <option value="17" id="opt1_17">住所別</option></select>
                </dd>
                <dt>表示建物数：</dt>
                <dd>
                    <select name="pc" id="js-tabmenu1-pcChange"><option
                            value="10">10件</option>
                        <option value="20">20件</option>
                        <option value="30" selected="selected">30件</option>
                        <option value="50">50件</option></select>
                </dd>
            </dl>
        </div>
        <!-- FrBukkenSort03 END -->
        <!-- FrBukkenCassette03 START -->
        <div class="inquiry inquiry--top">
            <div class="inquiry_item">
                <div class="inquiry_item-title">
                    <span
                        class="fr_list-eachicon fr_list-eachicon--check_inquiry inquiry_item-title-text"></span>チェックした物件を
                </div>
                <div class="inquiry_item-btn">
                    <a
                        class="ui-btn ui-btn--cta2 ui-btn--small listbtn--small js-allShiryoSeikyu"
                        href="javascript:void(0);" title="問い合わせする"
                        onclick="sendBeaconSiteCatalystClick(event,this,'hankyo_list_button',self);return false;"
                        data-click="click">まとめて問い合わせする</a>
                </div>
            </div>
        </div>
        <div id="js-bukkenList">

            <div id="js-view_gallery">
                <div id="js-view_gallery-overlay"
                    class="modalview_overlay"></div>
                <div id="js-view_gallery-modalview"
                    class="l-modalview js-noContextMenu">
                    <div class="modalview">
                        <div class="modalview-main">
                            <div class="modalview-main-close">
                                <a href="javascript:void(0);"
                                    id="js-view_gallery-overlay_close"
                                    class="modalview_close"></a>
                            </div>
                            <div class="modalview-main-prev">
                                <a href="javascript:void(0);"
                                    id="js-view_gallery-modalview_prev"
                                    class="modalview_prev"></a>
                            </div>
                            <div class="modalview-main-list">
                                <ul id="js-view_gallery-modalview_list"
                                    class="l-modalview_object">
                                    <li>
                                        <div
                                            class="js-view_gallery-modalview_object modalview_object">
                                            <div
                                                class="modalview_object-item js-lazyload">
                                                <img
                                                    src="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_go.jpg"
                                                    data-src="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_go.jpg">
                                            </div>
                                            <div
                                                class="modalview_object-caption">
                                                <div
                                                    class="modalview_object-caption-count">
                                                    <span>1</span>/<span>10</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="modalview-main-next">
                                    <a href="javascript:void(0);"
                                        id="js-view_gallery-modalview_next"
                                        class="modalview_next"></a>
                                </div>
                            </div>
                            <div class="modalview_btn">
                                <a
                                    href="/chintai/jnc_000082222466/?bc=100174582750"
                                    target="_blank"
                                    id="js-view_gallery-modalview_link"
                                    class="modalview_btn-link">物件の詳細はこちら</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="l-cassetteitem">
                <li>
                    <div class="cassetteitem">
                        <div class="cassetteitem-detail">
                            <div class="cassetteitem-detail-object">
                                <div class="cassetteitem_object">
                                    <div
                                        class="cassetteitem_object-item">
                                        <img
                                            class="js-noContextMenu js-linkImage js-adjustImg"
                                            alt=""
                                            rel="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_gw.jpg"
                                            src="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_gw.jpg"
                                            width="180" height="131"
                                            style="margin-top: 24.5px;">
                                    </div>
                                </div>
                            </div>
                            <div class="cassetteitem-detail-body">
                                <div class="cassetteitem_content">
                                    <div
                                        class="cassetteitem_content-label">
                                        <span
                                            class="ui-pct ui-pct--util1">賃貸一戸建て</span>
                                    </div>
                                    <div
                                        class="cassetteitem_content-title">青森県南津軽郡大鰐町長峰字前田262-2</div>
                                    <div
                                        class="cassetteitem_content-body">
                                        <ul class="cassetteitem_detail">
                                            <li
                                                class="cassetteitem_detail-col1">青森県南津軽郡大鰐町大字長峰字前田</li>
                                            <li
                                                class="cassetteitem_detail-col2">
                                                <div
                                                    class="cassetteitem_detail-text">ＪＲ奥羽本線/長峰駅
                                                    歩17分</div>
                                                <div
                                                    class="cassetteitem_detail-text"
                                                    style="font-weight: bold">ＪＲ奥羽本線/大鰐温泉駅
                                                    歩38分</div>
                                                <div
                                                    class="cassetteitem_detail-text">弘南鉄道大鰐線/大鰐駅
                                                    歩38分</div>
                                            </li>
                                            <li
                                                class="cassetteitem_detail-col3">
                                                <div>築43年</div>
                                                <div>2階建</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="cassetteitem-item">
                            <table class="cassetteitem_other">
                                <thead>
                                    <tr>
                                        <th
                                            class="cassetteitem_other-col01">&nbsp;</th>
                                        <th
                                            class="cassetteitem_other-col02">&nbsp;</th>
                                        <th
                                            class="cassetteitem_other-col03">階</th>
                                        <th
                                            class="cassetteitem_other-col04">賃料/管理費</th>
                                        <th
                                            class="cassetteitem_other-col05">敷金/礼金</th>
                                        <th
                                            class="cassetteitem_other-col06">間取り/専有面積</th>
                                        <th
                                            class="cassetteitem_other-col07">&nbsp;</th>
                                        <th
                                            class="cassetteitem_other-col08">お気に入り</th>
                                        <th
                                            class="cassetteitem_other-col09">&nbsp;</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr class="js-cassette_link">
                                        <td
                                            class="cassetteitem_other-checkbox  js-cassetteitem_checkbox">
                                            <input type="checkbox"
                                            name="bc" id="bukken_0"
                                            class="js-ikkatsuCB js-single_checkbox"
                                            value="100174582750"><label
                                            for="bc">&nbsp;</label>
                                        </td>
                                        <td>
                                            <div
                                                class="casssetteitem_other-thumbnail js-view_gallery_images js-noContextMenu"
                                                data-imgs="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_go.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_co.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_ro.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_1o.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_2o.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_3o.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_4o.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_5o.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_8o.jpg,https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_9o.jpg">
                                                <img
                                                    src="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_co.jpg"
                                                    rel="https://img01.suumo.com/front/gazo/fr/bukken/750/100174582750/100174582750_co.jpg"
                                                    alt=""
                                                    class="casssetteitem_other-thumbnail-img casssetteitem_other-thumbnail-img--hasimages js-view_gallery-modal">
                                                <span
                                                    class="cassetteitem_other-thumbnail-expansion js-view_gallery-modal"></span>
                                            </div>
                                        </td>
                                        <td>-</td>
                                        <td>
                                            <ul>
                                                <li><span
                                                    class="cassetteitem_price cassetteitem_price--rent"><span
                                                        class="cassetteitem_other-emphasis ui-text--bold">4.6万円</span></span></li>
                                                <li><span
                                                    class="cassetteitem_price cassetteitem_price--administration">-</span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <ul>
                                                <li><span
                                                    class="cassetteitem_price cassetteitem_price--deposit">-</span></li>
                                                <li><span
                                                    class="cassetteitem_price cassetteitem_price--gratuity">-</span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <ul>
                                                <li><span
                                                    class="cassetteitem_madori">10SDK</span></li>
                                                <li><span
                                                    class="cassetteitem_menseki">206.44m<sup>2</sup></span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <ul
                                                class="cassetteitem-taglist">
                                            </ul>
                                        </td>
                                        <td class="js-property"><input
                                            class="js-clipkey"
                                            type="hidden"
                                            value="100174582750">
                                            <a
                                            href="javascript:void(0);"
                                            class="ui-btn ui-favorite cassette_favorite cassette_favorite--sm js-addMyList js-linkSuppresser ">
                                                <span
                                                class="ui-favorite-icon cassette_favorite-icon"><span
                                                    class="fr_list-eachicon fr_list-eachicon--favorite"></span></span>
                                                <span
                                                class="ui-favorite-text">追加</span>
                                                <span
                                                class="ui-favorite-icon_add cassette_favorite-icon_add"><span
                                                    class="fr_list-eachicon fr_list-eachicon--favorite_add"></span></span>
                                                <span
                                                class="ui-favorite-text_add">追加</span>
                                        </a></td>
                                        <td
                                            class="ui-text--midium ui-text--bold"
                                            style="padding: 10px 0px;">
                                            <a
                                            href="/chintai/jnc_000082222466/?bc=100174582750"
                                            target="_blank"
                                            class="js-cassette_link_href cassetteitem_other-linktext"
                                            onclick="sendBeaconSiteCatalystClick(event,this,'click_casset_bkn_link',false);"
                                            style="font-size: 12px;">詳細を見る</a>
                                            <button class="karte_btn"
                                                style="width: 100%; color: #fff; font-weight: bold; font-size: 12px; border-radius: 3px; padding: 3px 0; margin-top: 10px; border: none; background-color: #F37E00; border-bottom: 2px solid #E15F00; box-shadow: 0 2px 1px #D9D9D9;">
                                                お問い合わせ<span
                                                    class="karte_btn-text"
                                                    style="display: block; font-size: 10px;">(無料)</span>
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="l-inquiry">
                <div class="inquiry inquiry--middle">
                    <div class="inquiry_item">
                        <div class="inquiry_item-title">
                            <span
                                class="fr_list-eachicon fr_list-eachicon--check_inquiry inquiry_item-title-text"></span>チェックした物件を
                        </div>
                        <div class="inquiry_item-btn">
                            <a
                                class="ui-btn ui-btn--cta2 ui-btn--small listbtn--small js-allShiryoSeikyu"
                                href="javascript:void(0);"
                                title="問い合わせする"
                                onclick="sendBeaconSiteCatalystClick(event,this,'hankyo_list_button',self);return false;"
                                data-click="click">まとめて問い合わせする</a>
                        </div>
                    </div>
                </div>
            </div>
            </ul>
        </div>
        <div class="js-bannerTrigger5"></div>
        <div class="l-inquiry l-inquiry--bottom">
            <div class="inquiry inquiry--bottom">
                <div class="inquiry_item">
                    <div class="inquiry_item-title">
                        <span
                            class="fr_list-eachicon fr_list-eachicon--check_inquiry inquiry_item-title-text"></span>チェックした物件を
                    </div>
                    <div class="inquiry_item-btn">
                        <a
                            class="ui-btn ui-btn--cta2 ui-btn--small listbtn--small js-allShiryoSeikyu"
                            href="javascript:void(0);" title="問い合わせする"
                            onclick="sendBeaconSiteCatalystClick(event,this,'hankyo_list_button',self);return false;"
                            data-click="click">まとめて問い合わせする</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- FrBukkenCassette03 END -->
        <div class="js-bannerTrigger4"></div>
        <div class="tabmenu tabmenu--02">
            <ul class="ui-tab--base ui-tab--base02 ui-tab--nolink">
                <li class="is-active">
                    <div class="ui-tab-item">
                        <span
                            class="fr_list-eachicon fr_list-eachicon--building"></span>建物ごとに表示
                    </div>
                </li>
                <li id="js-tabListView2">
                    <div class="ui-tab-item">
                        <span
                            class="fr_list-eachicon fr_list-eachicon--door"></span>部屋ごとに表示
                    </div>
                </li>
            </ul>
            <div class="tabmenu-assist">
                表示建物数： <select name="pc" id="js-tabmenu2-pcChange"><option
                        value="10">10件</option>
                    <option value="20">20件</option>
                    <option value="30" selected="selected">30件</option>
                    <option value="50">50件</option></select>
            </div>
        </div>
        <div class="js-bannerTrigger3"></div>
        <div class="pagination_set">
            <div class="pagination_set-hit">
                15<span>件</span> <span
                    class="fr_list-eachicon fr_list-eachicon--info paginate_setitem">
                    <span class="paginate_setitem-tip">不動産会社が掲載している物件総数です。
                        <br>SUUMOでは、同一と思われる物件を１つにまとめて表示しているため、 <br>掲載物件総数と物件一覧に表示されている件数が異なる場合があります。
                </span>
                </span>
            </div>
            <!-- FrBukkenPager01 Start -->
            <div class="pagination pagination_set-nav">
                <ol class="pagination-parts">
                    <li class="pagination-current">1</li>
                </ol>
            </div>
            <!-- FrBukkenPager01 End -->
        </div>
    </form>
</body>
</html>