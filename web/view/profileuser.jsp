<%-- 
    Document   : profileuser
    Created on : Oct 22, 2018, 1:32:58 AM
    Author     : chochong
--%>
<%@page import="controller.InterfaceController"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controller.GeneralController"%>
<%@page import="java.util.List"%>
<%@page import="model.Karyawan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% InterfaceController<Karyawan> ic = new GeneralController<Karyawan>(HibernateUtil.getSessionFactory(), Karyawan.class);%>
    <% 
        Karyawan karyawan = (Karyawan) session.getAttribute("DataKaryawanYangLogin");
    %>
    <body>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title mb-3">Profile Card</strong>
                </div>
                <div class="card-body">
                    <div class="mx-auto d-block">
                        <!--<img class="rounded-circle mx-auto d-block" src="" alt="Card image cap">-->
                        <h5 class="text-sm-center mt-2 mb-1"><%= karyawan.getNamaKaryawan()%></h5>
                        <div class="location text-sm-center"><i class="fa fa-map-marker"></i><%= karyawan.getIdRole().getNamaRole()%></div>
                    </div>
                    <form name="aisyah" method="post" action="./saveOrUpdateKaryawanServlet">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="card">
                                    <div class="card-header"><strong>Edit Data Karyawan</strong><small></small></div>
                                    <div class="card-body card-block">
                                        <div class="form-group"><label for="nilai1" class=" form-control-label">ID Karyawan</label><input type="text" name="id" id="nilai1" value="<%= karyawan.getIdKaryawan()%>" class="form-control" disabled></div>
                                        <div class="form-group"><label for="nilai2" class=" form-control-label">Nama Karyawan</label><input type="text" name="nama" id="nilai2" value="<%= karyawan.getNamaKaryawan()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai3" class=" form-control-label">nomor telepon</label><input type="text" name="telp" id="nilai3" value="<%= karyawan.getNoTlpKaryawan()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai4" class=" form-control-label">email karyawan</label><input type="text" name="mail" id="nilai4" value="<%= karyawan.getEmailKaryawan()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai5" class=" form-control-label">awal gabung (YYYY-MM-DD)</label><input type="text" name="awalGabung" id="nilai5" value="<%=karyawan.getAwalGabung()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai6" class=" form-control-label">id departemen</label><input type="text" name="dept" id="nilai6" value="<%=karyawan.getIdDepartemen().getIdDepartemen()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai7" class=" form-control-label">id manager</label><input type="text" name="man" id="nilai7" value="<%=karyawan.getIdManager()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai8" class=" form-control-label">sisa cuti</label><input type="text" name="sisaCuti" id="nilai8" value="<%=karyawan.getSisaCuti()%>" class="form-control" disabled></div>
                                        <div class="form-group"><label for="nilai9" class=" form-control-label">banyak cuti</label><input type="text" name="banyakCuti" id="nilai9" value="<%=karyawan.getBanyakCuti()%>" class="form-control" disabled></div>
                                        <div class="form-group"><label for="nilai10" class=" form-control-label">status</label><input type="text" name="status" id="nilai10" value="<%=karyawan.getStatus()%>" class="form-control"></div>
                                        <div class="form-group"><label for="nilai11" class=" form-control-label">id role</label><input type="text" name="role" id="nilai11" value="<%=karyawan.getIdRole().getIdRole()%>" class="form-control" disabled></div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" onclick="{
                                            document.aisyah.submit();
                                        }">edit</button>
                            </div>
                        </div>
                    </form>
                    <hr>
                    <div class="card-text text-sm-center">
                        <a href="#"><i class="fa fa-facebook pr-1"></i></a>
                        <a href="#"><i class="fa fa-twitter pr-1"></i></a>
                        <a href="#"><i class="fa fa-linkedin pr-1"></i></a>
                        <a href="#"><i class="fa fa-pinterest pr-1"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
