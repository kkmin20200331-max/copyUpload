package com.dm.sc;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/second-c")
public class SecondC extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    Model.make(request, response);
    request.getRequestDispatcher("second.jsp").forward(request,response);
    }


}