<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //session check
	String name = (String)session.getAttribute("name");
	System.out.println(name);
	if(name==null){ %>
	<script>
		alert("로그인을 해주세요.")
		location.href ="controller.jsp?m=login"; 
	</script>
<% } %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage.jsp</title>
</head>
<body>
<h2>마이 페이지</h2>
	<a href = "controller.jsp?m=main">메인</a>
<% if(name != null){ %>
	<a href = "controller.jsp?m=mypage">마이페이지</a>		
	<a href = "controller.jsp?m=search">날씨 검색</a>		
	<a href = "controller.jsp?m=logout">로그아웃</a>
<% } %> <br><br>
<h3>개인 정보</h3>
ID : <% out.println(session.getAttribute("id")); %><br>
Name : <% out.println(session.getAttribute("name")); %><br>
email : <% out.println(session.getAttribute("email")); %><br>
</body>
</html>