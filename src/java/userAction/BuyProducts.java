/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package userAction;

import dataBaseOperations.dao.ProductsHome;
import dataBaseOperations.dao.ShoppingCartHome;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tables.Products;
import tables.ShoppingCart;
import tables.Users;
import utility.ShoppingCartSession;

/**
 *
 * @author abdotalaat
 */
public class BuyProducts extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            Users users = (Users) session.getAttribute("user");
            ShoppingCartSession cart = (ShoppingCartSession) session.getAttribute("cart");
            System.out.println("abdooooo" + users.getFname());
            
            List<Products> productses = cart.getProductses();
            ShoppingCartHome shoppingCartHome = new ShoppingCartHome();
            shoppingCartHome.deleteLatestshShoppingCartsList(users.getIdusers());
            int totalPrice = 0;
            for (Products products : productses) {
                totalPrice = totalPrice + products.getPrice();
                
                
            }
            
            
            
            if (users.getCredit() >= totalPrice) {
                users.setCredit(users.getCredit() - totalPrice);
                ProductsHome productsHome = new ProductsHome();
                int finalProductID=0;
               boolean error=false;
                
                
                
                
                
                for (Products products : productses) {
                    Products products1 = productsHome.getProducts(products.getIdProducts());
                    if(products1!= null &&products1.getQuantity() >0)
                    {
                     finalProductID = finalProductID+1;
                    products.setQuantity(products.getQuantity() - 1);
                    productsHome.addOrUpdateProduct(products, products.getCategories().getIdCategories());
                  
                    
                    ShoppingCart shoppingCart = new ShoppingCart();
                    shoppingCart.setIsPay(1);
                    shoppingCart.setProductName(products.getName());
                    shoppingCart.setProductId(products.getIdProducts());
                    shoppingCart.setUserId(users.getIdusers());
                    shoppingCartHome.addOrUpdateShoppingCartHome(shoppingCart);
                    }
                    else
                    {
                        error = true;
                        break;
                    }
                        
                   
                   
                }
                if(error)
                {
                    
                    int restore = 0;
                    for (Products products : productses) {
                        if(finalProductID != restore)
                        {
                           // Products products1 = productsHome.getProducts(products.getIdProducts());
                        products.setQuantity(products.getQuantity() + 1);
                    productsHome.addOrUpdateProduct(products, products.getCategories().getIdCategories());
                    restore ++;
                        }
                        else
                        {
                            break;
                        }
                        
                    }
                    response.sendRedirect("user/Balance.jsp?error=2");
                    
                }
                else
                {
                productses.clear();
                response.sendRedirect("user/Balance.jsp");
                }
            } else {
                response.sendRedirect("user/Balance.jsp?error=1");
            }
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
