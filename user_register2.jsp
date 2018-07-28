<%-- 
    Document   : user_register2
    Created on : Jun 11, 2018, 3:32:20 PM
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
            String address=request.getParameter("address");
            String gender=request.getParameter("gender");
            String email=request.getParameter("email");
            String num=request.getParameter("num");
            String pass=request.getParameter("pass");
            String cpass=request.getParameter("cpass");
            int flag=0;
            if(pass.equals(cpass))
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con1;
                    con1 = class1.getconnection();
                    PreparedStatement ps1=con1.prepareStatement("select email from user_register");
                    ResultSet rs1;
                    rs1=ps1.executeQuery();
                    while(rs1.next())
                    {              
                        if(email.equals(rs1.getString(1)))
                        {
                   %>
                   <jsp:forward page="user_register.jsp"/>
                   <%           flag=1;
                        }   
                    }       
                }
                catch(Exception e)      
                {
                }
                if(flag==0)
                {
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con;
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3309/project","root","root1");
                        PreparedStatement ps=con.prepareStatement("insert into user_register values(?,?,?,?,?,?,?)");
                        ps.setString(1, name);
                        ps.setString(2, address);
                        ps.setString(3, gender);
                        ps.setString(4, email);
                        ps.setString(5, num);
                        ps.setString(6, pass);
                        ps.setString(7, cpass);
                        int i=ps.executeUpdate();
                        if(i==1)
                        {
                            RequestDispatcher rd=request.getRequestDispatcher("/user_login.jsp");
                            rd.forward(request,response);
                        }
                    }
                    catch(Exception e)
                    {
                    }
                }
            }
        %>
    </body>
</html>
