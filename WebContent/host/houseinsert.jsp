<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="hostmenu.jsp" />

<form action="/ebb/houseinsert.do" method="POST">
<div class="wrap_enroll">
	<h3>님 안녕하세요! 숙소 등록을 시작해볼까요?</h3>
	<div class="wrap_enroll2">
		<h5>임시 : 회원번호</h5>
		<div class="input-group input-group-lg">
			<input name="midx" type="text" class="form-control" aria-describedby="sizing-addon1">
		</div>
		<h5>숙소의 이름은 무엇인가요?</h5>
		<div class="input-group input-group-lg">
			<input name="hname" type="text" class="form-control"
				placeholder="숙소 이름을 지어주세요" aria-describedby="sizing-addon1">
		</div>
		<h5>숙소의 위치를 알려주세요.</h5>
		<div class="input-group input-group-lg">
			<input name="hcatg" type="text" class="form-control"
				placeholder="지역을 입력해주세요" aria-describedby="sizing-addon1">
		</div>
		<div class="input-group input-group-lg">
			<input name="address" type="text" class="form-control"
				placeholder="나머지 주소를 입력해주세요" aria-describedby="sizing-addon1">
		</div>
		<h5>숙소의 연락처를 알려주세요.</h5>
		<div class="input-group input-group-lg">
			<input name="hphone" type="text" class="form-control"
				placeholder="예)01012345678" aria-describedby="sizing-addon1">
		</div>
		<h5>숙소 이미지를 등록해주세요.</h5>
		<input name="himage" type="file">
	</div>
	<div class="wrap_enroll2">
		<h5>숙소에는 어떤 편의시설이 있나요?</h5>
		<div class="input-group input-group-lg">
			<input name="hfacility" type="text" class="form-control"
				placeholder="예)족구장" aria-describedby="sizing-addon1">
		</div>
		<h5>숙소에 침대는 몇개가 있나요?</h5>
		<select class="count" name="hbed">
			<option value="0" selected="selected">개</option>
			<option value="1">1개</option>
			<option value="2">2개</option>
			<option value="3">3개</option>
			<option value="4">4개</option>
		</select>
		<h5>숙소에 욕실은 몇개가 있나요?</h5>
		<select class="count" name="hbat">
			<option value="0" selected="selected">개</option>
			<option value="1">1개</option>
			<option value="2">2개</option>
			<option value="3">3개</option>
			<option value="4">4개</option>
		</select>
		<h5>숙소에 몇명까지 묵을 수 있나요?</h5>
		<select class="count" name="hperson">
			<option value="1" selected="selected">1명</option>
			<option value="2">2명</option>
			<option value="3">3명</option>
			<option value="4">4명</option>
			<option value="5">5명</option>
		</select>
		<h5>기본 요금 입력</h5>
		<div class="input-group input-group-lg">
			<input name="hprice" type="text" class="form-control"
				placeholder="예)50000" aria-describedby="sizing-addon1">
		</div>
		<div>
			<button id="enroll" type="submit" class="btn">숙소 등록하기</button>
		</div>
	</div>
</div>
</form>
</body>
</html>