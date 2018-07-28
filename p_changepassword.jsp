<%-- 
    Document   : p_changepassword
    Created on : 26 Jul, 2018, 2:19:57 PM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
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
            input[type=text],input[type=password]
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
        <h1>Change Password</h1>
        <%
            String uname=(String)session.getAttribute("name");
        %>
            <form action="p_changepassword1.jsp" method="post">
            <table>
            <tr>
                <th>Enter Old Password:</th>
                <td><input type="password" name="oldpassword"></td>
            </tr>
            <tr>
                <th>Enter New Password:</th>
                <td><input type="password" name="password"></td>
            </tr>
            <input type="hidden" name="uname" value="<%=uname%>">
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Update"></td>
            </tr>
            </table>
        </form>

        
    </body>
</html>
