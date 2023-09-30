<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/fr-search.css" media="screen" />
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
<title>
【SUUMO】${prefectureName }のエリアから賃貸情報を探す</title>
</head>
<body>city ${prefectureInfo }
${prefectureNo}
${prefecture}

${sessionscope.prefectureName }//
</body>
</html>