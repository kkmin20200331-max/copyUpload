
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>BMI 결과</title>
  <style>
    body {
      font-family: 'Pretendard', sans-serif;
      background-color: #f4f7f6;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      margin: 0;
    }

    .container {
      background: white;
      padding: 2.5rem;
      border-radius: 20px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
      width: 350px;
      text-align: center;
    }

    .result-img {
      width: 120px;
      height: 120px;
      border-radius: 50%;
      object-fit: cover;
      border: 4px solid #fff;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      margin-top: -80px;
      background: #eee;
    }

    .title {
      font-size: 1.4rem;
      font-weight: bold;
      color: #2c3e50;
      margin: 1.5rem 0 1rem;
    }

    .bmi-card {
      background: #f8f9fa;
      padding: 25px;
      border-radius: 15px;
      margin: 1rem 0;
    }

    .bmi-value {
      font-size: 3rem;
      font-weight: 900;
      color: ${result.color};
      margin: 5px 0;
    }

    .status-badge {
      display: inline-block;
      padding: 6px 18px;
      border-radius: 25px;
      background: ${result.color};
      color: white;
      font-weight: bold;
      font-size: 0.9rem;
    }

    .info-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 10px;
      margin: 20px 0;
      border-top: 1px solid #eee;
      padding-top: 20px;
    }

    .info-item {
      text-align: center;
    }

    .info-label {
      display: block;
      font-size: 0.8rem;
      color: #95a5a6;
    }

    .info-data {
      font-weight: bold;
      color: #2c3e50;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #95a5a6;
      color: white;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: 0.3s;
    }

    button:hover {
      background-color: #7f8c8d;
    }
  </style>
</head>
<body>


<div class="container" style="margin-top: 50px;">
  <img src="imgFile/${result.pic} != null ? ${result.pic} : default.png"
       class="result-img" alt="프로필">

  <div class="title">
    <span style="color:${result.color}">${result.name}</span>님의 분석 결과
  </div>

  <div class="bmi-card">
    <div style="font-size: 0.9rem; color: #7f8c8d;">체질량지수(BMI)</div>
    <div class="bmi-value">${result.bmi_r}</div>
    <div class="status-badge">${result.result}</div>
  </div>

  <div class="info-grid">
    <div class="info-item">
      <span class="info-label">현재 키</span> <span class="info-data">${result.height}
					cm</span>
    </div>
    <div class="info-item">
      <span class="info-label">현재 체중</span> <span class="info-data">${result.weight}
					kg</span>
    </div>
  </div>


    <button onclick="history.back()">다시 측정하기</button>
  <a href="/el_war_exploded">처음으로</a>

</div>
</body>
</html>
