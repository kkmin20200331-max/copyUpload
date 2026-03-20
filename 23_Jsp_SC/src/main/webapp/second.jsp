
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>second page !</h1>
파라미터 : ${param.a}
<hr>
어트리뷰트 : ${b}
<hr>
세션 : ${c} <br>
세션 : ${sessionScope.c} <br>
<hr>
쿠키 : ${cookie.d.value}
<hr>
<form action="third-c">
    <input type="text" value="${param.a}" name="a">
    <button>third로 요청</button>
</form>
<hr>
<h2 onclick="location.href='third-c?b=${b}'">third c로 get요청(js)</h2>


</body>
</html>
