<%-- 
    Document   : next
    Created on : Jun 12, 2018, 8:27:25 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department List</title>
    </head>
        <style>
            table{
                margin-top: 40px;
                margin-left: 15px;
                margin-right: 15px;
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
                margin-top: 10px;
                margin-left: 15px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            input[type=radio]
            {
                border-radius: 5px;
                margin-left: 500px;
                margin: 10px;
            }
            #subrow{
                padding-top: 20px;
            }
        </style>
    <body>
        <jsp:include page="Option.jsp"/>
        <%
         /*try{   
        session=request.getSession(false);
        String name=(String)session.getAttribute("name");
        if(name.equals("1"))
        {
            session.invalidate();
        }
        if(!session.isNew())
        {*/
        %>
        <h1>Choose Your Department</h1>
        <form action="user_logout.jsp">
          
                <input type="submit" style="float:right;" value="Logout">
        </form>
        <form action="next2.jsp" method="post">
        <table>
            <tr>
                <th>Computer Engineering</th><th><input type="radio" name="dept" value="ce"></th>
            </tr>    
            <tr>
                <th>Information Technology</th><th><input type="radio" name="dept" value="it"></th>
            </tr>    
            <tr>
                <th>Civil Engineering</th><th><input type="radio" name="dept" value="civil"></th>
            </tr>    
            <tr>
                <th>Electronics and Communication</th><th><input type="radio" name="dept" value="ec"></th>
            </tr>
            <tr>
                <th>Electrical Engineering</th><th><input type="radio" name="dept" value="electrical"></th>
            </tr>
            <tr>
                <th>Mechanical Engineering</th><th><input type="radio" name="dept" value="mech"></th>
            </tr>
            <tr>
                <th></th><th><input type="submit" value="submit"></th>
            </tr>
              
        
        </form>
        <% /*
        }
        else
        {
            session.setAttribute("name","1");
            RequestDispatcher rd=request.getRequestDispatcher("/user_login.jsp");
            rd.include(request, response);
        }
        }
        catch(Exception e)
        {
            out.println("Please Login");
        }*/
        %>
        
        </table>
    </body>
</html>
