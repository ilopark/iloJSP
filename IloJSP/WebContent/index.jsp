<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ILOSTARGRAM</title>
<jsp:include page="include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="include/navbar.jsp"></jsp:include>
<div class="container">
	<form action="loginform.jsp" method="post">
		<%if(id==null){ %>
		<br />
			<ul>
				<li><a href="searchidform.jsp">아이디 찾기</a></li>
				<li><a href="searchpwdform.jsp">비밀번호 찾기</a></a></li>
			</ul>
			<ul>
				<li><a href="cafe/list.jsp">카페 글 목록 보기</a></li>
				<li><a href="cafe/list2">카페 글 목록 보기(MVC패턴)</a></li>
				<li><a href="file/list.jsp">자료실 목록 보기</a></li>
				<li><a href="gallery/list.jsp">겔러리 목록 보기</a></li>
			</ul>
		<%}else{%>
			<br />
			<p> 
				<a href="users/private/info.jsp"><%=id %></a> 님 로그인중...
				<a href="users/logout.jsp">로그아웃</a>
			</p>
			<ul>
				<li><a href="cafe/list.jsp">카페 글 목록 보기</a></li>
				<li><a href="cafe/list2">카페 글 목록 보기(MVC패턴)</a></li>
				<li><a href="file/list.jsp">자료실 목록 보기</a></li>
				<li><a href="gallery/list.jsp">겔러리 목록 보기</a></li>
			</ul>
		<%} %>
	</form>
</div>

</body>
</html>