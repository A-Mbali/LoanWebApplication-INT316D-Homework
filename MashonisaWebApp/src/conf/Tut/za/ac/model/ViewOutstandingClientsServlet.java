/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entities.Client;

/**
 *
 * @author Student
 */
public class ViewOutstandingClientsServlet extends HttpServlet {

    @EJB
    private ClientFacadeLocal client;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //
        List<Client> listClient = client.findAll();
        request.setAttribute("listClient", listClient);

        RequestDispatcher disp = request.getRequestDispatcher("view_Outstanding_clients.jsp");
        disp.forward(request, response);
    }
}
