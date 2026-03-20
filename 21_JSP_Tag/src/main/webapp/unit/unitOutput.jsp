
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="unit/unitOutput.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bitcount+Prop+Double+Ink:wght@100..900&display=swap"
            rel="stylesheet">
</head>
<body>

<div class="result-card theme-${result.selectedKey}">
    <h2>변환 결과</h2>

    <div class="value-box">
        ${result.user_num2}<span class="unit-label">${result.unit_r}</span>
    </div>

    <div class="arrow">&darr;</div>

    <div class="value-box">
        ${result.result_num2}<span class="unit-label">${result.result_unit}</span>
    </div>

    <form action="unit">
        <button type="submit">돌아가기</button>
    </form>
</div>

</body>
</html>
