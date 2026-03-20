package com.dm.tag.unit;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class Model {


    public static void unitCalc(HttpServletRequest request) {


        // --- 기존 로직 유지 ---
        double user_num = Integer.parseInt(request.getParameter("input"));
        String[] change_kind = request.getParameterValues("choose");

        // 계산 로직
        double length = user_num / 2.54;
        double width = user_num / 3.306;
        double temp = (user_num * 1.8) + 32;
        double speed = user_num / 1.609;

        Map<String, Double> vals = new HashMap<>();
        vals.put("length", length);
        vals.put("width", width);
        vals.put("temp", temp);
        vals.put("speed", speed);

        double result = 0;
        String selectedKey = ""; // 테마 결정을 위해 키 저장

        for (String choose : change_kind) {
            result = vals.get(choose);
            selectedKey = choose;

        }

        Map<String, String> r_unit = new HashMap<>();
        r_unit.put("length", "inch");
        r_unit.put("width", "평");
        r_unit.put("temp", "&deg;F");
        r_unit.put("speed", "mi/h");

        String result_unit = "";
        for (String choose : change_kind) {
            result_unit = r_unit.get(choose);
        }

        Map<String, String> unit = new HashMap<>();
        unit.put("length", "cm");
        unit.put("width", "m&sup2;");
        unit.put("temp", "&deg;C");
        unit.put("speed", "km/h");

        String unit_r = "";
        for (String u : change_kind) {
            unit_r = unit.get(u);
        }
        String user_num2 = String.format("%.1f",user_num);
        String result_num2=String.format("%.1f",result);

        Result r =  new Result(user_num2,unit_r,result_num2,result_unit,selectedKey);
        request.setAttribute("result", r);
        request.setAttribute("contentPage","unit/unitOutput.jsp");


    }
}

