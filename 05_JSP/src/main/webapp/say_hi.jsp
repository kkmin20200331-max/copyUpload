<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
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
int age = Integer.parseInt(request.getParameter("age"));
String hello = "";
if(age>=20){hello="안녕하세요";}else{hello="안녕";}
%>
<h1><%=hello %></h1>
</body>
</html>