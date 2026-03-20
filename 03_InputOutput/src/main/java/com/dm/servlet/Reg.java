package com.dm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reg")
public class Reg extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		String addr = request.getParameter("addr");
		String[] interests = request.getParameterValues("interest");
		String text = request.getParameter("introduce");
		System.out.println(name);
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("<link rel=\"stylesheet\" href=\"reg.css\" />");
		out.print("</head>");
		out.print("<body>");

		out.print("<div class=\"container\">");
		
		out.print("<div class=\"items\">");
		out.print("<div class=\"item1\">Name</div>");
		out.printf("<div class=\"item2\"> %s </div>", name);
		out.printf("</div>");
		
		out.print("<div class=\"items\">");
		out.print("<div class=\"item1\">ID</div>");
		out.printf("<div class=\"item2\"> %s </div>", id);
		out.printf("</div>");
		
		out.print("<div class=\"items\">");
		out.print("<div class=\"item1\">PW</div>");
		out.printf("<div class=\"item2\"> %s </div>", pw);
		out.printf("</div>");
		
		out.print("<div class=\"items\">");
		out.print("<div class=\"item1\">Gender</div>");
		out.printf("<div class=\"item2\"> %s </div>", gender);
		out.printf("</div>");
		
		out.print("<div class=\"items\">");
		out.print("<div class=\"item1\">Addr</div>");
		
		out.printf("<div class=\"item2\"> %s </div>", addr);
		
		out.printf("</div>");
		out.printf("</div>");
		
		out.printf("<div class=\"items inter\">");
		out.print("<div class=\"item1\">Interests</div>");
		out.print("<div class=\"item2 interest\">");
		
		String inter2 = "";
		if (interests != null) {
			
		for (String string : interests) {
			inter2 += string + " ";
			//out.printf("<div style = \"font-size : 12px \">%s</div>",string);
		}
			
		}else {
			inter2 = "관심사 없음";
			
		}
		out.printf("<div>%s</div>",inter2);
		out.print("</div>");
		out.print("</div>");
		
		out.print("<div class=\"items text\">");
		out.print("<div class=\"item1\">Introduce</div>");
		out.print("<div class=\"item2\">");
		out.printf("<div name=\"introduce\">%s</div>", text);
		out.print("</div>");
		out.print("</div>");

		
		out.print("</body>");
		out.print("</html>");

	}

}
