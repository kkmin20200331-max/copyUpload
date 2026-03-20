package com.dm.test;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/HC")
public class HelloServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    Model.interlist(request);
    request.getRequestDispatcher("output.jsp").forward(request,response);
    }

    public void destroy() {
    }
}