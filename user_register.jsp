<%-- 
    Document   : user_register
    Created on : Jun 11, 2018, 12:45:23 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Register</title>
    </head>
    <style>
            table{
                vertical-align: central;
                padding-top: 3%;
                padding-left: 40%;
                
            }
            th{
                padding-right: 5%;
            }
            a#k{
                padding-left: 50%;
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
                margin-top: 10px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=email],input[type=password],input[type=text],input[type=radio]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            #subrow{
                padding-top: 20px;
            }
        </style>
    <body>
         <jsp:include page="Option.jsp"/>
    <User Register>
        <form action="user_register2.jsp" method="post">
        <h1>User Registeration</h1>
        <table>
            <tr>
                <th> Name:</th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <th> Address:</th>
                <td><input type="text" name="address"></td>
            </tr>
            <th> Gender:</th>
            <td><input type="radio" name="gender" value="male">
                Male
                <input type="radio" name="gender" value="female">
                Female
            </td>
            </tr>
                <th> Email:</th>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <th> Contact number:</th>
                <td><input type="text" name="num"></td>
            </tr>
            <tr>
                <th> Password:</th>
                <td><input type="password" name="pass"></td>
            </tr>
            <tr>
                <th> Confirm Password:</th>
                <td><input type="password" name="cpass"></td>
            </tr>
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Sign Up"></td>
            </tr>
        </table><br>
                <a id="k" href="user_login.jsp">Already have an Account!</a>
            
        </form>
    </body>
</html>
