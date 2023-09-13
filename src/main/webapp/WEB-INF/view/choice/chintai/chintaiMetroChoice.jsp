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
    <c:forEach items="${metroList}" var="metro">
        <div class="areabox-middle">
            <div class="areabox-middle-box-header">
                <h4>${metro.getKey()}</h4>
            </div>
            <div class="areabox-middle-box-bottom">
                <c:forEach items="${metro.getValue()}" var="subMetro">
                    <div>
                        <input type="checkbox" name="rn"
                            value="${subMetro.metroNo}">${subMetro.metroName}</div>
                </c:forEach>
            </div>
        </div>
    </c:forEach>
    <script src="/js/jquery-1.4.2.min.js"></script>
    <!-- <script src="/js/headerfooter.js"></script> -->
    <script src="/js/fr-search.js"></script>
</body>
</html>