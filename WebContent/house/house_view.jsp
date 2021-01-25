<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=date], select {
  width: 100%;
  padding: 12px 0px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 0px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 40px;
}

form div {
  padding: 20px 0px;
}
</style>
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
	<hr style="width:500px; margin-left:0px;">
	<h2>방정보</h2>
	<h3 style="margin:0px;">숙소이름</h3>
	<span>${dto.getHname()}</span>
	<h3 style="margin:0px;">숙소주소</h3>
	<span>${dto.getHaddress()}</span>
	<h3 style="margin:0px;">전화번호</h3>
	<span>${dto.getHphone()}</span>
	<h3 style="margin:0px;">방가격</h3>
	<span>${dto.getHprice()}</span>
	
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>기타정보</h2>
	<h3 style="margin:0px;">침대갯수</h3>
	<span>${dto.getHbed()} 개</span> 
	<h3 style="margin:0px;">화장실수</h3>
	<span>${dto.getHbat()} 개</span>
	<h3 style="margin:0px;">수용인원</h3>
	<span>${dto.getHperson()} 명</span> 
	<h3 style="margin:0px;">편의시설</h3>
	<span>${dto.getHfacility()}</span>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>평점</h2>
	<h3 style="margin:0px;">평점</h3>
	<span>${dto.getHgrade()} 점</span>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>방예약정보 입력 및 예약버튼</h2>
	<form action="house/Payment.jsp" method="get">
		<div>
	        <label for="checkin">체크인:</label>
	        <input type="date" name="checkin" id="checkin" />
	        <!-- <input type="text" name="checkin" id="checkin" /> -->
    	</div>
    	<div>
	        <label for="checkout">체크아웃:</label>
	        <input type="date" name="checkout" id="checkout" />
	        <!-- <input type="text" name="checkout" id="checkout" /> -->
    	</div>
    	<div>
	        <label for="person">인원:</label>
	        <!-- <input type="text" name="person" id="person" /> -->
			<select name="person" >
			    <option value="none">인원선택</option>
			    <option value="1">1</option>
		        <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			    <option value="5">5</option>
			    <option value="6">6</option>
			    <option value="7">7</option>
			    <option value="8">8</option>
			    <option value="9">9</option>
			    <option value="10">10</option>
			</select>
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