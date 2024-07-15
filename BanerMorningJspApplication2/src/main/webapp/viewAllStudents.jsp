<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! ResultSet rs; %>
<%
try {
	Connection con=MySQLDbConnection.getConnection();
	

	String query = "select * from demostud";
	Statement st = con.createStatement();
	rs=st.executeQuery(query);
}

catch (Exception e) {
	System.out.println(e.getMessage());
}

%>

<table border='1' class='table'>
			 <thead class="thead-dark">
			 <tr>
			 <th>Rno</th>
			 <th>Stud Name</th>
			 <th>Age</th>
			 <th>Percentage</th>
			 <th>DELETE</th>
			 </tr>
			 </thead>
			<%while(rs.next()){ %>
				 <tr>
				 <td><%=rs.getInt("rno")%></td>
				 <td><%=rs.getString("sname") %></td>
				 <td><%=rs.getInt("age") %></td>
				 <td><%=rs.getDouble("per")%></td>
				 <td> <a href='deletesingle?rno=<%=rs.getInt("rno") %>'>Delete</a></td> 
				 </tr>
			<%}%>
			 </table>

</body>
</html>