package com.category.service;

import javax.servlet.http.*;

import com.category.dao.*;
import com.category.dto.*;

import controller.*;

public class CategoryInsert implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		CategoryDTO cdto = new CategoryDTO();
		cdto.setCname(name);
		
		System.out.println("카테고리 : " + cdto.getCname());
		
		CategoryDAO cdao = new CategoryDAO();
		int n = cdao.categoryInsert(cdto);
		request.setAttribute("n", n);
		return "admin_category/admin_resultcategory.jsp";
	}

}
