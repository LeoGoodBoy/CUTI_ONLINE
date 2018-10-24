/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.GeneralController;
import controller.InterfaceController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.JenisCuti;
import tools.HibernateUtil;

/**
 *
 * @author chochong
 */
@WebServlet(name = "saveOrUpdateJenisCutiServlet", urlPatterns = {"/saveOrUpdateJenisCutiServlet"})
public class saveOrUpdateJenisCutiServlet extends HttpServlet {

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
        String Id = request.getParameter("id");
        String name = request.getParameter("nama");
        HttpSession hs = request.getSession();
        RequestDispatcher dispatcher = null;
        String pesan = "gagal simpan bro, coba lagi";
        try (PrintWriter out = response.getWriter()) {
            try {
                InterfaceController<JenisCuti> ic = new GeneralController<JenisCuti>(HibernateUtil.getSessionFactory(), JenisCuti.class);
                JenisCuti cuti = new JenisCuti(Id, name, "a", 0);
                if (ic.saveOrUpdate(cuti)) {
                    pesan = "berhasil simpan bro";
                }
            } catch (Exception e) {

            }
            hs.setAttribute("messege", pesan);
            System.out.println("idnya "+Id);
            System.out.println("namanya "+name);
            dispatcher = request.getRequestDispatcher("adminhome.jsp?kar1=datajeniscuti");
            dispatcher.forward(request, response);
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
