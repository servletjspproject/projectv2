/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package customeTagHandler;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Products;
import utility.ShoppingCartSession;

/**
 *
 * @author abdotalaat
 */
public class ShowSHoppingList extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
           
            
            
            
           
            ShoppingCartSession cartSession = (ShoppingCartSession) getJspContext().getAttribute("cart", PageContext.SESSION_SCOPE);
            if(cartSession != null)
            {
            ArrayList<Products> productses = cartSession.getProductses();
            
            
            for (Products products : productses) {
                
                out.println(" <div id='"+products.getIdProducts()+"' class=\"grids_of_3\">\n" +
"		<div class=\"grid1_of_3\">\n" +
"			<a href=\"../details.jsp\">\n" +
"				<img src=\"../images/pic1.jpg\" alt=\"\">\n" +
"				<h3>even &amp; odd</h3>\n" +
"				<span class=\"price\">$145,99</span>\n" +
"			</a>\n" +
"		</div>\n" +
"		<div class=\"read_more\">\n" +
"			<a class=\"btn\" href='../RemoveElementShoppingCart?id="+products.getIdProducts()+"'>Remove</a>\n" +
"		</div>\n" +
"		\n" +
"		<div class=\"clear\"></div><div class=\"read_more\">\n" +
"			<a class=\"btn\" href=\"\">Buy</a>\n" +
"		</div>\n" +
"	</div>");
                        
                
            }
            
            
           
            }
       
            
            

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");

        } catch (java.io.IOException ex) {
            throw new JspException("Error in ShowSHoppingList tag", ex);
        }
    }
}
