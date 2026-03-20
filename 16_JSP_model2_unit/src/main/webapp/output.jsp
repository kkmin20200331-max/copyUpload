<%@ page import="com.dm.unit.Result" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
Result r = (Result) request.getAttribute("result");

%>
<div class="result-card theme-<%=r.getSelectedKey()%>">
  <h2>변환 결과</h2>

  <div class="value-box">
    <%=String.format("%.1f", r.getUser_num())%><span class="unit-label"><%=r.getUnit_r()%></span>
  </div>

  <div class="arrow">&darr;</div>

  <div class="value-box">
    <%=String.format("%.1f",r.getResult())%><span class="unit-label"><%=r.getResult_unit()%></span>
  </div>

  <form action="index.jsp">
    <button type="submit">돌아가기</button>
  </form>
</div>

</body>
</html>
