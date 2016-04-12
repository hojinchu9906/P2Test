package com.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.Model;

public class IndexModel implements Model{

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String stringPage=req.getParameter("page");
		if(stringPage==null){
			stringPage="1";
		}
		
		req.setAttribute("pageNum", 0);
		req.setAttribute("jsp", "main.jsp");
		
		return "main/index.jsp";
	}

}
