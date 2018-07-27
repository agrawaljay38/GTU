<%-- 
    Document   : p_updatepassword
    Created on : 26 Jul, 2018, 11:53:48 AM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update password</title>
    </head>
    <body>
        <jsp:include page="Option.jsp"/>
        <%
            
            String password=request.getParameter("password");
            String uname=request.getParameter("uname");
            Connection con=class1.getconnection();
            PreparedStatement ps0=con.prepareStatement("update principal set password='"+password+"' where username='"+uname+"'");
            int i=ps0.executeUpdate();
            if(i==0)
            {
                out.println("Failed to update password!");
            }
            else
            {
                %>
                <h1>Update successful!   <img src="tick.png" height="35px" width="35px"></h1><br><br>
                <h5><a href="loginpage.jsp">Click here</a>to login.</h5>
                <%
            }
        %>
    </body>
</html>
