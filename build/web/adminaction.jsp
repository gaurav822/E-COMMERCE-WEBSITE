<%-- 
    Document   : adminaction
    Created on : May 10, 2019, 10:40:44 AM
    Author     : gaura
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        
        <%
        String id=request.getParameter("email");
        session.setAttribute("id1",id);
         String pw=request.getParameter("password");
        Statement st=con.createStatement();
  
        if(id.equals("admin@gmail.com"))
        {
            if(pw.equals("admin"))
            {%>
            <jsp:forward page="ADMIN.jsp"></jsp:forward>
            <%}
        }
       
            else{
                
                out.println("incorrect password");
            }
        
        
        
                                         
      
      
       
        %>
    </center>
    </body>
</html>
