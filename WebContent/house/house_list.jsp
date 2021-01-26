<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여기는 하우스 리스트 페이지 입니다</h1>

	<div>
<table>
	<tr>
		<th align="center">이미지</th>
		<th align="center">방이름</th>
		<th align="center">시설</th>
		<th align="center">침대</th>
		<th align="center">화장실</th>
		<th align="center">지역</th>
	</tr>
	<c:if test="${!empty list}">
		<c:forEach items="${list}" var="ob">
			<tr onClick = "location.href='/ebb/houseview.do?hidx=${ob.getHidx()}'"
				onMouseOver = "this.style.background='#e9e9e9'"
				onMouseOut = "this.style.background='#FFFFFF'">
				<td align="center">				
					<img src="/ebb/img/house/${ob.getHimage()}" width="50" height="50" border="0">
				</td>
				<td align="center">${ob.getHname()}</td>
				<td align="center"></td>
				<td align="center">${ob.getHfacility()}</td>
				<td align="center">${ob.getHbed()}</td>
				<td align="center">${ob.getHbat()}</td>
				<td align="center">${ob.getHcatg()}</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
	</div>

</body>
</html>