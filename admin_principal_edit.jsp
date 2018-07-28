<%-- 
    Document   : admin_principal_edit
    Created on : 25 Jul, 2018, 10:55:03 PM
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
            String uname0=request.getParameter("uname0");
            String name=request.getParameter("name");
            String gender=request.getParameter("gender");
            String email=request.getParameter("email");
            String contact=request.getParameter("contact");
            String pass=request.getParameter("pass");
            String uname=request.getParameter("uname");
            PreparedStatement ps=con.prepareStatement("update principal set Name='"+name+"',Contact='"+contact+"',gender='"+gender+"',email='"+email+"',username='"+uname+"',password='"+pass+"' where username='"+uname0+"'");
            int status=ps.executeUpdate();
            if(status==1)
            {
                RequestDispatcher rd=request.getRequestDispatcher("/admin_principal_info.jsp");
                rd.forward(request, response);
            }
            else
        {
        out.println("Updation failed");
        }
    }
    catch(Exception e)
{
    out.println("jghs");
    out.println(e);
}
%>
    </body>
</html>
