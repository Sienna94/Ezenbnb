package com.house.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.dao.HouseDAO;
import com.house.dto.HouseDTO;

import controller.CommandAction;

public class HouseInsertService implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		int midx=Integer.parseInt(request.getParameter("midx"));
		String hname=request.getParameter("hname");
		String hcatg=request.getParameter("hcatg");
		String haddress=request.getParameter("hcatg")+request.getParameter("address");
		String hphone=request.getParameter("hphone");
		String himage=request.getParameter("himage");
		String hfacility=request.getParameter("hfacility");
		int hprice=Integer.parseInt(request.getParameter("hprice"));
		int hbed=Integer.parseInt(request.getParameter("hbed"));
		int hbat=Integer.parseInt(request.getParameter("hbat"));
		int hperson=Integer.parseInt(request.getParameter("hperson"));
		
		HouseDTO dto = new HouseDTO();
		dto.setMidx(midx);
		dto.setHname(hname);
		dto.setHcatg(hcatg);
		dto.setHaddress(haddress);
		dto.setHphone(hphone);
		dto.setHimage(himage);
		dto.setHfacility(hfacility);
		dto.setHprice(hprice);
		dto.setHbed(hbed);
		dto.setHbat(hbat);
		dto.setHperson(hperson);
		
		HouseDAO dao = new HouseDAO();
		//dao 성공 1, 실패 0
		int n = dao.insertHouse(dto);
		request.setAttribute("n", n);		
		System.out.println("성공여부 n:"+n);
		
		return "/host/houseinsert.jsp";
	}

}
