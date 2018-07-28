<%-- 
    Document   : loginpage
    Created on : 13 Jun, 2018, 12:08:13 AM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Principal Login</title>
    </head><style>
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
            input[type=submit]
            {
                font-size: 20px;
                margin-top: 20px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=text],input[type=password]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            #subrow{
                padding-top: 20px;
                padding-left: 30px;
            }

            #fp{
                
            padding-top: 20px;
                padding-left: 0px;    
            }
        </style>
    <body>
        <jsp:include page="Option.jsp"/>
        <h1>Principal Login</h1><br><br>
        <form action="principal_login.jsp" method="post">
        <table>
            <tr>
                <th>Username:</th>
                <td><input type="text" name="uname"></td>
            </tr>
            <tr>
                <th>Password:</th>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Login"></td>
            </tr>
            <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr>
                <td></td><td><a id="fp" href ="p_forgotpassword.jsp">Forgot Password?</a></td>
            </tr>
         </table>
        </form>
        
    </body>
</html>
