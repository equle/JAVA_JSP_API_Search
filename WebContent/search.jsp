<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //session check
	String name = (String)session.getAttribute("name");
// 	session.removeAttribute("name"); //해당 키만 삭제
// 	session.invalidate(); //통째로 삭제
// 	Object name = session.getAttribute("name");
System.out.println(name);
	if(name==null){ %>
	<script>
		alert("로그인을 해주세요.")
		location.href ="login.jsp"; 
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
<br>
<form action="search_ok.jsp" method="get">
  <label for="search">검색어 : </label>
  <input type="text" name="search" id="search"><br>
  <input type="submit" value="검색">
</form> 
</body>
</html>