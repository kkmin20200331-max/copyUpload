package com.dm.tag.format;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;

public class FormatM {
    public static void dataMaker(HttpServletRequest request) {
        int a = 123456789;
        double b = 0.4566;
        double c = 12341.23224;
        Date date = new Date();

        request.setAttribute("a",a);
        request.setAttribute("b",b);
        request.setAttribute("c",c);
        request.setAttribute("d",date);

        ArrayList<Snacks> snack = new ArrayList<>();
        snack.add(new Snacks("감자깡",1000,new Date()));
        snack.add(new Snacks("꽃게랑",2000,new Date()));
        snack.add(new Snacks("고래밥",3000,new Date()));
        snack.add(new Snacks("고래밥",500000,new Date()));
        request.setAttribute("snacks",snack);
    }
}
