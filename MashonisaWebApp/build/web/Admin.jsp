<%-- 
    Document   : Admin
    Created on : 17 May 2023, 10:46:37 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    
    <style>
        body {
            background-color: aqua;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            color: white;
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
        
         a {
                color: blue;
                text-decoration: none;
            }
    </style>
    <body>
        
       <h1>Menu</h1>
        <p>
            Please select one of the following menu options to begin
        </p>     
        <ul>
            <li>Click <a href="viewApplicantServlet.do"/>here</a>To view a list of applicants</li>
            <li>Click <a href="ViewOutstandingClientsServlet.do"/>here</a>To view people with outstanding balance</li>
        </ul>
    </body>
</html>
