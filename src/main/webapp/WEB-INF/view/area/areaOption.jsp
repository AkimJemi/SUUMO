<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/tag/area/suumoAreaHeader.tag"%>
<head>
<style type="text/css">
.areabox {
    display: inline-block;
    height: 100px;
    width: 130px;
}
</style>
<meta charset="UTF-8">
<title>【SUUMO】${areaValue}の不動産情報・不動産売買・住宅情報</title>
</head>
<body>
    <div>
        <div>
            <h1>借りる</h1>
        </div>
        <div>
            <div>マンション・アパート・一戸建て</div>
            <div>
                <a href="/chintai/${area}/">賃貸物件</a>
            </div>
        </div>
    </div>
</body>
</html>