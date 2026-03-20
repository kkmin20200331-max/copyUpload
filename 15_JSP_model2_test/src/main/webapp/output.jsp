<%@ page import="com.dm.test.Result" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Result r = (Result) request.getAttribute("result");
%>
<form action="HC">
    <div>관심사 리스트</div>
    <div>
        회원 이름 : <%= r.getName()%>
    </div>
    <div>
        나이 : <%= r.getAge()%>
    </div>
    <div>

        성별 : <%= r.getGender()%>

    </div>
    <div>
      관심사 : <%= r.getInter2()%>

    </div>
</form>
    <div>
        <button onclick="location.href='index.jsp'">돌아가기</button>
    </div>


</body>
</html>
