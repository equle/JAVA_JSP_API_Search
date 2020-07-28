<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String ck = request.getParameter("c");
%>

<% if(ck.equals("1")){ %>
	<script>
	alert("로그인 성공.")
	location.href ="controller.jsp?m=main"; //로 이동
	</script>
<% } else { %>
	<script>
	alert("로그인 실패.")
	location.href ="controller.jsp?m=login"; //로 이동
	</script>
<% } %>

</body>
</html>