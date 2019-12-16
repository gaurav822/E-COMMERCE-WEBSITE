<%-- 
    Document   : reg-process
    Created on : May 18, 2019, 11:35:32 AM
    Author     : gaura
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Count Rows JSP</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","root"); 
Statement st=con.createStatement();
 String id=request.getParameter("id");    
	String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String number=request.getParameter("number");
	String email=request.getParameter("email");
	String dateofbirth=request.getParameter("dateofbirth");
	String pwd=request.getParameter("pwd");
	String rpwd=request.getParameter("rpwd");
	String addr=request.getParameter("addr");
	String ans=request.getParameter("ans");
String strQuery = "SELECT COUNT(*) FROM mytable where Id='"+id+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1); out.println(Countrow);
if(Countrow.equals("0")){
int i=st.executeUpdate("insert into mytable(Id,First_Name,Last_Name,Contact,Email,DOB,Password,Re_Password,Address,Answer)values('"+id+"','"+first_name+"','"+last_name+"','"+number+"','"+email+"','"+dateofbirth+"','"+pwd+"','"+rpwd+"','"+addr+"','"+ans+"')");
}
else{
System.out.println("User name or Email already exists !");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>
