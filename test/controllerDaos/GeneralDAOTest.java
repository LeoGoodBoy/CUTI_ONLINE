/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllerDaos;

import java.util.List;
import model.Karyawan;
import model.Permohonan;
import net.sf.ehcache.hibernate.HibernateUtil;
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
public class GeneralDAOTest {
    
    public GeneralDAOTest() {
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
     * Test of saveOrUpdate method, of class GeneralDAO.
     */
//    @Test
//    public void testSaveOrUpdate() {
//        System.out.println("saveOrUpdate");
//        Object object = null;
//        GeneralDAO instance = null;
//        boolean expResult = false;
//        boolean result = instance.saveOrUpdate(object);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of delete method, of class GeneralDAO.
//     */
//    @Test
//    public void testDelete() {
//        System.out.println("delete");
//        Object object = null;
//        GeneralDAO instance = null;
//        boolean expResult = false;
//        boolean result = instance.delete(object);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getAll method, of class GeneralDAO.
//     */
//    @Test
//    public void testGetAll() {
//        System.out.println("getAll");
//        GeneralDAO instance = null;
//        List<Object> expResult = null;
//        List<Object> result = instance.getAll();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }

    /**
     * Test of search method, of class GeneralDAO.
     */
    @Test
    public void testSearch() {
        System.out.println("search");
        String category = "idKaryawan";
        Object key = "KAR00002";
        GeneralDAO instance = new GeneralDAO(tools.HibernateUtil.getSessionFactory(), Permohonan.class);
        List<Object> result = instance.search(category, key);
        System.out.println(result.get(0).getClass());
        assertNotNull(result);
    }

    /**
     * Test of getById method, of class GeneralDAO.
     */
//    @Test
//    public void testGetById() {
//        System.out.println("getById");
//        Object id = null;
//        GeneralDAO instance = null;
//        Object expResult = null;
//        Object result = instance.getById(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getLastId method, of class GeneralDAO.
//     */
//    @Test
//    public void testGetLastId() {
//        System.out.println("getLastId");
//        GeneralDAO instance = null;
//        Object expResult = null;
//        Object result = instance.getLastId();
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of getByName method, of class GeneralDAO.
//     */
//    @Test
//    public void testGetByName() {
//        System.out.println("getByName");
//        Object name = "ima";
//        GeneralDAO instance = new GeneralDAO(tools.HibernateUtil.getSessionFactory(), Karyawan.class);
//        Object result = instance.getByName(name);
//        assertNotNull(result);
//    }
//
//    /**
//     * Test of getDataNonExpired method, of class GeneralDAO.
//     */
//    @Test
//    public void testGetDataNonExpired() {
//        System.out.println("getDataNonExpired");
//        String category = "";
//        GeneralDAO instance = null;
//        List<Object> expResult = null;
//        List<Object> result = instance.getDataNonExpired(category);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
}
