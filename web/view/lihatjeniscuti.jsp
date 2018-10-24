<%-- 
    Document   : lihatjeniscuti
    Created on : Oct 19, 2018, 4:05:38 AM
    Author     : chochong
--%>
<%@page import="model.JenisCuti"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% List<JenisCuti> datas = (List<JenisCuti>) session.getAttribute("dataJenisCuti"); %>
    <head>
        <title>Data Karyawan</title>
        <%@include file="../script/css.jsp"%>
    </head>
    <body>
        <div class="content mt-3">
            <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#tambahJenisCuti">
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
                                            <th>Id Jenis Cuti</th>
                                            <th>nama Jenis Cuti</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  String message = (String) session.getAttribute("messege");
//                                            out.print(message);
                                            for (JenisCuti a : datas) {%>
                                        <tr>
                                            <td>
                                                <button class="menu-icon fa fa-pencil" data-val="<%= a.getIdCuti()+ ","
                                                        + a.getNamaCuti()%>" data-toggle="modal" data-target="#mediumModal" ></button> ||
                                                <a class="menu-icon fa fa-trash" href="./DeleteKaryawan?id=<%= a.getIdCuti()%>"></a>
                                            </td>
                                            <td><%= a.getIdCuti()%></td>
                                            <td><%= a.getNamaCuti()%></td>
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
        <%@include file="../modal/detail_jeniscuti.jsp"%>
        <%@include file="../modal/tambah_jeniscuti.jsp"%>
        <%@include file="../script/script3.jsp"%>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
            $('#mediumModal').on('show.bs.modal', function (event) {
                var myVal = $(event.relatedTarget).data('val');
                var a = myVal.split(",");
                $(this).find('input[id="idcuti"]').val(a[0]);
                $(this).find('input[id="namacuti"]').val(a[1]);
            });
        </script>
    </body>
</html>