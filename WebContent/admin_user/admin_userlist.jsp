<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
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
		</tr>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">					
				<tr>
					<td align="center">${ob.getUidx()}</td>
					<td align="center">${ob.getUid()}</td>
					<td align="center">${ob.getUname()}</td>
					<td align="center">${ob.getUphone()}</td>
					<td align="center">${ob.getUaddress()}</td>
					<td align="center">${ob.getUbirth()}</td>
					<td align="center">${ob.getUtype()}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table><br>
</div>
</body>
</html>