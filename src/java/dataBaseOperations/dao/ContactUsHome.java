/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBaseOperations.dao;

import dataBaseOperations.HibernateUtil;
import org.hibernate.Session;
import tables.Categories;
import tables.ContactUs;
import userAction.Contact;

/**
 *
 * @author abdotalaat
 */
public class ContactUsHome {
    
    
     Session session;

    public ContactUsHome() {
        session = HibernateUtil.getSessionFactory().openSession();

    }
    
    
    
    public boolean sendMessageTOAdmin(ContactUs contactUs)
    {
        session.getTransaction().begin();
        session.saveOrUpdate(contactUs);
        session.getTransaction().commit();
        return true;
    }
    
    
    
    
    public static void main(String [] args)
    {
        ContactUs contactUs = new ContactUs();
        
            contactUs.setEmail("sdasd");
            contactUs.setBody("dasdasd");
            contactUs.setPhone("asdasda");
            contactUs.setReadornot(0);
            ContactUsHome contactUsHome = new ContactUsHome();
            contactUsHome.sendMessageTOAdmin(contactUs);
    }
    
    
    
    
}
