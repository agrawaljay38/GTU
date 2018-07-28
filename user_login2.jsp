<%-- 
    Document   : user_login2.jsp
    Created on : Jun 12, 2018, 8:04:57 PM
    Author     : DELL
--%>

<%@page import="pkg1.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <style>
         body{
            background-color: #EFF3F8;
         }
         
            table{
                margin-top: 70px;
                margin-left: 10px;
                margin-right: 10px;
                padding: 30px 500px;

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
            input[type=submit]
            {
                font-size: 20px;
                margin-top: 20px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=email],input[type=password]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            #subrow{
                padding-top: 20px;
                padding-left: 30px;
            }
     </style>
    <body>
         <%
            String email=request.getParameter("email");
            String pass=request.getParameter("password");
            out.println(email+pass);
            try
            {
                Connection con=class1.getconnection();
                PreparedStatement ps=con.prepareStatement("select email,pass from user_register");
                ResultSet rs=ps.executeQuery();
                int flag=0;
                while(rs.next())
                {
                    if(rs.getString(1).equals(email) && rs.getString(2).equals(pass))
                    {
                        session=request.getSession();
                        session.setAttribute("name",email);
                        response.sendRedirect("/project1/next.jsp");
                        flag=1;
                    }
                }
                if(flag==0)
                {
                    %>
                    <jsp:include page="Option.jsp"/>
                    <table>
                        <tr>
                            <th>Incorrect credentials</th>
                        </tr>
                        <tr>
                            <th><a href="user_login.jsp">Try Again</a></th>
                        </tr>
                    </table>
            <%
                }
            }
            catch(Exception e)
            {
            }
         %>
    </body>
</html>
