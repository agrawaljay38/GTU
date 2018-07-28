<%-- 
    Document   : user_logout
    Created on : 3 Jul, 2018, 11:23:43 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session=request.getSession(false);
            session.invalidate();
        
            RequestDispatcher rd=request.getRequestDispatcher("/user_login.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
