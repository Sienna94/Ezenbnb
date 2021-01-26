<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		border-radius: 7px;
	}
	
	#roominfo {
		width: 600px;
	}
	
	div {
		margin: 40px;
	}
</style>
</head>
<body>

<div>
	<h1>${list[0].getHcatg()} 지역에 있는 방 리스트 입니다</h1>
</div>

<div>
	<table>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<tr onClick = "location.href='/ebb/houseview.do?hidx=${ob.getHidx()}'"
					onMouseOver = "this.style.background='#e9e9e9'"
					onMouseOut = "this.style.background='#FFFFFF'">
					<td align="center">
						<img src="/ebb/img/house/${ob.getHimage()}" width="300" height="250" border="0">
					</td>
					<td id="roominfo" align="center">
						방이름: ${ob.getHname()}<br>
						편의시설: ${ob.getHfacility()}<br>
						침대수: ${ob.getHbed()}<br>
						화장실수: ${ob.getHbat()}<br>
						지역: ${ob.getHcatg()}<br>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>

</body>
</html>