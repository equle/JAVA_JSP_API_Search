<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	String name = (String)session.getAttribute("name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
<h2>Main Page</h2>
	<a href = "controller.jsp?m=main">메인</a>
<% if(name == null){ %>
	<a href = "controller.jsp?m=join">회원가입</a>
	<a href = "controller.jsp?m=login">로그인</a>
<% } %>

<% if(name != null){ %>
	<a href = "controller.jsp?m=mypage">마이페이지</a>		
	<a href = "controller.jsp?m=search">날씨 검색</a>		
	<a href = "controller.jsp?m=logout">로그아웃</a>
<% } %>
</body>
</html>