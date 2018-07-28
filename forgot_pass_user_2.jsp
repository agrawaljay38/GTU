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
        <style>
            table{
                
                padding-top: 3%;
                padding-left: 40%;
                vertical-align: central;
                
            }
            th{
                padding-right: 5%;
            }
            input[type=submit]
            {
                font-size: 20px;
                margin-top: 10px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=password]
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
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String num=request.getParameter("num");
            int flag=0;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con;
                con=class1.getconnection();
                PreparedStatement ps1=con.prepareStatement("select name,email,number from user_register");
                ResultSet rs1;
                    rs1=ps1.executeQuery();
                    while(rs1.next())
                    {      
                        if(name.equals(rs1.getString(1)) && email.equals(rs1.getString(2)) && num.equals(rs1.getString(3)))
                        {   
                             flag=1;
            %>   
            <form action="updatepassword_user.jsp" method="post">
                <table>
                    <tr>
                        <th>Enter new Password :</th>
                        <td><input type="password" name="pass" ></td>
                    </tr>
                    <tr>
                        <th>Re-enter your password : </th>
                        <td><input type="password" name="repass" ></td>
                    </tr>
                    <input type="hidden" name="email" value="<%=email%>">
                    <tr>
                        <td></td><td id="subrow"><input type="submit" value="Confirm"></td>
                    </tr>
                </table>
            </form>
            <%          }
                    }
                    if(flag==0)
                    {
                            out.println("Incorrect Credentials");
                            out.println("<a href='forgot_pass_user.jsp'>Click Here</a> to go back!\n\n");
                    }
            }
            catch(Exception e)
            {
                
            }
        %>
    </body>
</html>
