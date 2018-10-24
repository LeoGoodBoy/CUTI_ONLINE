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
import java.util.Date;
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
import tools.HibernateUtil;

/**
 *
 * @author chochong
 */
@WebServlet(name = "UpdateNotifikasi", urlPatterns = {"/UpdateNotifikasi"})
public class UpdateNotifikasi extends HttpServlet {

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
        String pesan = "PERMOHONAN GAGAL DIKIRIM";
        String idPermohonan = request.getParameter("idpermohonan");
        System.out.println(idPermohonan);
        String tanggalSubmit = request.getParameter("tanggalsubmit");
        System.out.println(tanggalSubmit);
        String mulaiCuti = request.getParameter("mulaicuti");
        System.out.println(mulaiCuti);
        String selesaiCuti = request.getParameter("selesaicuti");
        System.out.println(selesaiCuti);
        String catatan = request.getParameter("catatan");
        System.out.println(catatan);
        String status = request.getParameter("status");
        System.out.println(status);
        String idCuti = request.getParameter("idcuti");
        System.out.println(idCuti);
        String idKaryawan = request.getParameter("idkaryawan");
        System.out.println(idKaryawan);
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        try (PrintWriter out = response.getWriter()) {
            try {
                JenisCuti idCutiOb = new JenisCuti(idCuti);
                Karyawan idKaryawanOb = new Karyawan(idKaryawan);
                Date tanggalSubmitParse = java.sql.Date.valueOf(tanggalSubmit);
                Date mulaiCutiParse = java.sql.Date.valueOf(mulaiCuti);
                Date selesaiCutiParse = java.sql.Date.valueOf(selesaiCuti);
                InterfaceController<Permohonan> ic = new GeneralController<Permohonan>(HibernateUtil.getSessionFactory(), Permohonan.class);
                Permohonan p = new Permohonan(idPermohonan, tanggalSubmitParse, mulaiCutiParse, selesaiCutiParse,
                        catatan, status, idCutiOb, idKaryawanOb);
                if (ic.saveOrUpdate(p)) {
                    pesan = "PERMOHONAN BERHASIL DIKIRIM";
                }
            } catch (Exception e) {
                Logger.getLogger(saveOrUpdatePermohonanServlet.class.getName()).log(Level.SEVERE, null, e);
            }
            session.setAttribute("messege", pesan);
            dispatcher = request.getRequestDispatcher("adminhome.jsp?kar1=notifikasi");
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
