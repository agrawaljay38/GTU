<%-- 
    Document   : admin_user_info
    Created on : 14 Jun, 2018, 5:11:40 PM
    Author     : Asus
--%>

<%@page import="pkg1.class1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    <body>
        <jsp:include page="Option.jsp"/>
        <style>
            h1{
            padding: 30px;
            margin: 0;
            
            background-color: #2386CA;
        }
        a{
            padding: 10px;
        }
            table{
                border-color: chocolate; 
                text-align: center; 
                margin-top: 5%;  
                margin-left: 2%;
                border-collapse: collapse; 
                border: black;
            }
            td{
                text-align: center;
                padding-top:2%;
                padding-bottom: 2%;
               font-size: 110%;
               
            }
            th{
                width: 1%;
                padding-top:3%;
                padding-bottom: 3%;
                text-align: center;
                font-size: 130%;
                
            }
            
        </style>
        <%
        try{
                            
        Connection con=class1.getconnection();
        PreparedStatement ps=con.prepareStatement("select * from user_register");
        ResultSet rs=ps.executeQuery();     
        session=request.getSession(false);
        String name=(String)session.getAttribute("name");
        if(name.equals("1"))
        {
            session.invalidate();
        }
        if(!session.isNew())
        {
            String id=session.getId();
         %>
         <h1>User Information</h1>
         <a style="float: right; font-size:120%" href="/project/admin_logout.jsp">Logout</a> 
        <table border="1" >
            <tr style="background-color: #65AADA" >
                <th>
                    Name
                </th>
                <th>
                    Address
                </th>
                <th>
                    Gender
                </th>
                <th>
                    Email
                </th>
                <th>
                    Contact
                </th>
                <th>
                    Password
                </th>
                
            </tr>
            <%while(rs.next())
            {
                %>
            <tr>
                <td>
                    <%=rs.getString(1)%>
                </td>
                <td>
                    <%=rs.getString(2)%>
                </td>
                <td>
                    <%=rs.getString(3)%>
                </td>
                <td>
                    <%=rs.getString(4)%>
                </td>
                <td>
                    <%=rs.getString(5)%>
                </td>
                <td>
                    <%=rs.getString(6)%>
                </td>
            </tr>
            <%    
            }
            %>
            
        </table><br>
            
            <%  
                
        }
        else
        {
            
            session.setAttribute("name","1");
            RequestDispatcher rd=request.getRequestDispatcher("/admin_login.jsp");
            rd.include(request, response);

        }
        }
        catch(Exception e)
        {
            out.println("<br><a href='/project/admin_login.jsp'>Please Login!!</a>");
        }
            %>
                
    </body>
</html>
