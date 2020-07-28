<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String mode = request.getParameter("m");
System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + mode);

if(mode==null){
	 response.sendRedirect("main.jsp");
}else{
	 if(mode.equals("main")){
		 response.sendRedirect("main.jsp");	 
	 }else if(mode.equals("login")){
		 response.sendRedirect("login.jsp");
	 }else if(mode.equals("join")){
		 response.sendRedirect("join.jsp");
	 }else if(mode.equals("mypage")){
		 response.sendRedirect("mypage.jsp");
	 }else if(mode.equals("search")){
		 response.sendRedirect("search.jsp");
	 }else if(mode.equals("logout")){
		 response.sendRedirect("logout.jsp");
	 }else{
		 response.sendRedirect("404.jsp");
		 //잘못된 요청입니다.
	 }
}
	
%>