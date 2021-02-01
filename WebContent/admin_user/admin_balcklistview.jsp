<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<c:if test="${0 < n}">
	<body onload="alert('추가되었습니다'); location.href='/ebb/userList.do'">
</c:if>
<c:if test="${0 >= n}">
	저장 안됐다 욘석아😛😛
</c:if>

<div style="margin-top: 50px;">
	<h2>블랙리스트</h2>
	<table class="table table-striped">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>연락처</th>
			<th>주소</th>
			<th>생일</th>
			<th>회원등급</th>
			<th>가입일</th>
			<th>블랙리스트 해제</th>
		</tr>
		
		
	</table>
</div>

</body>
</html>