<%-- 
    Document   : lihatkaryawan
    Created on : Oct 16, 2018, 5:04:13 PM
    Author     : chochong
--%>
<%@page import="java.util.List"%>
<%@page import="model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% List<Karyawan> datas = (List<Karyawan>) session.getAttribute("dataKaryawan"); %>
    <head>
        <title>Data Karyawan</title>
        <%@include file="../script/css.jsp"%>
    </head>
    <body>
        <div class="content mt-3">
            <button type="button" class="btn btn-secondary mb-1" data-toggle="modal" data-target="#inputModal">
                Tambah
            </button> 
            <div class="animated fadeIn">
                <div class="row" style="overflow-x: scroll; overflow-y: auto">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <center>
                                    <strong class="card-title">Data Karyawan</strong>

                                </center>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered" >
                                    <thead>
                                        <tr>
                                            <th>action</th>
                                            <th>id Karyawan</th>
                                            <th>Nama Karyawan</th>
                                            <th>nomor tlp</th>
                                            <th>email karyawan</th>
                                            <th>awal gabung</th>
                                            <th>id departemen</th>
                                            <th>id mennejer</th>
                                            <th>sisa cuti</th>
                                            <th>banyak cuti</th>
                                            <th>status</th>
                                            <th>id Role</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%  String message = (String) session.getAttribute("pesan");
//                                        out.print(message);
                                            for (Karyawan karyawan : datas) {%>
                                        <tr>
                                            <td>
                                                <button class="menu-icon fa fa-pencil" data-val="<%= karyawan.getIdKaryawan()
                                                        + "," + karyawan.getNamaKaryawan()
                                                        + "," + karyawan.getNoTlpKaryawan()
                                                        + "," + karyawan.getEmailKaryawan()
                                                        + "," + karyawan.getAwalGabung()
                                                        + "," + karyawan.getIdDepartemen().getIdDepartemen()
                                                        + "," + karyawan.getIdManager()
                                                        + "," + karyawan.getSisaCuti()
                                                        + "," + karyawan.getBanyakCuti()
                                                        + "," + karyawan.getStatus()
                                                        + "," + karyawan.getIdRole().getIdRole()%>" data-toggle="modal" data-target="#mediumModal" ></button> || 
                                                <a class="menu-icon fa fa-trash" href="./DeleteKaryawan?id=<%= karyawan.getIdKaryawan()%>"></a>
                                            </td>
                                            <td><%= karyawan.getIdKaryawan()%></td>
                                            <td><%= karyawan.getNamaKaryawan()%></td>
                                            <td><%= karyawan.getNoTlpKaryawan()%></td>
                                            <td><%= karyawan.getEmailKaryawan()%></td>
                                            <td><%= karyawan.getAwalGabung()%></td>
                                            <td><%= karyawan.getIdDepartemen().getIdDepartemen()%></td>
                                            <td><%= karyawan.getIdManager()%></td>
                                            <td><%= karyawan.getSisaCuti()%></td>
                                            <td><%= karyawan.getBanyakCuti()%></td>
                                            <td><%= karyawan.getStatus()%></td>
                                            <td><%= karyawan.getIdRole().getIdRole()%></td>
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
        <%@include file="../modal/detail_karyawan.jsp"%>
        <%@include file="../modal/tambah_karyawan.jsp"%>
        <%@include file="../script/scrript.jsp"%>
    </body>
</html>
