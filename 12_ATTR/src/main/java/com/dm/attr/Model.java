package com.dm.attr;

import javax.servlet.http.HttpServletRequest;

public class Model {
public static void makeValue(HttpServletRequest request) {
	int asd =Integer.parseInt( request.getParameter("asd"));
	if (asd<0) {
		asd*=-1;
	}
	request.setAttribute("asdasd",asd);
}	
	
	
	
public static void getExchange(HttpServletRequest request) {
	
	int price = Integer.parseInt(request.getParameter("p"));
	int money = Integer.parseInt(request.getParameter("m"));
	int exchange = money-price;
	
	
	String say = "잔돈 여기 있습니다.";
	if (price==money) {
		 say = "감사합니다";
	}else if(price>money) {
		 say = "돈이 모자른데요..?'_'?";
		 exchange = price-money;
		 
	}
	
	//결과 페이지에서 뭘 쓸지를 생각
	
	request.setAttribute("price", price);
	request.setAttribute("money", money);
	request.setAttribute("exchange", exchange);
	request.setAttribute("say", say);
	
	
	
	//위에처럼 필요한 것들을 따로 실어서 보내도 되는데, 
	//그것들을 한 곳에 모아서 보내자 ! (객체로 만들어서)
	Result r = new Result(price, money,exchange,say);
	request.setAttribute("rr", r);
	
}
}



