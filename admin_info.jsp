<%-- 
    Document   : admin_info
    Created on : 14 Jun, 2018, 4:55:58 PM
    Author     : Asus
--%>

    
<%@page import="java.sql.*"%>
<%@page import="pkg1.class1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information</title>
    </head>
    <style>
        
        body{
            background-color: #EFF3F8;
        }
    </style>
    <body>
        
        <%
           
            Connection con=class1.getconnection();
            PreparedStatement ps=con.prepareStatement("select * from admin");
            ResultSet rs=ps.executeQuery();
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            try
            {
                String name=(String)session.getAttribute("name");
                if(name.equals("1"))
                {
                    session.invalidate();
                }
            }
            catch(Exception e)
            {
                
            }
            if(!session.isNew())
            {
            String id=session.getId();
            int c=0;
            while(rs.next())
            {
                if(email.equals(rs.getString(1)) && password.equals(rs.getString(2)))
                {
                    session=request.getSession();
                    session.setAttribute("name",email);
        %>
        <jsp:include page="Option.jsp"/>
        <p>
            <a id="info" href="admin_user_info.jsp">User Information</a><br><br>
        <a id="info" href="admin_principal_info.jsp">Principal Information</a><br>
        </p>
        <%
            
            }
            else
            {
                c++;
                continue;
            }

            
        }
        if(c==3)
        {
            out.println("\n\n<h4 style='margin-left : 45%;'>Incorrect Credentials!!</h4>\n");
              RequestDispatcher rd=request.getRequestDispatcher("/admin_login.jsp");
              rd.include(request,response);
        }
}
else
{

}
        %>
    </body>
</html>
