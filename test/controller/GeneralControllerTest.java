/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import model.Karyawan;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author chochong
 */
public class GeneralControllerTest {
    
    public GeneralControllerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getAll method, of class GeneralController.
     */
//    @Test
//    public void testGetAll() {
//        System.out.println("getAll");
//        GeneralController instance = null;
//        List expResult = null;
//        List result = instance.getAll();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of casToT method, of class GeneralController.
//     */
//    @Test
//    public void testCasToT() {
//        System.out.println("casToT");
//        List<Object> allData = null;
//        GeneralController instance = null;
//        List expResult = null;
//        List result = instance.casToT(allData);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of saveOrUpdate method, of class GeneralController.
//     */
//    @Test
//    public void testSaveOrUpdate() {
//        System.out.println("saveOrUpdate");
//        Object t = null;
//        GeneralController instance = null;
//        boolean expResult = false;
//        boolean result = instance.saveOrUpdate(t);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of delete method, of class GeneralController.
//     */
//    @Test
//    public void testDelete() {
//        System.out.println("delete");
//        Object t = null;
//        GeneralController instance = null;
//        boolean expResult = false;
//        boolean result = instance.delete(t);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of search method, of class GeneralController.
//     */
//    @Test
//    public void testSearch() {
//        System.out.println("search");
//        String category = "";
//        String key = "";
//        GeneralController instance = null;
//        List expResult = null;
//        List result = instance.search(category, key);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getById method, of class GeneralController.
//     */
//    @Test
//    public void testGetById() {
//        System.out.println("getById");
//        Object id = null;
//        GeneralController instance = null;
//        Object expResult = null;
//        Object result = instance.getById(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }

    /**
     * Test of login method, of class GeneralController.
     */
    @Test
    public void testLogin() {
        System.out.println("login");
        String username = "ima@gmail.com";
        String password = "ima";
        GeneralController<Karyawan> instance = new GeneralController<Karyawan>(tools.HibernateUtil.getSessionFactory(), Karyawan.class);
        Object result = instance.login(username, password).getIdKaryawan();
        assertNotNull(result);
        System.out.println(result);
    }

    /**
     * Test of RiwayatPermohonan method, of class GeneralController.
//     */
//    @Test
//    public void testRiwayatPermohonan() {
//        System.out.println("RiwayatPermohonan");
//        String category = "";
//        String key = "";
//        GeneralController instance = null;
//        List expResult = null;
//        List result = instance.RiwayatPermohonan(category, key);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAutoIdPermohonan method, of class GeneralController.
//     */
//    @Test
//    public void testGetAutoIdPermohonan() {
//        System.out.println("getAutoIdPermohonan");
//        GeneralController instance = null;
//        Object expResult = null;
//        Object result = instance.getAutoIdPermohonan();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAutoIdCuti method, of class GeneralController.
//     */
//    @Test
//    public void testGetAutoIdCuti() {
//        System.out.println("getAutoIdCuti");
//        GeneralController instance = null;
//        Object expResult = null;
//        Object result = instance.getAutoIdCuti();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of saveOrUpdateKar method, of class GeneralController.
//     */
//    @Test
//    public void testSaveOrUpdateKar() {
//        System.out.println("saveOrUpdateKar");
//        String idKaryawan = "";
//        String namaKaryawan = "";
//        String noTlpKaryawan = "";
//        String emailKaryawan = "";
//        String awalGabung = "";
//        String idManager = "";
//        String kataSandi = "";
//        String sisaCuti = "";
//        String banyakCuti = "";
//        String foto = "";
//        String status = "";
//        String idDepartemen = "";
//        String idRole = "";
//        GeneralController instance = null;
//        boolean expResult = false;
//        boolean result = instance.saveOrUpdateKar(idKaryawan, namaKaryawan, noTlpKaryawan, emailKaryawan, awalGabung, idManager, kataSandi, sisaCuti, banyakCuti, foto, status, idDepartemen, idRole);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of saveOrUpdtBerkas method, of class GeneralController.
//     */
//    @Test
//    public void testSaveOrUpdtBerkas() {
//        System.out.println("saveOrUpdtBerkas");
//        String idBerkas = "";
//        String lokasiBerkas = "";
//        String idPermohonan = "";
//        GeneralController instance = null;
//        boolean expResult = false;
//        boolean result = instance.saveOrUpdtBerkas(idBerkas, lokasiBerkas, idPermohonan);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
}
