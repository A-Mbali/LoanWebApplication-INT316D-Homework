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
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entities.Client;

/**
 *
 * @author Student
 */
public class clientServlet extends HttpServlet {

    @EJB
    private ClientFacadeLocal client;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Long id = Long.parseLong(request.getParameter("id"));

        //
        Client client1 = client.find(id);

        //
        session.setAttribute("client", client1);

        RequestDispatcher disp = request.getRequestDispatcher("clientLogIn.jsp");
        disp.forward(request, response);

    }

}
