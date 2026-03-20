<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--
.jsp 자바쓰는 경우
-값 읽으려고 : EL로 해결
-----------------------
-조건문, 반복문
-출력형식을 조정 String.format()
-이동, 포함. ***


.jsp 에서만 동작. (html 이런데서 안됌)
1. jsp 표준 액션 태그 (정품)
        .jsp에서 기본적으로 사용가능
2. jstl (java standard tag library) (사제)
           .기본에 없음





--%>
<h1>index 1 page --1-1-1-1-1--</h1>
<%--<jsp:forward page="index2.jsp"></jsp:forward>--%>
<jsp:include page="index2.jsp"></jsp:include>








</body>
</html>