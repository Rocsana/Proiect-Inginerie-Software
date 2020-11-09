/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.park.parkinglot2.entity.ejb;

import com.park.parkinglot2.common.UserDetails;
import com.park.parkinglot2.entity.User;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author rocsy
 */
@Stateless
public class UserBean {

    @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;
    @Resource
    private javax.transaction.UserTransaction utx;

    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());

    public void persist(Object object) {
        try {
            utx.begin();
            em.persist(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

    public List<UserDetails> getAllUsers() { 
        LOG.info("getAllUsers"); 
        try { 
            Query query = em.createQuery("SELECT u FROM User u"); 
            List<User> users = (List<User>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) { 
            throw new EJBException(ex); 
        }    
    }
    
    private List<UserDetails> copyUsersToDetails(List<User> users){
        List<UserDetails> detailsList=new ArrayList<>();
        for (User user:users){
        UserDetails userDetails=new UserDetails(user.getId(),
        user.getUsername(),
        user.getEmail(),
        user.getPosition());
        detailsList.add(userDetails);
        }
        return detailsList;
    }
}
