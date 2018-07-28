<%-- 
    Document   : p_resetpassword
    Created on : 26 Jul, 2018, 11:26:59 AM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Reset</title>
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
        <h1>Update Password</h1>
        <%
            String email=request.getParameter("email");
            String name=request.getParameter("name");
            String uname=request.getParameter("uname");
            Connection con=class1.getconnection();
            PreparedStatement ps0=con.prepareStatement("select * from principal where username='"+uname+"'");
            ResultSet rs=ps0.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(name) && rs.getString(3).equals(email))
                {
                    %>
                    <form action="p_updatepassword.jsp" method="post">
                        <table>
                            <tr>
                                <th>Enter New Password:</th>
                                <td><input type="password" name="password"></td>
                            </tr>
                            <tr>
                                <td></td><td  id="subrow"><input type="submit" value="Update Password"></td>
                            </tr>
                            <input type="hidden" name="uname" value="<%=uname%>">
                        </table>
                    </form>
        
        <%
                }
                else
                {
                    out.println("Incorrect credentials!\n\n");
                    out.println("<a href='p_forgotpasssword.jsp'>Click Here</a> to go back!\n\n");
                }
            }
        %>
    </body>
</html>
