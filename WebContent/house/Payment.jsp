<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=text], select {
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

h3 {
  margin:0px;
}
</style>
</head>
<body>
<div>
	<h1>결제페이지</h1>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>예약정보</h2>
	<h3>체크인</h3>
	<span>${param.checkin}</span>
	<h3>체크아웃</h3>
	<span>${param.checkout}</span>
	<h3>인원</h3>
	<span>${param.person}</span>
	
	<hr style="width:500px; margin-left:0px;">
	<h2>요금정보</h2>
	<h3>결제요금</h3>
	<span>${param.price}</span>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>결제수단</h2>
	<form action="/ebb/payment.do?" method="post">	
		<select name="card" >
		  <option value="none">신용카드 또는 체크카드</option>
		  <option value="sol">신한은행</option>
	      <option value="woori">우리은행</option>
		  <option value="sc">sc제일은행</option>
		  <option value="kb">국민은행</option>
		  <option value="hana">하나은행</option>
		</select>
	 	<div>
	        <label for="cardnum">카드번호 </label>
	        <input type="text" name="cardnum"/>
	   	</div>
	   	<div>
	        <label for=exdate>만료일 </label>
	        <input type="text" name="exdate"/>
	   	</div>
	   	<div>
	        <label for="cvv">cvv </label>
	        <input type="text" name="cvv"/>
	   	</div>
	   	<div>
	        <label for="postnum">우편번호 </label>
	        <input type="text" name="postnum"/>
	   	</div>
	   	<div>
	        <label for="area">지역 </label>
	        <input type="text" name="area"/>
	   	</div>
	  	<div style="display:none">
	        <input type="text" name="price" id="price" value="${param.price}" />
	        <input type="text" name="hidx" id="hidx" value="${param.hidx}" />
	        <input type="text" name="midx" id="midx" value="${param.midx}" />
	        <input type="text" name="checkin" id="checkin" value="${param.checkin}" />
	        <input type="text" name="checkout" id="checkout" value="${param.checkout}" />
	        <input type="text" name="person" id="person" value="${param.person}" />
	   	</div>
	  	<div>
	        <button type="submit">예약신청하기</button>
	   	</div>
	</form>
</div>
<div>
	<hr style="width:500px; margin-left:0px;">
	<h2>기타정보</h2>
	<h3>환불정책</h3>
	<span>
		<p>2월 9일 12:00 PM 전에 예약을 취소하면 총 숙박 요금의 50% 및 서비스 수수료 전액이 환불됩니다.</p>
		<p>호스트가 제공하는 환불 정책이 내게 적합한지 확인하세요.</p> 
		<p>코로나19와 같이 이미 알려진 사건 또는 일반적인 악천후와 같이 예측 가능한 사건으로 인한 여행 장애는 에어비앤비의 정상참작이 가능한 상황 정책의 적용 대상이 아닐 수 있습니다.</p>
	</span>
	<h3>주의사항</h3>
	<span>
		<p>호스트가 24시간 이내 예약 요청을 수락하기 전까지는 예약이 아직 확정된 것이 아닙니다.</p>
		<p>예약 확정 전까지는 요금이 청구되지 않습니다.</p>
	</span>
</div>
</body>
</html>