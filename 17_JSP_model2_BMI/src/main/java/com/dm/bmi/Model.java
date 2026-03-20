package com.dm.bmi;

import javax.servlet.http.HttpServletRequest;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.io.File;
import java.io.IOException;

public class Model {
    public static void bmiCalc(HttpServletRequest request) throws IOException {
        String saveRealPath = request.getServletContext().getRealPath("imgFile");

        File saveDir = new File(saveRealPath);
        if (!saveDir.exists()) {
            saveDir.mkdirs(); // 실행 시점에 target 폴더 안에 폴더가 없으면 자동으로 만들어줌 gemini code!!!!
        }

        MultipartRequest mr = new MultipartRequest(request, saveRealPath, 30 * 1024 * 1024, "utf-8",
                new DefaultFileRenamePolicy());

        String name = mr.getParameter("name");
        double height = Double.parseDouble(mr.getParameter("height"));
        double weight = Double.parseDouble(mr.getParameter("weight"));
        String pic = mr.getFilesystemName("pic");

        double hMeter = height / 100.0;
        double BMI = weight / (hMeter * hMeter);

        String result = "";
        String color = "#3498db"; // 결과 색상 (정상 기준)

        if (BMI <= 18.5) {
            result = "저체중";
            color = "#3498db";
        } else if (BMI <= 23) {
            result = "정상";
            color = "#2ecc71";
        } else if (BMI <= 24.9) {
            result = "과체중";
            color = "#f1c40f";
        } else {
            result = "비만";
            color = "#e74c3c";
        }


        Result r = new Result(name, height,weight,pic,BMI,result,color);
        request.setAttribute("result", r);

    }
}
