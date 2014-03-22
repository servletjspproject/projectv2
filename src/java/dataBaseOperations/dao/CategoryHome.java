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

/**
 *
 * @author abdotalaat
 */
public class CategoryHome {
    
    
    
        Session session;

    public CategoryHome() {
        session = HibernateUtil.getSessionFactory().openSession();

    }
    
    
    
    public boolean addOrUpdateCategory(Categories categories)
    {
        session.getTransaction().begin();
        session.saveOrUpdate(categories);
        session.getTransaction().commit();
        return true;
    }
    
    
    
    public Categories getCategory(int id)
    {
       String hqlQuery = "from Categories c where c.idCategories = "+id+" ";
        session.getTransaction().begin();
        Query query = session.createQuery(hqlQuery);
        Categories category = (Categories) query.uniqueResult();
        
        return category;
        
        
    }
    
    
    
    
    public  List<Categories> getCategories()
    {
        
         ArrayList<Categories> categorieses;
        String hqlQuery = "from Categories";
        session.getTransaction().begin();
        Query query = session.createQuery(hqlQuery);
        categorieses = (ArrayList<Categories>) query.list();
        //session.getTransaction().commit();
        return categorieses;
        
    }
    
    
    
    
    public static void main(String [] args)
    {
        CategoryHome categoryHome = new  CategoryHome();
        System.out.println(categoryHome.getCategories().size());
        
        //Categories categories = new Categories("New Comerms", "\\");
        //categoryHome.addOrUpdateCategory(categories);
       System.out.println(categoryHome.getCategory(1).getName());
        
    }
    

    
    
}
