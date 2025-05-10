<%
    String name = (String)request.getAttribute("name");
    String surname = (String)request.getAttribute("surname");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Outcome Page</title>
    </head>
    <body>
        <h1>Successful Registration</h1>
        
        <p>The client account for <b>(<%=name%>, <%=surname%>)</b> has been successfully registered<br> 
            Please click <a href="menu.jsp">here</a> to go to the business menu page.</p>
    </body>
</html>
