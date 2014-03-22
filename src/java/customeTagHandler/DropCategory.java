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
public class DropCategory extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            
            
            CategoryHome categoryHome = new CategoryHome();
            List<Categories> categorieses = categoryHome.getCategories();
            
            out.println("<section class=\"main\">\n" +
"				<div class=\"wrapper-demo\">\n" +
"					<div id=\"dd\" class=\"wrapper-dropdown-5\" tabindex=\"1\">Products\n" +
"						<ul class=\"dropdown\"> ");
                    
            
            
            
            for (Categories categories : categorieses) {
                
                out.println("<li><a href=\"products.jsp?id="+categories.getIdCategories()+"\"><i class=\"icon-cog\"></i>"+categories.getName()+"</a></li>\n");
                
            }
            
            
            
          
            
            
            out.println("</ul>\n" +
"					</div>\n" +
"				​</div>\n" +
"			</section>");
            
            
          

            
            
            

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");

        } catch (java.io.IOException ex) {
            throw new JspException("Error in DropCategory tag", ex);
        }
    }
}
