<%-- 
    Document   : usermainpage
    Created on : May 14, 2019, 9:11:51 AM
    Author     : gaurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            * {box-sizing: border-box;}

            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            .topnav {
                overflow: hidden;
                background-color: #e9e9e9;
            }

            .topnav a {
                float: left;
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }

            .topnav a.active {
                background-color: #2196F3;
                color: white;
            }

            .topnav input[type=text] {
                float: right;
                padding: 6px;
                margin-top: 8px;
                margin-right: 16px;
                border: none;
                font-size: 17px;
            }

            @media screen and (max-width: 600px) {
                .topnav a, .topnav input[type=text] {
                    float: none;
                    display: block;
                    text-align: left;
                    width: 100%;
                    margin: 0;
                    padding: 14px;
                }

                .topnav input[type=text] {
                    border: 1px solid #ccc;  
                }
            }
        </style>
    </head>
    <body background="blue.jpeg">

        <div class="topnav">
            <a class="active" href="#home">Home</a>
            <a href="orderpage.jsp">My Orders</a>
            <a href="accountpage.jsp">My Account</a>
             <a href="todaydealspage.jsp">Today's Deals</a>
            <a href="contactpage.jsp">Contact</a>
            <a href="projectcss3.html">Log Out</a>
            <a href="settingpage.jsp">Settings</a>  
            
             <form action="/action_page.php" method="get">
                  <div style = "position:relative;left:600px;top:20px;">
  <input list="search" name="search">
                  </div>
  <datalist id="search">
    <option value="SAMSUNG M20">
    <option value="IPHONE X">
    <option value="JBL SPEAKER">
    <option value="SOFA">
    <option value="Refrigerator">
  </datalist>
                  <div style = "position:relative;left:800px;top:0.1px;">
  <button type="submit">Search</button>
                  </div>
</form>
            
            
</div>
                
               
 
 





  <h2>WELCOME USER</h2>
  <p>Navigation bar with a search box inside of it.</p>
  <p>Resize the browser window to see the responsive effect.</p>
  <p>For more examples on how to add a submit button and icon inside the search bar, go back to the tutorial.</p>
</div>

</body>
</html>