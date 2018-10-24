<%-- 
    Document   : lihatpermohonan
    Created on : Oct 19, 2018, 4:04:40 AM
    Author     : chochong
--%>
<%@page import="model.Permohonan"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% List<Permohonan> datas = (List<Permohonan>) session.getAttribute("dataPermohonan"); %>
    <head>
        <title>Data Karyawan</title>
        <%@include file="../script/css.jsp"%>
    </head>
    <body>
        <div class="content mt-3">
            <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#tambahKaryawan">
                Tambah
            </button> 
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <center>
                                    <strong class="card-title">Data Karyawan</strong>

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
//                                                                                        out.print(message);
                                            for (Permohonan a : datas) {%>
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
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- .animated -->
        </div><!-- .content -->    
        <%@include file="../modal/detail_permohonan.jsp"%>
        <%@include file="../modal/tambah_permohonan.jsp"%>
        <%@include file="../script/script3.jsp"%>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
            $('#mediumModal').on('show.bs.modal', function (event) {
                var myVal = $(event.relatedTarget).data('val');
                var a = myVal.split(",");
                $(this).find('input[id="company"]').val(a[0]);
                $(this).find('input[id="vat"]').val(a[1]);
                $(this).find('input[id="street"]').val(a[2]);
                $(this).find('input[id="city"]').val(a[3]);
                $(this).find('input[id="postal-code"]').val(a[4]);
                $(this).find('input[id="country"]').val(a[5]);
            });

        </script>
    </body>
</html>
