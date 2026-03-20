<%@page import="com.dm.attr.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


%>
p : <%=request.getParameter("p") %> <br>
m : <%=request.getParameter("m") %> <br>
rr : <%=request.getAttribute("rr") %> <br>

</body>
<h1>모자른 금액은 <%=request.getParameter("howmuch") %>원입니다.</h1>
<hr>
<h1>모자른 금액은 <%=request.getParameter("asd") %>원입니다.</h1>
<hr>
<h1>모자른 금액은 <%=request.getAttribute("asdasd") %>원입니다.</h1>
</html>