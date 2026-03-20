<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
//1. 값 받기
 -->
 <%!  
 public double getMok(int a, int b){
	 return (a*1.0)/b ;}
%>
 <% 
 //자바코드 사용

 
 int x1 = Integer.parseInt(request.getParameter("xx"));
 int y1 = Integer.parseInt(request.getParameter("yy"));
 
 
 int hap = x1+y1;
 int cha = x1-y1;
 int gob = x1*y1;
 double mok = getMok(x1,y1);
 

 
 %>
<!--  현재 상태에서 총 합이 10을 넘을때만 결과 화면 나오게 -->
<%
	if(hap>10){
%>

 <div style="background-color: ivory; border: 1px solid">
 <h1><%=x1 %> + <%=y1 %> = <%=hap %> <br></h1>
 <h1><%=x1 %> - <%=y1 %> = <%=cha %> <br></h1>
 <h1><%=x1 %> * <%=y1 %> = <%=gob %> <br></h1>
 <h1><%=x1 %> / <%=y1 %> = <%=mok %> <br></h1>
</div>

<% } %>

</body>
</html>