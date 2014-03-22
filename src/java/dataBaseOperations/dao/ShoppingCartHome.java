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
import tables.Categories;
import tables.Products;
import tables.ShoppingCart;

/**
 *
 * @author abdotalaat
 */
public class ShoppingCartHome {
    
    
    
     Session session;

    public ShoppingCartHome() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();

    }

    public boolean addOrUpdateShoppingCartHome(ShoppingCart shoppingCart) {
        session.getTransaction().begin();
        session.saveOrUpdate(shoppingCart);
        session.getTransaction().commit();
        return true;
    }
    
    
    public List<ShoppingCart> getLatestshShoppingCartsList(int userID) {
        ArrayList<ShoppingCart> shoppingCarts;
        String hqlQuery = "from ShoppingCart c where c.userId = "+userID+" and c.isPay = 0";
        session.getTransaction().begin();
        Query query = session.createQuery(hqlQuery);
        shoppingCarts = (ArrayList<ShoppingCart>) query.list();
        return shoppingCarts;
    }
    
    
    
    
    
    
    public static void main(String [] args)
    {
        
//        ShoppingCart shoppingCart = new ShoppingCart();
//        shoppingCart.setIsPay(0);
//        shoppingCart.setProductName("1212");
//        shoppingCart.setProductId(1);
//        shoppingCart.setUserId(1);
        
        ShoppingCartHome cartHome = new ShoppingCartHome();
        //cartHome.addOrUpdateShoppingCartHome(shoppingCart);
        
        System.out.println(cartHome.getLatestshShoppingCartsList(4).size());
        
        
    }
    
    
}
