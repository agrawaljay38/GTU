<%-- 
    Document   : u_changepassword2
    Created on : Jul 28, 2018, 6:53:00 PM
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
        <title>change password</title>
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
            h1{
                margin: 0;
                padding: 30px;
                text-align: center;
                background-color: #2386CA;
            }

        </style>
    
    <body>
        <h1></h1>
         <jsp:include page="Option.jsp"/>
        <% 
            try{
            String email=request.getParameter("email");
            String oldpass=request.getParameter("oldpass");
            
            int flag=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con;
                con=class1.getconnection();
                PreparedStatement ps1=con.prepareStatement("select pass from user_register where email='"+email+"'");
                ResultSet rs1;
                rs1=ps1.executeQuery();
                while(rs1.next()){      
                    if(oldpass.equals(rs1.getString(1))){
            %>
            <h1>Enter Details To Change Password</h1>
            <form action="updatepassword_user.jsp" method="post">
            <table>
                <tr>
                    <th> Enter your new password :</th>
                    <td><input type="password" name="pass"></td>
                </tr>
                <tr>
                    <th> Confirm your new password :</th>
                    <td><input type="password" name="repass"></td>
                </tr>
                <input type="hidden" name="email" value="<%=email%>">
                <tr>
                        <td></td><td id="subrow"><input type="submit" value="Change"></td>
                </tr>
            </table>
            </form>    
    <%                  flag=1;
                    }
                }
                if(flag==0)
                {
                    out.println("Incorrect Credentials");
                    out.println("<a href='u_changepassword.jsp'>Click Here</a> to go back!\n\n");
                }
            }
            catch(Exception e)
            {
            }
        %>    
    </body>
</html>
