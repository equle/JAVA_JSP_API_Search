<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.sql.*" %>
    
<% 
String sk = request.getParameter("s");
%>

<% if(sk.equals("1")){ %>
	<script>
	alert("회원가입 성공")
	location.href ="index.jsp"; //로 이동
	</script>
<% } else { %>
	<script>
	alert("회원가입 실패.")
	location.href ="join.jsp"; //로 이동
	</script>
<% } %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>