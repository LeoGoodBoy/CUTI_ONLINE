<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>
            <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
        </div>
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="adminhome.jsp?kar1=profileuser"> <i class="menu-icon fa fa-dashboard"></i>Profile </a>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-laptop"></i>Data</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="fa fa-id-badge"></i><a href="adminhome.jsp?kar1=datakaryawan">Karyawan</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="adminhome.jsp?kar1=datadepartment">Departemen</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="adminhome.jsp?kar1=datajeniscuti">Jenis Cuti</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="adminhome.jsp?kar1=datapermohonan">Permohonan</a></li>
                        <li><i class="fa fa-id-badge"></i><a href="#">Berkas Cuti</a></li>
                    </ul>
                </li>
                <li class="active">
                    <a href="./Logout"> <i class="menu-icon fa fa-dashboard"></i>Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</aside>