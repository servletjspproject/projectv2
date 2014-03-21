/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lisener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import tables.Users;
import utility.ShoppingCart;

/**
 *
 * @author abdotalaat
 */
public class SessionLisener implements HttpSessionListener{

    @Override
    public void sessionCreated(HttpSessionEvent se) {
       
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        Users users = (Users) session.getAttribute("user");
        if(users.getUserType().equals("client"))
        {
            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
            System.out.println("abdooooo"+users.getFname());
            
            
        }
    }
    
}
