<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=date], select {
  width: 500px;
  padding: 12px 0px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 500px;
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
  padding: 10px 0px 0px 0px;
}

h3 {
  margin:0px;
}

div p {
  margin: 5px 0px 10px;
}

label {
	display: block;
	width: 300px;
}

img {
	border-radius: 7px;
	width: 600px;
	height: 400px;
	border: 0;
}
</style>
<script>
	function checkWrite(){
	   if(document.inputForm.checkin.value=="") {
	       alert("체크인 날짜를 입력하세요");
	       inputForm.checkin.focus();
	   }else if(document.inputForm.checkout.value==""){ 
	       alert("체크아웃 날짜를 입력하세요");
	       inputForm.checkout.focus();
	   }else if(document.inputForm.person.value=="none"){ 
		   alert("인원을 입력하세요");
		   inputForm.person.focus();
	   }else{
	   	   document.inputForm.submit(); 
	   }
	}
</script>
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
<div><img src="img/house/${dto.getHimage()}" alt="House Image"></div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>방정보</h2>
	<h3>숙소이름</h3>
	<p>${dto.getHname()}</p>
	<h3>숙소주소</h3>
	<p>${dto.getHaddress()}</p>
	<h3>전화번호</h3>
	<p>${dto.getHphone()}</p>
	<h3>방가격</h3>
	<p>${dto.getHprice()}</p>
	
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>기타정보</h2>
	<h3>침대갯수</h3>
	<p>${dto.getHbed()} 개</p> 
	<h3>화장실수</h3>
	<p>${dto.getHbat()} 개</p>
	<h3>수용인원</h3>
	<p>${dto.getHperson()} 명</p> 
	<h3>편의시설</h3>
	<p>${dto.getHfacility()}</p>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>평점</h2>
	<h3>평점</h3>
	<p>${dto.getHgrade()} 점</p>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>방예약정보 입력 및 예약버튼</h2>
	<form name="inputForm" action="house/Payment.jsp" method="get">
		<div>
	        <label for="checkin">체크인</label>
	        <input type="date" name="checkin" id="checkin" />
	        <!-- <input type="text" name="checkin" id="checkin" /> -->
    	</div>
    	<div>
	        <label for="checkout">체크아웃</label>
	        <input type="date" name="checkout" id="checkout" />
	        <!-- <input type="text" name="checkout" id="checkout" /> -->
    	</div>
    	<div>
	        <label for="person">인원</label>
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
	        <button type="button" onclick="checkWrite()">예약가능여부보기</button>
    	</div>
	</form>
</div>

</body>
</html>