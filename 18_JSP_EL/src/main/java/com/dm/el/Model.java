package com.dm.el;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class Model {
    public static void calc(HttpServletRequest request) {
        String name = request.getParameter("n");
        Double mid = Double.parseDouble(request.getParameter("m"));
        Double last = Double.parseDouble(request.getParameter("f"));

        System.out.println(name);
        System.out.println(mid);
        System.out.println(last);

        double avg = (mid+last)/2.0;
        String grade = "F";
        if(avg>90){
            grade = "A";
        }else  if(avg>80){
            grade = "B";
        }else  if(avg>70){
            grade = "C";
        }

        Student st = new Student(name, mid, last, avg, grade);
        request.setAttribute("student",st);

        /// ///////////////////////
        request.setAttribute("a","asdasd");
        request.setAttribute("b",12);
        int[] ar = {3,5,7};
        request.setAttribute("c",ar);
        Student[] ss = new Student[2];
        ss[0] = st;
        Student s1 = new Student("s1",78,78,78,"C");
        ss[1] = s1;
        request.setAttribute("d",ss);

        /// ///
        ArrayList<Student>students = new ArrayList<>();
        students.add(st);
        students.add(ss[0]);
        students.add(ss[1]);
        students.add(new Student("s2",60,60,60,"D"));
        request.setAttribute("e",students);









    }
}
