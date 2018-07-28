
<%-- 
    Document   : index
    Created on : 21 Jun, 2018, 11:30:08 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <style>
        h1{
            padding: 40px;
            margin: 0;
            background-color: #2386CA;
        }
        ul#login{
            display: block;
            background-color: #3386CA;
            overflow: hidden;
        }
        a{
            text-decoration: none;
            color: white;
        }
        li#x,a{
            list-style-type: none;
        }
        li#x:hover{
            background-color: #3598DC;
        }
        body{
            background-color: #EFF3F8;
        }
        
        
    </style>
    <body>
        <jsp:include page="Option.jsp"/>
        
        <h1>
            Welcome to our Website
        </h1><br><br>
        <h2>LOGIN AS:</h2>
        <ul id="login">
            <li id="x"><a href="admin_login.jsp"><h3>Admin</h3></a></li>
            <li id="x"><a href="user_register.jsp"><h3>Faculty</h3></a></li>
            <li id="x"><a href="loginpage.jsp"><h3>Principal</h3></a></li>
        </ul>
            
    </body>
</html>
