/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package userAction;

import dataBaseOperations.dao.CategoryHome;
import dataBaseOperations.dao.UsersHome;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import tables.Categories;
import tables.Users;

/**
 *
 * @author abdotalaat
 */
public class Register extends HttpServlet {
    
    
    
    String fname;
    String lname;
    String radio;
    String birthday;
    String mail;
    String job;
    String creditBalance;
    String address;
    String pass1;
    String pass11;
    String mobile;

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
        String mobileNumber = "";
        try {
            Users users = new Users();
            UsersHome usersHome = new UsersHome();
            File file;
            int maxFileSize = 5000 * 1024;
            int maxMemSize = 5000 * 1024;
            ServletContext context = getServletContext();
            String contentType = request.getContentType();
            if ((contentType.indexOf("multipart/form-data") >= 0)) {
                DiskFileItemFactory factory = new DiskFileItemFactory();
                factory.setSizeThreshold(maxMemSize);
                ServletFileUpload upload = new ServletFileUpload(factory);
                upload.setSizeMax(maxFileSize);
                try {
                    List fileItems = upload.parseRequest(request);
                    Iterator i = fileItems.iterator();
                    while (i.hasNext()) {
                        FileItem fi = (FileItem) i.next();
                        if (!fi.isFormField()) {
                            String fileName = fi.getName();
                            String imgName = "";
                            if (fileName.lastIndexOf("\\") >= 0) {

                                imgName = fileName.substring(fileName.lastIndexOf("\\"));
                            } else {

                                imgName = fileName.substring(fileName.lastIndexOf("\\") + 1);
                            }
                            String imgExtension = imgName.split("\\.")[1];
                            file = new File("D:\\projectsrc\\user\\"
                                    + mobileNumber + "." + imgExtension);
                            fi.write(file);
                            
                            users.setImage(file.getPath());
                            
                        } else {
                            String filedName = fi.getFieldName();
                            if (filedName.equals("fname")) {
                                fname = fi.getString();
                                users.setFname(fname);
                                
                            }
                            else if(filedName.equals("lname"))
                            {
                                lname = fi.getString();
                                users.setLname(lname);
                            }
                             else if(filedName.equals("radio"))
                            {
                                radio = fi.getString();
                                users.setGender(radio);
                            }
                             else if(filedName.equals("birthday"))
                            {
                                birthday = fi.getString();
                                users.setBirthday(birthday);
                                
                            }
                             else if(filedName.equals("mail"))
                            {
                                mail = fi.getString();
                                users.setEmail(mail);
                            }
                             else if(filedName.equals("job"))
                            {
                                job = fi.getString();
                                users.setJob(job);
                            }
                             else if(filedName.equals("creditBalance"))
                            {
                                creditBalance = fi.getString();
                                users.setCredit(Integer.parseInt(creditBalance));
                            }
                             else if(filedName.equals("address"))
                            {
                                address = fi.getString();
                                users.setAddress(address);
                            }
                             else if(filedName.equals("pass1"))
                            {
                                pass1 = fi.getString();
                                users.setPassword(pass1);
                            }
                             else if(filedName.equals("pass11"))
                            {
                                pass11 = fi.getString();
                                
                            }
                            else if(filedName.equals("mobile"))
                            {
                                mobile = fi.getString();
                                mobileNumber = mobile;
                                users.setMobile(mobile);
                                
                            }




                        }


                    }
                    
                    
                    Users users1 = new Users();
        UsersHome usersHome1 = new UsersHome();
        

        users.setUserType("client");
       users.setIsActive("1");
               usersHome1.addOrUpdateUser(users);
               response.sendRedirect("login.jsp");
                
               

                } catch (Exception ex) {
                    System.out.println(ex);
                }
            } else {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet upload</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<p>No file uploaded</p>");
                out.println("</body>");
                out.println("</html>");
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
