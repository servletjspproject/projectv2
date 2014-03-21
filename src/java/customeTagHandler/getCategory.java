/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package customeTagHandler;

import dataBaseOperations.dao.CategoryHome;
import java.util.List;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Categories;

/**
 *
 * @author abdotalaat
 */
public class getCategory extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            CategoryHome categoryHome = new CategoryHome();
            List<Categories>  categorieses = categoryHome.getCategories();
            
             for (Categories categories : categorieses) {
               out.println("<li><a href=\"user/products.jsp?id="+categories.getIdCategories()+"\">"+categories.getName()+"</a></li>"); 
            }
            
            
            
            
            
            
            
            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");

        } catch (java.io.IOException ex) {
            throw new JspException("Error in getCategory tag", ex);
        }
    }
}
