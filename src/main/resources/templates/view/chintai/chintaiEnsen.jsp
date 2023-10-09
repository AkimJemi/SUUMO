<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>【SUUMO】${prefectureName }の沿線・駅の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報</title>
<link rel="stylesheet" href="/css/fr-search.css" media="screen" />
<%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
</head>
<body>
    <div id="js-contents-mainPanel" class="contents">
        <span id="js-areatabOnClickUrl"
            rel="/jj/chintai/kensaku/FR301FB003/?ar=${areaNo }&amp;bs=040"></span>
        <ul id="js-areatabPanel"
            class="ui-tab--base ui-tab--base03 areatab">
            <c:forEach items="${prefectureList }" var="prefecture">
                <li><a
                    href="/chintai/${prefecture.prefecture }/ensen/"
                    class="ui-tab-item js-areatabClickLink"
                    rel="ra=${prefecture.prefectureNo}">${prefecture.prefectureName }</a></li>
            </c:forEach>
        </ul>
        <div id="js-areaSelectPanel" class="tabbody">
            <div class="ui-section--h2">
                <div class="ui-section-header">
                    <h2>青森県 - 沿線を選択</h2>
                </div>
                <div class="ui-section-body">
                    <div class="selectareatitle">
                        <span
                            class="fr_search-icon fr_search-icon--checkbox"></span><span
                            class="selectareatitle-b">沿線にチェック</span>をいれてください（複数選択できます）
                    </div>
                    <div id="js-gotoEkiErrorPanel" class="error_pop dn">
                        <div class="error_pop-txt">
                            <span class="ui-icon--exclamation2"></span>沿線を選択してください。
                        </div>
                    </div>
                    <form name="chintai_kensaku_FR301FB003ActionForm"
                        id="js-gotoEkiForm" method="post"
                        action="/jj/chintai/kensaku/FR301FB003/ekiNext/">
                        <input type="hidden" name="ar" value="020"><input
                            type="hidden" name="ra" value="002"><input
                            type="hidden" name="bs" value="040"><input
                            type="hidden" name="pageId"
                            value="FR301FB003"><input
                            type="hidden" name="fw2" value=""><input
                            type="hidden" name="cb" value=""><input
                            type="hidden" name="ct" value=""><input
                            type="hidden" name="mb" value=""><input
                            type="hidden" name="mt" value=""><input
                            type="hidden" name="et" value=""><input
                            type="hidden" name="cn" value=""><input
                            type="hidden" name="shkr1" value=""><input
                            type="hidden" name="shkr2" value=""><input
                            type="hidden" name="shkr3" value=""><input
                            type="hidden" name="shkr4" value="">
                        <div class="l-searchtable l-searchtable--01">
                            <table class="searchtable">
                                <tbody>
                                    <c:forEach items="${railwayList}"
                                        var="metro">
                                        <tr>
                                            <th
                                                class="searchtable-title">${metro.getKey()}</th>
                                            <td class="searchtable-box">
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
                                                                class="searchitem-list"></ul>
                                                        </c:if>
                                                        <li><input
                                                            type="checkbox"
                                                            name="rn"
                                                            value="${subMetro.railwayNo}"
                                                            id="kaishaBox_001_rnBox5125"
                                                            class="js-checkEkiError js-fr-checkSingle">
                                                            <label><a
                                                                href="/chintai/aomori/en_ouhonsen/">${subMetro.railwayName}</a><span
                                                                class="searchitem-list-value">(?)</span></label>
                                                        </li>
                                                        <c:if
                                                            test="<%=(i - 2) % 3 == 0%>">
                                                            </ul>
                                                        </c:if>
                                                        <%
                                                        i++;
                                                        %>
                                                    </c:forEach>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="area_unit area_unit--border_center">
                            <a href="javascript:void(0);" title="絞り込む"
                                id="js-gotoEkiBtn" class="ui-btn--more"><span
                                class="ui-btn ui-btn--more-inner squeeze_action_btn squeeze_action_btn--large">チェックした沿線の駅を絞り込む</span></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="/js/jquery-1.4.2.min.js"></script>
        <!-- <script src="/js/headerfooter.js"></script> -->
        <script src="/js/fr-search.js"></script>
</body>
</html>