<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>데이터 베이스 연결 테스트</h2>
	<%
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, "antman", "12345");
	
		if(conn != null) {
			out.println("오라클 데이터 베이스로 연결 했습니다. <br/>");
			conn.close();
			out.println("오라클 데이터 베이스로 연결을 끊습니다. <br/>");
		}
		else {
			out.println("오라클 데이터베이스로 연결 할 수 없습니다.<br/>");
		}
	%>


</body>
</html>