<%-- 
    Document   : princpal_login
    Created on : 12 Jun, 2018, 3:32:38 PM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head><style>
        h1{
            padding: 40px;
            padding-left: 10px;
            margin: 0;
            background-color: #2386CA;
        }
        ul#dept_list{
            
            margin-top: 5%;
            display: block;
            background-color: #3386CA;
            overflow: hidden;
            padding-right: 5%;
            padding-top: 3%;
        }
        a{
            text-decoration: none;
            color: white;
             
        }
        li#x,a{
            text-align: center;
            list-style-type: none;
            
        }
        li#x:hover{
            background-color: #3598DC;
        }
        body{
            background-color: #EFF3F8;
        }
        
        h2{
            text-align: center
          }
        input[type=submit]
            {
                font-size: 20px;
                margin-top: 20px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;
            }
            
    </style>
    <body>
        <%
            String uname,password,ret="";
            int flag=0;
            try{
                ret=ret+request.getParameter("ret");
            }
            catch(Exception e){
                out.println("wergh");
            }
            finally{
            if(ret.equals("true"))
            {
                uname=(String)session.getAttribute("name");
                password=(String)session.getAttribute("password");
            }
            /*else if(ret.equals("false"))
            {
                ;
            }*/
            else
            {
                uname=request.getParameter("uname");
                password=request.getParameter("password");
            }
            }
            Connection con=class1.getconnection();
            PreparedStatement ps0=con.prepareStatement("select * from principal");
            ResultSet rs0=ps0.executeQuery();
            while(rs0.next())
            {
                if(rs0.getString(4).equals(uname)){
                   flag=1;
                if(!(rs0.getString(5).equals(password)))
                {
                    out.println("\n\n<p style='text-align:center'>Wrong Password! Please try again</p>.\n");
                    RequestDispatcher rd=request.getRequestDispatcher("/loginpage.jsp");
                    rd.include(request, response);
                }
                else
                {
                    session=request.getSession();
                    session.setAttribute("name",uname);
                    session.setAttribute("password", password);
        %>
        <jsp:include page="Option.jsp"/>
        <h1>Welcome, <%=uname%></h1>
        <form action="principal_logout.jsp">
            <input style="float: right" type="submit" value="Logout"><br><br>
        </form><br><br>
        <form action="p_changepassword.jsp">
            <input style="float: right" type="submit" value="Change Password"><br><br>
        </form><br>
        
        <h2>Here is your Department List</h2>
        <ul id="dept_list"><%
            PreparedStatement ps=con.prepareStatement("select * from ce_vacancy");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(uname))
                {
        %>
        <li id="x"><a href="p_dept_vacancies.jsp?dept=ce&code=<%=uname%>">Computer Engineering</a></li>
            <br><br>
            <%
                }
            }
        %>
        
        <%          
            ps=con.prepareStatement("select * from it_vacancy");
            rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(uname))
                {
        %>
        <li id="x"><a href="p_dept_vacancies.jsp?dept=it&code=<%=uname%>">Information Technology</a></li>
            <br><br>
            <%
                }
            }
        
        %>
        
        <%          
            ps=con.prepareStatement("select * from mech_vacancy");
            rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(uname))
                {
        %>
        <li id="x"><a href="p_dept_vacancies.jsp?dept=mech&code=<%=uname%>">Mechanical Engineering</a></li>
            <br><br>
            <%
                }
            }
        
        %>
        
        <%          
            ps=con.prepareStatement("select * from ec_vacancy");
            rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(uname))
                {
        %>
        <li id="x"><a href="p_dept_vacancies.jsp?dept=ec&code=<%=uname%>">Electronics & Communication</a></li>
            <br><br>
            <%
                }
            }
        
        %>
        
        <%          
            ps=con.prepareStatement("select * from electrical_vacancy");
            rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(uname))
                {
        %>
        <li id="x"><a href="p_dept_vacancies.jsp?dept=electrical&code=<%=uname%>">Electrical Engineering</a></li>
            <br><br>
            <%
                }
            }
        
        %>
        
        <%          
            ps=con.prepareStatement("select * from civil_vacancy");
            rs=ps.executeQuery();
            while(rs.next())
            {
                if(rs.getString(1).equals(uname))
                {
        %>
        <li id="x"><a href="p_dept_vacancies.jsp?dept=civil&code=<%=uname%>">Civil Engineering</a></li>
            <br><br></div>
            <%
                }}
            }
            }
                }
                if(flag==0)
                {
                    out.println("\n\n<h4 style='margin-left:45%'>Username is invalid!</h4>");
                    //out.println("GO Back");
                    request.getRequestDispatcher("/loginpage.jsp").include(request, response);
                }
        %>
    </body>
</html>
