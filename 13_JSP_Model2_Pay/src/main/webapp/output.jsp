<%@page import="com.dm.pay.Result"%>
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
Result r = (Result) request.getAttribute("rr");
%>
<div>번돈 : <%=r.getEarn() %>  </div>
<div>쓴돈 : <%=r.getSpend() %> </div>
<div>남은 돈 : <%=r.getRemain() %> </div>

</body>
</html>