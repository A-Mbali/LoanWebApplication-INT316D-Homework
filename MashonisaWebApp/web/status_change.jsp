<%
    String name = (String) request.getAttribute("name");
    String surname = (String) request.getAttribute("surname");
    String status = (String) request.getAttribute("status");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Status Change</h1>
        <p>
            The loan application status of <b>(<%=name%>, <%=surname%>)</b> was change to <b><%=status%></b> <br>
            Click <a href="Admin.jsp"/>here</a> to go the admin menu <br>
        Please click <a href="menu.jsp">here</a> to go to the business menu page.
    </p>
</body>
</html>
