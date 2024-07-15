<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ include file="mylogo.html" %>
<%@ include file="myfooter.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!  
int a=100;
public double area(int r)
{
return (3.14*r*r);
}
%>

<h1>Welcome to My Addition page</h1>
<%
int b=9;
int c=a+b;
out.print("<b>"+c+"</b>");
//out.print("hi");

%>
<h3>Welcome to My Addition page</h3>

<%


%>

<%-- <h6>Welcome to My Addition page</h6>--%>

<b>Area of Circle of radius 5 is <%=String.format("%.2f",area(6)) %></b>

</body>
</html>