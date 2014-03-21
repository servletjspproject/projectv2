/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBaseOperations.dao;

import dataBaseOperations.HibernateUtil;
import org.hibernate.Query;
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

    public boolean addOrUpdateProduct(Users user) {
        session.getTransaction().begin();
        session.saveOrUpdate(user);
        session.getTransaction().commit();
        return true;
    }

    public Users getUser(String email, String password) {
        Users user = null;
        session.getTransaction().begin();
        String hqlQuery = "from Users u where u.email='" + email + "' and u.password='" + password + "'";
        Query query = session.createQuery(hqlQuery);
        user = (Users) query.uniqueResult();
        session.getTransaction().commit();
        return user;
    }

    public static void main(String[] args) {
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
        Users  users1 = usersHome.getUser("sds@sdkjs.com", "123");
        System.out.println(users1.getEmail());


    }
}
