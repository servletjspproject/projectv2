/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBaseOperations.dao;

import dataBaseOperations.HibernateUtil;
import org.hibernate.Session;
import tables.Products;
import tables.Users;

/**
 *
 * @author abdotalaat
 */
public class UsersHome {
    
    
   Session session;

    public UsersHome() {
        session = HibernateUtil.getSessionFactory().openSession();

    }
    
    
    
    public boolean addOrUpdateProduct(Users user)
    {
        session.getTransaction().begin();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
        return true;
    }
    
    
    public static void main(String [] args)
    {
        Users users = new Users();
        UsersHome usersHome = new UsersHome();
        users.setFname("abdo");
        users.setLname("talaat");
        users.setEmail("sds@sdkjs.com");
        users.setCredit(1212);
        users.setGender("male");
        users.setMobile("123223");
        users.setJob("asdsad");
        users.setPassword("123");
        users.setUserType("client");
        users.setIsActive("1");
        users.setAddress("assaasas");
        
        usersHome.addOrUpdateProduct(users);
        
        
    }
    
    
}
