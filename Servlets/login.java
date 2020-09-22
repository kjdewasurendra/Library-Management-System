/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import static Servlets.member_add.getMd5;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ukdmp Kasun
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     public static String getMd5(String input) 
    { 
        try { 
  
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }  
  
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        } 
    } 
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
             Connection con=null;
              PreparedStatement pst=null;
              ResultSet rs=null;
              
              
           try{
           
             Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
           
            String email=request.getParameter("email");
            String pas=request.getParameter("pass");
            String password = (getMd5(pas));
            
             String sql="SELECT * FROM users WHERE email='"+email+"'";
         
               pst=con.prepareStatement(sql);
                rs = pst.executeQuery();
                
                 while(rs.next()){
                    
                
                if(rs.getString(5).equals(password)){
                    
                    if("password".equals(password)){
                    
                    Cookie c1=new Cookie("email",email);
                    Cookie c2=new Cookie("pass",password);
                    
                    
                    
                    response.addCookie(c1);
                    response.addCookie(c2);
                    }
                    
                     HttpSession session1=request.getSession(true);  
                     session1.setAttribute("id",rs.getString(1));  
                     
                     
                     HttpSession session2=request.getSession(true);  
                     session2.setAttribute("type",rs.getString(4));  
                     
                    HttpSession session3=request.getSession(true);  
                     session3.setAttribute("name",rs.getString(2)); 
                      HttpSession session4=request.getSession(true);  
                     session4.setAttribute("password",rs.getString(5)); 
                    String type = rs.getString(4);
                    
                    if("admin".equals(type)){
                      response.sendRedirect("Admin/index.jsp");
                       
                                }
                    else if("user".equals(type))
                    {
                         response.sendRedirect("index.jsp");
                    }
                   
                }
                 
           
                 else   {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Your Password or Email were wrong!! Recheck And try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>");
                     
               
                
                
                 }
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Auth Failed try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>");
                 }
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Auth Failed try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>"); 
           }
           catch(Exception e){
               out.println(e);
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Auth Failed try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>");
           }
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
