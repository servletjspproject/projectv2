/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package customeTagHandler;

import dataBaseOperations.dao.UsersHome;
import java.util.List;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import tables.Users;

/**
 *
 * @author abdotalaat
 */
public class ShowClients extends SimpleTagSupport {

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
           
            UsersHome usersHome = new UsersHome();
            List<Users> userses = usersHome.getUsers();
            
            
            
            String  src="";
            for (Users users : userses) {
                
                if(users.getIsActive().equals("1"))
                {
                    src="active";
                }
                else
                {
                    src= "deactive";
                }
                
                
                 out.println("\n" +
"                                  <tr>\n" +
"                                    <td>"+users.getFname()+"</td>\n" +
"                                    <td>"+users.getMobile()+"</td>\n" +
"                                    <td>"+users.getEmail()+"</td><td><img class=\"imgd\" src=\"../images/delete.png\" alt=\"Delete\" width=\"32\" onclick=\"deleteUser("+users.getIdusers()+")\"  height=\"32\"></td>\n" +
"                                    <td id=1><img class=\"imgd\" src=\"../images/"+src+".png\"  alt=\"Active\" style=\"cursor: pointer\" width=\"32\" height=\"32\"  onclick=\"activeDeactiveUser("+users.getIdusers()+",this)\"></td>\n" +
"                                    <td>"+users.getCredit()+"</td>\n" +
"                                    <td><img class=\"imgd\" src=\"../images/history.png\" alt=\"History\" width=\"32\" height=\"32\"></td>\n" +
"                                    </tr>");
                
                
                
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
            throw new JspException("Error in ShowClients tag", ex);
        }
    }
}
