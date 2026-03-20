<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>BMI 계산기</title>
    <link rel="stylesheet" href="bmi/bmi.css">
</head>
<body>
<div class="container">
    <div class="title">BMI 계산기</div>
    <form action="bmi" method="post" enctype="multipart/form-data">
        <div class="input-group">
            <label>이름</label> <input name="name" type="text"
                                     placeholder="이름 (2글자 이상)" required minlength="2">
        </div>
        <div class="input-group">
            <label>키 (cm)</label> <input name="height" type="number" step="0.1"
                                         min="100" placeholder="숫자(3글자 이상)" required>
        </div>
        <div class="input-group">
            <label>체중 (kg)</label> <input name="weight" type="number" step="0.1"
                                          placeholder="숫자" required>
        </div>

        <div class="input-group">
            <label>변화 기록용 사진</label> <input name="pic" type="file"
                                            accept="image/*">
        </div>

        <button >지금 바로 검사하기</button>
    </form>
</div>
</body>
</html>