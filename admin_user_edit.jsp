<%-- 
    Document   : admin_user_edit
    Created on : 25 Jul, 2018, 10:47:22 PM
    Author     : Asus
--%>

<%@page import="java.sql.*"%>
<%@page import="pkg1.class1"%>
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
            String email0=request.getParameter("email0");
            String name=request.getParameter("name");
            String address=request.getParameter("address");
            String gender=request.getParameter("gender");
            String email=request.getParameter("email");
            String num=request.getParameter("num");
            String pass=request.getParameter("pass");
            String cpass=request.getParameter("cpass");
            PreparedStatement ps=con.prepareStatement("update user_register set name='"+name+"',address='"+address+"',gender='"+gender+"',email='"+email+"',number='"+num+"',pass='"+pass+"',cpass='"+cpass+"' where email='"+email0+"'");
            int status=ps.executeUpdate();
            if(status==1)
            {
                RequestDispatcher rd=request.getRequestDispatcher("/admin_user_info.jsp");
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
