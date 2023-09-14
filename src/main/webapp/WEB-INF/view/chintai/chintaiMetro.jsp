<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
<head>
<meta charset="UTF-8">
<style type="text/css">
.areabox-middle {
    display: flex;
    justify-content: space-around;
    text-align: left;
}

.areabox-middle-box-header {
    padding: 20px 15px;
    width: 50%;
}

.areabox-middle-box-bottom {
    display: grid;
    width: 50%;
    text-align: left;
    grid-template-columns: 1fr 1fr 1fr;
}

.areabox-bottom {
    text-align: center;
}
</style>
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
                                                <ul
                                                    class="searchitem-list"
                                                    <c:forEach items="${metro.getValue()}" var="subMetro">
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
                                            </ul>
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
    </div>
    <script src="/js/jquery-1.4.2.min.js"></script>
    <!-- <script src="/js/headerfooter.js"></script> -->
    <script src="/js/fr-search.js"></script>
</body>
</html>