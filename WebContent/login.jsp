<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인</h2>
<form action="login_ok.jsp" method="get">
ID : <br><input type="text" name="id"><br>
PW : <br><input type="password" name="pw"><br><br>
<input type="submit" value="login"><br><br>
<a href = "controller.jsp?m=main">메인</a>
<a href = "controller.jsp?m=join">회원가입</a>
</form> 
</body>
</html>