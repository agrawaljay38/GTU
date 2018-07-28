<%-- 
    Document   : update_success
    Created on : 12 Jun, 2018, 11:32:47 PM
    Author     : Vishu_mufc
--%>  
<%@page import="pkg1.*" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <style>
    h1{
                margin: 0;
                padding: 30px;
                
                
            }
            body{
                background-color: #EFF3F8;
            }
            a#qwe{             
                border-radius: 5px;
                font-size: 20px;
                margin-top: 50px;
                padding: 5px;
                border-radius: 15px;
                background-color: #A5FFCC;  
                text-decoration: none;
             }
    </style>  
    <body>
        <jsp:include page="Option.jsp"/>
        <%
            Connection con=class1.getconnection();
            String professor=request.getParameter("prof");
            String assiprofessor=request.getParameter("assiprof");
            String assoprofessor=request.getParameter("assoprof");
            String lecturer=request.getParameter("lect");
            String dept=request.getParameter("dept");
            String code=request.getParameter("code");
            String password=request.getParameter("password");
            int prof=Integer.parseInt(professor);
            int assiprof=Integer.parseInt(assiprofessor);
            int assoprof=Integer.parseInt(assoprofessor);
            int lect=Integer.parseInt(lecturer);
            if(prof>0)
            {
                
                Date prof_start=Date.valueOf(request.getParameter("prof_start"));
                Date prof_end=Date.valueOf(request.getParameter("prof_end"));
                //out.println(prof_start);
                //out.println(prof_end);
                PreparedStatement ps=con.prepareStatement("update "+dept+"_vacancy set professor="+prof+" where coll_code='"+code+"'");
                ps.executeUpdate();
                //String prof_s=String.valueOf(prof_start);
                //String prof_e=String.valueOf(prof_end);
                //out.println(prof_s);
                //out.println(prof_e);
                ps=con.prepareStatement("update "+dept+"_start set professor='"+prof_start+"' where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_end set professor='"+prof_end+"' where coll_code='"+code+"'");
                ps.executeUpdate();
            }
            if(assiprof>0)
            {
                String assiprof_start=request.getParameter("assiprof_start");
                String assiprof_end=request.getParameter("assiprof_end");
                PreparedStatement ps=con.prepareStatement("update "+dept+"_vacancy set assistant_p="+assiprof+" where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_start set assistant_p='"+assiprof_start+"' where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_end set assistant_p='"+assiprof_end+"' where coll_code='"+code+"'");
                ps.executeUpdate();
            }
            if(assoprof>0)
            {
                String assoprof_start=request.getParameter("assoprof_start");
                String assoprof_end=request.getParameter("assoprof_end");
                PreparedStatement ps=con.prepareStatement("update "+dept+"_vacancy set associate_p="+assoprof+" where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_start set associate_p='"+assoprof_start+"' where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_end set associate_p='"+assoprof_end+"' where coll_code='"+code+"'");
                ps.executeUpdate();
            }
            if(lect>0)
            {
                String lect_start=request.getParameter("lect_start");
                String lect_end=request.getParameter("lect_end");
                PreparedStatement ps=con.prepareStatement("update "+dept+"_vacancy set lecturer="+lect+" where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_start set lecturer='"+lect_start+"' where coll_code='"+code+"'");
                ps.executeUpdate();
                ps=con.prepareStatement("update "+dept+"_end set lecturer='"+lect_end+"' where coll_code='"+code+"'");
                ps.executeUpdate();
            }
        %>
        <h1>Update successful!   <img src="tick.png" height="35px" width="35px"></h1><br><br>
        <a id="qwe" href="principal_login.jsp?ret=true">Return to Home Page</a>
        
    </body>
</html>
