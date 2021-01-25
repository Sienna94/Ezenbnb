<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>host_menu</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/ebb/css/host.css" type="text/css">
</head>
<body>
	<div class="upperMenu">
		<div id="menu1">
			<h3 id="tit">ezenbnb</h3>
			<div id="tab">
				<ul class="nav nav-tabs">
					<li role="presentation"><a href="hostmain.jsp">홈</a></li>
					<li role="presentation"><a href="inbox.jsp">메세지</a></li>
					<li role="presentation"><a href="/ebb/user/guest/travel.jsp">예약</a></li>
					<li role="presentation"><a href="/ebb/user/guest/travel.jsp">달력</a></li>
					<li role="presentation"><a href="house.jsp">숙소</a></li>
					<li role="presentation"><a href="performance.jsp">실적</a></li>
				</ul>
			</div>
		</div>
		<div id="menu2">
			<button type="button" class="btn">숙소 등록하기</button>
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					사용자 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">프로필</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">계정</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">대금 수령 내역</a></li>
					<li class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">새로운 숙소 추가</a></li>
					<li class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">게스트 모드로 전환</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">로그아웃</a></li>
				</ul>
			</div>
		</div>

	</div>