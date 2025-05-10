/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Client;

/**
 *
 * @author Student
 */
@Stateless
public class ClientFacade extends AbstractFacade<Client> implements ClientFacadeLocal {

    @PersistenceContext(unitName = "MashonisaEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ClientFacade() {
        super(Client.class);
    }

    @Override
    public List<Client> viewApplicants() {
        Query query = em.createQuery("SELECT c FROM Client c JOIN loan_application la ON c.id = la.client_id WHERE la.status IN ('Pending', 'approved')");
        List<Client> list = query.getResultList();

        return list;
    }

}
