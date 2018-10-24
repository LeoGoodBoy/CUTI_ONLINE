/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.GeneralController;
import java.io.IOException;
import java.io.PrintWriter;
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
import org.hibernate.SessionFactory;
import tools.HibernateUtil;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "UpdateKaryawan", urlPatterns = {"/updateKaryawan"})
public class UpdateKaryawan extends HttpServlet {

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
               HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        String id = request.getParameter("id");
        String nama = request.getParameter("nama");
        String telp = request.getParameter("telp");
        String mail = request.getParameter("mail");
        String tanggal = request.getParameter("tgl");
        String dept = request.getParameter("dept");
        String man = request.getParameter("man");
        String sisa = request.getParameter("sisa");
        String banyak = request.getParameter("banyak");
        String photo = request.getParameter("photo"); 
        String status = request.getParameter("status");
        String role = request.getParameter("role");
        String pass = request.getParameter("pass");
        String tgl = tanggal.replaceAll("-", "/");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            System.out.println("photo = "+photo);
            GeneralController<Karyawan> generalController = new GeneralController(sessionFactory, Karyawan.class);
            out.print("1: "+id +"<br> - nama :"+ nama +" - <br>telp :"+telp +" - <br>mail :"+mail +" - <br>tgl :"+tgl +" - <br>dept :"+dept
                    +" - <br>man :"+man +" - <br>sisa :"+sisa +" - <br>banyak :"+banyak +" - <br>status :"+ status +" - <br>role :"+role +" - <br>pass : "+pass+" - <br>photo :"+photo);
            Departemen depts = new Departemen(dept);
            Role roles = new Role(role);
            if(generalController.getById(id)!=null){
            out.print("<br>3: "+id +"<br> - nama :"+ nama +" - <br>telp :"+telp +" - <br>mail :"+mail +" - <br>tgl :"+tgl +" - <br>dept :"+dept
                    +" - <br>man :"+man +" - <br>sisa :"+sisa +" - <br>banyak :"+banyak +" -<br>status :"+ status +" - <br>role :"+role+"<br>Pass: "+pass+" - <br>photo :"+photo);
            //(String idKaryawan, String namaKaryawan, String noTlpKaryawan, String emailKaryawan, Date awalGabung, String idManager, int sisaCuti, int banyakCuti, String status, Departemen idDepartemen, Role idRole)    
            generalController.saveOrUpdateKar(id, nama, telp, mail, tgl, man, pass, sisa, banyak, photo, status, dept, role);
            out.print(generalController.saveOrUpdateKar(id, nama, telp, mail, tgl, man, pass, sisa, banyak, photo, status, dept, role)+"sukses Update");
            }else{    
            out.print("<br>2: "+id +"<br> - nama :"+ nama +" - <br>telp :"+telp +" - <br>mail :"+mail +" - <br>tgl :"+tgl +" - <br>dept :"+dept
                    +" - <br>man :"+man +" - <br>sisa :"+sisa +" - <br>banyak :"+banyak +"  - <br>status :"+ status +" - <br>role :"+role +" - <br>pass : "+pass+" - <br>photo :"+photo);
            generalController.saveOrUpdateKar(id, nama, telp, mail, tgl, man, pass, sisa, banyak, photo, status, dept, role);
            out.print(generalController.saveOrUpdateKar(id, nama, telp, mail, tgl, man, pass, sisa, banyak, photo, status, dept, role)+"sukses save");
            }
            dispatcher = request.getRequestDispatcher("./karyawan");
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
