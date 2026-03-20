
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

p : ${param.p} <%=request.getParameter("p")%><br>
m : ${param.m} <br>

</body>
<h1>모자른 금액은 ${param.howmuch}원입니다.</h1>
<hr>
<h1>모자른 금액은${param.asd}원입니다.</h1>
<hr>
<h1>모자른 금액은 ${asdasd}원입니다.</h1>
<a href="/el_war_exploded">처음으로</a>
</html>