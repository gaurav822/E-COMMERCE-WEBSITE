<%@ include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

"http://www.w3.org/TR/html4/loose.dtd">

<html>
     <head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>JSP PAGE</title>

	</head>

	<body>
            
          
            <a href="registration.html">click here to register again</a>
            <a href="userlogin.html">click here to login</a>
            

	<%
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
        String Countrow = rs.getString(1);
        
        if(Countrow.equals("0")){

	PreparedStatement ps=con.prepareStatement("INSERT INTO mytable VALUES(?,?,?,?,?,?,?,?,?,?)");
        
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
	ps.executeUpdate();
        
        out.println("Registered Successfully");
        
       
        
        }
        
        else{
out.println("User name or Email already exists !");
}
	
        
    

	%>
        