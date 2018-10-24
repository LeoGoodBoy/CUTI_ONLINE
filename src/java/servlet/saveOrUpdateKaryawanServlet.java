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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Departemen;
import model.Karyawan;
import model.Role;
import tools.HibernateUtil;

/**
 *
 * @author chochong
 */
@WebServlet(name = "saveOrUpdateKaryawanServlet", urlPatterns = {"/saveOrUpdateKaryawanServlet"})
public class saveOrUpdateKaryawanServlet extends HttpServlet {

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
        String karId = request.getParameter("id");
        String name = request.getParameter("nama");
        String telp = request.getParameter("telp");
        String mail = request.getParameter("mail");
        String dept = request.getParameter("dept");
        String man = request.getParameter("man");
        String role = request.getParameter("role");
        String banyakcuti = request.getParameter("banyakCuti");
        String sisacuti = request.getParameter("sisaCuti");
        Date tgl = Date.valueOf("2017-07-03");
        String sandi = ""+mail+tgl+"";
        HttpSession hs = request.getSession();
        RequestDispatcher dispatcher = null;
        try (PrintWriter out = response.getWriter()) {
            InterfaceController<Karyawan> ic = new GeneralController<Karyawan>(HibernateUtil.getSessionFactory(), Karyawan.class);
            Departemen d = new Departemen(dept);
            Role r = new Role(role);
            Karyawan k = new Karyawan(karId, name, telp, mail, tgl, man, sandi, Integer.parseInt(banyakcuti), Integer.parseInt(sisacuti), new byte[100], man, d, r);
            String pesan = "gagal simpan bro, coba lagi";
            if (ic.saveOrUpdate(k)) {
                pesan = "berhasil simpan bro";
            }
            hs.setAttribute("messege", pesan);
            System.out.println(karId);
            dispatcher = request.getRequestDispatcher("adminhome.jsp?kar1=datakaryawan");
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
