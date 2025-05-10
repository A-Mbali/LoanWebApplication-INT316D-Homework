/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Loan_application;

/**
 *
 * @author Student
 */
@Local
public interface Loan_applicationFacadeLocal {

    void create(Loan_application loan_application);

    void edit(Loan_application loan_application);

    void remove(Loan_application loan_application);

    Loan_application find(Object id);

    List<Loan_application> findAll();

    List<Loan_application> findRange(int[] range);

    int count();
    
}
