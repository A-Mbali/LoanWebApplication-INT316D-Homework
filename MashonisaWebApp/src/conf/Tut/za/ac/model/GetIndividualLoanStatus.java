/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entities.Client;

/**
 *
 * @author Student
 */
public class GetIndividualLoanStatus extends HttpServlet {
    
    @EJB
    private ClientFacadeLocal client;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession  session = request.getSession(true);
        
        //get the id of the client
        Long id = Long.parseLong(request.getParameter("clientId"));
        
        //find the client
       Client client1 = client.find(id);
       
       //
       session.setAttribute("client",client1);
        
        
        RequestDispatcher disp = request.getRequestDispatcher("individual_loan_status_Outcome.jsp");
         disp.forward(request, response);
    }
}
