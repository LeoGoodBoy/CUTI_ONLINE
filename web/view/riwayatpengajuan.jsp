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
    <% List<Permohonan> datas = (List<Permohonan>) session.getAttribute("dataRiwayatPermohonan"); %>
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
                                        <%
                                            }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!------------------------------ Modal Detail Karyawan---------------------------------------->
        <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <form name="aisyah" method="post" action="./saveOrUpdateKaryawanServlet">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="mediumModalLabel">Detail Karyawan</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="card">
                                <div class="card-header"><strong>Edit Data Karyawan</strong><small></small></div>
                                <div class="card-body card-block">
                                    <div class="form-group"><label for="company" class=" form-control-label">ID Karyawan</label><input type="text" name="id" id="company" value="" class="form-control"></div>
                                    <div class="form-group"><label for="vat" class=" form-control-label">Nama Karyawan</label><input type="text" name="nama" id="vat" value="" class="form-control"></div>
                                    <div class="form-group"><label for="street" class=" form-control-label">Email</label><input type="text" name="mail" id="street" value="" class="form-control"></div>
                                    <div class="form-group"><label for="city" class=" form-control-label">No. Telp</label><input type="text" name="telp" id="city" value="" class="form-control"></div>
                                    <div class="form-group"><label for="postal-code" class=" form-control-label">ID Manager</label><input type="text" name="man" id="postal-code" value="" class="form-control"></div>
                                    <div class="form-group"><label for="country" class=" form-control-label">Departemen</label><input type="text" name="dept" id="country" class="form-control"></div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary" onclick="{
                                        document.aisyah.submit();
                                    }">Confirm</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

        <script src="assets/js/lib/data-table/datatables.min.js"></script>
        <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
        <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
        <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
        <script src="assets/js/lib/data-table/jszip.min.js"></script>
        <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
        <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
        <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
        <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
        <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
        <script src="assets/js/lib/data-table/datatables-init.js"></script>
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
