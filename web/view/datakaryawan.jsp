<%-- 
    Document   : newjsp
    Created on : Oct 16, 2018, 2:34:32 PM
    Author     : chochong
--%>

<%@page import="controller.InterfaceController"%>
<%@page import="controller.GeneralController"%>
<%@page import="model.Departemen"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="model.Karyawan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Data Karyawan</title>
        <meta name="description" content="Sufee Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="assets/scss/style.css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>       
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
                            <th>id karyawan</th>
                            <th>Nama Karyawan</th>
                            <th>nomor tlp</th>
                            <th>email karyawan</th>
                            <th>awal gabung</th>
                            <th>id departemen</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
                            Class type = Karyawan.class;
                            InterfaceController<Karyawan> interfaceController = new GeneralController(sessionFactory, type);
                            for (Karyawan karyawan : interfaceController.getAll()) {
                        %>
                        <tr>
                            <td><%= karyawan.getIdKaryawan()%></td>
                            <td><%= karyawan.getNamaKaryawan()%></td>
                            <td><%= karyawan.getNoTlpKaryawan()%></td>
                            <td><%= karyawan.getEmailKaryawan()%></td>
                            <td><%= karyawan.getAwalGabung()%></td>
                            <td><%= karyawan.getIdDepartemen().getIdDepartemen()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
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
        </script>
    </body>
</html>
