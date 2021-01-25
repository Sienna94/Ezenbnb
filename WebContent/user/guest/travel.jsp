<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div class="wrap_msg">
	<span>여행_예약목록</span>
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="#">예정된 예약</a></li>
		<li role="presentation"><a href="#">이전 예약</a></li>
	</ul>
	<div>
		<span>다시 여행을 떠나실 준비가 되면 이젠비앤비가 도와드리겠습니다.</span>
		<a>자세히 알아보기</a>
	</div>
	<div>
		<img alt="" src="/ebb/img/guestbg.png">
	</div>
	<div>
		<button type="button" class="btn" onclick="location.href='/ebb/main/main.html'">이젠비앤비 둘러보기</button>
	</div>
	<div>
		<span>예약 내역을 찾으실 수 없나요?</span><a>도움말 센터를 방문하세요</a>
	</div>
</div>
</body>
</html>