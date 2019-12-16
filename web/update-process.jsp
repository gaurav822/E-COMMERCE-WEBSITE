<%-- 
    Document   : update-process
    Created on : May 14, 2019, 10:50:07 PM
    Author     : gaura
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/mydatabase";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String number=request.getParameter("number");
String email=request.getParameter("email");
String dateofbirth=request.getParameter("dateofbirth");
String pwd=request.getParameter("pwd");
String rpwd=request.getParameter("rpwd");
String addr=request.getParameter("addr");
String ans=request.getParameter("ans");
if(id != null)
{
Connection con = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
PreparedStatement ps=con.prepareStatement("UPDATE mytable SET Id=?,First_Name=?,Last_Name=?,Contact=?,Email=?,DOB=?,Password=?,Re_Password=?,Address=?,Answer=? where Id='"+id+"'");
ps.setString(1,id);
ps.setString(2,first_name);
ps.setString(3,last_name);
ps.setString(4,number);
ps.setString(5,email);
ps.setString(6,dateofbirth);
ps.setString(7,pwd);
ps.setString(8,rpwd);
ps.setString(9,addr);
ps.setString(10,ans);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>