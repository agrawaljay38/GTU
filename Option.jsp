<%-- 
    Document   : Option
    Created on : 4 Jul, 2018, 11:44:24 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Option Page</title>
    </head>
    <style>
        #option{
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #23A6CA;
        }
        
        li#ol a{
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
}
        li#ol
        {
            float:left;
        }
        li#ol a:hover
        {
            background-color: #2396CA;
            font-size: 111%;
        }
    </style>
    <body>
        <ul id="option">
            <li id="ol"><a href="/project/index.jsp">Home</a></li>
            <li id="ol"><a href="/project/admin_details.jsp">Admin Info</a></li>
            <li id="ol"><a href="/project/contactUs.jsp">Contact Us</a></li>
            <li id="ol"><a href="/project/about.jsp">About</a></li>
        </ul>
    </body>
</html>
