<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>join pg</title>
	<link rel="stylesheet" href="/ebb/css/login.css" type="text/css">
</head>
<body>	
	<h2>로그인</h2>
	<form action="/ebb/user/login.do" method="POST">
      <div class="wrap1">
      	<input id="id" type="text" name="id" placeholder="이메일주소" maxlength="20"/><br>
      	<input id="pass" type="password" name="pass" placeholder="비밀번호" maxlength="20"/>
     		<div class="wrap2">
     			<span>비밀번호 보기</span>
	     		<span>전화번호로 로그인</span>
	     		<span>비밀번호를 잊으셨나요?</span>	
     		</div>
     		<div>
     			<button class="btn-log" type="submit">로그인</button>
     		</div>
     		<div>
     			<span>이젠비앤비 계정이 없으세요?</span>
     			<a href="/ebb/user/login/join.jsp">회원가입</a>
     		</div>
      </div>
     </form>
</body>
</html>