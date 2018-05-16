<div class="footer">
    <div>
        <strong>Copyright</strong> VMC Tecnología © 2017-2018
    </div>
</div>
        <!-- Mainly scripts -->
<script type='text/javascript' src="<?php echo base_url();?>assets/html/js/jquery-2.1.1.js"></script>
<script type='text/javascript' src="<?php echo base_url();?>assets/html/js/bootstrap.min.js"></script>
<script src="<?php echo base_url();?>assets/html/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<?php echo base_url();?>assets/html/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="<?php echo base_url();?>assets/html/js/inspinia.js"></script>
<script src="<?php echo base_url();?>assets/html/js/plugins/pace/pace.min.js"></script>
<script src="<?php echo base_url();?>assets/html/js/plugins/jasny/jasny-bootstrap.min.js"></script>

<script>
    var l = $( '.ladda-button-demo' ).ladda();
      l.click(function()

          // Start loading
          l.ladda( 'start' );

          // Do something in backend and then stop ladda
          // setTimeout() is only for demo purpose
          setTimeout(function()
              l.ladda('stop');
          },2000)

      });
</script>

<?php
    if ($ruta=='Login') {
        echo "<script type='text/javascript' src='".base_url()."assets/login/login.js'></script>";
    }elseif($ruta=='Perfil') {
        echo "<script type='text/javascript' src='".base_url()."assets/perfil/perfil.js'></script>";
    }
?>
