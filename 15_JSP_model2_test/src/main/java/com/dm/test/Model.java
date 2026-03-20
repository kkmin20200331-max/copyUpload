package com.dm.test;

import javax.servlet.http.HttpServletRequest;

public class Model {
    public static void interlist(HttpServletRequest request) {
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String gender = request.getParameter("gender");
    String [] interests = request.getParameterValues("interest");
    String inter2 = "";
    if (interests != null) {
        for (String interest : interests) {
            inter2 += interest + " / ";
        }
    }
    Result r = new Result(name, age, gender, inter2);
    request.setAttribute("result", r);
    }
}
