/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBaseOperations;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import tables.Users;

/**
 *
 * @author abdotalaat
 */
public class DataBaseOperations {

    private Session session;
    private Transaction transaction;

    public DataBaseOperations() {
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

    public Users login(String email, String password) {
        Users user = null;
        openSession();
        String hqlquery = "from Users e where e.email='" + email + "' and e.password='" + password + "'";
        Query query = session.createQuery(hqlquery);
        List<Users> list = query.list();
        if (list.size() > 0) {
            user = list.get(0);
        }
        closeSession();
        return user;

    }
    
    public void register(Users user)
    {
        openSession();
        session.save(user);
        closeSession();
    }
    
    public static void main(String[] args)
    {
        //
        DataBaseOperations baseOperations = new DataBaseOperations();
        //baseOperations.register(users);
    }
    
}
