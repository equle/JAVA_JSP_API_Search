<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	String name = (String)session.getAttribute("name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Main Page</h2>
<% if(name == null){ %>
	<a href = "join.jsp">회원가입</a>
	<a href = "login.jsp">로그인</a>
<% } %>

<% if(name != null){ %>
	<a href = "logout.jsp">로그아웃</a>
	<a href = "search.jsp">날씨 검색</a>		
<% } %>
</body>
</html>