<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>
<div>
	<table class="table table-striped">
		<tr>
			<th align="center">번호</th>
			<th align="center">아이디</th>
			<th align="center">이름</th>
			<th align="center">연락처</th>
			<th align="center">주소</th>
			<th align="center">생일</th>
			<th align="center">회원등급</th>
			<th align="center">가입일</th>
			<th align="center">탈퇴</th>
		</tr>
		
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<tr>
					<td align="left">${ob.getUidx()}</td>
					<td align="left">${ob.getUserid()}</td>
					<td align="left">${ob.getUname()}</td>
					<td align="left">${ob.getUphone()}</td>
					<td align="left">${ob.getUaddress()}</td>
					<td align="left">${ob.getUbirth()}</td>
					<td align="left">${ob.getUtype()}</td>
					<td align="left">${ob.getUrdate()}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<br>
</div>
</body>
</html>