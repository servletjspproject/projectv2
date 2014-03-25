/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package customeTagHandler;


import dataBaseOperations.dao.ProductsHome;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Products;

/**
 *
 * @author Farida
 */
public class myProducts extends SimpleTagSupport {
    

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
          
            
             ProductsHome productHome = new ProductsHome();
          List<Products> products = productHome.getAllProducts();
          
  
            
            
            
            for (int i=0;i<products.size();i++) {
                
            
          
          out.println("  <tr><td>"+ products.get(i).getIdProducts()+"</td>\n" +
"                                    <td>"+products.get(i).getName()+"</td>\n" +
"                                    <td>"+products.get(i).getPrice()+"</td>\n" +
"                                    <td>"+ products.get(i).getCategories()+"</td>\n" +
"                                    <td><img class=\"imgd\" src=\"../images/edit.png\" alt=\"Show/Edit\" width=\"32\" height=\"32\" onclick=\"editProduct("+products.get(i).getIdProducts()+")\"></td>\n" +
"                                    <td><img class=\"imgd\" src=\"../images/delete.png\" alt=\"Delete\" width=\"32\" height=\"32\" onclick=\"deleteProduct("+products.get(i).getIdProducts()+")\"></td>\n" +
"                                    <td>"+ products.get(i).getCategories().getIdCategories()+"</td>\n" +
"                                    <td>"+products.get(i).getQuantity()+"</td>\n" +
"                                    <td><img class=\"imgd\" src=\"../images/history.png\" alt=\"History\" width=\"32\" height=\"32\">"+products.get(i).getDescription()+"</td>"
                  + "</tr>");
           }
            
            
            
          
            
//            
//            out.println("   </tbody>\n" +
//"                        </table>\n" +
//"");
            
            
          

            
            
            


            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in myProducts tag", ex);
        }
    }
    
}
