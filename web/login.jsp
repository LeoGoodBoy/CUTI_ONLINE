<%-- 
    Document   : login
    Created on : Oct 18, 2018, 4:07:47 PM
    Author     : chochong
--%>
<!doctype html>
<head>
    <title>Cuti Online 2018</title>
    <%@include file="script/css.jsp"%>
</head>
<body class="bg-dark">
    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="#">
                        <img class="align-content" src="images/metrodata.png" alt="">
                        <img class="align-content" src="images/logo.png" alt="">
                        <img class="align-content" src="images/mii_kecil.jpg" alt="">
                    </a>
                </div>
                <div class="login-form">
                    <center>
                            <%  String message = (String) session.getAttribute("messege");%>
                            <%if (message != null) {%> 
                            <h1 style="color: red"><%out.print(message);
                            session.setAttribute("messege", null);%></h1>
                            <%} else {%>  
                        <h1>LOGIN</h1>
                        <%}%> 
                    </center>
                    <form  action="./Login">
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="text" class="form-control" placeholder="Username" name="username">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>
                        <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="script/script2.jsp"%>
</body>
</html>

