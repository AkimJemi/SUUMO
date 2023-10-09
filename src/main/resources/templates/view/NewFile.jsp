<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function getCookie(cName) {
    cName = cName + '=';
    var cookieData = document.cookie;
    console.log("cName : " + cName);
    console.log("cookieData : " + cookieData);
    var start = cookieData.indexOf(cName);
    console.log("start : " + start);
    var cValue = '';
    if(start != -1){
      start += cName.length;
      console.log("start : " + start);
      var end = cookieData.indexOf(';', start);
      console.log("end : " + end);
      if(end == -1)end = cookieData.length;
      cValue = cookieData.substring(start, end);
      console.log("end : " + end);
      console.log("cValue : " + cValue);
    }
    return unescape(cValue);
}
getCookie("tes1");


</script>
${teste }test
${test}
<br>
<%=request.getContextPath() %>
<br>
<%=request.getServletPath() %>
<br>
<%=request.getRequestURI() %>


</body>
</html>