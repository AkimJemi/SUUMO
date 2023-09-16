<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
<head>
<meta charset="UTF-8">

<title>【SUUMO】${areaName }の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報</title>
</head>
<body>
    <div id="js-contents-mainPanel" class="contents">
        <div id="js-areaSelectPanel" class="ui-section--h2">
            <div class="ui-section-header">
                <h2>駅を選択</h2>
            </div>
            <div class="ui-section-body">
                <div class="selectareatitle">
                    <span
                        class="fr_search-icon fr_search-icon--checkbox"></span><span
                        class="selectareatitle-b">駅にチェック</span>をいれてください（複数選択できます）
                </div>
                <form name="chintai_kensaku_FR301FB004ActionForm"
                    id="js-showEkiForm" method="get"
                    action="/jj/chintai/kensaku/FR301FB004/">
                    <input type="hidden" name="ar" value="${areaNo}">
                    <input type="hidden" name="bs" value="040">
                    <input type="hidden" name="ra"
                        value="${prefectureNo}">
                    <c:forEach var="rn" items="${hissu.rn}">
                        <input type="hidden" name="rn" value="${rn }">
                    </c:forEach>
                    <div id="js-gotoEkiErrorPanel" class="error_pop dn"
                        style="display: none;">
                        <div class="error_pop-txt">
                            <span class="ui-icon--exclamation2"></span>駅を選択してください。
                        </div>
                    </div>
                    <div class="l-searchtable">
                        <table class="searchtable">
                            <tbody>
                                <c:forEach items="${metroList}"
                                    var="metro">
                                    <tr>
                                        <th class="searchtable-title">
                                            <input type="checkbox"
                                            name="rn"
                                            value="${metro.getKey().railwayNo}"
                                            id="rn${metro.getKey().railwayNo}"
                                            class="checkall js-checkall js-checkEkiError js-fr-checkall">
                                            <label
                                            for="rn${metro.getKey().railwayNo}">${metro.getKey().railwayName}</label>
                                        </th>
                                        <td
                                            id="js-rn${metro.getKey().railwayNo}-panel"
                                            class="searchtable-box">
                                            <div class="searchitem">
                                                <%
                                                int i = 3;
                                                %>
                                                <c:forEach
                                                    items="${metro.getValue()}"
                                                    var="subMetro">
                                                    <c:if
                                                        test="<%=i % 3 == 0%>">
                                                        <ul
                                                            class="searchitem-list">
                                                    </c:if>
                                                    <li><input
                                                        type="checkbox"
                                                        name="ek"
                                                        value="${subMetro.metroNo}"
                                                        id="la${subMetro.metroNo}"
                                                        class="js-checkSingle js-checkEkiError js-fr-checkSingle"><label
                                                        for="la${subMetro.metroNo}"><span>${subMetro.metroName}</span>
                                                            <span
                                                            class="searchitem-list-value">(*)</span></label>
                                                    </li>
                                                    <c:if
                                                        test="<%=(i-2) % 3 == 0%>">
                                                        </ul>
                                                    </c:if>
                                                    <%
                                                    i++;
                                                    %>
                                                </c:forEach>
                                                <!--  <div class="searchitem-more"> -->
                                                <!-- ［&nbsp;<a
                                                href="javascript:void(0);"
                                                class="js-showEkiAll"
                                                rel="3365">沿線の駅を全て表示する</a>&nbsp;］ -->
                                                <!--  </div> -->
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
        <div class="searchbox">
            <a href="javascript:void(0);"
                class="ui-btn ui-btn--search btn--large js-ensenSearchBtn">この条件で検索する</a>
        </div>
        <form id="js-shiborikomiPanel-searchBtnForm"
            action="/jj/chintai/kensaku/FR301FC001/?ar=${hissu.ar }&amp;bs=${hissu.bs }&amp;ra=${hissu.ra }"></form>
        <form name="chintai_kensaku_FR301FB004ActionForm"
            id="js-shiborikomiForm" method="post"
            action="/jj/chintai/kensaku/FR301FB004/">
            <div class="ui-section--h2 item">
                <!-- FR301FK0040_01 START -->
                <span rel="" id="js-sdFlg"></span> <input type="hidden"
                    id="js-sdParam" value="1" name="sd"
                    disabled="disabled">
                <div class="ui-section-header">
                    <h2>その他条件を指定</h2>
                </div>
                <div class="ui-section-body">
                    <div class="selectareatitle">
                        <span
                            class="fr_search-icon fr_search-icon--checkbox"></span><span
                            class="selectareatitle-b">追加したい条件</span>にチェックをいれてください（複数選択できます）
                    </div>
                    <div class="l-refinetable">
                        <table class="ui-table--itemcol4 refinetable">
                            <tbody>
                                <tr>
                                    <th>賃料</th>
                                    <td>
                                        <div class="selectunit">
                                            <select name="cb"><option
                                                    value="0.0"
                                                    selected="selected">下限なし</option>
                                                <option value="3.0">3万円以上</option>
                                                <option value="3.5">3.5万円以上</option>
                                                <option value="4.0">4万円以上</option>
                                                <option value="4.5">4.5万円以上</option>
                                                <option value="5.0">5万円以上</option>
                                                <option value="5.5">5.5万円以上</option>
                                                <option value="6.0">6万円以上</option>
                                                <option value="6.5">6.5万円以上</option>
                                                <option value="7.0">7万円以上</option>
                                                <option value="7.5">7.5万円以上</option>
                                                <option value="8.0">8万円以上</option>
                                                <option value="8.5">8.5万円以上</option>
                                                <option value="9.0">9万円以上</option>
                                                <option value="9.5">9.5万円以上</option>
                                                <option value="10.0">10万円以上</option>
                                                <option value="10.5">10.5万円以上</option>
                                                <option value="11.0">11万円以上</option>
                                                <option value="11.5">11.5万円以上</option>
                                                <option value="12.0">12万円以上</option>
                                                <option value="12.5">12.5万円以上</option>
                                                <option value="13.0">13万円以上</option>
                                                <option value="13.5">13.5万円以上</option>
                                                <option value="14.0">14万円以上</option>
                                                <option value="14.5">14.5万円以上</option>
                                                <option value="15.0">15万円以上</option>
                                                <option value="15.5">15.5万円以上</option>
                                                <option value="16.0">16万円以上</option>
                                                <option value="16.5">16.5万円以上</option>
                                                <option value="17.0">17万円以上</option>
                                                <option value="17.5">17.5万円以上</option>
                                                <option value="18.0">18万円以上</option>
                                                <option value="18.5">18.5万円以上</option>
                                                <option value="19.0">19万円以上</option>
                                                <option value="19.5">19.5万円以上</option>
                                                <option value="20.0">20万円以上</option>
                                                <option value="21.0">21万円以上</option>
                                                <option value="22.0">22万円以上</option>
                                                <option value="23.0">23万円以上</option>
                                                <option value="24.0">24万円以上</option>
                                                <option value="25.0">25万円以上</option>
                                                <option value="26.0">26万円以上</option>
                                                <option value="27.0">27万円以上</option>
                                                <option value="28.0">28万円以上</option>
                                                <option value="29.0">29万円以上</option>
                                                <option value="30.0">30万円以上</option>
                                                <option value="35.0">35万円以上</option>
                                                <option value="40.0">40万円以上</option>
                                                <option value="50.0">50万円以上</option>
                                                <option value="100.0">100万円以上</option></select><span
                                                class="selectunit-label">〜</span><select
                                                name="ct"><option
                                                    value="9999999"
                                                    selected="selected">上限なし</option>
                                                <option value="3.0">3万円以下</option>
                                                <option value="3.5">3.5万円以下</option>
                                                <option value="4.0">4万円以下</option>
                                                <option value="4.5">4.5万円以下</option>
                                                <option value="5.0">5万円以下</option>
                                                <option value="5.5">5.5万円以下</option>
                                                <option value="6.0">6万円以下</option>
                                                <option value="6.5">6.5万円以下</option>
                                                <option value="7.0">7万円以下</option>
                                                <option value="7.5">7.5万円以下</option>
                                                <option value="8.0">8万円以下</option>
                                                <option value="8.5">8.5万円以下</option>
                                                <option value="9.0">9万円以下</option>
                                                <option value="9.5">9.5万円以下</option>
                                                <option value="10.0">10万円以下</option>
                                                <option value="10.5">10.5万円以下</option>
                                                <option value="11.0">11万円以下</option>
                                                <option value="11.5">11.5万円以下</option>
                                                <option value="12.0">12万円以下</option>
                                                <option value="12.5">12.5万円以下</option>
                                                <option value="13.0">13万円以下</option>
                                                <option value="13.5">13.5万円以下</option>
                                                <option value="14.0">14万円以下</option>
                                                <option value="14.5">14.5万円以下</option>
                                                <option value="15.0">15万円以下</option>
                                                <option value="15.5">15.5万円以下</option>
                                                <option value="16.0">16万円以下</option>
                                                <option value="16.5">16.5万円以下</option>
                                                <option value="17.0">17万円以下</option>
                                                <option value="17.5">17.5万円以下</option>
                                                <option value="18.0">18万円以下</option>
                                                <option value="18.5">18.5万円以下</option>
                                                <option value="19.0">19万円以下</option>
                                                <option value="19.5">19.5万円以下</option>
                                                <option value="20.0">20万円以下</option>
                                                <option value="21.0">21万円以下</option>
                                                <option value="22.0">22万円以下</option>
                                                <option value="23.0">23万円以下</option>
                                                <option value="24.0">24万円以下</option>
                                                <option value="25.0">25万円以下</option>
                                                <option value="26.0">26万円以下</option>
                                                <option value="27.0">27万円以下</option>
                                                <option value="28.0">28万円以下</option>
                                                <option value="29.0">29万円以下</option>
                                                <option value="30.0">30万円以下</option>
                                                <option value="35.0">35万円以下</option>
                                                <option value="40.0">40万円以下</option>
                                                <option value="50.0">50万円以下</option>
                                                <option value="100.0">100万円以下</option></select>
                                            <div
                                                class="selectunit-option">
                                                <div
                                                    class="itemgroup itemgroup--01">
                                                    <ul
                                                        class="itemgroup-list ui-list--hz4">
                                                        <li><input
                                                            type="checkbox"
                                                            name="co"
                                                            value="1"
                                                            id="co0"
                                                            class="js-checkCondition"><label
                                                            for="co0">管理費・共益費込み</label>



                                                        </li>
                                                        <li><input
                                                            type="checkbox"
                                                            name="co"
                                                            value="2"
                                                            id="co1"
                                                            class="js-checkCondition"><label
                                                            for="co1">駐車場代込み</label>
                                                        </li>
                                                        <li><input
                                                            type="checkbox"
                                                            name="co"
                                                            value="3"
                                                            id="co2"
                                                            class="js-checkCondition"><label
                                                            for="co2">礼金なし</label>
                                                        </li>
                                                        <li><input
                                                            type="checkbox"
                                                            name="co"
                                                            value="4"
                                                            id="co3"
                                                            class="js-checkCondition"><label
                                                            for="co3">敷金・保証金なし</label>
                                                        </li>
                                                    </ul>
                                                    <ul
                                                        class="itemgroup-list ui-list--hz4">
                                                        <li><input
                                                            type="checkbox"
                                                            name="tc"
                                                            value="0401008"
                                                            id="tc107"
                                                            class="js-checkCondition"><label
                                                            for="tc107">初期費用カード決済可</label>
                                                        </li>
                                                        <li><input
                                                            type="checkbox"
                                                            name="tc"
                                                            value="0401009"
                                                            id="tc108"
                                                            class="js-checkCondition"><label
                                                            for="tc108">家賃カード決済可</label>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>駅徒歩</th>
                                    <td>
                                        <div
                                            class="itemgroup itemgroup--01">
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="radio"
                                                    name="et" value="1"
                                                    id="et0"
                                                    class="js-checkCondition"><label
                                                    for="et0">1分以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="et" value="5"
                                                    id="et1"
                                                    class="js-checkCondition"><label
                                                    for="et1">5分以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="et" value="7"
                                                    id="et2"
                                                    class="js-checkCondition"><label
                                                    for="et2">7分以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="et" value="10"
                                                    id="et3"
                                                    class="js-checkCondition"><label
                                                    for="et3">10分以内</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="radio"
                                                    name="et" value="15"
                                                    id="et4"
                                                    class="js-checkCondition"><label
                                                    for="et4">15分以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="et" value="20"
                                                    id="et5"
                                                    class="js-checkCondition"><label
                                                    for="et5">20分以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="et"
                                                    value="9999999"
                                                    checked="checked"
                                                    id="et6"
                                                    class="js-checkCondition"><label
                                                    for="et6">指定しない</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>間取りタイプ</th>
                                    <td>
                                        <div
                                            class="itemgroup itemgroup--01">
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="01"
                                                    id="md0"
                                                    class="js-checkCondition"><label
                                                    for="md0">ワンルーム</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="02"
                                                    id="md1"
                                                    class="js-checkCondition"><label
                                                    for="md1">1K</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="03"
                                                    id="md2"
                                                    class="js-checkCondition"><label
                                                    for="md2">1DK</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="04"
                                                    id="md3"
                                                    class="js-checkCondition"><label
                                                    for="md3">1LDK</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="05"
                                                    id="md4"
                                                    class="js-checkCondition"><label
                                                    for="md4">2K</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="06"
                                                    id="md5"
                                                    class="js-checkCondition"><label
                                                    for="md5">2DK</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="07"
                                                    id="md6"
                                                    class="js-checkCondition"><label
                                                    for="md6">2LDK</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="08"
                                                    id="md7"
                                                    class="js-checkCondition"><label
                                                    for="md7">3K</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="09"
                                                    id="md8"
                                                    class="js-checkCondition"><label
                                                    for="md8">3DK</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="10"
                                                    id="md9"
                                                    class="js-checkCondition"><label
                                                    for="md9">3LDK</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="11"
                                                    id="md10"
                                                    class="js-checkCondition"><label
                                                    for="md10">4K</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="12"
                                                    id="md11"
                                                    class="js-checkCondition"><label
                                                    for="md11">4DK</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="13"
                                                    id="md12"
                                                    class="js-checkCondition"><label
                                                    for="md12">4LDK</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="md" value="14"
                                                    id="md13"
                                                    class="js-checkCondition"><label
                                                    for="md13">5K以上</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>建物種別</th>
                                    <td>
                                        <div
                                            class="itemgroup itemgroup--01">
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    name="ts" value="1"
                                                    id="ts0"
                                                    class="js-ts js-checkCondition"><label
                                                    for="ts0">マンション</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="ts" value="2"
                                                    id="ts1"
                                                    class="js-ts js-checkCondition"><label
                                                    for="ts1">アパート</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    name="ts" value="3"
                                                    id="ts2"
                                                    class="js-ts js-checkCondition"><label
                                                    for="ts2">一戸建て・その他</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>築後年数</th>
                                    <td>
                                        <div
                                            class="itemgroup itemgroup--01">
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="0"
                                                    id="cn0"
                                                    class="js-checkCondition"><label
                                                    for="cn0">新築</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="1"
                                                    id="cn1"
                                                    class="js-checkCondition"><label
                                                    for="cn1">1年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="3"
                                                    id="cn2"
                                                    class="js-checkCondition"><label
                                                    for="cn2">3年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="5"
                                                    id="cn3"
                                                    class="js-checkCondition"><label
                                                    for="cn3">5年以内</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="7"
                                                    id="cn4"
                                                    class="js-checkCondition"><label
                                                    for="cn4">7年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="10"
                                                    id="cn5"
                                                    class="js-checkCondition"><label
                                                    for="cn5">10年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="15"
                                                    id="cn6"
                                                    class="js-checkCondition"><label
                                                    for="cn6">15年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="20"
                                                    id="cn7"
                                                    class="js-checkCondition"><label
                                                    for="cn7">20年以内</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="25"
                                                    id="cn8"
                                                    class="js-checkCondition"><label
                                                    for="cn8">25年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn" value="30"
                                                    id="cn9"
                                                    class="js-checkCondition"><label
                                                    for="cn9">30年以内</label>
                                                </li>
                                                <li><input
                                                    type="radio"
                                                    name="cn"
                                                    value="9999999"
                                                    checked="checked"
                                                    id="cn10"
                                                    class="js-checkCondition"><label
                                                    for="cn10">指定しない</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>専有面積</th>
                                    <td>
                                        <div class="selectunit">
                                            <select name="mb"><option
                                                    value="0"
                                                    selected="selected">下限なし</option>
                                                <option value="20">20m2以上</option>
                                                <option value="25">25m2以上</option>
                                                <option value="30">30m2以上</option>
                                                <option value="35">35m2以上</option>
                                                <option value="40">40m2以上</option>
                                                <option value="45">45m2以上</option>
                                                <option value="50">50m2以上</option>
                                                <option value="55">55m2以上</option>
                                                <option value="60">60m2以上</option>
                                                <option value="65">65m2以上</option>
                                                <option value="70">70m2以上</option>
                                                <option value="80">80m2以上</option>
                                                <option value="90">90m2以上</option>
                                                <option value="100">100m2以上</option></select><span
                                                class="selectunit-label">〜</span><select
                                                name="mt"><option
                                                    value="20">20m2以下</option>
                                                <option value="25">25m2以下</option>
                                                <option value="30">30m2以下</option>
                                                <option value="35">35m2以下</option>
                                                <option value="40">40m2以下</option>
                                                <option value="45">45m2以下</option>
                                                <option value="50">50m2以下</option>
                                                <option value="55">55m2以下</option>
                                                <option value="60">60m2以下</option>
                                                <option value="65">65m2以下</option>
                                                <option value="70">70m2以下</option>
                                                <option value="80">80m2以下</option>
                                                <option value="90">90m2以下</option>
                                                <option value="100">100m2以下</option>
                                                <option value="9999999"
                                                    selected="selected">上限なし</option></select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>人気の<br>こだわり条件
                                    </th>
                                    <td>
                                        <div
                                            class="itemgroup itemgroup--01">
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    value="0400301"
                                                    id="tc0"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400301">
                                                    <label for="tc0">バス・トイレ別</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    value="0400101"
                                                    id="tc1"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400101">
                                                    <label for="tc1">2階以上</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    value="0400901"
                                                    id="tc2"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400901">
                                                    <label for="tc2">駐車場あり</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    value="0400501"
                                                    id="tc3"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400501">
                                                    <label for="tc3">室内洗濯機置場</label>
                                                </li>
                                            </ul>
                                            <ul
                                                class="itemgroup-list ui-list--hz4">
                                                <li><input
                                                    type="checkbox"
                                                    value="0400601"
                                                    id="tc4"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400601">
                                                    <label for="tc4">エアコン付き</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    value="0401102"
                                                    id="tc5"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0401102">
                                                    <label for="tc5">ペット相談可</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    value="0400801"
                                                    id="tc6"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400801">
                                                    <label for="tc6">オートロック</label>
                                                </li>
                                                <li><input
                                                    type="checkbox"
                                                    value="0400502"
                                                    id="tc7"
                                                    class="js-checkCondition js-syncCheck js-syncCheck-0400502">
                                                    <label for="tc7">洗面所独立</label>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="searchbox searchbox--inner">
                        <a href="javascript:void(0);"
                            class="ui-btn ui-btn--search btn--large js-ensenSearchBtn">この条件で検索する</a>
                    </div>
                    <table class="ui-table--itemcol4 refinetable">
                        <tbody>
                            <tr>
                                <th>さらに詳しい<br>こだわり条件<a
                                    href="/edit/yogo/14.html"
                                    target="_blank"><span
                                        class="ui-icon--cherry"></span></a></th>
                                <td>
                                    <div
                                        class="subitemgroup subitemgroup--01">
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">
                                                構造<a
                                                    href="/edit/yogo/13.html"
                                                    target="_blank"><span
                                                    class="ui-icon--cherry"></span></a>
                                            </dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="kz"
                                                        value="1"
                                                        id="kz0"
                                                        class="js-checkCondition"><label
                                                        for="kz0">鉄筋系</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="kz"
                                                        value="2"
                                                        id="kz1"
                                                        class="js-checkCondition"><label
                                                        for="kz1">鉄骨系</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="kz"
                                                        value="3"
                                                        id="kz2"
                                                        class="js-checkCondition"><label
                                                        for="kz2">木造</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="kz"
                                                        value="4"
                                                        id="kz3"
                                                        class="js-checkCondition"><label
                                                        for="kz3">ブロック・その他</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">表示情報</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401303"
                                                        id="tc130"
                                                        class="js-checkCondition"><label
                                                        for="tc130">本日の新着物件</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401304"
                                                        id="tc131"
                                                        class="js-checkCondition"><label
                                                        for="tc131">新着(2-7日前)</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401305"
                                                        id="tc132"
                                                        class="js-checkCondition"><label
                                                        for="tc132">物件動画付き</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401307"
                                                        id="tc133"
                                                        class="js-checkCondition"><label
                                                        for="tc133">パノラマ付き</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401301"
                                                        id="tc134"
                                                        class="js-checkCondition"><label
                                                        for="tc134">間取り図付き</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401302"
                                                        id="tc135"
                                                        class="js-checkCondition"><label
                                                        for="tc135">写真付き</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">位置</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400105"
                                                        id="tc10"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400105"><label
                                                        for="tc10">1階の物件</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400101"
                                                        id="tc11"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400101"><label
                                                        for="tc11">2階以上</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400102"
                                                        id="tc12"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400102"><label
                                                        for="tc12">最上階</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400103"
                                                        id="tc13"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400103"><label
                                                        for="tc13">角部屋</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400104"
                                                        id="tc14"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400104"><label
                                                        for="tc14">南向き</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">室内設備</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400501"
                                                        id="tc50"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400501"><label
                                                        for="tc50">室内洗濯機置場</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400502"
                                                        id="tc51"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400502"><label
                                                        for="tc51">洗面所独立</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400503"
                                                        id="tc52"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400503"><label
                                                        for="tc52">フローリング</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400504"
                                                        id="tc53"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400504"><label
                                                        for="tc53">メゾネット</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400505"
                                                        id="tc54"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400505"><label
                                                        for="tc54">ロフト</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400506"
                                                        id="tc55"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400506"><label
                                                        for="tc55">防音室</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400507"
                                                        id="tc56"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400507"><label
                                                        for="tc56">地下室</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400510"
                                                        id="tc57"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400510"><label
                                                        for="tc57">家具家電付き</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">冷暖房</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400601"
                                                        id="tc60"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400601"><label
                                                        for="tc60">エアコン付き</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400602"
                                                        id="tc61"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400602"><label
                                                        for="tc61">床暖房</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400603"
                                                        id="tc62"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400603"><label
                                                        for="tc62">灯油暖房</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400604"
                                                        id="tc63"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400604"><label
                                                        for="tc63">ガス暖房</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">バス・トイレ</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400301"
                                                        id="tc30"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400301"><label
                                                        for="tc30">バス・トイレ別</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400302"
                                                        id="tc31"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400302"><label
                                                        for="tc31">温水洗浄便座</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400303"
                                                        id="tc32"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400303"><label
                                                        for="tc32">浴室乾燥機</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400304"
                                                        id="tc33"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400304"><label
                                                        for="tc33">追い焚き風呂</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400305"
                                                        id="tc34"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400305"><label
                                                        for="tc34">シャワールーム</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">キッチン</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400201"
                                                        id="tc20"
                                                        class="js-checkCondition"><label
                                                        for="tc20">ガスコンロ対応</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400202"
                                                        id="tc21"
                                                        class="js-checkCondition"><label
                                                        for="tc21">IHコンロ</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400203"
                                                        id="tc22"
                                                        class="js-checkCondition"><label
                                                        for="tc22">コンロ2口以上</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400204"
                                                        id="tc23"
                                                        class="js-checkCondition"><label
                                                        for="tc23">オール電化</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400205"
                                                        id="tc24"
                                                        class="js-checkCondition"><label
                                                        for="tc24">システムキッチン</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400206"
                                                        id="tc25"
                                                        class="js-checkCondition"><label
                                                        for="tc25">カウンターキッチン</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">建物設備</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400901"
                                                        id="tc90"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400901"><label
                                                        for="tc90">駐車場あり</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400910"
                                                        id="tc91"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400910"><label
                                                        for="tc91">駐車場2台以上</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400911"
                                                        id="tc92"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400911"><label
                                                        for="tc92">敷地内駐車場</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400902"
                                                        id="tc93"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400902"><label
                                                        for="tc93">駐輪場あり</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400903"
                                                        id="tc94"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400903"><label
                                                        for="tc94">バイク置場あり</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400904"
                                                        id="tc95"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400904"><label
                                                        for="tc95">エレベーター</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400905"
                                                        id="tc96"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400905"><label
                                                        for="tc96">宅配ボックス</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400906"
                                                        id="tc97"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400906"><label
                                                        for="tc97">敷地内ゴミ置場</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400907"
                                                        id="tc98"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400907"><label
                                                        for="tc98">バルコニー付</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400908"
                                                        id="tc99"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400908"><label
                                                        for="tc99">ルーフバルコニー付</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400909"
                                                        id="tc910"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400909"><label
                                                        for="tc910">専用庭</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400912"
                                                        id="tc911"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400912"><label
                                                        for="tc911">都市ガス</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400913"
                                                        id="tc912"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400913"><label
                                                        for="tc912">プロパンガス</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400914"
                                                        id="tc913"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400914"><label
                                                        for="tc913">バリアフリー</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">セキュリティ</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400801"
                                                        id="tc80"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400801"><label
                                                        for="tc80">オートロック</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400802"
                                                        id="tc81"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400802"><label
                                                        for="tc81">管理人有り</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400803"
                                                        id="tc82"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400803"><label
                                                        for="tc82">TVモニタ付きインタホン</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400805"
                                                        id="tc83"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400805"><label
                                                        for="tc83">防犯カメラ</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400804"
                                                        id="tc84"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0400804"><label
                                                        for="tc84">セキュリティ会社加入済</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">入居条件</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401101"
                                                        id="tc110"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401101"><label
                                                        for="tc110">即入居可</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401109"
                                                        id="tc111"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401109"><label
                                                        for="tc111">女性限定</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401102"
                                                        id="tc112"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401102"><label
                                                        for="tc112">ペット相談可</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401103"
                                                        id="tc113"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401103"><label
                                                        for="tc113">楽器相談可</label></li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401104"
                                                        id="tc114"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401104"><label
                                                        for="tc114">事務所利用可</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401105"
                                                        id="tc115"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401105"><label
                                                        for="tc115">ルームシェア可</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401111"
                                                        id="tc116"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401111"><label
                                                        for="tc116">高齢者歓迎</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401112"
                                                        id="tc117"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401112"><label
                                                        for="tc117">LGBTフレンドリー</label></li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401110"
                                                        id="tc118"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401110"><label
                                                        for="tc118">カスタマイズ可</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401108"
                                                        id="tc119"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401108"><label
                                                        for="tc119">DIY可</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401106"
                                                        id="tc1110"
                                                        class="js-checkCondition js-syncCheck js-syncCheck-0401106"><label
                                                        for="tc1110">定期借家を含まない</label><a
                                                        href="/edit/yogo/18.html"
                                                        target="_blank"><span
                                                            class="ui-icon--cherry"></span></a>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">テレビ・通信</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400401"
                                                        id="tc40"
                                                        class="js-checkCondition"><label
                                                        for="tc40">インターネット接続可</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400402"
                                                        id="tc41"
                                                        class="js-checkCondition"><label
                                                        for="tc41">BSアンテナ</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400403"
                                                        id="tc42"
                                                        class="js-checkCondition"><label
                                                        for="tc42">CSアンテナ</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400404"
                                                        id="tc43"
                                                        class="js-checkCondition"><label
                                                        for="tc43">ケーブルテレビ</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400405"
                                                        id="tc44"
                                                        class="js-checkCondition"><label
                                                        for="tc44">インターネット無料</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">収納</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400701"
                                                        id="tc70"
                                                        class="js-checkCondition"><label
                                                        for="tc70">床下収納</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400702"
                                                        id="tc71"
                                                        class="js-checkCondition"><label
                                                        for="tc71">シューズボックス</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400703"
                                                        id="tc72"
                                                        class="js-checkCondition"><label
                                                        for="tc72">トランクルーム</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0400704"
                                                        id="tc73"
                                                        class="js-checkCondition"><label
                                                        for="tc73">ウォークインクローゼット</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">周辺環境</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <dl class="subinneritem">
                                                    <dt
                                                        class="subinneritem-title">下記の施設まで</dt>
                                                    <dd
                                                        class="subinneritem-body">
                                                        <div
                                                            class="subinneritem-body-input">
                                                            <select
                                                                class="mgnt-5"
                                                                id="shkrAll">
                                                                <option
                                                                    value="01">400m</option>
                                                                <option
                                                                    value="02">750m</option>
                                                                <option
                                                                    value="03"
                                                                    selected="selected">1000m</option>
                                                                <option
                                                                    value="04">2000m</option>
                                                                <option
                                                                    value="05">3000m</option>
                                                            </select> <input
                                                                type="hidden"
                                                                name="shkr1"
                                                                value="03"
                                                                id="shkr1"><input
                                                                type="hidden"
                                                                name="shkr2"
                                                                value="03"
                                                                id="shkr2"><input
                                                                type="hidden"
                                                                name="shkr3"
                                                                value="03"
                                                                id="shkr3"><input
                                                                type="hidden"
                                                                name="shkr4"
                                                                value="03"
                                                                id="shkr4">
                                                        </div>
                                                        <div
                                                            class="subinneritem-body-txt">
                                                            <p>※80mは、徒歩で約1分の距離です。</p>
                                                            <p>※周辺環境は不動産会社からの情報を元に反映しています。</p>
                                                        </div>
                                                    </dd>
                                                </dl>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk1"
                                                        value="02060201"
                                                        id="shkk10"
                                                        class="js-checkCondition"><label
                                                        for="shkk10">ショッピングセンター</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk1"
                                                        value="02060202"
                                                        id="shkk11"
                                                        class="js-checkCondition"><label
                                                        for="shkk11">スーパー</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk1"
                                                        value="02060203"
                                                        id="shkk12"
                                                        class="js-checkCondition"><label
                                                        for="shkk12">コンビニ</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk2"
                                                        value="02060209"
                                                        id="shkk20"
                                                        class="js-checkCondition"><label
                                                        for="shkk20">幼稚園・保育園</label>
                                                    </li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk3"
                                                        value="02060210"
                                                        id="shkk30"
                                                        class="js-checkCondition"><label
                                                        for="shkk30">病院</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk4"
                                                        value="02060215"
                                                        id="shkk40"
                                                        class="js-checkCondition"><label
                                                        for="shkk40">警察署・交番</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="shkk4"
                                                        value="02060216"
                                                        id="shkk41"
                                                        class="js-checkCondition"><label
                                                        for="shkk41">公園</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">その他</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401001"
                                                        id="tc100"
                                                        class="js-checkCondition"><label
                                                        for="tc100">デザイナーズ物件</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401007"
                                                        id="tc101"
                                                        class="js-checkCondition"><label
                                                        for="tc101">IT重説
                                                            対応物件</label><a
                                                        href="/edit/yogo/19.html"
                                                        target="_blank"><span
                                                            class="ui-icon--cherry"></span></a>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401002"
                                                        id="tc102"
                                                        class="js-checkCondition"><label
                                                        for="tc102">分譲賃貸</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401003"
                                                        id="tc103"
                                                        class="js-checkCondition"><label
                                                        for="tc103">保証人不要</label></li>
                                                </ul>
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401004"
                                                        id="tc104"
                                                        class="js-checkCondition"><label
                                                        for="tc104">タワーマンション</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401005"
                                                        id="tc105"
                                                        class="js-checkCondition"><label
                                                        for="tc105">リフォーム済み</label></li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401006"
                                                        id="tc106"
                                                        class="js-checkCondition"><label
                                                        for="tc106">リノベーション物件</label></li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="subitemgroup-inner">
                                            <dt
                                                class="subitemgroup-title">お得条件</dt>
                                            <dd
                                                class="subitemgroup-body">
                                                <ul
                                                    class="subitemgroup-list ui-list--hz4">
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401201"
                                                        id="tc120"
                                                        class="js-checkCondition"><label
                                                        for="tc120">フリーレント</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        name="tc"
                                                        value="0401202"
                                                        id="tc121"
                                                        class="js-checkCondition"><label
                                                        for="tc121">特定優良賃貸住宅</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        data-value="0400405"
                                                        id="tc1298"
                                                        class="js-checkConditionCopy">
                                                        <label
                                                        for="tc1298">インターネット無料</label>
                                                    </li>
                                                    <li><input
                                                        type="checkbox"
                                                        data-value="0401003"
                                                        id="tc1299"
                                                        class="js-checkConditionCopy">
                                                        <label
                                                        for="tc1299">保証人不要</label>
                                                    </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <input type="hidden" name="fw2" value="">
                </div>
                <!-- FR301FK0040_01 END -->
            </div>
        </form>
        <div class="searchbox">
            <a href="javascript:void(0);"
                class="ui-btn ui-btn--search btn--large js-ensenSearchBtn">この条件で検索する</a>
        </div>
    </div>
    <script src="/js/jquery-1.4.2.min.js"></script>
    <!-- <script src="/js/headerfooter.js"></script> -->
    <script src="/js/fr-search.js"></script>
</body>
</html>