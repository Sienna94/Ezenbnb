<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- 부트스트랩보다 jquery가 밑에 있으면 동작안함 -->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="/ebb/js/script.js"></script>
    <link rel="stylesheet" href="../css/reset.css" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
  </head>

  <body>
    <div id="wrap">
      <header>
        <div class="menu_group">
          <div class="logo">
            <a href="/ebb/main/main.jsp">
              <img src="../img/category_sample1.jpg" alt="logo" />
            </a>
          </div>
          <div class="search">
            <form action="../index.jsp" method="POST">
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
            <div class="host"><a href="/ebb/host/hostmain.jsp">호스트 전환</a></div>
            <ul class="member">
            	<li>
					<a href="#">회원 정보</a>
					<ul class="dropdown-menu">
						<li><a href="/ebb/user/guest/inbox.jsp">메세지</a></li>
						<li><a href="/ebb/user/guest/alert.jsp">알림</a></li>
						<li><a href="/ebb/user/guest/travel.jsp">여행</a></li>
						<li><a href="/ebb/user/guest/like.jsp">저장목록</a></li>
						<!-- <li class="divider"></li> -->
						<li><a href="/ebb/host/hostmain.jsp">숙소 관리</a></li>
						<li><a href="/ebb/user/guest/account-settings.jsp">계정</a></li>
						<!-- <li class="divider"></li> -->
						<li><a href="#">도움말</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>
				</li>
			</ul>
          </div>
        </div>
        <!-- /menu_group -->
      </header>