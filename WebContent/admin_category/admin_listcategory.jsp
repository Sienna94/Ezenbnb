<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<h2>카테고리 추가 확인</h2>
<div>
	<table class="table table-striped">
		<tr>
			<th align="center">카테고리 명</th>
		</tr>

		<c:if test="${!empty clist}">
			<c:forEach items="${clist}" var="ob">
				<tr>
					<td align="left">${ob.getcIDX()}</td>
					<td align="left">${ob.getcName()}</td>
				</tr>
			</c:forEach>
		</c:if>


	</table>
</div>

</body>
</html>