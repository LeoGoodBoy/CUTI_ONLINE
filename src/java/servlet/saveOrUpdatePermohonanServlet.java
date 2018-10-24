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
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.JenisCuti;
import model.Karyawan;
import model.Permohonan;
import model.Role;
import tools.HibernateUtil;

/**
 *
 * @author chochong
 */
@WebServlet(name = "saveOrUpdatePermohonanServlet", urlPatterns = {"/saveOrUpdatePermohonanServlet"})
public class saveOrUpdatePermohonanServlet extends HttpServlet {

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
        String pesan = "PERMOHONAN GAGAL DIKIRIM";
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        try (PrintWriter out = response.getWriter()) {
            try {
                String mulaicuti = request.getParameter("mulaicuti");
                String selesaicuti = request.getParameter("selesaicuti");
                String idcuti = request.getParameter("idcuti");
                Date tgl1 = Date.valueOf(mulaicuti);
                Date tgl2 = Date.valueOf(selesaicuti);
                List<Karyawan> yangLogin = (List<Karyawan>) session.getAttribute("DataKaryawanYangLogin");
                String a = yangLogin.get(0).getIdKaryawan();
                String catatan = "Submit";
                String status = "Submit";
                JenisCuti jc = new JenisCuti(idcuti);
                Karyawan k = new Karyawan(a);
                InterfaceController<Permohonan> ic = new GeneralController<Permohonan>(HibernateUtil.getSessionFactory(), Permohonan.class);
                String idpermohonan = ic.getAutoIdPermohonan() + "";
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDateTime now = LocalDateTime.now();
                Date tgl3 = Date.valueOf(dtf.format(now));
                Permohonan p = new Permohonan(idpermohonan, tgl3, tgl1, tgl2, catatan, status, jc, k);
                if (ic.saveOrUpdate(p)) {
                    pesan = "PERMOHONAN BERHASIL DIKIRIM";
                }
            } catch (Exception e) {
                Logger.getLogger(saveOrUpdatePermohonanServlet.class.getName()).log(Level.SEVERE, null, e);
            }
            
            session.setAttribute("messege", pesan);
            dispatcher = request.getRequestDispatcher("adminhome.jsp?kar1=formpermohonan");
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
