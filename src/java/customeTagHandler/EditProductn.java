/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package customeTagHandler;

import dataBaseOperations.dao.ProductsHome;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Products;

/**
 *
 * @author abdotalaat
 */
public class EditProductn extends SimpleTagSupport {
    private int id;

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
            
           // int ii = getJspBody().getJspContext().getAttributesScope("id");
             
             
             
             //System.out.println("faridda"+ii);
             
             //int i=2;
// can't get the ID :(((
            Products products = productHome.getProducts(id);
                  
           
                
            
          
          out.println("	    	<div>\n" +
"						    	<span><label>Product Name</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userNameProfile\" value='"+products.getName()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\" class=\"contact-form\">\n" +
"								</span>\n" +
"						    </div>\n" +
"							 <div>\n" +
"						    	<span><label>Category Name</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userEmailProfile\" value='"+products.getCategories().getName()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\">\n" +
"								</span>\n" +
"						    </div>\n" +
"							 <div>\n" +
"						    	<span><label>Product Quantity</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userEmailProfile\" value='"+products.getQuantity()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\">\n" +
"								</span>\n" +
"						    </div>\n" +
"							\n" +
"							 <div>\n" +
"						    	<span><label>Product Price</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userEmailProfile\" value='"+products.getPrice()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\">\n" +
"								</span>\n" +
"						    </div>\n" +
"							 <div>\n" +
"						    	<span><label>Product Description</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userEmailProfile\" value='"+products.getDescription()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\">\n" +
"								</span>\n" +
"						    </div>\n" +
"						\n" +
"						    <div>\n" +
"						    	<span><label>Availability</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userEmailProfile\" value='"+products.getQuantity()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									<input type=\"button\" value=\"Edit\">\n" +
"								</span>\n" +
"						    </div>\n" +
"								<div>\n" +
"						    	<span><label>Product ID</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userNameProfile\" value='"+products.getIdProducts()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									\n" +
"								</span>\n" +
"						    </div>\n" +
"								<div>\n" +
"						    	<span><label>Category ID</label></span>\n" +
"						    	<span>\n" +
"									<input name=\"userNameProfile\" value='"+products.getCategories().getIdCategories()+"' type=\"text\" class=\"textbox\" readOnly=\"true\">\n" +
"									\n" +
"								</span>\n" +
"						    </div>\n" +
"						 	");
        
            
            
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");

        } catch (java.io.IOException ex) {
            throw new JspException("Error in EditProductn tag", ex);
        }
    }

    public void setId(int id) {
        this.id = id;
    }
}
