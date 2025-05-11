/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entities.Client;
import za.ac.tut.entities.Loan_application;
import za.ac.tut.entities.Payment;

/**
 *
 * @author Student
 */
public class registerServlet extends HttpServlet {

   
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     @EJB
    private ClientFacadeLocal client;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          Long id = Long.parseLong(request.getParameter("id"));
         String name = request.getParameter("name");
         String surname = request.getParameter("surname");
         String username = request.getParameter("username");
         String password = request.getParameter("password");
         String gender = request.getParameter("gender");
         String cellNo = request.getParameter("cellNo");
         String age = request.getParameter("age");
         String occupation = request.getParameter("occupation");
         String address = request.getParameter("address");
         
         Client c = createClient(id, name, surname,username, password,gender, age, cellNo, occupation,address);
         client.create(c);
         
        //pass
        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
         
         RequestDispatcher disp = request.getRequestDispatcher("registerOutcome.jsp");
         disp.forward(request, response);
    }

    private Client createClient(Long id, String name, String surname, String username, String password, String gender, String age, String cellNo, String occupation, String address) {
       Client c = new Client();
       Loan_application application = new Loan_application();
       Payment p = new Payment();
       
       p.setLoanAmt(0.00);
       p.setNumPay(0);
       
       application.setLoanAmnt(0.00);
       application.setStatus("NONE");
       
       c.setId(id);
       c.setName(name);
       c.setSurname(surname);
       c.setUsername(username);
       c.setPassword(password);
       c.setGender(gender);
       c.setAge(age);
       c.setCellNo(cellNo);
       c.setOccupation(occupation);
       c.setAddress(address);
       c.setApplication(application);
       c.setPay_info(p);
       
       
       return c;
    }

}
