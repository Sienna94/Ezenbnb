package com.house.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.CommandAction;

public class HouseViewService implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		System.out.println("확인용");
		System.out.println(request.getParameter("hidx"));
		return "house/house_view.jsp";
	}

}
