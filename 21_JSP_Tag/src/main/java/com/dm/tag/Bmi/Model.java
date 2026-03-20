package com.dm.tag.Bmi;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
        double bmi = weight / (hMeter * hMeter);

        String result = "";
        String color = "#3498db"; // 결과 색상 (정상 기준)

        if (bmi <= 18.5) {
            result = "저체중";
            color = "#3498db";
        } else if (bmi <= 23) {
            result = "정상";
            color = "#2ecc71";
        } else if (bmi <= 24.9) {
            result = "과체중";
            color = "#f1c40f";
        } else {
            result = "비만";
            color = "#e74c3c";
        }
        String bmi_r = String.format("%.1f",bmi);

        Result r = new Result(name, height,weight,pic,bmi_r,result,color);
        request.setAttribute("result", r);
        request.setAttribute("contentPage","bmi/bmiOutput.jsp");

    }
}
