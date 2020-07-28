<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Login</h2>
<br>
<form action="login_ok.jsp" method="get">
  <label for="id">ID : </label>
  <input type="text" name="id" id="id"><br>
  <label for="pw"">PW : </label>
  <input type="password" name="pw" id="pw"><br><br>
  <input type="submit" value="login">
</form> 
</body>
</html>