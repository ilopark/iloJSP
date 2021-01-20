<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>아이디 찾기</h1>
<form action="searchid.jsp" method="post">
	<label for="name">가입한 이름</label>
	<input type="text" id="name" name="name" placeholder="가입한 이릅"/><br />
	<label for="email">가입한 이메일</label>
	<input type="email" id="email" name="email" placeholder="가입한 이메일"/>
	<br />
	<button type="submit">찾기</button>
</form>
</body>
</html>