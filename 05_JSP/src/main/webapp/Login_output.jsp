<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* 전체 배경 설정 */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* 로그인 카드 상자 */
    .login-container {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        width: 350px;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
    }

    .input-group {
        margin-bottom: 15px;
    }

    .input-group label {
        display: block;
        font-size: 14px;
        color: #666;
        margin-bottom: 5px;
    }

    /* 입력창 스타일 */
    .input-group input {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 6px;
        box-sizing: border-box; /* 패딩이 너비를 넘지 않게 함 */
        transition: border-color 0.3s;
    }

    .input-group input:focus {
        border-color: #007bff;
        outline: none;
    }

    /* 로그인 버튼 스타일 */
    .login-btn {
        width: 100%;
        padding: 12px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-top: 10px;
    }

    .login-btn:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String user_id = request.getParameter("id");
String user_pw = request.getParameter("pw");

String login = "Error";

if(user_id.equals("dm")){
	if(user_pw.equals("1004")){
	login = "Success";}else{login = "Password Error";}
}else{login = "No Exist";}
%>
<div class="login-container">
        <h2>LOGIN</h2>
        <form action="Login_output.jsp">
            <div class="input-group">
                <label>ID</label>
                <%=user_id %>
            </div>
            <div class="input-group">
                <label>PASSWORD</label>
                 <%=user_pw %>
            </div >
            <div style="color:red">
            <%=login %>
            </div>
        </form>
    </div>
</body>
</html>