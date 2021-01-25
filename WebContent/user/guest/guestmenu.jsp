<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>guest_menu</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/ebb/css/guest.css" type="text/css">
</head>
<body>
	<div class="upperMenu">
		<div id="logo"><h3><img alt="" src="/ebb/img/logo.png">ezenbnb</h3></div>
		<div class="wrap">
			<span><a href="/ebb/host/hostmain.jsp">호스트 모드로 전환</a></span>
			<!-- Single button -->
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle"
					data-toggle="dropdown" aria-expanded="false">
					menu <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="inbox.jsp">메세지</a></li>
					<li><a href="alert.jsp">알림</a></li>
					<li><a href="travel.jsp">여행</a></li>
					<li><a href="like.jsp">저장목록</a></li>
					<li class="divider"></li>
					<li><a href="/ebb/host/hostmain.jsp">숙소 관리</a></li>
					<li><a href="account-settings.jsp">계정</a></li>
					<li class="divider"></li>
					<li><a href="#">도움말</a></li>
					<li><a href="#">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>