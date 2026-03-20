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
int num = Integer.parseInt(request.getParameter("input"));
if(num%2==0){
%>
<h1 style="background-color: ivory;border: 1px solid; text-align: center; color: blue; ">
EVEN!
</h1>

<% }else{ %>
<h1 style="background-color: ivory;border: 1px solid; text-align: center; color: red;">
ODD!
</h1>

<% } %>
</body>
</html>