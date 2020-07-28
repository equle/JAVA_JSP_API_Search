<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import = "java.sql.*" %>
    
<% 
String sk = request.getParameter("s");
%>

<% if(sk.equals("1")){ %>
	<script>
	alert("회원가입 성공")
	location.href ="controller.jsp?m=main"; //로 이동
	</script>
<% } else { %>
	<script>
	alert("회원가입 실패.")
	location.href ="controller.jsp?m=join"; //로 이동
	</script>
<% } %>
