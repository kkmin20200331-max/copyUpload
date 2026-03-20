<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--
사용자가 출생년도 입력하면 결과에 따라 나이가 몇살인지 알려주기
ex) 2004- > 23세
oo년생 이시군요, 당신의 나이는 oo살입니다.
bean으로 값 뭉치기 (객체)
내년에도 소스코드 수정 안할 수 있게.

--%>
<form action="hello-servlet" method="get">
    <input type="number" placeholder="출생연도" name="birth" required>
    <button >나이확인</button>



</form>


</body>


</html>