package com.house.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;

import controller.CommandAction;

public class HouseListService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		String catg = request.getParameter("catg");
		
		HouseDAO dao = new HouseDAO();
		List<HouseDTO> list = dao.getHouseList(catg);
		
		request.setAttribute("list", list);
		
		return "house/house_list.jsp";
	}

}
