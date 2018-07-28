<%-- 
    Document   : next2
    Created on : Jun 14, 2018, 11:03:57 AM
    Author     : DELL
--%>
<%@page import="pkg1.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vacancies</title>
    </head>
    <body>
        
        <jsp:include page="Option.jsp"/>
        <style>
        h1
        {
            padding: 30px;
            margin: 0;
            text-align: left;
            background-color: #2386CA;
        }
            
            table{
                 
                border-color: black;
                text-align: center; 
                margin-top: 1%;  
                margin-left: 1%;
                border-collapse: collapse; 
                border: solid black ;
            }
            td{
               border: solid black;
               padding: 20px;
               font-size: 20px;
            }
            th{
                border: solid black;
                padding: 30px;
                font-size: 20px;
            }
        </style>
        <%
            try{
            session=request.getSession(false);
            String name=(String)session.getAttribute("name");
            if(name.equals("1"))
            {
                session.invalidate();
            }
            
                try
                {
                if(!session.isNew())
                {
                String dept=request.getParameter("dept");
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
                
                
                Connection con=class1.getconnection();
                PreparedStatement ps=con.prepareStatement("select * from "+dept+"_vacancy,"+dept+"_start,"+dept+"_end where "+dept+"_start.coll_code="+dept+"_end.coll_code and "+dept+"_vacancy.coll_code = "+dept+"_end.coll_code");
                ResultSet rs=ps.executeQuery();    
                
                    String id=session.getId();
        %>
        <h1><%out.println(department);%></h1>
        <a style="float: right" href="/project/user_logout.jsp">Logout</a>
        <table>
            <tr style="background-color: #65AADA">
                <th>College</th>
                <th>Post</th>
                <th>Vacancies</th>
                <th>Start Date</th>
                <th>End Date</th>
            </tr>
        <%
                while(rs.next())
                {       
        %>    
            <tr>
                <th rowspan="4"><%=rs.getString(2)%></th>
                <td>Lecturer</td>
                <td><%=rs.getInt(3)%></td>
        <%
                    if(rs.getInt(3)>0)
                    {
        %>    
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(15)%></td>
        <%
                    }
                    else
                    {
        %>
                <td>-</td>
                <td>-</td>
        <%  
                    }   
        %>
            </tr>
            <tr>
                <td>Professor</td>
                <td><%=rs.getInt(4)%></td>
        <%
                    if(rs.getInt(4)>0)
                    {
        %>    
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(16)%></td>
        <%
                    }
                    else
                    {
        %>
                <td>-</td>
                <td>-</td>
        <%  
                    }
        %>
            </tr>
            <tr>
                <td>Assistant Lecturer</td>
                <td><%=rs.getInt(5)%></td>
        <%
                    if(rs.getInt(5)>0)
                    {   
        %>    
                <td><%=rs.getString(11)%></td>
                <td><%=rs.getString(17)%></td>
        <%
                    }
                    else
                    {
        %>
                <td>-</td>
                <td>-</td>
        <%  
                    }
        %>
            </tr>
            <tr>
                <td>Associate Professor</td>
                <td><%=rs.getInt(6)%></td>
        <%
          
                    if(rs.getInt(6)>0)
                    {
        %>    
                <td><%=rs.getString(12)%></td>
                <td><%=rs.getString(18)%></td>
        <%
                    }
                    else
                    {
        %>
                <td>-</td>
                <td>-</td>
        <%  
                    }
        %>
            </tr>
            <%
                }
            %>
        </table>
        <%
            }
            else
            {
                session.setAttribute("name","1");
                RequestDispatcher rd=request.getRequestDispatcher("/user_login.jsp");
                rd.include(request, response);
            }
        }
        catch(Exception e){
             out.println("You have not selected your Departement<br>");
             out.println("<br><a href='next.jsp'>Click here </a> to choose your Departement!");
        }
      }
      catch(Exception e)
      {
          out.println("<br><a href='/project/user_login.jsp'>Please Login!!</a>");
      }
        %>
        
    </body>
</html>
