<%-- 
    Document   : client
    Created on : 17 May 2023, 10:27:53 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Client Page</title>
        <style>
            body {
                background-image: url("index_pic.jpg");
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                padding: 0;
            }
            
            h1, p {
                margin-bottom: 20px;
            }
                      h1 {
            font-size: 80px; /* Set the font size for h1 */
        }
        
        p {
            font-size: 30px; /* Set the font size for paragraph */
            color:white;
        }
        
            form {
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.7);
                border-radius: 10px;
            }
            
            table {
                margin-bottom: 10px;
            }
            
            input[type="text"],
            input[type="password"] {
                padding: 5px;
                width: 200px;
            }
            
            input[type="submit"] {
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <h1>Welcome</h1>
       
        <p>Please enter your details to log in:</p>    
    
        <form action="clientServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID number:</td>
                    <td><input type="text" name="id" required></td>
                </tr>
               
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="LOG IN"></td>
                </tr>
            </table>
        </form>
    </body>
</html>