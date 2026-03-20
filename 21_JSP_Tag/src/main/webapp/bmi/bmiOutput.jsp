
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>BMI 결과</title>
  <link rel="stylesheet" href="bmi/bmiOutput.css">
  <style>

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
  <a href="home">처음으로</a>

</div>
</body>
</html>
