<%-- 
    Document   : index
    Created on : May 14, 2019, 9:52:13 PM
    Author     : gaura
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "mydatabase";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
<h1>Customer Details is displayed below</h1>
<table border="1">
<tr>
<td>ID</td>
<td>First name</td>
<td>Last name</td>
<td>Contact</td>
<td>Email</td>
<td>DOB</td>
<td>Password</td>
<td>Re-Password</td>
<td>Address</td>
<td>Answer</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from mytable";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("First_Name") %></td>
<td><%=resultSet.getString("Last_Name") %></td>
<td><%=resultSet.getString("Contact") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("DOB") %></td>
<td><%=resultSet.getString("Password") %></td>
<td><%=resultSet.getString("Re_Password") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("Answer") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>