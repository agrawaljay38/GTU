<%-- 
    Document   : user_login
    Created on : Jun 12, 2018, 7:59:50 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
    </head>
        <style>
            table{
                padding-top: 5%;
                padding-left: 40%;
                vertical-align: central;
                

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
        <h1>Login Page!</h1>
        <%
            try{
                String x=request.getParameter("email");
                String y=request.getParameter("pass");
                
                if(x.equals(null) || y.equals(null))
                {
        %> 
            <table>
                <form action="user_login2.jsp" method="post">
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
                </form>
            </table>
        <%      }
                else
                {
        %>
        
            <table>
                <form action="user_login2.jsp" method="post">
                <tr>
                    <th> E-mail :</th>
                    <td><input type="email" name="email" value="<%=request.getParameter("email")%>"</td>
                </tr>
                <tr>
                    <th>Password :</th>
                    <td><input type="password" name="password" value="<%=request.getParameter("pass")%>"</td>
                </tr>
                <tr>
                    <td></td><td  id="subrow"><input type="submit" value="Login"></td>
                </tr>
                </form>
            </table>
        <%
                }    
            }
            catch(Exception e){
                           %> 
            <table>
                <form action="user_login2.jsp" method="post">
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
                </form>
            </table>
            <%
 
            }
        %>    
        
    </body>
</html>
