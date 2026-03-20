package com.dm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		out.print("<div style=\"width:500px;background-color: blue; border: 2px solid\">");
		
		out.printf("<div>X + Y = %d</div>",sum);
		out.printf("<div>X - Y = %d</div>",dif);
		out.printf("<div>X * Y = %d</div>",mul);
		out.printf("<div>X / Y = %.1f</div>",division);
		
		out.print("</div>");
		
		out.print("</body>");
		out.print("</html>");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	int x1 = Integer.parseInt(x);
	int y1 = Integer.parseInt(y);
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
	
	out.printf("<div>X + Y = %d</div>",sum);
	out.printf("<div>X - Y = %d</div>",dif);
	out.printf("<div>X * Y = %d</div>",mul);
	out.printf("<div>X / Y = %.1f</div>",division);
	
	out.print("</div>");
	
	out.print("</body>");
	out.print("</html>");
	
	
	}

}
