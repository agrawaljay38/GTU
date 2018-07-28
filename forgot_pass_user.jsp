<%-- 
    Document   : forgot_pass_user
    Created on : Jul 22, 2018, 3:47:09 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forgot password</title>
    </head>
    <style>
        table{
                
            padding-top: 3%;
            padding-left: 40%;
            vertical-align: central;
        }
        h1{
            margin: 0;
            padding: 30px;
            text-align: center;
            background-color: #2386CA;
        }
        th{
            padding-right: 5%;
        }
        input[type=submit]
        {
            font-size: 20px;
            margin-top: 10px;
            padding: 5px;
            border-radius: 15px;
            background-color: #A5FFCC;
        } 
        #subrow{
            padding-top: 20px;
        }
        input[type=email],input[type=text]
        {
            border-radius: 5px;
            margin: 10px;
        }
    </style>
    <body>
        <jsp:include page="Option.jsp"/>
        <h1>Enter Details To Change Password</h1>
        <form action="forgot_pass_user_2.jsp" method="post">
        <table>
            <tr>
                <th> Name:</th>
                <td><input type="text" name="name"></td>
            </tr>
            </tr>
                <th> Email:</th>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <th> Contact number:</th>
                <td><input type="text" name="num"></td>
            </tr>
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Check"></td>
            </tr>
        </table>
        </form>    
    </body>
</html>
