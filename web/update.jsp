<%-- 
    Document   : update
    Created on : May 14, 2019, 10:18:55 PM
    Author     : gaura
--%>

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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from mytable where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
First name:<br>
<input type="text" name="first_name" value="<%=resultSet.getString("First_Name") %>">
<br>
Last name:<br>
<input type="text" name="last_name" value="<%=resultSet.getString("Last_Name") %>">
<br>
Contact:<br>
<input type="text" name="number" value="<%=resultSet.getString("Contact") %>">
<br>
Email Id:<br>
<input type="text" name="email" value="<%=resultSet.getString("Email") %>">
<br>
DOB:<br>
<input type="text" name="dateofbirth" value="<%=resultSet.getString("DOB") %>">
<br>
Password:<br>
<input type="password" name="pwd" value="<%=resultSet.getString("Password") %>">
<br>
Re-Enter Password:<br>
<input type="password" name="rpwd" value="<%=resultSet.getString("Re_Password") %>">
<br>
Address:<br>
<input type="text" name="addr" value="<%=resultSet.getString("Address") %>">
<br>
Answer:<br>
<input type="text" name="ans" value="<%=resultSet.getString("Answer") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>