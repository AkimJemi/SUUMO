<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
<head>
<meta charset="UTF-8">
<style type="text/css">
.areabox {
    display: inline-block;
    height: 100px;
    width: 130px;
}
</style>
<title>【SUUMO】${areaName }の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報</title>
</head>
<body>
    <div class="areamap-field-tohoku">
        <c:forEach var="prefecture"
            items="${prefectureList}">
            <dl class="areabox areabox--aomori">
                <dt class="areabox-title">
                    <a href="/chintai/${prefecture.prefecture }/">${prefecture.prefectureName }</a>
                </dt>
                <dd>
                    <ul class="ui-list--hz">
                        <li><a
                            href="/chintai/${prefecture.prefecture }/ensen/" rel="ra=test"
                            class="areabox-link">
                                <div class="areabox-txt">沿線</div>
                        </a></li>
                        <li><a
                            href="/chintai/${prefecture.prefecture }/city/"
                            class="areabox-link">
                                <div class="areabox-txt">エリア</div>
                        </a></li>
                    </ul>
                </dd>
            </dl>
        </c:forEach>
    </div>
</body>
</html>