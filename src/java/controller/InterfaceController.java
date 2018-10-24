/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;

/**
 *
 * @author chochong
 */
public interface InterfaceController<T> {
    public boolean saveOrUpdate(T object);
    public boolean delete(T object);
    public List<T> getAll();
    public List<T> search(String category, String key);
    public List<T> RiwayatPermohonan(String category, String key);
    public T login(String username, String password);
    public T getById(Object id);
    public T getAutoIdPermohonan();
    public T getAutoIdCuti();
}
