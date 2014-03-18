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
import tables.Products;

/**
 *
 * @author abdotalaat
 */
public class ProductsHome {

    Session session;

    public ProductsHome() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();

    }
    
    
    
    public boolean addOrUpdateProduct(Products products)
    {
        session.getTransaction().begin();
        session.saveOrUpdate(products);
        session.getTransaction().commit();
        return true;
    }
    
    

    public List<Products> getLatestProducts(int productsNumber) {
        ArrayList<Products> productses;
        String hqlQuery = "from Products ORDER BY idProducts DESC";
        session.getTransaction().begin();
        Query query = session.createQuery(hqlQuery).setMaxResults(productsNumber);
        productses = (ArrayList<Products>) query.list();
        session.getTransaction().commit();
        return productses;
    }
    

    public static void main(String[] args) {
        ProductsHome productsHome = new ProductsHome();

        System.out.println(productsHome.getLatestProducts(7).size());
    }
}
