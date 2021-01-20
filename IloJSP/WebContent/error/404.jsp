<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>해당 요청 페이지는 존재하지 않습니다.</p>
	<p>에러 메세지 :${requestScope['javax.servlet.err.message'] }</p>
	<p>상태 코드 :${requestScope['javax.servlet.err.status_code'] }</p>
	<p>요청한 위치 :${requestScope['javax.servlet.err.request_uri'] }</p>
	<p>${requestScope['javax.servlet.err.exception'] }</p>
	<p>${requestScope['javax.servlet.err.exception_type'] }</p>
	
</body>
</html>