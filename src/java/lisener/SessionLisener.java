/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lisener;

import dataBaseOperations.dao.ShoppingCartHome;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import tables.Products;
import tables.ShoppingCart;
import tables.Users;
import utility.ShoppingCartSession;

/**
 *
 * @author abdotalaat
 */
public class SessionLisener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        Users users = (Users) session.getAttribute("user");
        if (users.getUserType().equals("client")) {
            ShoppingCartSession cart = (ShoppingCartSession) session.getAttribute("cart");
            System.out.println("abdooooo" + users.getFname());

            List<Products> productses = cart.getProductses();
            ShoppingCartHome shoppingCartHome = new ShoppingCartHome();
            for (Products products : productses) {

                ShoppingCart shoppingCart = new ShoppingCart();
                shoppingCart.setIsPay(0);
                shoppingCart.setProductName(products.getName());
                shoppingCart.setProductId(products.getIdProducts());
                shoppingCart.setUserId(users.getIdusers());
                shoppingCartHome.addOrUpdateShoppingCartHome(shoppingCart);

            }



        }
    }
}
