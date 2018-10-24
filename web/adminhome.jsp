<%@page import="model.Karyawan"%>
<%@page import="java.util.List"%>
<!doctype html>
<html>
    <%
        Karyawan yangLogin = (Karyawan) session.getAttribute("DataKaryawanYangLogin");
    %>
    <head>
        <title>Hello <%= yangLogin.getNamaKaryawan()%></title>
        <%@include file="script/css.jsp"%>
    </head>
    <body>  
        <% String a = yangLogin.getIdRole().getIdRole();
            if ("ROLE0001".equals(a)) {%>
        <%@include file="menu/admin.jsp"%>
        <%} else {%>
        <%@include file="menu/karyawan.jsp"%>
        <%}%>
        <div id="right-panel" class="right-panel">
            <%@include file="menu/header.jsp"%>
            <div class="breadcrumbs">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <% if ("ROLE0001".equals(a)) {%>
                            <h1>Admin Home</h1>
                            <%} else {%>
                            <h1>Karyawan Home</h1>
                            <%}%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="page-header float-right">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li class="active">
                                    <% if ("ROLE0001".equals(a)) {%>
                                    <a href="adminhome.jsp?kar1=datakaryawan1">Index JSP</a> ||
                                    <a href="adminhome.jsp?kar1=datakaryawan">lihat karyawan</a>
                                    <%} else {%>
                                    <a href="adminhome.jsp?kar1=notifikasi_a">Approve</a> ||
                                    <a href="adminhome.jsp?kar1=notifikasi_r">Rejected</a> ||
                                    <a href="adminhome.jsp?kar1=notifikasi">Notifikasi</a>
                                    <%}%>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content mt-3">
                <% String klik = request.getParameter("kar1");%>
                <% if (klik.equals("profileuser")) {%>
                <%@include file="view/profileuser.jsp"%>
                <%} else if (klik.equals("datakaryawan")) {%>
                <jsp:include page="./KaryawanServlet"/>
                <%} else if (klik.equals("datapermohonan")) {%>
                <jsp:include page="./PermohonanServlet"/>
                <%} else if (klik.equals("formpermohonan")) {%>
                <%@include file="view/kirimpermohonan.jsp"%>
                <%} else if (klik.equals("datadepartment")) {%>
                <jsp:include page="./DepartemenServlet"/>
                <%} else if (klik.equals("datajeniscuti")) {%>
                <jsp:include page="./JenisCutiServlet"/>
                <%} else if (klik.equals("riwayatpengajuan")) {%>
                <jsp:include page="./RiwayatPengajuanServlet"/>
                <%} else if (klik.equals("notifikasi")) {%>
                <jsp:include page="./Notifikasi"/>
                <%} else if (klik.equals("notifikasi_a")) {%>
                <jsp:include page="./Notifikasi_a"/>
                <%} else if (klik.equals("notifikasi_r")) {%>
                <jsp:include page="./Notifikasi_r"/>
                <%}%>
            </div>
        </div>
        <%@include file="script/home.jsp"%>
    </body>
</html>
