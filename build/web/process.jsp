<%-- 
    Document   : process
    Created on : May 15, 2019, 11:48:54 PM
    Author     : gaura
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String idno=request.getParameter("idno");    
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String number=request.getParameter("number");
String email=request.getParameter("email");
String dateofbirth=request.getParameter("dateofbirth");
String pwd=request.getParameter("pwd");
String rpwd=request.getParameter("rpwd");
String addr=request.getParameter("addr");
String ans=request.getParameter("ans");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into mytable(idno,first_name,last_name,number,email,dateofbirth,pwd,rpwd,addr,ans)values('"+idno+"','"+first_name+"','"+last_name+"','"+number+"','"+email+"','"+dateofbirth+"','"+pwd+"','"+rpwd+"','"+addr+"','"+ans+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>