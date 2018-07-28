<%-- 
    Document   : admin_login
    Created on : 14 Jun, 2018, 4:49:12 PM
    Author     : Asus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <style>
            table{
                padding-left: 40%;
                vertical-align: central;
                
            }
            h1{
                margin: 0;
                padding: 30px 0px;
                text-align: center;
                background-color: #2386CA;
            }
            body{
                background-color: #EFF3F8;
            }
            input[type=submit]
            {
                font-size: 20px;
                margin-top: 20px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=email],input[type=password]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            #subrow{
                padding-top: 20px;
                padding-left: 30px;
            }
        </style>
    <body>
        
        <jsp:include page="Option.jsp"/>
        <h1>Admin Login</h1><br><br>
        
        
        <form name="login" action="admin_info.jsp" method="post">
            <table>
                <tr>
                    <th> E-mail :</th>
                    <td><input type="email" name="email"</td>
                </tr>
                <tr>
                    <th>Password :</th>
                    <td><input type="password" name="password"</td>
                </tr>
                <tr>
                    <td></td><td  id="subrow"><input type="submit" value="Login"></td>
                </tr>
                
            </table>
                
        </form>
    </body>

