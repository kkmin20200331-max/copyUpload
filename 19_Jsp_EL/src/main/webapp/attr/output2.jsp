
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="attr2" method="post">
		<div>

			<div>상품 가격 : ${param.p}</div> <!-- request.getAttribute("price") 이걸 그대로 넣어도 됨! -->
		</div>
		<div>

			<div>지불한 돈 :${rr.money}</div>
		</div>
		<div>

			<div>잔돈 :${rr.ex}</div>
			<div>${rr.say}</div>
		</div>
		



	</form>

		<hr>
		<div>
			<div>
				<button onclick="location.href='attr/output3.jsp?howmuch=${rr.ex}'">얼마나모자른데요?</button>
			</div>
		</div>
		<hr>
		<form action="attr2">
		<input name="howmuch" value = "${rr.ex}" hidden>
		<button>얼마?</button>
		</form>
<!-- 모든 요청을 C로 하자고 했는데 jsp로 요청이 날라감
이제 추가 servelt을 만들어서 forward로 보내줄거임  -->

<form action="attr2" method="post">
		<input name="asd" value = "${rr.ex}" >
		<button>test용(데이터완성)</button>
</form>
<form action="attr2" method="post">
		<input name="asd" value = "${rr.ex}" >
		<button>test용(데이터미완성)</button>
</form>

		<div>
			<div>
				<button onclick="history.back()">돌아가기</button>
			</div>
		</div>
<hr>
<!-- 돈이 모자를 때만 버튼이 나오게 [얼마 모자른데요?] 이때 버튼을 누르면 output3.jsp에서 모자른 금액 안내 -->
<hr>

</body>
</html>