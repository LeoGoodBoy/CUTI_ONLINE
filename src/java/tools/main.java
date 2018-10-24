/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import controller.GeneralController;
import model.Departemen;
import model.Karyawan;
import model.Permohonan;
import org.hibernate.SessionFactory;

/**
 *
 * @author chochong
 */
public class main {
    public static void main(String[] args) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Class type = Karyawan.class;
        Class type1 = Permohonan.class;
        
        GeneralController<Karyawan> generalController = new GeneralController(sessionFactory, type);
        GeneralController<Departemen> generalController1 = new GeneralController(sessionFactory, type1);
        GeneralController<Permohonan> gc = new GeneralController(sessionFactory, type1);
        
//        for (Permohonan permohonan : gc.notifikasi("KAR00003")) {
//            System.out.println(permohonan.getIdKaryawan());
//        }
        
//        for (Karyawan karyawan : generalController.getAll()) {
//            System.out.println(karyawan.getNamaKaryawan());
//        }
//        
//        System.out.println("\n Departemen");
//        for (Departemen departemen : generalController1.getAll()) {
//            System.out.println(departemen.getNamaDepartemen());
//        }
    }
}
