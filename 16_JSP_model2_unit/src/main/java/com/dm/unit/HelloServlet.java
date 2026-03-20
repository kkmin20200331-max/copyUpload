package com.dm.unit;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    request.getRequestDispatcher("index.jsp");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    Model.unitCalc(request);
    request.getRequestDispatcher("output.jsp").forward(request,response);
    }


}