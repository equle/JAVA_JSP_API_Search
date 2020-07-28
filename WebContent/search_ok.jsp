<%@page import="dto.SearchDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="naver.*" %>
<% 
	String search = request.getParameter("search");
	ArrayList<SearchDTO> list = NVsearchAPI.search(search);
	int i=1;
%>
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
<title>search_ok.jsp</title>
</head>
<body>
<h2>날씨 검색</h2>
<% if(name != null){ %>
	<a href = "controller.jsp?m=mypage">마이페이지</a>		
	<a href = "controller.jsp?m=search">날씨 검색</a>		
	<a href = "controller.jsp?m=logout">로그아웃</a>
<% } %> <br><br>
	<%for(SearchDTO dto : list) {
		out.print(i+". "); %><a href = <%=dto.getUrl() %> target="blank"><%= dto.getTitle() %></a><br><br>
		<% i++; %>
<%} %>
</body>
</html>