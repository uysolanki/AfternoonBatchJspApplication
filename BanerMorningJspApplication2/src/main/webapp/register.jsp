<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int rows; %>
<%
try {
	Connection con;
	
	String driverName="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/";
	String databaseName="excelrafternoondb";
	String username="root";
	String password="";
	
	Class.forName(driverName);
	
	con=DriverManager.getConnection(url+databaseName,username,password);
	
	String studname = request.getParameter("t1");
	int studage = Integer.parseInt(request.getParameter("t2"));
	double studper = Double.parseDouble(request.getParameter("t3"));

	String query = "insert into demostud(sname,age,per) values(?,?,?)";
	PreparedStatement ps = con.prepareStatement(query);

	ps.setString(1, studname);
	ps.setInt(2, studage);
	ps.setDouble(3, studper);

	rows = ps.executeUpdate();	
}

catch (Exception e) {
	System.out.println(e.getMessage());
}
%>

<h1> <%= rows %> Records Inserted </h1>
</body>
</html>