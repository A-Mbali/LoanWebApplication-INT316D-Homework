<%-- 
    Document   : register
    Created on : 17 May 2023, 10:38:08 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <style>
            body {
                background: url("register.jpg") no-repeat center center fixed;
                background-size: cover;
            }
            table {
                margin: auto;
                width: 50%;
                background-color: rgba(255, 255, 255, 0.8);
                padding: 20px;
                border-radius: 10px;
            }
            td {
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Register Page</h1>
        
        <p>Please fill in the form to register:</p>
        
        <form action="registerServlet.do" method="POST">
           <table>
               <tr>
                   <td>ID number:</td>
                   <td><input type="number" name="id"></td>
               </tr>
               
               <tr>
                   <td>Name:</td>
                   <td><input type="text" name="name"></td>
               </tr>
               
               <tr>
                   <td>Surname:</td>
                   <td><input type="text" name="surname"></td>
               </tr>
               
               <tr>
                   <td>Username:</td>
                   <td><input type="text" name="username"></td>
               </tr>
               
               <tr>
                   <td>Password:</td>
                   <td><input type="password" name="password"></td>
                   
               </tr>
               
               <tr>
                   <td>Gender:</td>
             
                   <td>
                       <select name="gender">
                           <option>Male</option>
                           <option>Female</option>
                           <option>Other</option>
                       </select>
                   </td>
               </tr>
               
               <tr>
                   <td>Age:</td>
                   <td><input type="number" name="age" min="18"></td>
               </tr>
               
               <tr>
                   <td>Address:</td>
                   <td><input type="text" name="address"></td>
               </tr>
               
               <tr>
                   <td>Cell number:</td>
                   <td><input type="number" name="cellNo"></td>
               </tr>
               
               <tr>
                   <td>Source of Income:</td>
                   <td><input type="text" name="occupation"></td>
               </tr>
               
               <tr>
                   <td colspan="2" style="text-align: center;">
                       <input type="submit" value="REGISTER">
                   </td>
               </tr>
           </table>
        </form>
    </body>
</html>
    </body>
</html>