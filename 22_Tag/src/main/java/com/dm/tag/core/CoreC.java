package com.dm.tag.core;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/core")
public class CoreC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        request.setAttribute("content","core/core.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        CoreM.work(request);
        request.setAttribute("content","core/core_result.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);
    }


}