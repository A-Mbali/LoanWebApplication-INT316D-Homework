<%@page import="java.text.DecimalFormat"%>
<%@page import="za.ac.tut.entities.Client"%>
<%
    Client client1 = (Client) session.getAttribute("client");
    DecimalFormat df = new DecimalFormat("0.00");
    
    Double loanAmt1 = client1.getPay_info().getLoanAmt();
    String loanAmt = df.format(loanAmt1);
    Integer num = client1.getPay_info().getNumPay();
    
    double monthlyPay1 = loanAmt1 / num;
    String monthlyPay = df.format(monthlyPay1);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
    </head>
    <body>
        <h1>Payment Page</h1>
        <p>Hi <%=client1.getName()%>, You're owing R<%=loanAmt%> which can be completed in <b><%=num%></b> payment(s)</p>
        <form action="PayServlet.do" method="POST">
            <div class="form-field">
                <input type="hidden" id="amt" name="monthlyPay" value="<%=monthlyPay%>" readonly>
                <input type="submit" value="Pay R<%=monthlyPay%>">
            </div>
        </form>
        <!-- Include the Yoco SDK in your web page -->
        <script src="https://js.yoco.com/sdk/v1/yoco-sdk-web.js"></script>

        <script>
            var yoco = new window.YocoSDK({
                publicKey: 'pk_test_38cef2e179qN7Lo0d864'
            });
            var checkoutButton = document.querySelector('#checkout-button');
            checkoutButton.addEventListener('click', function (event) {
                event.preventDefault(); // Prevent the form from being submitted
                yoco.showPopup({
                    amountInCents: document.getElementById('depAmt').value * 100,
                    currency: 'ZAR',
                    name: 'Your Store or Product',
                    description: 'Awesome description',
                    callback: function (result) {
                        // This function returns a token that your server can use to capture a payment
                        if (result.error) {
                            const errorMessage = result.error.message;
                            alert("error occured: " + errorMessage);
                        } else {
                            alert("card successfully tokenised: " + result.id);
                            // If payment is successful, submit the form
                            document.querySelector('form').submit();
                        }
                    }
                }
            });
        </script>
    </body>	
</html>
