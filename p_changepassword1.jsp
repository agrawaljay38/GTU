<%-- 
    Document   : p_changepassword1
    Created on : 26 Jul, 2018, 2:27:57 PM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
    </head>
    
    <body>
        <jsp:include page="Option.jsp"/>
        <%
        String uname=request.getParameter("uname");
        String oldpassword=request.getParameter("oldpassword");
        String password=request.getParameter("password");
            Connection con=class1.getconnection();
            PreparedStatement ps0=con.prepareStatement("select * from principal where username='"+uname+"'");
            ResultSet rs=ps0.executeQuery();
            while(rs.next())
            {
                if(rs.getString(5).equals(oldpassword))
                {
                    RequestDispatcher rd=request.getRequestDispatcher("/p_updatepassword.jsp");
                    rd.forward(request, response);
                }
                else
                {
                    out.println("Incorrect credentials!\n\n");
                    out.println("<a href='p_changepassword.jsp'>Click Here</a> to go back!\n\n");
                }
            }
        %>
    </body>
</html>
