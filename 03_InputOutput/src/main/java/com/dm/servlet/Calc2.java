package com.dm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc2")
public class Calc2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String[] contents = request.getParameterValues("chk");
	
	
	int x1 = Integer.parseInt(request.getParameter("x"));
	int y1 = Integer.parseInt(request.getParameter("y"));
	
	int sum = x1 + y1;
	int dif = x1 - y1;
	int mul = x1*y1;
	double division = (x1*1.0)/y1;
	
	
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
	out.print("<html>");
	out.print("<head>");
	out.print("<meta charset=\"UTF-8\">");	
	out.print("<style>");	
	out.print("</style>");
	out.print("</head>");
	out.print("<body>");
	out.print("<div style=\"width:500px;background-color: ivory; border: 2px solid\">");
	
	for (String con : contents) {
		if (y1 == 0 && con.equals("division")) {
				
				out.print( "<div>0으로 나눌 수 없어요</div>");
				continue;
		}
		if (con.equals("sum")) {
			out.printf("<div>X + Y = %d</div>",sum);
			
		}else if (con.equals("dif")) {
			out.printf("<div>X - Y = %d</div>",dif);
			
		}else if (con.equals("mul")) {
			out.printf("<div>X * Y = %d</div>",mul);
			
		}else if (con.equals("division")) {
			out.printf("<div>X / Y = %.4f</div>",division);
			
		}
	
	}
	
	
	
	
	out.print("</div>");
	
	out.print("</body>");
	out.print("</html>");
	
	
	}

}
