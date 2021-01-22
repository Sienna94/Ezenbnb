<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<form action="/ebb/houseview.do?" method="post">
		<div>
	        <label for="hidx">방번호 검색:</label>
	        <input type="text" id="hidx" name="hidx"/>
	        <button type="submit">검색</button>
    	</div>
	</form>
</div>
<%-- <% 
	response.sendRedirect("/ebb/houseview.do?hidx=1");
%> --%>
</body>
</html>