/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllerDaos;

import java.sql.*;
import java.util.*;
import org.hibernate.*;

/**
 *
 * @author Lenovo
 */
public class GeneralDAO implements InterfaceDAO {

    private final FunctionDAO gdao;
    private final Class type;
    private SessionFactory sf;
    private Connection c;

    public GeneralDAO(SessionFactory sessionFactory, Class type) {
        this.gdao = new FunctionDAO(sessionFactory);
        this.type = type;
        this.sf = sessionFactory;
    }

    @Override
    public boolean saveOrUpdate(Object object) {
        return (boolean) gdao.execute(0, object, type, null, null);
    }

    @Override
    public boolean delete(Object object) {
        return (boolean) gdao.execute(1, object, type, null, null);
    }

    @Override
    public List<Object> getAll() {
        return (List<Object>) gdao.execute(6, null, type, null, null);
    }

    @Override
    public List<Object> search(String category, Object key) {
        return (List<Object>) gdao.execute(3, null, type, category, key);
    }

    @Override
    public Object getById(Object id) {
        return gdao.execute(2, null, type, "id"+type.getSimpleName(), id);
    }

    @Override
    public Object getLastId() {
        return gdao.execute(4, null, type, null, null);
    }

    @Override
    public Object getByName(Object name) {
        return gdao.execute(5, null, type, type.getSimpleName().toLowerCase() + "Name", name);
    }

    @Override
    public List<Object> getDataNonExpired(String category) {
        return (List<Object>) gdao.execute(7, null, type, category, null);
    }
    
    @Override
    public List<Object> RiwayatPermohonan(String category, Object key) {
        return (List<Object>) gdao.execute(8, null, type, null, key);
    }
    
    @Override
    public Object login(Object key) {
        return gdao.execute(9, null, type, null, key);
    }
}
