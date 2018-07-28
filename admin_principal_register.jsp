<%-- 
    Document   : admin_principal_register
    Created on : 28 Jul, 2018, 5:18:05 PM
    Author     : Asus
--%>

<%@page import="java.sql.*"%>
<%@page import="pkg1.class1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Principal Info</title>
    </head>
    <style>
            table{
                vertical-align: central;
                padding-top: 3%;
                padding-left: 40%;
                
            }
            th{
                padding-right: 5%;
            }
            a#k{
                padding-left: 50%;
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
                margin-top: 10px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=email],input[type=password],input[type=text],input[type=radio]
            {
                border-radius: 5px;
                margin: 10px;
                
            }
            #subrow{
                padding-top: 20px;
            }
        </style>
    <body>
        <jsp:include page="Option.jsp"/>
        <%
            try{
                
            
            String uname0=request.getParameter("name");
            Connection con=class1.getconnection();
            PreparedStatement ps=con.prepareStatement("select * from principal where username='"+uname0+"';");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {

%>
        <form action="admin_principal_edit.jsp" method="post">
        <h1>User Info Edit</h1>
        <input type="hidden" name="uname0" value="<%=uname0%>">
        <table>
            <tr>
                <th> Name:</th>
                <td><input type="text" name="name" value="<%=rs.getString(1)%>"></td>
            </tr>
            <tr>
                <th> Contact:</th>
                <td><input type="text" name="contact" value="<%=rs.getString(2)%>"></td>
            </tr>
            <th> Gender:</th>
            <td><input type="radio" name="gender" value="male">
                Male
                <input type="radio" name="gender" value="female">
                Female
            </td>
            </tr>
                <th> Email:</th>
                <td><input type="email" name="email" value="<%=rs.getString(3)%>"></td>
            </tr>
            <tr>
                <th>Username:</th>
                <td><input type="text" name="uname" value="<%=rs.getString(4)%>"></td>
            </tr>
            <tr>
                <th> Password:</th>
                <td><input type="password" name="pass" value="<%=rs.getString(5)%>"></td>
            </tr>
           
            <tr>
                <td></td><td  id="subrow"><input type="submit" value="Edit"></td>
            </tr>
        </table><br>
            
        </form>
            <%
            }}
            catch(Exception e)
            {
                
            }
            %>
    </body>
</html>
