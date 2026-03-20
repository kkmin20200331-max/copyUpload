<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>third-page~</h1>
<%
//1. 값 받기
int aa = Integer.parseInt(request.getParameter("a"));
int bb = Integer.parseInt(request.getParameter("b"));

Object cc = request.getAttribute("ccc");


//정석
Integer ccc2 = (Integer)cc;
int ccc3 = ccc2.intValue();

//오토박싱, 언박싱
Object o = request.getAttribute("ccc");
int o2 = (Integer)o;
//추천방법
//최종적으로 담고싶은 곳에 담고, 에러방생시 왼쪽 자료형의 참조버전으로 캐스트 처리
//기본형의 wrapper class
int c = (Integer)request.getAttribute("ccc");

%>

<%=aa %> + <%=bb %> = <%=aa+bb %>
<hr>
<%=aa %> + <%=bb %> = <%=cc %>
<hr>
</body>
</html>