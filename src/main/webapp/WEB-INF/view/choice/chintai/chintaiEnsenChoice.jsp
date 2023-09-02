<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<style type="text/css">
.areabox {
    display: inline-block;
    height: 100px;
    width: 130px;
}
</style>
<title>【SUUMO】${sessionScope.areaValue }の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報</title>
</head>
<body>
    <c:forEach items="${transportationInfo}" var="metro">
        <div class="areabox">
            <div>${metro.no}</div>
            <div>${metro.railwayCompany}</div>
            <div>${metro.railway}</div>
        </div>
    </c:forEach>
</body>
</html>