
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--
.jsp 파일에 자바를 쓰는 경우
-값 읽으려고
-조건문, 반복문
-출력형식때문에 String.format()


EL (Expression Language)
-값 읽을때
-연산자 사용 가능
-import 필요없음
-값이 없으면 넘어감.??

EL - parameter 읽기 : ${param.이름}
-attribute 읽기 : ${애트리뷰트이름}
-object 읽기 : ${이름.멤버변수}

기본형[] or ArrayList<> : ${이름[인덱스]}
객체 [] : ${이름[인덱스].멤버변수}



--%>
<%--<%--%>
<%--    Student st = (Student) request.getAttribute("student");--%>
<%--%>--%>
<%--이름 : <%= st.getName()%><br>--%>
<%--중간 : <%= st.getMid()%><br>--%>
<%--기말 : <%= st.getLast()%><br>--%>
<%--평균 : <%= st.getAvg()%><br>--%>
<%--성적 : <%= st.getGrade()%><br>--%>
<%--<button onclick="history.back()">돌아가기</button>--%>
<hr>
이름: ${param.n}<br>
중간: ${param.m}<br>
기말: ${param.f}<br>
평점: ${student.avg}<br>
등급: ${student.grade}<br>

<hr>
a:${a}<br>
b:${b}<br>
c:${c[0]},${c[1]},${c[2]}<br>
d:${d[0]}${d[1]}<br>


<hr>

${e}<br>
${e[1].name}<br>

<hr>
${e[0].name} : ${e[0].grade} <br>
${e[2].name} : ${e[2].avg},${e[2].grade}

</body>
</html>
