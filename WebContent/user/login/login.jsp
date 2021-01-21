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
	<div class="join">
		<div class="section_header">
            <h2>로그인</h2>
        </div>
		<form action="/ebb/user/login.do" method="POST">
	    <div class="input_group">
	      	<input id="id" type="text" name="id" placeholder="이메일주소" maxlength="20"/><br>
	      	<input id="pass" type="password" name="pass" placeholder="비밀번호" maxlength="20"/>
	   	</div>
 		<div class="content_birth">
 			<div>비밀번호 보기</div>
	  		<div>전화번호로 로그인</div>
	  		<div>비밀번호를 잊으셨나요?</div>
	  	</div>	
   		<div class="wrap_btn">
 			<button class="btn_join" type="submit">로그인</button>
 		</div> 
   		<div>
   			<span>이젠비앤비 계정이 없으세요?</span>
   			<a href="/ebb/user/login/join.jsp">회원가입</a>
   		</div>
	     </form>
	 </div>
</body>
</html>