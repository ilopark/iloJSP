<%@page import="UserDao.Userdao"%>
<%@page import="UserDto.Userdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String pwd=null;
	Userdto dto =Userdao.getInstance().searchpwd(id, name, email);
	pwd=dto.getPwd();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td><strong><%=id %></strong>회원의 비밀번호</td>
			<td><%=pwd %></td>
		</tr>
	</table>
</body>
</html>