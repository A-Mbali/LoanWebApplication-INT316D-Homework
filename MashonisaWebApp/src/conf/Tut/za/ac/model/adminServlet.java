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
import za.ac.tut.bl.AdminFacadeLocal;
import za.ac.tut.entities.Admin;
import za.ac.tut.entities.Client;

/**
 *
 * @author Student
 */
public class adminServlet extends HttpServlet {

    @EJB
    private AdminFacadeLocal a;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Long id = Long.parseLong(request.getParameter("id"));
        
        //
       Admin admin = a.find(id);
       
        RequestDispatcher disp = request.getRequestDispatcher("adminMenu.jsp");
        disp.forward(request, response);
    }

    
}
