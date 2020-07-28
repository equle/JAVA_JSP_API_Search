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
<title>search page</title>
</head>
<body>
<h2>날씨 검색</h2>
	<a href = "controller.jsp?m=main">메인</a>
<% if(name != null){ %>
	<a href = "controller.jsp?m=mypage">마이페이지</a>		
	<a href = "controller.jsp?m=search">날씨 검색</a>		
	<a href = "controller.jsp?m=logout">로그아웃</a>
<% } %> <br><br>
<form action="search_ok.jsp" method="get">
  <label for="search">검색어 : </label>
  <input type="text" name="search" id="search">
  <input type="submit" value="검색">
</form> 
</body>
</html>