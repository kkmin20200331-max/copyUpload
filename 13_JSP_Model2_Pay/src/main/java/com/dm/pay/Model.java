package com.dm.pay;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class Model {

	public static void calc(HttpServletRequest request) {
		
		int earn = Integer.parseInt(request.getParameter("earn"));
		int spend = Integer.parseInt(request.getParameter("spend"));
		int remain = earn-spend;
		
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("earn", earn);
//		map.put("spend", spend);
//		map.put("remain", remain);
		
		Result r = new Result(earn, spend, remain);
		request.setAttribute("rr", r);
		
		
		
	}

}
