<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    ArrayList<String> list = new ArrayList<String>();
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");
    list.add("22");

    int i = 3;
    %>

    <c:forEach var="l" items="<%=list%>">
        <c:if test="<%=i % 3 == 0%>">
            <ul class="searchitem-list">1
        </c:if>
        <li>2</li>
        <c:if test="<%=(i - 2) % 3 == 0%>">
        3
            </ul>
        </c:if>
        <%
        i++;
        %>
    </c:forEach>
</body>
</html>