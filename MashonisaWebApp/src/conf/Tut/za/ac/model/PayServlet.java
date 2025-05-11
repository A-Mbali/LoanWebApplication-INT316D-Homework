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
import za.ac.tut.entities.Loan_application;
import za.ac.tut.entities.Payment;

/**
 *
 * @author Student
 */
public class PayServlet extends HttpServlet {
    @EJB
    private ClientFacadeLocal client;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        
        //get our client information
        Client client1 = (Client) session.getAttribute("client");
        Long id = client1.getId();
        
        //get info
        Double amt = Double.parseDouble(request.getParameter("monthlyPay"));
        Double loanAmt = client1.getPay_info().getLoanAmt();
        Integer num = client1.getPay_info().getNumPay();
        
        //subtract
        Double bal = loanAmt - amt;
        num--;
        
        Client c = editPay(id,bal,num);
        client.create(c);
        
        request.setAttribute("bal", bal);
        request.setAttribute("num", num);
        
        
        RequestDispatcher disp = request.getRequestDispatcher("pay_outcome.jsp");
        disp.forward(request, response);
    }

    private Client editPay(Long id, Double bal, Integer num) {
        //find client
        Client c = client.find(id);
        Loan_application application = new Loan_application();
        Payment p = new Payment();

        //DELETE CLIENT
        Client d = c;
        c = removeC(id);
        client.remove(c);

        //
        Long id_num = d.getId();
        String name = d.getName();
        String surname = d.getSurname();
        String username = d.getUsername();
        String password = d.getPassword();
        String gender = d.getGender();
        String cellNo = d.getCellNo();
        String age = d.getAge();
        String occupation = d.getOccupation();
        String address = d.getAddress();

        Long accNo = d.getApplication().getAccNo();
        String bankAcc = d.getApplication().getBankAcc();
        Double incomeAmt = d.getApplication().getIncomeAmt();
        String incomeType = d.getApplication().getIncomeType();
        Double loanAmnt = d.getApplication().getLoanAmnt();
        String loanTerm = d.getApplication().getLoanTerm();
        String status = d.getApplication().getStatus();
        
        //
        p.setLoanAmt(bal);
        p.setNumPay(num);

        //set
        application.setAccNo(accNo);
        application.setBankAcc(bankAcc);
        application.setIncomeAmt(incomeAmt);
        application.setIncomeType(incomeType);
        application.setLoanAmnt(loanAmnt);
        application.setLoanTerm(loanTerm);
        application.setStatus(status);

        //set
        d.setId(id_num);
        d.setName(name);
        d.setSurname(surname);
        d.setUsername(username);
        d.setPassword(password);
        d.setGender(gender);
        d.setAge(age);
        d.setCellNo(cellNo);
        d.setOccupation(occupation);
        d.setAddress(address);
        
        //update
        d.setApplication(application);
        d.setPay_info(p);

        return d;
    }
    
    private Client removeC(Long id) {
        Client c = new Client();
        
        c.setId(id);
        
        return c;
    }
}
