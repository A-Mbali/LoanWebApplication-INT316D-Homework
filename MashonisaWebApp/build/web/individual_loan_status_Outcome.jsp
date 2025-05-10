<%@page import="java.text.DecimalFormat"%>
<%@page import="za.ac.tut.entities.Client"%>
<%
    Client client1 = (Client) session.getAttribute("client");

    //calc loan information
    Double amount = client1.getApplication().getLoanAmnt();
    Double interest = 0.30;
    Double monthlyPay1 = 0.00;
    Double amt = 0.00;
    Integer numOfPayments = 1;
    //get numPayments
    if (client1.getApplication().getLoanTerm().equalsIgnoreCase("2 Months")) {
        numOfPayments = 2;
        interest = 0.35;
    } else if (client1.getApplication().getLoanTerm().equalsIgnoreCase("3 Months")) {
        numOfPayments = 3;
        interest = 0.40;
    }
    //cal loan total
    amt = amount + (amount * interest);
    monthlyPay1 = amt / numOfPayments;
    DecimalFormat df = new DecimalFormat("0.00");
    String monthlyPay = df.format(monthlyPay1);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>Client Loan Application Details</h1>
        <p>See the full details for the client</p>
        <form action="ChangeStatusServlet.do" method="POST">
            <table>
                <caption>Client Information</caption>
                <tr>
                    <td>Name</td>
                    <td><input type="text" value="<%=client1.getName()%>" readonly></td>
                    <td>Surname</td>
                    <td><input type="text" value="<%=client1.getSurname()%>" readonly></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" value="<%=client1.getGender()%>" readonly></td>
                    <td>Age</td>
                    <td><input type="text" value="<%=client1.getAge()%>" readonly></td>
                </tr>
                <tr>
                    <td>Cell No</td>
                    <td><input type="text" value="<%=client1.getCellNo()%>" readonly></td>
                    <td>Source of Income</td>
                    <td><input type="text" value="<%=client1.getOccupation()%>" readonly></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" value="<%=client1.getAddress()%>" readonly></td>
                </tr>
            </table>

            <br>

            <table>
                <caption>Client Requested Loan Application</caption>
                <tr>
                    <td>Pay Frequency</td>
                    <td><input type="text" value="<%=client1.getApplication().getIncomeType()%>" readonly></td>
                    <td>Income Amount</td>
                    <td><input type="text" value="<%=client1.getApplication().getIncomeAmt()%>" readonly></td>
                </tr>
                <tr>
                    <td>Amount Requested</td>
                    <td><input type="text" value="<%=client1.getApplication().getLoanAmnt()%>" readonly></td>
                    <td>Loan Term</td>
                    <td><input type="text" value="<%=client1.getApplication().getLoanTerm()%>" readonly></td>
                </tr>     
            </table>
            <br><br>
            <table>
                <caption>Potential Loan Information</caption>
                <tr>
                    <td>Total Loan Amount</td>
                    <td><input type="text" value="<%=amt%>" readonly></td>
                    <td>Interest Rate</td>
                    <td><input type="text" value="<%=interest * 100%>" readonly></td>
                </tr>
                <tr>
                    <td>Amount To Pay(*Frequently)</td>
                    <td><input type="text" value="<%=monthlyPay%>" readonly></td>
                    <td>Number of Payments</td>
                    <td><input type="text" value="<%=numOfPayments%>" readonly></td>
                </tr> 
            </table>

            <br>
            <table>
                <caption>Respond to Client's Application</caption>
                <tr>
                    <td></td>
                    <td>Your response</td>
                    <td>
                        <select name="response">
                            <option>No Response</option>
                            <option>Accept</option>
                            <option>Reject</option>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                <input type="hidden" name="clientId" value="<%=client1.getId()%>">
                <input type="hidden" name="numPay" value="<%=numOfPayments%>">
                <input type="hidden" name="loan" value="<%=amt%>">
                <td><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
