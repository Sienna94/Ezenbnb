package com.user.service;

import javax.servlet.http.*;

import com.user.dto.*;

import controller.*;

public class BlackListUpdate implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int uidx = Integer.parseInt(request.getParameter("uidx"));
		
		UserDTO udto = new UserDTO();
		
		
		
		return null;
	}

}
