<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<div style="margin-top: 50px;">
	<form action="/ebb/categoryInsert.do" method="post">
		<h2>카테고리 추가하기</h2>
		<table>
			<tr>
				<td>추가할 카테고리</td>
				<td><input type="text" name="cname"></td>
				<td><input type="submit" value="추가하기"></td>
			</tr>
		</table>
	</form>
</div>

<div style="margin-top: 50px;">
	<h2>카테고리 확인</h2>
	<table class="table table-striped">
		<tr>
			<th align="center">번호</th>
			<th align="center">카테고리 명</th>
			<th align="center">삭제</th>
		</tr>

		<c:if test="${!empty clist}">
			<c:forEach items="${clist}" var="ob">
				<tr>
					<td align="left">${ob.getCidx()}</td>
					<td align="left">${ob.getCname()}</td>
					<td><input type="checkbox"></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<form action="ebb/categorydelete.do"></form>
	<button type="button">삭제하기</button>
</div>

</body>
</html>