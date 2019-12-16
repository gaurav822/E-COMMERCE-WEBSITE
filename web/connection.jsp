<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              
    </head>
    <body>
        
        <%@page import="java.sql.*" %>
        
        <%@page import="java.io.*" %>
        
        <%! Connection con;%>
        <% Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","root");
        
        %>
    </body>
    
</html>

    