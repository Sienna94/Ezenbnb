<%@page import="com.user.dao.UserDAO"%>
<%@page import="com.user.dto.UserDTO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- 부트스트랩보다 jquery가 밑에 있으면 동작안함 -->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="/ebb/js/script.js"></script>
    <link rel="stylesheet" href="/ebb/css/reset.css" type="text/css" />
    <link rel="stylesheet" href="/ebb/css/style.css" type="text/css" />
  </head>
  <body>
    <%
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie tempCookie : cookies){
            if(tempCookie.getName().equals("cid")){
                //쿠키값으로 대신 로그인 처리함
                String id=tempCookie.getValue();
                UserDAO dao=new UserDAO();
                UserDTO entity= dao.getAutoLoginUser(id);
                session.setAttribute("logOK", entity);
            }
        }
    }  	
  	%> 
    <div id="wrap">
      <header>
        <div class="menu_group">
          <div class="logo">
            <a href="/ebb/main/main.jsp">
              <img src="/ebb/img/logo.png" alt="logo" />
            </a>
          </div>
          <div class="search">
            <form action="/ebb/index.jsp" method="POST">
              <input
                type="text"
                id="input"
                name="search"
                placeholder="검색 시작하세요"
              />
              <input type="submit" id="btn" value="검색" />
            </form>
          </div>
          <div class="menu_member">
            <div class="host">
            <c:if test="${empty logOK}">
            	<a href="/ebb/user/login/login.jsp">호스트 전환</a>
            </c:if>
            <c:if test="${!empty logOK }">
            	<a href="/ebb/host/hostmain.jsp">호스트 전환</a>
            </c:if>
            </div>
            <ul class="member">
            	<li>
					<a href="#">☰</a>
              		<!-- 햄버거 메뉴 -->
					<ul class="dropdown-menu">
					<c:if test="${empty logOK}">
						<li><a href="/ebb/user/login/login.jsp">로그인</a></li>
						<li><a href="/ebb/user/login/join.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${!empty logOK }">
						<li><a href="/ebb/user/guest/inbox.jsp">메세지</a></li>
						<li><a href="/ebb/user/guest/alert.jsp">알림</a></li>
						<li><a href="/ebb/user/guest/travel.jsp">여행</a></li>
						<li><a href="/ebb/user/guest/like.jsp">저장목록</a></li>
						<!-- <li class="divider"></li> -->
						<li><a href="/ebb/host/hostmain.jsp">숙소 관리</a></li>
						<li><a href="/ebb/user/guest/account-settings.jsp">계정</a></li>
						<!-- <li class="divider"></li> -->
						<li><a href="#">도움말</a></li>
						<li><a href="/ebb/logout.do">로그아웃</a></li>
						<c:if test="${logOK.getUtype() == 2}">
						<li><a href="/ebb/admin/admin_index.jsp">관리자 페이지</a></li>
						</c:if>
					</c:if>
					</ul>
				</li>
			</ul>
          </div>
        </div>
        <!-- /menu_group -->
      </header>