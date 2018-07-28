<%-- 
    Document   : u_changepassword
    Created on : Jul 28, 2018, 6:44:45 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change password</title>
    </head>
     <style>
            table{
                
                padding-top: 3%;
                padding-left: 40%;
                vertical-align: central;
                
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
            input[type=password]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            #subrow{
                padding-top: 20px;
            }
            h1{
                margin: 0;
                padding: 30px;
                text-align: center;
                background-color: #2386CA;
            }

        </style>
    <body>
        <jsp:include page="Option.jsp"/>
        <%
            String email=request.getParameter("email");
            
        %>
        <form action="u_changepassword2.jsp" method="post">
        <table>
            <tr>
                <th>Enter your old password :</th>
                <td><input type="password" name="oldpass"></td>
            </tr>
            <input type="hidden" name="email" value="<%=email%>">
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Check"></td>
            </tr>
        </table>
        </form>    

    </body>
</html>
