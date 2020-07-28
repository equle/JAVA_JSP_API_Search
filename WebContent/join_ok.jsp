<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String num = request.getParameter("num");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
%>

<%
Connection conn = null;
PreparedStatement pstmt = null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost/dbdb", "root","1234" );
	System.out.println("연결 성공");
	
	String sql = "INSERT INTO singup_tb (id, pw,num,name, phone, email) VALUES (?, ?, ? ,? ,? ,?)";
	pstmt = conn.prepareStatement(sql);
	// 4. 데이터 binding
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, num);
	pstmt.setString(4, name);
	pstmt.setString(5, phone);
	pstmt.setString(6, email);
	
	int count = pstmt.executeUpdate();
	
	if (count == 1) {
		System.out.println("데이터 입력 성공");
		response.sendRedirect("join_check.jsp?s=1");
	} else {
		System.out.println("데이터 입력 실패");
		response.sendRedirect("join_check.jsp?s=2");
	}

} catch (Exception e) {
	System.out.println("에러: " + e);
} finally {
	try {
		if (conn != null && !conn.isClosed()) {
			conn.close();
		}
		if( pstmt != null && !pstmt.isClosed()){
            pstmt.close();
        }
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
</html>