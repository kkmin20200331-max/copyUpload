
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        div {
            text-align: center;
        }

        .item {
            width: 50%;
            border-bottom: 1px solid black;
        }

        .item-row:hover {
            background-color: tomato;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h1>당신의 나이는 ${age}입니다.</h1>
<%--20살 이상 존대/ 아니면 반말
1. .jsp 표준액션태그
2. jstl : jstl.jar가 필요
--%>
<c:if test="${age>=20}">
    <h1>안녕하세요!</h1>
</c:if>
<c:if test="${age<20}">
    <h1>안녕!</h1>
</c:if>

<%--if, else if, else--%>
<c:choose>
    <c:when test="${age>20}">
        어서오세요!
    </c:when>
    <c:when test="${age>10}">
        어서와!
    </c:when>
    <c:otherwise>
        안녕!
    </c:otherwise>
</c:choose>
<hr>
<%--반복문--%>
<c:forEach begin="1" end="3" step="2" >
    <h1>*()*</h1>
</c:forEach>


<c:forEach begin="1" end="${age}" var="aa" step="2">
    ${aa}
</c:forEach>
<hr>
<c:forEach items="${ar}" var="aa">
    ${aa}

</c:forEach>
<hr>
<c:forEach items="${menus}" var="menu">
    ${menu.name} / ${menu.price}
</c:forEach>

<div style="border: 2px solid red; width: 300px">
    <div style="display: flex">
        <div class="item num">번호</div>

        <div class="item name">메뉴명</div>

        <div class="item price">가격</div>
    </div>
    <c:forEach items="${menus}" var="menu" varStatus="st">
    <div class="item-row" style="display: flex">
        <div class="item index">${st.count}</div>

        <div class="item name">${menu.name}</div>

        <div class="item price">${menu.price}</div>
    </div>
    </c:forEach>
</div>
<hr>

<c:forEach var="i" begin="1" end="10" varStatus="st">
<%-- i --%>
    ${st.end +1 -i}
</c:forEach>
<hr>
<c:forEach var="i" begin="1" end="10">
    <c:set var="v" value="${11-i}"></c:set>
    <c:out value="${v}"></c:out>
</c:forEach>


</body>
</html>
