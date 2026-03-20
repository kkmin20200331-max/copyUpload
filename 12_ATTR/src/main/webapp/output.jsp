<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Object price = request.getAttribute("price");
Object money = request.getAttribute("money");
Object exchange = request.getAttribute("exchange");
Object say = request.getAttribute("say");
%>
<form action="HomeController" method="get">
		<div>

			<div>상품 가격 : <%=price %></div> <!-- request.getAttribute("price") 이걸 그대로 넣어도 됨! -->
		</div>
		<div>

			<div>지불한 돈 :<%=money %></div>
		</div>
		<div>

			<div>잔돈 :<%=exchange %></div>
			<div><%=say %></div>
		</div>
		<div>

			<div>
				<button>돌아가기</button>
			</div>
		</div>



	</form>

<hr>
<%= request.getParameter("p") %> <br>
<%= request.getParameter("m") %> <br>
</body>
</html>