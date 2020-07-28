<%@page import="dto.SearchDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="naver.*" %>
<% 
	String search = request.getParameter("search");
	ArrayList<SearchDTO> list = NVsearchAPI.search(search);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(SearchDTO dto : list) {%>
		<a href = <%=dto.getUrl() %> target="blank"><%= dto.getTitle() %></a><br>
<%} %>
</body>
</html>