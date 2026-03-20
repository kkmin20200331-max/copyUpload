package com.dm.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    Model.bmiCalc(request);
    request.getRequestDispatcher("output.jsp").forward(request,response);

    }


}