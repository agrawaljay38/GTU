<%-- 
    Document   : admin_principal_delete
    Created on : 25 Jul, 2018, 10:55:34 PM
    Author     : Asus
--%>

<%@page import="pkg1.class1"%>
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
            try{
                Connection con=class1.getconnection();
            
                String uname=request.getParameter("name");
                PreparedStatement ps=con.prepareStatement("delete from principal where username='"+uname+"';");
                int status=ps.executeUpdate();
                if(status==1)
                {
                    response.sendRedirect("/project/admin_principal_info.jsp");
                }
                else
                {
                    out.println("Deletion Failed");
                }
                
            }
            catch(Exception e)
            {
                out.println("");
            }
        %>
    </body>
</html>
