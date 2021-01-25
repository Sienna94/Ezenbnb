<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div class="wrap_msg">
	<span>메세지 주고받기</span>
	<div class="btn-group">
		<button type="button" class="btn btn-default dropdown-toggle"
			data-toggle="dropdown" aria-expanded="false">
			msg_select<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">모든 메세지</a></li>
			<li><a href="#">보관 처리한 메세지</a></li>
			<li><a href="#">읽지 않은 메세지</a></li>
		</ul>
	</div>
</div>
</body>
</html>