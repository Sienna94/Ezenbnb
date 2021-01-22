<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결제페이지<br>

------예약정보------<br>
체크인: ${param.checkin}<br>
체크아웃: ${param.checkout}<br>
인원: ${param.person}<br>

------요금정보------<br>
결제요금: ${param.price}<br>

------결제수단------<br>
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
        <label for="cardnum">카드번호: </label>
        <input type="text" name="cardnum"/>
   	</div>
   	<div>
        <label for=exdate>만료일: </label>
        <input type="text" name="exdate"/>
   	</div>
   	<div>
        <label for="cvv">cvv: </label>
        <input type="text" name="cvv"/>
   	</div>
   	<div>
        <label for="postnum">우편번호: </label>
        <input type="text" name="postnum"/>
   	</div>
   	<div>
        <label for="area">지역: </label>
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

------기타정보------<br>
환불정책 - 정보<br>
호스트가 24시간 이내 예약 요청을 수락하기 전까지는 예약이 아직 확정된 것이 아닙니다.<br>
</body>
</html>