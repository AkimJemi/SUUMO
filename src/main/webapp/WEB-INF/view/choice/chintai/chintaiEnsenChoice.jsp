<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <!-- tatemonoShubetsuSearchLink01_01 end -->
    <div id="js-contents-mainPanel" class="contents">
        <div>
            <h2>${areaName }-沿線を選択</h2>
        </div>
        <div>
            <span id="js-areatabOnClickUrl"
                rel="/jj/chintai/kensaku/FR301FB003/?ar=030&amp;bs=040"></span>
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
                    <div class="selectareatitle">
                        <span
                            class="fr_search-icon fr_search-icon--checkbox"></span><span
                            class="selectareatitle-b">沿線にチェック</span>をいれてください（複数選択できます）
                    </div>

                    <div id="js-areaSelectPanel" class="tabbody">
                        <form
                            name="chintai_kensaku_FR301FB003ActionForm"
                            id="js-gotoEkiForm" method="post"
                            action="/jj/chintai/${prefecture}/FR301FB004/ekiNext/">
                            <input type="hidden" name="ar"
                                value="${areaNo }"><input
                                type="hidden" name="ra"
                                value="${prefectureNo }"><input
                                type="hidden" name="bs" value="${bs }"><input
                                type="hidden" name="pageId"
                                value="${pageId }">
                            <!-- <input
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
                            type="hidden" name="shkr4" value=""> -->
                            <div class="l-searchtable l-searchtable--01">
                                <c:forEach items="${railwayList}"
                                    var="metro">
                                    <div class="areabox-middle">
                                        <div
                                            class="areabox-middle-box-header">
                                            <h4>${metro.getKey()}</h4>
                                        </div>
                                        <div
                                            class="areabox-middle-box-bottom">
                                            <c:forEach
                                                items="${metro.getValue()}"
                                                var="subMetro">
                                                <div>
                                                    <input
                                                        type="checkbox"
                                                        name="rn"
                                                        value="${subMetro.railwayNo}">${subMetro.railwayName}</div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="areabox-bottom">
                                    <a href="javascript:void(0);"
                                        title="絞り込む" id="js-gotoEkiBtn"
                                        class="ui-btn--more"><span
                                        class="ui-btn ui-btn--more-inner squeeze_action_btn squeeze_action_btn--large">チェックした沿線の駅を絞り込む</span></a>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/js/jquery-1.4.2.min.js"></script>
    <!-- <script src="/js/headerfooter.js"></script> -->
    <script src="/js/fr-search.js"></script>
</body>
</html>