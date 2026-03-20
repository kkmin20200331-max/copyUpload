package com.dm.sc;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Model {

    public static void make(HttpServletRequest request, HttpServletResponse response) {
        String bbb = "zzz";
        request.setAttribute("b",bbb);
        if(request.getParameter("a") != null){
            request.getParameter("a");
        }
        //param, attr
        //특성상 third에서 사용할 수가 없음.
        //session,cookie
            String ccc = "세션~~!";
        HttpSession hs =  request.getSession();
        hs.setAttribute("c",ccc);
        hs.setMaxInactiveInterval(10); //10초
        //서버와 클라이언트 연결상태 (접속한거)
        //이 둘의 연결만 살아있으면 이 사이트 어디에서든 사용이 가능하다!
        //연결 끊어지면 못씀( 서버 접속 종료/ 브라우저를 다 닫은거)
        //세션 유지시간 (기본 30분)
        //유지시간이내에 요청등이 일어나지 않으면 죽음
        //시간내에 요청 등 작업을 하면 갱신됨 ( 유지시간 초기화 )

        //cookie
        //사용자 컴퓨터에 파일 형태로 저장.
        //브라우저를 꺼도, 서버와의 접속을 끊어도, 재부팅을 해도 살아있음.
        //시간제한을 걸 수 있음.
        String ddd = "cookie~~";
        Cookie coo = new Cookie("d",ddd);
        coo.setMaxAge(5*60); //5분
        response.addCookie(coo);

        /*
        parameter - V에서 만든 값(html, jsp, get요청으로 만든 문자열, form-> input name)
                    - String, String[], _chkbox
                    req에 실려서 전송.
                   -값 읽을 때
                    -java :  req.getParameter("파라미터명");
                    -EL : ${param.파라미터명}

         attr - 꼭M이라기 보단,Java에서 만든 값.
                -Object 다 되는것!
                req에 실려서 전송
                -값 읽을 때
                    -java :  req.getAttribute("어트리뷰트이름");
                    -EL : ${어트리뷰트이름}

         session -



        */


    }
    public static void printSC(HttpServletRequest request){
//        session.attr - java(M,C) - 서버~~~클라이언트 연결상태에 달려있다. (연결통로 자체에 항상 있는듯한 느낌!)
                                    //하지만 연결이 끊기면 없어지고, 시간제한이(기본30분) 있음
                                    //object
        //값 읽을 때
//        java: req.getSession().getAttribute("이름");
//        EL:${이름},${sessionScope.이름}
              //HttpSession hs = request.getSession();
      Object session = request.getSession().getAttribute("c");
        System.out.println(session);



        /*
        cookie - java에서 만든 값
        값읽는법
        -EL : ${cookie.쿠키이름.value}
        -java:


        */

       Cookie[] cookies = request.getCookies();
       for (Cookie cookie : cookies){
           System.out.println(cookie.getName());
           if(cookie.getName().equals("d")){
               System.out.println(cookie.getValue());

           }
       }




    }
}
