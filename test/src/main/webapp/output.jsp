<%@ page import="com.dm.test.Result" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>계산 결과</title>
    <style>
        body {
            font-family: 'Pretendard', sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .result-card {
            background: white;
            padding: 2.5rem;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.05);
            text-align: center;
            width: 400px;
        }
        .info-text {
            color: #888;
            font-size: 1rem;
            margin-bottom: 0.5rem;
        }
        .main-amount {
            color: #222;
            font-size: 1.8rem;
            font-weight: 800;
            margin: 1rem 0;
        }
        .highlight {
            color: #3b1e1e; /* 카카오톡 초코색 느낌 */
            background: #fee500;
            padding: 2px 6px;
            border-radius: 4px;
        }
        .back-btn {
            margin-top: 2rem;
            background: #e9ecef;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            color: #495057;
        }
        .back-btn:hover {
            background: #dee2e6;
        }
    </style>
</head>
<body>
<%
    Result r = (Result) request.getAttribute("result");
%>
<div class="result-card">
    <div class="info-text">
        <%=r.getNum()%>명이서 총 <%=String.format("%,d", r.getCost())%>원
    </div>
    <div class="main-amount">
        한 사람당 <span class="highlight"><%= r.getPerCost()%>원</span>
    </div>
    <p>지금 바로 <strong><%=r.getName()%></strong>님에게<br>카뱅으로 송금해 주세요! 💸</p>

    <button class="back-btn" onclick="history.back()">뒤로 가기</button>
</div>
</body>
</html>