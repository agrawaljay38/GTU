<%-- 
    Document   : principal_logout
    Created on : 4 Jul, 2018, 3:13:03 AM
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
        
            RequestDispatcher rd=request.getRequestDispatcher("/loginpage.jsp");
            rd.forward(request, response);
      %>
    </body>
</html>
