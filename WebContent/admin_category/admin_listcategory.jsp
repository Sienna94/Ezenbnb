<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<div style="margin-top: 50px;">
	<h2>카테고리 추가하기</h2>
		<tr>
		<td>추가할 카테고리</td>
		<td><input type="text"></td>
		<td><button type="button" onclick="location.href='/ebb/categoryInsert.do'">추가하기</button></td>
	</tr>
</div>

<div style="margin-top: 50px;">
	<h2>카테고리 확인</h2>
	<table class="table table-striped">
		<tr>
			<th align="center">번호</th>
			<th align="center">카테고리 명</th>
		</tr>

		<c:if test="${!empty clist}">
			<c:forEach items="${clist}" var="ob">
				<tr>
					<td align="left">${ob.getCidx()}</td>
					<td align="left">${ob.getCname()}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>

</body>
</html>