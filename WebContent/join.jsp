<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>
<br>
<form action="join_ok.jsp" method="get">
  <label for="id">아이디 : </label><br>
  <input type="text" name="id" id="id"><br>
  <label for="pw">비밀번호 : </label><br>
  <input type="password" name="pw" id="pw"><br>
  <label for="name">이름 : </label><br>
  <input type="text" name="name" id="name"><br>
  <label for="num">학번 : </label><br>
  <input type="text" name="num" id="num"><br>
  <label for="phone">전화번호 : </label><br>
  <input type="text" name="phone" id="phone"><br>
  <label for="email">이메일 : </label><br>
  <input type="email" name="email" id="email"><br><br>
  <input type="submit" value="join">
</form> 
</body>
</html>