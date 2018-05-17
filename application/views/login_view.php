<!DOCTYPE html>
<html>
<head>
  
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>
                <h1 class="logo-name">VMC</h1>
            </div>

            <h3>Bienvenido</h3>
            <p>Ingrese tu información para acceder.</p>
            <form method='post'class="m-t" role="form" action="<?php echo base_url();?>/login/process" id="loginForm">

                <?php 
                    echo validation_errors(); 
                    echo form_open('form'); 
                ?>
                <div id="resp"></div>  
                
                <div class="form-group">
                    <input type="email" name='email' id='email' class="form-control" placeholder="Email">
                </div>
                <div class="form-group">
                    <input type="password" classname='password' id='password' name='password' class="form-control" placeholder="Contraseña">
                </div>
                <button type="submit" id='btn-login' class="btn btn-primary block full-width m-b">Ingresar</button>

                <a href="#"><small>¿Olvido Contraseña?</small></a>
            </form>
            <p class="m-t">d<small>Desarrollado por VMC Tecnolía &copy; 2018</small> </p>
        </div>
    </div>
</body>
</html>

