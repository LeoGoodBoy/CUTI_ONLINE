<%-- 
    Document   : kirimpermohonan
    Created on : Oct 19, 2018, 9:01:11 AM
    Author     : chochong
--%>
<%@page import="controller.InterfaceController"%>
<%@page import="tools.HibernateUtil"%>
<%@page import="controller.GeneralController"%>
<%@page import="controller.GeneralController"%>
<%@page import="model.JenisCuti"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%InterfaceController<JenisCuti> ic = new GeneralController<JenisCuti>(HibernateUtil.getSessionFactory(), JenisCuti.class);
        session.setAttribute("DataCuti", ic.getAll()); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login-form">
            <center>
                <h1 style="padding-bottom: 20px">Pengajuan Cuti</h1>
            </center>
            <form action="./saveOrUpdatePermohonanServlet">
                <label>Tanggal Mulai Cuti</label>
                <div class="form-group"><input type="text" class="form-control" name="mulaicuti" placeholder="(YYYY-MM-DD)">
                </div>
                <label>Tanggal Selesai Cuti</label>
                <div class="form-group"><input type="text" class="form-control" name="selesaicuti" placeholder="(YYYY-MM-DD)">
                </div>
                <label>Jenis Cuti</label>
                <div style="padding-bottom: 50px">
                    <select name="idcuti" class="form-control">
                        <% List<JenisCuti> roles = (List<JenisCuti>) session.getAttribute("DataCuti");
                            for (JenisCuti jenisCuti : roles) {%>
                        <option value="<%= jenisCuti.getIdCuti()%>"><%= jenisCuti.getIdCuti()
                                    + " - " + jenisCuti.getNamaCuti()%> </option> <% }%>
                    </select>
                </div>

                <center>
                        <%  String message = (String) session.getAttribute("messege");%>
                        <%if (message != null) {%> 
                        <h1 style="color: red"><%out.print(message);
                        session.setAttribute("messege", null);%></h1>
                        <%}%>
                </center>
                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>
            </form>
        </div>
    </body>
</html>
