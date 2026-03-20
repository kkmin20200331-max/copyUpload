<%@ page import="com.dm.age.Bean" %><%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 2026-03-11
  Time: 오후 5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
Bean b = (Bean) request.getAttribute("bean");
%>
<h1><%=b.getBirth()%>년생이시군요. <%=b.getAge()%>세 입니다.</h1>
</body>
</html>
