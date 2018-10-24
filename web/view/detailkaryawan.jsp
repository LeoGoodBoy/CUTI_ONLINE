<%-- 
    Document   : detailkaryawan
    Created on : Oct 17, 2018, 9:20:55 AM
    Author     : chochong
--%>

<%@page import="java.util.List"%>
<%@page import="model.Karyawan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <% 
        Karyawan yangLogin = (Karyawan) session.getAttribute("DataKaryawanYangLogin");
    %>
        <% List<Karyawan> karyawan = (List<Karyawan>) session.getAttribute("DataKaryawanYangLogin");%>
        <h1>Hello <%= karyawan.get(0).getNamaKaryawan()%></h1>
        <% %>
        <a href="./Logout" class=" rpl-padding-large">KELUAR</a>
</body>
</html>
