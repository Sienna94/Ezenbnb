package com.user.service;

import javax.servlet.http.*;

import com.user.dao.*;

import controller.*;

public class BlackListDeleteService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int bid = Integer.parseInt(request.getParameter("uidx"));
		
		UserDAO udao = new UserDAO();
		udao.blackListDelete(bid);
		return "admin_category/admin_deleteblacklist.jsp";
	}

}
