<%-- 
    Document   : lihatpermohonan
    Created on : Oct 19, 2018, 4:04:40 AM
    Author     : chochong
--%>

<%@page import="controller.InterfaceController"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controller.GeneralController"%>
<%@page import="model.Karyawan"%>
<%@page import="model.Permohonan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% InterfaceController<Karyawan> ic = new GeneralController<Karyawan>(HibernateUtil.getSessionFactory(), Karyawan.class);%>
    <% Karyawan karyawan = (Karyawan) session.getAttribute("DataKaryawanYangLogin"); %>
    <% List<Permohonan> datas = (List<Permohonan>) session.getAttribute("dataNotifikasi"); %>
    <head>
        <title>Data Karyawan</title>
        <%@include file="../script/css.jsp"%>
    </head>
    <body>
        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <center>
                                    <strong class="card-title">Data Riwayat Permohonan</strong>

                                </center>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Action</th>
                                            <th>Id Permohonan</th>
                                            <th>Id Karyawan</th>
                                            <th>Tanggal Submit</th>
                                            <th>Mulai Cuti</th>
                                            <th>Selesai cuti</th>
                                            <th>Id cuti</th>
                                            <th>Catatan</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  String message = (String) session.getAttribute("pesan");
                                            String x = karyawan.getIdKaryawan();
                                            for (Permohonan a : datas) {%>
                                            <% if (x.equals(a.getIdKaryawan().getIdManager()) && "Approve".equals(a.getStatus())) {%>
                                        <tr>
                                            <td>
                                                <button class="menu-icon fa fa-pencil" data-val="<%= a.getIdPermohonan() + ","
                                                        + a.getIdKaryawan().getIdKaryawan() + ","
                                                        + a.getTanggalSubmit() + ","
                                                        + a.getMulaiCuti() + ","
                                                        + a.getSelesaiCuti() + ","
                                                        + a.getIdCuti().getIdCuti() + ","
                                                        + a.getCatatan() + ","
                                                        + a.getStatus()%>" data-toggle="modal" data-target="#mediumModal" ></button> ||
                                                <a class="menu-icon fa fa-trash" href="./DeleteKaryawan?id=<%= a.getIdPermohonan()%>"></a>
                                            </td>   
                                            <td><%= a.getIdPermohonan()%></td>
                                            <td><%= a.getIdKaryawan().getIdKaryawan()%></td>
                                            <td><%= a.getTanggalSubmit()%></td>
                                            <td><%= a.getMulaiCuti()%></td>
                                            <td><%= a.getSelesaiCuti()%></td>
                                            <td><%= a.getIdCuti().getIdCuti()%></td>
                                            <td><%= a.getCatatan()%></td>
                                            <td><%= a.getStatus()%></td>
                                        </tr>
                                        <%}%>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- .animated -->
        </div><!-- .content -->    
        <%@include file="../modal/detail_notifikasi.jsp"%>
        <%@include file="../script/script3.jsp"%>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
            $('#mediumModal').on('show.bs.modal', function (event) {
                var myVal = $(event.relatedTarget).data('val');
                var a = myVal.split(",");
                $(this).find('input[id="nilaii1"]').val(a[0]);
                $(this).find('input[id="nilaii2"]').val(a[1]);
                $(this).find('input[id="nilaii3"]').val(a[2]);
                $(this).find('input[id="nilaii4"]').val(a[3]);
                $(this).find('input[id="nilaii5"]').val(a[4]);
                $(this).find('input[id="nilaii6"]').val(a[5]);
                $(this).find('input[id="nilaii7"]').val(a[6]);
                $(this).find('input[id="nilaii8"]').val(a[7]);
            });

        </script>
    </body>
</html>