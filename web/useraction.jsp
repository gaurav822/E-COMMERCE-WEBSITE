<%-- 
    Document   : useraction
    Created on : May 10, 2019, 10:40:56 AM
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
            String uid=request.getParameter("email");
            String pwd=request.getParameter("password");
            
            Statement s=con.createStatement();
            session.setAttribute("id",uid);
            
            ResultSet rs=s.executeQuery("Select email,password From mytable where email='"+uid+"'");
            if(rs.next()){
                
                String u=rs.getString(1);
                String p=rs.getString(2);
                
                if(u.equals(uid)&& p.equals(pwd)){
                    
                     response.sendRedirect("usermainpage.jsp");
                            
                            %>
                            <%
                }
                
                else{
                    
                    out.println("Incorrect Password");
                    
                }
                
            }
            
            else{
                
                out.println("Incorrect id and password");
                
            }
            
 %>
    </body>
    
</html>


                }
            }
           
        
       