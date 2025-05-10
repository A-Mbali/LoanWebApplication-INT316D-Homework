<%@page import="za.ac.tut.entities.Client"%>
<%
    Client client1 = (Client) session.getAttribute("client");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Menu Page</title>
        <style>
            body {
                background-image: url("client_menu.jpg");
                background-size: cover;
            }
           
          h1 {
            font-size: 80px; /* Set the font size for h1 */
        }
        
        p {
            font-size: 30px; /* Set the font size for paragraph */
        }
        
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
            ul {
                list-style-type: none;
                padding-left: 0;
            }
            li {
                margin-bottom: 10px;
            }
            a {
                color: blue;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <h1>Menu</h1>
        <p>
            Please select one of the following menu options to begin
        </p>     
        <%
            if (client1.getApplication().getStatus().equalsIgnoreCase("None")) {
        %>
        <ul>
            <li>Click <a href="takeLoan.jsp">here</a> to take a loan</li>
        </ul>
        <%} else if (client1.getApplication().getStatus().equalsIgnoreCase("PENDING")) {%>
        <ul>
            <li>Click <a href="viewStatus.jsp">here</a> to view your loan status</li>
        </ul>
        <%}else if (client1.getApplication().getStatus().equalsIgnoreCase("Rejected")) {%>
        <ul>
            <li>Click <a href="viewStatus.jsp">here</a> to view your loan status</li>
            <li>Click <a href="takeLoan.jsp">here</a> to take a loan</li>
        </ul>
        <%}else {%>
        <ul>
            <li>Click <a href="viewStatus.jsp">here</a> to view your loan status</li>
            <li>Click <a href="takeLoan.jsp">here</a> to take a loan</li>
            <li>Click <a href="payLoan.jsp">here</a> to pay your loan</li>
        </ul>
        <%}%>

    </body>
</html>