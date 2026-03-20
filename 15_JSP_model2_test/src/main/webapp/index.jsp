<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="HC">
    <div>관심사 리스트</div>
    <div>
        회원 이름 : <input type="text" name="name" required>
    </div>
    <div>
        나이 : <input type="number" name="age" required>
    </div>
    <div>

        성별 : <label> <input type="radio" name="gender" value="male" required>남</label>
        <label> <input type="radio" name="gender" value="female">여</label>

    </div>
    <div>
        <label> <input type="checkbox" name="interest" value="sport">운동</label>
        <label> <input type="checkbox" name="interest" value="cook">요리</label>
        <label> <input type="checkbox" name="interest" value="programming">개발</label>

    </div>
    <div>
        <button>확인</button>
    </div>
</form>


</body>
</html>
