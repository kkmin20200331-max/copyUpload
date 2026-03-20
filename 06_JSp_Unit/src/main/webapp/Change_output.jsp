<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Bitcount+Prop+Double+Ink:wght@100..900&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: "Bitcount Prop Double Ink", system-ui;
	font-optical-sizing: auto;
}
/* 기본 중앙 정렬 레이아웃 */
body {
	background-color: #f8f9fa;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

/* 정사각형 카드 */
.result-card {
	width: 350px;
	height: 350px;
	background: white;
	border-radius: 20px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
	padding: 30px;
	box-sizing: border-box;
	border-top: 10px solid #ccc; /* 기본 테두리 */
}

/* --- 단위별 테마 색상 설정 --- */
.theme-length {
	border-top-color: #339af0;
} /* 파랑 */
.theme-width {
	border-top-color: #51cf66;
} /* 초록 */
.theme-temp {
	border-top-color: #ff922b;
} /* 주황 */
.theme-speed {
	border-top-color: #845ef7;
} /* 보라 */
h2 {
	font-size: 1.2rem;
	color: #888;
	margin-bottom: 20px;
}

/* 숫자 스타일 */
.value-box {
	font-size: 2.2rem;
	font-weight: 800;
	color: #333;
	margin: 10px 0;
}

/* 단위 스타일 (숫자와 색깔을 다르게) */
.unit-label {
	font-size: 1.1rem;
	font-weight: 600;
	margin-left: 5px;
}

/* 테마별 단위 색상 */
.theme-length .unit-label {
	color: #339af0;
}

.theme-width .unit-label {
	color: #51cf66;
}

.theme-temp .unit-label {
	color: #ff922b;
}

.theme-speed .unit-label {
	color: #845ef7;
}

.arrow {
	font-size: 1.5rem;
	color: #dee2e6;
	margin: 10px 0;
}

/* 돌아가기 버튼 */
button {
	margin-top: 25px;
	padding: 10px 20px;
	border: none;
	border-radius: 8px;
	background-color: #495057;
	color: white;
	font-weight: bold;
	cursor: pointer;
	transition: 0.2s;
}

button:hover {
	background-color: #212529;
}
</style>
</head>
<body>
	<%
	// --- 기존 로직 유지 ---
	double user_num = Integer.parseInt(request.getParameter("input"));
	String[] change_kind = request.getParameterValues("choose");

	// 계산 로직
	double length = user_num / 2.54;
	double width = user_num / 3.306;
	double temp = (user_num * 1.8) + 32;
	double speed = user_num / 1.609;

	Map<String, Double> vals = new HashMap<>();
	vals.put("length", length);
	vals.put("width", width);
	vals.put("temp", temp);
	vals.put("speed", speed);

	double result = 0;
	String selectedKey = ""; // 테마 결정을 위해 키 저장

	for (String choose : change_kind) {
		result = vals.get(choose);
		selectedKey = choose;

	}

	Map<String, String> r_unit = new HashMap<>();
	r_unit.put("length", "inch");
	r_unit.put("width", "평");
	r_unit.put("temp", "&deg;F");
	r_unit.put("speed", "mi/h");

	String result_unit = "";
	for (String choose : change_kind) {
		result_unit = r_unit.get(choose);
	}

	Map<String, String> unit = new HashMap<>();
	unit.put("length", "cm");
	unit.put("width", "m&sup2;");
	unit.put("temp", "&deg;C");
	unit.put("speed", "km/h");

	String unit_r = "";
	for (String u : change_kind) {
		unit_r = unit.get(u);
	}
	%>

	<div class="result-card theme-<%=selectedKey%>">
		<h2>변환 결과</h2>

		<div class="value-box">
			<%=String.format("%.1f", user_num)%><span class="unit-label"><%=unit_r%></span>
		</div>

		<div class="arrow">&darr;</div>

		<div class="value-box">
			<%=String.format("%.1f", result)%><span class="unit-label"><%=result_unit%></span>
		</div>

		<form action="index.html">
			<button type="submit">돌아가기</button>
		</form>
	</div>

</body>
</html>