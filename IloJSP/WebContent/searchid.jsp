<%@page import="java.util.List"%>
<%@page import="UserDao.Userdao"%>
<%@page import="UserDto.Userdto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String id=null;
	Userdto dto =Userdao.getInstance().searchid(name, email);
	id=dto.getId();
	
	
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
			<td><strong><%=name %></strong>회원님의 아이디</td>
			<td><%=id %></td>
			<a href="searchpwdform.jsp">비밀번호 찾기</a>
		</tr>
		
	</table>
</body>
</html>