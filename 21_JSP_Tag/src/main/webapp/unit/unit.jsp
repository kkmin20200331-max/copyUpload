<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Unit</title>
    <link rel="stylesheet" href="unit/unit.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bitcount+Prop+Double+Ink:wght@100..900&display=swap"
          rel="stylesheet">

</head>
<body>

<div class="converter-card" >
    <h2>단위 변환기</h2>
    <form action="unit" method="post">
        <label>변환할 값</label> <input name="input" type="number" required placeholder="숫자 입력">
        <label>변환 종류</label>
        <select name="choose">
            <option value="length">cm &rarr; inch</option>
            <option value="width">m&sup2; &rarr; 평</option>
            <option value="temp">&deg;C &rarr; &deg;F</option>
            <option value="speed">km/h &rarr; mi/h</option>
        </select>

        <button type="submit">변환하기</button>
    </form>
</div>

</body>
</html>