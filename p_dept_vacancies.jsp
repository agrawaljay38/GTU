<%-- 
    Document   : principal_login
    Created on : 11 Jun, 2018, 11:43:56 PM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Vacancies</title>
    </head>
    <style>
            table{
               padding-left: 40%;
               
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
            input[type=text]
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
        <jsp:include page="Option.jsp"/>
        <h1>Set Vacancies</h1>
        <form style=""action="principal_logout.jsp">
            <input style="float: right" type="submit" value="Logout"><br><br>
        </form>
        <%
            try{
        session=request.getSession(false);
        String name=(String)session.getAttribute("name");
        if(name.equals("1"))
        {
            session.invalidate();
        }
        if(!session.isNew())
        {
            Connection con=class1.getconnection();
            String dept=request.getParameter("dept");
            String password=request.getParameter("password");
            String code=request.getParameter("code");
            String department="";
            if(dept.equals("it"))
            {
                department=department+"Information Technology";
            }
            else if(dept.equals("ce"))
            {
                department=department+"Computer Engineering";
            }
            else if(dept.equals("civil"))
            {
                department=department+"Civil Engineering";
            }
            else if(dept.equals("ec"))
            {
                department=department+"Electronics and Communication";
            }
            else if(dept.equals("mech"))
            {
                department=department+"Mechanical Engineering";
            }
            else if(dept.equals("electrical"))
            {
                department=department+"Electrical Engineering";
            }
            out.println("\n\n<h3>College Code is "+code+"\nDepartment is "+department+"\n</h3>");
            PreparedStatement ps=con.prepareStatement("select * from "+dept+"_vacancy");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(code))
                {
                    //out.println(rs.getInt(4));
                    %>
                    <form action="set_dates.jsp" method="post">
                        <input type="hidden" name="dept" value="<%=dept%>">
                        <input type="hidden" name="code" value="<%=code%>">
                        <input type="hidden" name="password" value="<%=password%>">
                        <table>
                        <tr>
                        <td>Professsor:</td>
                        <td><input type="text" name="professor" value="<%=rs.getInt(4)%>"></td>
                        </tr>
                        <input type="hidden" name="oldprof" value="<%=rs.getInt(4)%>">
                        <tr>
                        <td>Assistant Professsor:</td>
                        <td><input type="text" name="assiprofessor" value="<%=rs.getInt(5)%>"></td>
                        </tr>
                        <input type="hidden" name="oldassiprof" value="<%=rs.getInt(5)%>">
                        <tr>
                        <td>Associate Professsor:</td>
                        <td><input type="text" name="assoprofessor" value="<%=rs.getInt(6)%>"></td>
                        </tr>
                        <input type="hidden" name="oldassoprof" value="<%=rs.getInt(6)%>">
                        <tr>
                        <td>Lecturer:</td>
                        <td><input type="text" name="lecturer" value="<%=rs.getInt(3)%>"></td>
                        </tr>
                        <input type="hidden" name="oldlect" value="<%=rs.getInt(3)%>">
                        <tr>
                <td></td><td  id="subrow"><input type="submit" value="Next"></td>
            </tr>
                        </table>
                    <%
                        
                }
            }
            %>
                    </form>
                    
        <%
        }
        else
        {
            session.setAttribute("name","1");
            RequestDispatcher rd=request.getRequestDispatcher("/loginpage.jsp");
            rd.include(request, response);
        }   
}
catch(Exception e)
{
out.println("Please Login!!");
}
        %>
        <br><br>
        
    </body>
</html>
