<%-- 
    Document   : viewApplicants
    Created on : 20 May 2023, 1:35:35 PM
    Author     : Student
--%>

<%@page import="za.ac.tut.entities.Client"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application Page</title>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #f2f2f2;
            } 
            
             a {
                color: blue;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <h1>Loan Applicants</h1>
        <p>
            You're now viewing the list of applicants that are approved.
        </p>
        <%
            List<Client> listClient = (List<Client>) request.getAttribute("listClient");

        %>
        <p>
        <table>
            <thead>
                <tr>
                    <th>NAME</th>
                    <th>SURNAME</th>
                    <th>OCCUPATION</th>
                    <th>INCOME AMOUNT</th>
                    <th>LOAN AMOUNT</th>
                    <th>LOAN TERM</th>
                    <th>Status</th>
                </tr>
            </thead>
            <%        for (int i = 0; i < listClient.size(); i++) {
                    Client client1 = listClient.get(i);
                    if (!client1.getApplication().getStatus().equalsIgnoreCase("Approved") ) {
                        continue;
                    }
            %>
            <tr>
                <td><%=client1.getName()%></td>
                <td><%=client1.getSurname()%></td>
                <td><%=client1.getOccupation()%></td>
                <td><%=client1.getApplication().getIncomeAmt()%></td>
                <td><%=client1.getApplication().getLoanAmnt()%></td>
                <td><%=client1.getApplication().getLoanTerm()%></td>
                <td><%=client1.getApplication().getStatus()%></td>
            </tr>
            <%
                }
            %>
        </table>


    </p>
</body>
</html>
