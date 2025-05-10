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
        </style>
    </head>
    <body>
        <h1>Loan Applicants</h1>
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
                    <th>Action</th>
                </tr>
            </thead>
            <%        for (int i = 0; i < listClient.size(); i++) {
                    Client client1 = listClient.get(i);
                    if (client1.getApplication().getIncomeAmt() == null) {
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
                <td>
                    <form action="GetIndividualLoanStatus.do" method="post">
                        <input type="hidden" name="clientId" value="<%=client1.getId()%>">
                        <button type="submit">Change Status</button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        Click <a href="Admin.jsp"/>here</a> to go the admin menu <br>
        Please click <a href="menu.jsp">here</a> to go to the business menu page.


    </p>
</body>
</html>
