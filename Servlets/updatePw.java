/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ukdmp Kasun
 */
@WebServlet(name = "updatePw", urlPatterns = {"/updatePw"})
public class updatePw extends HttpServlet {

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
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
           
             HttpSession session4=request.getSession(false);  
              String pass=(String)session4.getAttribute("password"); 
            
            
            String uid=request.getParameter("user");
            String crPass=request.getParameter("op");
            String newPass = request.getParameter("np"); 
            String newPass1 = request.getParameter("cp"); 
            String enPass=getMd5(newPass);
             String cPassE=getMd5(crPass);
    
           
             if(cPassE.equals(pass))
            {
                 if(newPass.equals(request.getParameter("cp")))
                
        
                 {
                  String sql="UPDATE users SET password='"+enPass+"' where id='"+uid+"'";
                   pst=con.prepareStatement(sql);
                    pst.execute();
                   out.println("<script type=\"text/javascript\">");
                    out.println("alert('Password Changed!! Login With Your New Password..');");
                    out.println("location='./LogOut';");
                    out.println("</script>");
                   
                 }
                else
                
            {
             out.println("<script type=\"text/javascript\">");
                    out.println("alert('Passwords Didnt Match!!!');");
                    out.println("location='./LogOut';");
                    out.println("</script>");
            }
            }   
         else
         {
             out.println("<script type=\"text/javascript\">");
                    out.println("alert('Old Password is Wrong');");
                    out.println("location='./LogOut';");
                    out.println("</script>");
         }
           }
            
           
           catch (SQLException | ClassNotFoundException ex) {
                 Logger.getLogger(updatePw.class.getName()).log(Level.SEVERE, null, ex);
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
        //processRequest(request, response);
        
        
         
                 
    
        
        
        
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
