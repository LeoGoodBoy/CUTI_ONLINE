<%-- 
    Document   : lihatdepartemen
    Created on : Oct 19, 2018, 4:04:56 AM
    Author     : chochong
--%>
<%@page import="model.Departemen"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% List<Departemen> datas = (List<Departemen>) session.getAttribute("dataDepartemen"); %>
    <head>
        <title>Data Departemen</title>
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
                                            <th>Id Departemen</th>
                                            <th>nama departemen</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  String message = (String) session.getAttribute("pesan");
                                            //                                            out.print(message);
                                            for (Departemen a : datas) {%>
                                        <tr>
                                            <td>
                                                <button class="menu-icon fa fa-pencil" data-val="<%= a.getIdDepartemen() + ","
                                                        + a.getNamaDepartemen()%>" data-toggle="modal" data-target="#mediumModal" ></button> ||
                                                <a class="menu-icon fa fa-trash" href="./DeleteKaryawan?id=<%= a.getIdDepartemen()%>"></a>
                                            </td>
                                            <td><%= a.getIdDepartemen()%></td>
                                            <td><%= a.getNamaDepartemen()%></td>
                                        </tr>
                                        <%
                                            }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- .animated -->
        </div><!-- .content -->    
        <%@include file="../modal/detail_departemen.jsp"%>
        <%@include file="../modal/tambah_departemen.jsp"%>
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
            });
        </script>
    </body>
</html>
