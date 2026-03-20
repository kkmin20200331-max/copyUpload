package com.dm.test;

import javax.servlet.http.HttpServletRequest;

public class Model {
    public static void calcN(HttpServletRequest request) {
    String name = request.getParameter("name");
    int num = Integer.parseInt(request.getParameter("num"));
    int cost = Integer.parseInt(request.getParameter("cost"));
    double perCost = (cost*1.0)/num;
    Result r = new Result(name, num, cost,perCost);
    request.setAttribute("result", r);
    }
}
