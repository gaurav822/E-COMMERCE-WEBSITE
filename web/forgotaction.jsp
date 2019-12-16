<%-- 
    Document   : forgotaction
    Created on : May 17, 2019, 10:24:20 AM
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
        <%
            String uid=request.getParameter("answer");
            String pwd=request.getParameter("password");
            
            Statement s=con.createStatement();
            session.setAttribute("id",uid);
            
            ResultSet rs=s.executeQuery("Select answer,password From mytable where answer='"+uid+"'");
            if(rs.next()){
                
                String u=rs.getString(1);
                String p=rs.getString(2);
          
                
                if(u.equals(uid)){
                    
                     out.println("Your Password is "+p);
                            
                            %>
                            <%
                }
                
                else{
                    
                    out.println("Incorrect Answer");
                    
                }
                
            }
            
            else{
                
                out.println("Incorrect Details");
                
            }
            
 %>
    </body>
    
</html>
