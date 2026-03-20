
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
String [] sports = request.getParameterValues("sport");
String sport = " ";
for(String s : sports){
	sport += s + " ";
}
String korea = "";
for(String ss : sports){
	switch(ss){
	case "soccer": 
		korea += "축구 ";
		break;
	case "basketball":
		korea += "농구 ";
		break;
	case "badminton":
		korea += "배드민턴 ";
		break;
	}
}
%>
<h1>선택한 스포츠 : <%=korea %> </h1>
<h1>선택한 스포츠 : <%=sport %> </h1>




<hr>
version2.
<%
	Map<String, String> vals = new HashMap();
	vals.put("soccer","축구");
	vals.put("basketball","농구");
	vals.put("badminton","배드민턴");
	for(String s : sports){%>
		<h1><%= vals.get(s)%></h1>
		<h1><%=s%></h1>
	<%}





%>

















</body>
</html>