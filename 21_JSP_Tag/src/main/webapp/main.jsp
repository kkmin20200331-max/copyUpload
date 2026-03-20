<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="stylesheet" href="css/index.css">
</head>
<body>
<div class="header">
  <a href="home">dm's place</a>
</div>
<div class="nav">
  <div><a href="a">A</a> </div>
  <div><a href="b">B</a> </div>
  <div><a href="c">C</a> </div>
  <div><a href="unit">unit</a> </div>
  <div><a href="bmi">bmi</a> </div>
</div>
<div class="main">
  <jsp:include page="${contentPage}"></jsp:include>
</div>
<div class="footer">
  information, ..
</div>



</body>
</html>