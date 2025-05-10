<%
    Double loanAmnt = (Double) request.getAttribute("loanAmnt");
    String loanTerm = (String) request.getAttribute("loanTerm");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Client</h1>
        <p>You have made a loan application worth R<%=loanAmnt%> to be paid in <%=loanTerm%> time</p>

        <ul>
            <li>Please click <a href="menu.jsp">here</a> to go to the business menu page.</li>
        </ul>
    </body>
</html>
