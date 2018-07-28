<%-- 
    Document   : forgot_pass_user_2
    Created on : Jul 24, 2018, 5:22:50 PM
    Author     : DELL
--%>
<%@page import="pkg1.class1"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String num=request.getParameter("num");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con;
                con=class1.getconnection();
                PreparedStatement ps1=con.prepareStatement("select name,email,number from user_register");
                ResultSet rs1;
                    rs1=ps1.executeQuery();
                    while(rs1.next())
                    {      
                        if(name.equals(rs1.getString(1)) && email.equals(rs1.getString(2)))
                        {
                            
                        }
                    }        
            }
            catch(Exception e)
            {
                
            }
        %>
    </body>
</html>
