<%@page import="UserDao.Userdao"%>
<%@page import="UserDto.Userdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	
	Userdto dto=new Userdto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setName(name);
	dto.setEmail(email);
	
	boolean isSuccess=Userdao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>알림</h1>
	<%if(isSuccess){ %>
		<p>
			<strong><%=id %></strong> 회원님 가입 되었습니다.
			<a href="loginform.jsp">로그인 하러가기</a>
		</p>
	<%}else{ %>
		<p>
			가입이 실패 했습니다.
			<a href="joinform.jsp">다시 가입</a>
		</p>
	<%} %>
</div>
</body>
</html>