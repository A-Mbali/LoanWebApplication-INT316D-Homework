<%-- 
    Document   : menu.
    Created on : 17 May 2023, 10:19:57 AM
    Author     : Student
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
        <style>
            body {
                background-image: url("menu.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                
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
    </head>
    <body>
        <h1>Angel's Business Menu Page</h1>
        <p>
            Please select one of the following menu options to proceed.
        </p>     
        <ul>
            <li>If you're a return client, please click <a href="client.jsp">here</a> to log in</li>
            <li>If you do not have an account, click <a href="register.jsp">here</a> to Register</li>
            <li>Admin, click <a href="Admin.jsp">here</a> to log in</li>
        </ul>
    </body>
</html>