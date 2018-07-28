<%--
    Document   : updatepassword_user
    Created on : Jul 28, 2018, 4:50:37 PM
    Author     : DELL
--%>
<%@page import="pkg1.*" %>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update password</title>
    </head>
    <body>
        <jsp:include page="Option.jsp"/>
        <%  try{
            String pass=request.getParameter("pass");
            String repass=request.getParameter("repass");
            String email=request.getParameter("email");
            Connection con=class1.getconnection();
            PreparedStatement ps;
            if(pass.equals(repass))
            {
                ps=con.prepareStatement("update user_register set pass='"+pass+"',cpass='"+pass+"' where email='"+email+"'");
                int i=ps.executeUpdate();
                if(i==0)
                {
                    out.println("Failed to update password");
                }
                else
                {
                    %>
                    <h1>Update successful!</h1><br><br>
                    <a href='user_login.jsp'>Click Here</a> to go back to login page!
       <%
                }
            }
        }
        catch(Exception e)
                {
                        
                }
        %>
    </body>
</html>
