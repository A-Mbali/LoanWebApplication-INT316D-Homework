<%@page import="za.ac.tut.entities.Client"%>
<%
    Client client1 = (Client) session.getAttribute("client");
    Double amt = (Double)request.getAttribute("bal");
    Integer num = (Integer)request.getAttribute("num");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Payment Outcome Page</h1>
        <%
            if(num  <1 ){
        %>
        <p>Hi <%=client1.getName()%>, You're have finished paying off your loan.</p>
        <%
            }else{
        %>
        <p>Hi <%=client1.getName()%>, You're now owing R<%=amt%> which can be completed in <b><%=num%></b> payment(s)</p>
        <%
            }
        %>
        <ul>
            <li>Please click <a href="menu.jsp">here</a> to go to the business menu page.</li>
        </ul>
    </body>
</html>
