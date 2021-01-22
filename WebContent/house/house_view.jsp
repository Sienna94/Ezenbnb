<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 방상세페이지<br>
${dto.getHidx()}<br>
${dto.getMidx()}<br>
${dto.getHname()}<br>
${dto.getHaddress()}<br>
${dto.getHphone()}<br>
${dto.getHgrade()}<br>
${dto.getHbed()}<br>
${dto.getHbat()}<br>
${dto.getHperson()}<br>
${dto.getHutill()}<br> --%>

<div><h1>방제목: ${dto.getHname()}</h1></div>
<div><img src="img/${dto.getHimage()}" alt="House Image"></div>
<div>
	------방정보------<br> 
	숙소이름: ${dto.getHname()}<br>
	숙소주소: ${dto.getHaddress()}<br> 
	전화번호: ${dto.getHphone()}<br>
	방가격: ${dto.getHprice()}<br>
</div>
<div>
	------기타정보------<br>
	침대갯수: ${dto.getHbed()} 개<br> 
	화장실수: ${dto.getHbat()} 개<br>
	수용인원: ${dto.getHperson()} 명<br> 
	편의시설: ${dto.getHfacility()}<br>
</div>
<div>평점: ${dto.getHgrade()} 점</div>
<div>
	------방예약정보 입력 및 예약버튼------
	<form action="house/Payment.jsp" method="get">
		<div>
	        <label for="checkin">체크인:</label>
	        <input type="text" name="checkin" id="checkin" />
    	</div>
    	<div>
	        <label for="checkout">체크아웃:</label>
	        <input type="text" name="checkout" id="checkout" />
    	</div>
    	<div>
	        <label for="person">인원:</label>
	        <input type="text" name="person" id="person" />
    	</div>
    	<div style="display:none">
	        <input type="text" name="price" id="price" value="${dto.getHprice()}" />
	        <input type="text" name="hidx" id="hidx" value="${dto.getHidx()}" />
	        <input type="text" name="midx" id="midx" value="${dto.getMidx()}" />
    	</div>
    	<div>
	        <button type="submit">예약가능여부보기</button>
    	</div>
	</form>
</div>

</body>
</html>