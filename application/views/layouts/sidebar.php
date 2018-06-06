
<?php
    $nombre = ($this->session->userdata('nombre')) ? 
        $this->session->userdata('nombre'). ' '. $this->session->userdata('apellido')
        : $this->session->userdata('razon_social');
?>

<body>

    <div id="wrapper">

        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> 
                            <span>
                                <i class="fa fa-5x fa-buysellads" style="color: #1ab394;"></i>
                            </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?=  $nombre ?></strong>
                                </span> <span class="text-muted text-xs block"><?= $this->session->userdata('empresa');?> Usuario <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="<?php echo base_url();?>perfil">Perfil</a></li>
                                <li class="divider"></li>
                                <li><a href="<?php echo base_url();?>home/logout">Cerrar Sesión</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            VMC
                        </div>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>boleta"><i class="fa fa-ticket"></i> <span class="nav-label">Boletas</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="<?php echo base_url();?>boleta">Nueva Boleta</a></li>
                            <li><a href="<?php echo base_url();?>ventas">Ventas</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>sucursales"><i class="fa fa-cog"></i> <span class="nav-label">Configuración</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse">
                            <li><a href="<?php echo base_url();?>sucursales">Sucursales</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="<?php echo base_url();?>libro_caja"><i class="fa fa-book"></i> <span class="nav-label">Libro de Caja</span></a>
                        <!-- <ul class="nav nav-second-level collapse">
                            <li><a href="<?php echo base_url();?>libro_caja">Libro de Caja</a></li>
                        </ul> -->
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <a href="<?php echo base_url();?>/home/logout">
                                <i class="fa fa-sign-out"></i> Cerrar Sesión
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>