package com.dm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
	out.print("<html>");
	out.print("<head>");
	out.print("<meta charset=\"UTF-8\">");
	
	out.print("<style>");
	
	out.print("body{text-align : center}");
	out.print("h1{color : red}");
	
	
	out.print("</style>");
	out.print("</head>");
	out.print("<body>");
	String status = "";
	
	
	if (id.equals("dm") && pw.equals("1004")) {
		status="<h1> 로그인 성공 </h1>";
	}else if(!id.equals("dm")){
		status="<h1> 존재하지 않는 회원입니다. </h1>";
	}else {
		status="<h1> 비밀번호 오류 </h1>";
	}
	
	out.printf("<h2>ID : %s</h2>",id );
	out.printf("<h2>PW : %s</h2>",pw);
	out.print(status);

	
	out.print("</body>");
	out.print("</html>");
	
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		
		out.print("<style>");
		
		out.print("body{text-align : center}");
		out.print("h1{color : red}");
		
		
		out.print("</style>");
		out.print("</head>");
		out.print("<body>");
		String status = "";
		
		
		if (id.equals("dm") && pw.equals("1004")) {
			status="<h1> 로그인 성공 </h1>";
		}else if(!id.equals("dm")){
			status="<h1> 존재하지 않는 회원입니다. </h1>";
		}else {
			status="<h1> 비밀번호 오류 </h1>";
		}
		
		out.printf("<h2>ID : %s</h2>",id );
		out.printf("<h2>PW : %s</h2>",pw);
		out.print(status);

		
		out.print("</body>");
		out.print("</html>");
		
		
	
	}

}
