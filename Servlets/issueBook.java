/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.issueBookBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ukdmp Kasun
 */
@WebServlet(name = "issueBook", urlPatterns = {"/issueBook"})
public class issueBook extends HttpServlet {

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

            String title = request.getParameter("title");
            String mId = request.getParameter("m_id");
            String publisher = request.getParameter("publisher");
            String bid = request.getParameter("b_id");    
            String issuedOn = request.getParameter("issue_on"); 
            String lastDate = request.getParameter("l_date"); 
            String av = request.getParameter("av"); 
            if(av.equals("No"))
            {
                 out.println("<script type=\"text/javascript\">");
                    out.println("alert('This Book Is Currently Not Available!!');");
                    out.println("location='./Admin/index.jsp';");
                    out.println("</script>");
            }
            else{
            issueBookBean b = new issueBookBean();

          
b.setTitle(title);
b.setAuthor(mId);
b.setPublisher(publisher);
b.setbId(bid);
b.setmId(mId);
b.setIssuedOn(issuedOn);
b.setLastDate(lastDate);
             
                if (b.validate()) {

                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Successfully Adderd the Book issue Record');");
                    out.println("</script>");
                    response.sendRedirect("./Admin/index.jsp");

                } else {

                    out.println("Error Found");

                

            }
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
