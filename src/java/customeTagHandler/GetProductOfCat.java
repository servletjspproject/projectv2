/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package customeTagHandler;

import dataBaseOperations.dao.CategoryHome;
import dataBaseOperations.dao.ProductsHome;
import java.util.List;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Categories;
import tables.Products;

/**
 *
 * @author abdotalaat
 */
public class GetProductOfCat extends SimpleTagSupport {

    private int catID;

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



            ProductsHome productsHome = new ProductsHome();
            List<Products> productses = productsHome.getProductsOFGategory(catID);

            if (productses.size() > 0) {
                
                
                out.println("<div class=\"grids_of_3\">");
                int i = 0;
                for (i = 0; i < productses.size(); i++) {
                    Products p = productses.get(i);
                    out.println("<div class=\"grid1_of_3\">\n"
                            + "			<a href=\"../details.jsp\">\n"
                            + "				<img src=\"../"+p.getImg()+"\" alt=\"\">\n"
                            + "				<h3>"+p.getName()+"</h3>\n"
                            + "				<span class=\"price\">$145,99</span>\n"
                            + "			</a>\n"
                            + "		</div>");

                    if ((i + 1) % 3 == 0 && i != 0) {
                        out.println("</div>\n"
                                + "	\n"
                                + "		<div class=\"clear\"></div>");

                        out.println("<div class=\"grids_of_3\">");


                    }


                }
                if ((i) % 3 != 0) {
                    out.println("</div>\n"
                            + "	\n"
                            + "		<div class=\"clear\"></div>");
                }





            } else {
                
                
                out.println("no products for this category");
                
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
            throw new JspException("Error in GetProductOfCat tag", ex);
        }
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }
}
