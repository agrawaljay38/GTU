<%-- 
    Document   : p_forgotpassword
    Created on : 26 Jul, 2018, 10:45:42 AM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot password</title>
    </head>
    <style>
            table{
               padding-left: 40%;
               
            }
            h1{
                margin: 0;
                padding: 30px;
                text-align: center;
                background-color: #2386CA;
            }
            body{
                background-color: #EFF3F8;
            }
            input[type=text],input[type=password],input[type=email]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            input[type=submit]
            {
                font-size: 20px;
                margin-top: 20px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            #subrow{
                padding-top: 20px;
                padding-left: 30px;
            }
        </style>
    <body>
        <jsp:include page="Option.jsp"/>
        <h1>Password Recovery</h1>
        <form action="p_resetpassword.jsp" method="post">
            <table>
            <tr>
                <th>Enter Username:</th>
                <td><input type="text" name="uname"></td>
            </tr>
            <tr>
                <th>Enter e-mail:</th>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <th>Enter Name:</th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Submit"></td>
            </tr>
            </table>
        </form>
    </body>
</html>
