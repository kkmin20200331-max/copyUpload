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
String result = "홀";
String color = "blue";

if(num%2==0){
	result = "짝";
	color = "red";
}
%>

<h1 style="color : <%=color%>"><%=result%></h1>

</body>
</html>