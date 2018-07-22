<%-- 
    Document   : next
    Created on : 12 Jun, 2018, 12:44:14 AM
    Author     : Vishu_mufc
--%>
<%@page import="pkg1.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Dates</title>
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
            input[type=date]
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
        <h1>Please enter the start date and end date for vacancies!</h1>
        <%
            try{
            String code=request.getParameter("code");
            String dept=request.getParameter("dept");
            String password=request.getParameter("password");
            Connection con=class1.getconnection();
            PreparedStatement ps=con.prepareStatement("select * from "+dept+"_start where coll_code='"+code+"'");
            ResultSet rs=ps.executeQuery();
            PreparedStatement ps1=con.prepareStatement("select * from "+dept+"_end where coll_code='"+code+"'");
            ResultSet rs1=ps1.executeQuery();
            String professor=request.getParameter("professor");
            //out.println(professor);
            String assiprofessor=request.getParameter("assiprofessor");
            String assoprofessor=request.getParameter("assoprofessor");
            String lecturer=request.getParameter("lecturer");
            String oldprof=request.getParameter("oldprof");
            String oldassiprof=request.getParameter("oldassiprof");
            String oldassoprof=request.getParameter("oldassoprof");
            String oldlect=request.getParameter("oldlect");
            rs.next();
            rs1.next();
            int prof=Integer.parseInt(professor);
            int assiprof=Integer.parseInt(assiprofessor);
            int assoprof=Integer.parseInt(assoprofessor);
            int lect=Integer.parseInt(lecturer);
            int old_prof=Integer.parseInt(oldprof);
            int old_assiprof=Integer.parseInt(oldassiprof);
            int old_assoprof=Integer.parseInt(oldassoprof);
            int old_lect=Integer.parseInt(oldlect);
              session=request.getSession(false);
        String name=(String)session.getAttribute("name");
        if(name.equals("1"))
        {
            session.invalidate();
        }
        if(!session.isNew())
        {
        %>
        
            <form action="update_success.jsp" method="post">
                <table>
                <%    
            if(old_prof>0 && prof>0)
            {
            %>
            
            <tr>
                <td>Start Date(Professor):</td>
                <td><input type="date" name="prof_start" required value="<%=rs.getDate(4)%>"></td>
            </tr>
            <tr>
                <td>End Date(Professor):</td>
                <td><input type="date" name="prof_end" required value="<%=rs1.getDate(4)%>"></td>
            </tr>
            
        <%
            }
            else if(old_prof==0 && prof>0)
            {
                %>
                <tr>
                    <td>Start Date(Professor):</td>
                    <td><input type="date" name="prof_start" required></td>
                </tr>
                <tr>
                    <td>End Date(Professor):</td>
                    <td><input type="date" name="prof_end" required></td>
                </tr>
                    <%
             }
             else if(prof==0)
             {
                %>
                <tr>
                    <td>Start Date(Professor):</td>
                    <td><input type="date" disabled="true" name="prof_start" value="null"></td>
                </tr>
                <tr>
                    <td>End Date(Professor):</td>
                    <td><input type="date" disabled="true" name="prof_end" value="null"></td>
                </tr>
                <%
             }
              else{}
             if(old_assiprof>0 && assiprof>0)
             {
        %>
        <tr>
            <td>Start Date(Assistant Professor):</td>
            <td><input type="date" name="assiprof_start" required value="<%=rs.getDate(5)%>"></td>
        </tr>
        <tr>
            <td>End Date(Assistant Professor):</td>
            <td><input type="date" name="assiprof_end" required value="<%=rs1.getDate(5)%>"></td>
        </tr>
                
        <%
            }
            else if(old_assiprof==0 && assiprof>0)
            {
                %>
                <tr>
                    <td>Start Date(Assistant Professor):</td>
                    <td><input type="date" name="assiprof_start" required></td>
                </tr>
                <tr>
                    <td>End Date(Assistant Professor):</td>
                    <td><input type="date" name="assiprof_end" required></td>
                </tr>
                <%
             }
             else if(assiprof==0)
             {
                %>
                <tr>
                    <td>Start Date(Assistant Professor):</td>
                    <td><input type="date" disabled="true" name="assiprof_start" value="null"></td>
                </tr>
                <tr>
                    <td>End Date(Assistant Professor):</td>
                    <td><input type="date" disabled="true" name="assiprof_end" value="null"></td>
                </tr>
                
                <%
             }
              else{}
            
               if(old_assoprof>0 && assoprof>0)
                {
        %>
        <tr>
            <td>Start Date(Associate Professor):</td>
            <td><input type="date" name="assoprof_start" required value="<%=rs.getDate(6)%>"></td>
        </tr>
        <tr>
            <td>End Date(Associate Professor):</td>
            <td><input type="date" name="assoprof_end" required value="<%=rs1.getDate(6)%>"></td>
        </tr>
        <%
                }
                else if(old_assoprof==0 && assoprof>0)
                {
                    %>
                    <tr>
                        <td>Start Date(Associate Professor):</td>
                        <td><input type="date" name="assoprof_start" required></td>
                    </tr>
                    <tr>
                        <td>End Date(Associate Professor):</td>
                        <td><input type="date" name="assoprof_end" required></td>
                    </tr>
                    <%
                }
                else if(assoprof==0)
             {
                %>
                <tr>
                    <td>Start Date(Associate Professor):</td>
                    <td><input type="date" disabled="true" name="assoprof_start" value="null"></td>
                </tr>
                <tr>
                    <td>End Date(Associate Professor):</td>
                    <td><input type="date" disabled="true" name="assoprof_end" value="null"></td>
                </tr>   
                <%
             }
                else{}
            
                if(old_lect>0 && lect>0)
                {
        %>
        <tr>
            <td>Start Date(Lecturer):</td>
            <td><input type="date" name="lect_start" required value="<%=rs1.getDate(3)%>"></td>
        </tr>
        <tr>
            <td>End Date(Lecturer):</td>
            <td><input type="date" name="lect_end" required value="<%=rs1.getDate(3)%>"></td>
        </tr>
                
        <%
                }
                else if(old_lect==0 && lect>0)
                {
                    %>
                    <tr>
                        <td>Start Date(Lecturer):</td>
                        <td><input type="date" name="lect_start" required></td>
                    </tr>
                    <tr>
                        <td>End Date(Lecturer):</td>
                        <td><input type="date" name="lect_end" required></td>
                    </tr>
                    <%
                }
                else if(lect==0)
             {
                %>
                    <tr>
                        <td>Start Date(Lecturer):</td> 
                        <td><input type="date" disabled="true" name="lect_start" value="null"></td>
                    </tr>
                    <tr>
                        <td>End Date(Lecturer):</td>
                        <td><input type="date" disabled="true" name="lect_end" value="null"></td>
                    </tr>
                
                <%
             }
                else{}
            
        %>
        <input type="hidden" name="lect" value="<%=lect%>">
        <input type="hidden" name="assoprof" value="<%=assoprof%>">
        <input type="hidden" name="assiprof" value="<%=assiprof%>">
        <input type="hidden" name="prof" value="<%=prof%>">
        <input type="hidden" name="dept" value="<%=dept%>">
        <input type="hidden" name="code" value="<%=code%>">
        <input type="hidden" name="password" value="<%=password%>">
        <tr>
                <td></td><td  id="subrow"><input type="submit" value="Next"></td>
            </tr>
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
    out.println("Please Login!!!");
}
        %>
        
        <form style="padding-left: 950px" action="principal_logout.jsp">
            <input type="submit" value="Logout"><br><br>
        </form>
   </body>
</html>
