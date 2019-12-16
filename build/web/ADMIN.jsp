<%-- 
    Document   : ADMIN
    Created on : May 10, 2019, 11:30:34 AM
    Author     : gaura
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
    <body background="bricks-brickwall-brickwork-1092364.jpg">

        <div class="topnav">
            <a class="active" href="#home">Home</a>
            <a href="customerdetails.jsp">CUSTOMER DETAILS</a>
            <a href="transactionpage.jsp">TRANSACTIONS</a>
           
            <a href="settingpage.jsp">Settings</a>
            <a href="productpage.jsp">Products</a>
             <a href="projectcss3.html">Log Out</a>

        
</div>  

<div style="padding-left:16px">  

  <h2>WELCOME ADMIN</h2>
 
</div>

</body>
</html>