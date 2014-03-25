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
public class editCategory extends SimpleTagSupport {
    

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
            
             CategoryHome categoryHome = new CategoryHome();
            int i=0;
// can't get the ID :(((
            Categories category = categoryHome.getCategory(i);
                  
           
       
          out.println("	    	<div>\n" +
"						    	<span><label>Category Name</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userNameProfile\" value='"+category.getName()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\" class=\"contact-form\">\n" +
"								</span>\n" +
"						    </div>\n" +
"							 <div>\n" +
"						    	<span><label>Category ID</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userEmailProfile\" value='"+category.getIdCategories()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\">\n" +
"								</span>\n" +
"						    </div>\n" 
							 
						 	);
        
            
            
     
            
          

            
            
            


            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in myCategory tag", ex);
        }
    }
    
}
