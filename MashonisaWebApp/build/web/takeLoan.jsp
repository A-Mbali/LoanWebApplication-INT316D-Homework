<%-- 
    Document   : takeLoan
    Created on : 20 May 2023, 12:09:52 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TakeLoan Page</title>
        <style>
            body {
                background-image: url("take_loan.jpg");
                background-size: cover;
            }
            h1 {
                color: white;
            }
            p {
                color: white;
            }
            table {
                margin: auto;
                width: 50%;
                background-color: rgba(255, 255, 255, 0.8);
                padding: 20px;
                border-radius: 10px;
            }
            caption {
                text-align: left;
                font-weight: bold;
                margin-bottom: 10px;
            }
            td {
                padding: 10px;
            }
            input[type="number"] {
                width: 100%;
            }
            input[type="submit"] {
                width: auto;
            }
        </style>
    </head>
    <body>
        <h1>Take a Loan</h1>
        <p>
            Here we do loans at a low-interest rate of 30% per month<br>
        <form action="TakeLoanServlet.do" method="POST">
            <table>
                <caption>Loan Information</caption>
                <tr>
                    <td>How frequently do you get your income? :</td>
                    <td>
                        <select name="incomeType">
                            <option>Daily</option>
                            <option>Weekly</option>
                            <option>Monthly</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>How much is your income :</td>
                    <td><input type="number" name="incomeAmt"></td>
                </tr>
                <tr>
                    <td>How much are you loaning R:</td>
                    <td><input type="number" name="loanAmnt"></td>
                </tr>
            </table>
            <table>
                <caption>Bank Details</caption>
                <tr>
                    <td>Bank account type :</td>
                    <td>
                        <select name="bankAcc">
                            <option>Savings</option>
                            <option>Cheque</option>
                            <option>Debit</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Account number :</td>
                    <td><input type="number" name="accNo"></td>
                </tr>
                <tr>
                    <td>For how long are you willing to pay the loan :</td>
                    <td>
                        <select name="loanTerm">
                            <option>less than a Month</option>
                            <option>2 Months</option>
                            <option>3 Months</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Take Loan"></td>
                </tr>
            </table>
        </form>
    </p>
</body>
</html>