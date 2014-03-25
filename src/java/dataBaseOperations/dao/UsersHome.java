/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBaseOperations.dao;

import dataBaseOperations.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import tables.Products;
import tables.ShoppingCart;
import tables.Users;

/**
 *
 * @author abdotalaat
 */
public class UsersHome {

    Session session;
    Transaction transaction;

    public UsersHome() {
        session = HibernateUtil.getSessionFactory().openSession();

    }
    
    
      
    public void openSession() {
        session = HibernateUtil.getSessionFactory().openSession();
        transaction = session.getTransaction();
        transaction.begin();
    }

    public void closeSession() {
        transaction.commit();
        session.close();
    }

    public boolean activeAccount(int id)
    {
        
        openSession();
        String hqlquery = "update Users e set e.isActive=1 where e.idusers='"+id+"'";
        Query query = session.createSQLQuery(hqlquery);
        query.executeUpdate();
        closeSession();
        return true;
    }
    
    
    
    public boolean deactiveAccount(int id)
    {
        
        openSession();
        String hqlquery = "update Users e set e.isActive=0 where e.idusers="+id+"";
        Query query = session.createSQLQuery(hqlquery);
        query.executeUpdate();
        closeSession();
        return true;
    }
    
  
    
    
public boolean deleteUser(int id)
    {
        session.getTransaction().begin();
        String hql = "delete from users where idusers="+id+"";
        Query query = session.createSQLQuery(hql);
        //query.setParameter("employee_id", id);   
        int result = query.executeUpdate();
         session.getTransaction().commit();
        System.out.println("Rows affected: " + result);
        return true;
    }    
    
    
    public  List<Users> getUsers()
    {        
         ArrayList<Users> users;
        String hqlQuery = "from Users ";
        session.getTransaction().begin();
        Query query = session.createQuery(hqlQuery);
        users = (ArrayList<Users>) query.list();
        ///session.getTransaction().commit();
        return users;
        
    }

    public boolean addOrUpdateUser(Users user) {
        session.getTransaction().begin();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
        return true;
    }
    
    
    
    public List<ShoppingCart> getUserHistory(int userID) {
        
        ShoppingCartHome shoppingCartHome = new ShoppingCartHome();
        return  shoppingCartHome.getUserHistory(userID);
        
    }
    
    
    

    public Users getUser(String email, String password) {
        Users user = null;
        session.getTransaction().begin();
        String hqlQuery = "from Users u where u.email='" + email + "' and u.password='" + password + "' and isActive= '1'";
        Query query = session.createQuery(hqlQuery);
        user = (Users) query.uniqueResult();
        session.getTransaction().commit();
        return user;
    }

    public static void main(String[] args) {
       

       
      //  Users  users1 = usersHome.getUser("sds@sdkjs.com", "123");
        //System.out.println(users1.getEmail());
        UsersHome usersHome = new UsersHome();
        usersHome.deleteUser(14);


    }
}
