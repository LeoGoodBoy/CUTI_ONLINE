/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import controllerDaos.GeneralDAO;
import controllerDaos.InterfaceDAO;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.*;
import org.hibernate.SessionFactory;

/**
 *
 * @author chochong
 * @param <T>
 */
public class GeneralController<T> implements InterfaceController<T> {

    private InterfaceDAO idao;
    private SessionFactory sessionFactory;

    public GeneralController(SessionFactory sessionFactory, Class type) {
        this.sessionFactory = sessionFactory;
        this.idao = new GeneralDAO(sessionFactory, type);
    }

    @Override
    public List<T> getAll() {
        return this.casToT(idao.getAll());
    }

    public List<T> casToT(List<Object> allData) {
        List<T> datas = new ArrayList<>();
        for (Object object : allData) {
            T t = (T) object;
            datas.add(t);
        }
        return datas;
    }

    @Override
    public boolean saveOrUpdate(T t) {
        return idao.saveOrUpdate(t);
    }

    @Override
    public boolean delete(T t) {
        return idao.delete(t);
    }

    @Override
    public List<T> search(String category, String key) {
        return this.casToT(idao.search(category, key));
    }

    @Override
    public T getById(Object id) {
        return (T) idao.getById(id);
    }

    @Override
    public T login(String username, String password) {
        Karyawan k = new Karyawan(username, password);
        return (T) idao.login(k);
    }

    @Override
    public List<T> RiwayatPermohonan(String category, String key) {
        return this.casToT(idao.RiwayatPermohonan(category, key));
    }

    @Override
    public T getAutoIdPermohonan() {
        Permohonan pdata = (Permohonan) idao.getLastId();
        String depan = pdata.getIdPermohonan().substring(0, 3);
        String belakang = pdata.getIdPermohonan().substring(3, 8);
        int tambah = Integer.parseInt(belakang) + 1;
        String tambah2 = tambah + "";
        String nol = "";
        for (int i = 0; i < 5; i++) {
            nol = nol + "0";
        }
        String hasil = depan + nol.substring(0, nol.length() - tambah2.length()) + tambah;
        return (T) hasil;
    }

    @Override
    public T getAutoIdCuti() {
        JenisCuti pdata = (JenisCuti) idao.getLastId();
        String depan = pdata.getIdCuti().substring(0, 3);
        String belakang = pdata.getIdCuti().substring(3, 8);
        int tambah = Integer.parseInt(belakang) + 1;
        String tambah2 = tambah + "";
        String nol = "";
        for (int i = 0; i < 5; i++) {
            nol = nol + "0";
        }
        String hasil = depan + nol.substring(0, nol.length() - tambah2.length()) + tambah;
        return (T) hasil;
    }

    public boolean saveOrUpdateKar(String idKaryawan, String namaKaryawan,
            String noTlpKaryawan, String emailKaryawan, String awalGabung,
            String idManager, String kataSandi, String sisaCuti, String banyakCuti,
            String foto, String status, String idDepartemen, String idRole) {
        Departemen departemen = new Departemen(idDepartemen);
        Role role = new Role(idRole);
        Karyawan karyawan;
        karyawan = new Karyawan(idKaryawan,
                namaKaryawan, noTlpKaryawan, emailKaryawan,
                new Date(awalGabung), idManager, kataSandi, new Integer(sisaCuti),
                new Integer(banyakCuti), foto.getBytes(), status, departemen, role);
        System.out.println("utk save : karyawan get : " + karyawan.getNamaKaryawan() + " - dept = "
                + karyawan.getIdDepartemen().getNamaDepartemen() + " - role = " + karyawan.getIdRole().getNamaRole());
        return idao.saveOrUpdate(karyawan);
    }

    public boolean saveOrUpdtBerkas(String idBerkas, String lokasiBerkas, String idPermohonan) {
        Permohonan permohonan = new Permohonan(idPermohonan);
        BerkasCuti bc = new BerkasCuti(idBerkas, lokasiBerkas, permohonan);
        return idao.saveOrUpdate(bc);
    }

}
