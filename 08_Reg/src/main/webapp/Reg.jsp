<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="reg.css" />
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String gender = request.getParameter("gender");
String addr = request.getParameter("addr");
String[] interests = request.getParameterValues("interest");
String text = request.getParameter("introduce");

String inter2 = "";
if (interests != null) {
	
for (String string : interests) {
	inter2 += string + " ";
	//out.printf("<div style = \"font-size : 12px \">%s</div>",string);
}
	
}else {
	inter2 = "관심사 없음";
	
}

%>

<form action="reg.html" method="post">
      <div class="container">
        <div class="items">
          <div class="item1">Name</div>
          <div class="item2">
            <%=name %>
          </div>
        </div>
        <div class="items">
          <div class="item1">ID</div>
          <div class="item2">
            <%=id %>
          </div>
        </div>
        <div class="items">
          <div class="item1">PW</div>
          <div class="item2">
            <%=pw %>
          </div>
        </div>
        <div class="items">
          <div class="item1">Gender</div>
          <div class="item2">
            <%=gender %>
          </div>
        </div>
        <div class="items">
          <div class="item1">Addr</div>
          <div class="item2">
            <%=addr %>
          </div>
        </div>
        <div class="items inter">
          <div class="item1">Interest</div>
          <div class="item2 interest">
            <div>
             <%=inter2 %>
            </div>
          </div>
        </div>
        <div class="items text">
          <div class="item1">Introduce</div>
          <div class="item2">
            <%=text %>
          </div>
        </div>
        <div class="items item3">
         <div class="button">
          
         <button> 돌아가기</button>
         
         </div>
        </div>
      </div>
    </form>







</body>
</html>