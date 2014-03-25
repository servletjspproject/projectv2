/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package customeTagHandler;


import dataBaseOperations.dao.CategoryHome;
import dataBaseOperations.dao.ProductsHome;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Categories;
import tables.Products;

/**
 *
 * @author Farida
 */
public class myCategory extends SimpleTagSupport {
    

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
            
            CategoryHome categorytHome = new CategoryHome();
          List<Categories> categories =  categorytHome.getCategories();

            
            
            
            for (int i=0;i<categories.size();i++) {
                
            
          
          out.println("  <tr>\n" +
"                                    <td>"+ categories.get(i).getIdCategories()+"</td>\n" +
"                                    <td>"+categories.get(i).getName()+"</td>\n" +
                                    
                                  
"                                   <td><img class=\"imgd\" src=\"../images/edit.png\" alt=\"Show/Edit\" width=\"32\" height=\"32\" onclick=\"editCategory("+categories.get(i).getIdCategories()+")\"></td>\n" +
"                                    <td><img class=\"imgd\" src=\"../images/delete.png\" alt=\"Delete\" width=\"32\" height=\"32\" onclick=\"deleteCategory("+categories.get(i).getIdCategories()+")\"></td>\n" +
                                  
                                  
                                   
"                                    \n" +
"                                </tr>");
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
            throw new JspException("Error in myProducts tag", ex);
        }
    }
    
}
