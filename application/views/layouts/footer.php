<div class="footer">
    <div>
        <strong>Copyright</strong> VMC Tecnología © 2017-2018
    </div>
</div>

<?php
    // Mainly scripts
    echo "
    <script type='text/javascript' src='".base_url()."../assets/html/js/jquery-2.1.1.js'></script>
    <script type='text/javascript' src='".base_url()."../assets/html/js/bootstrap.min.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/metisMenu/jquery.metisMenu.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/slimscroll/jquery.slimscroll.min.js'></script>";

    // Custom and plugin javascript
    echo "
    <script src='".base_url()."../assets/html/js/inspinia.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/pace/pace.min.js'></script>";
    // Ladda
    
    echo "
    <script src='".base_url()."../assets/html/js/plugins/ladda/spin.min.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/ladda/ladda.min.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/ladda/ladda.jquery.min.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/select2/select2.full.min.js'></script>
    <script src='".base_url()."../assets/html/js/plugins/sweetalert/sweetalert.min.js'></script>";
    
    // Dependiendo de la pagina se cargan los respectivos archivos
    switch ($ruta) {
        case 'Login':
            echo "<script type='text/javascript' src='".base_url()."../assets/login/login.js'></script>";
        break;

        case 'Perfil':
            echo "<script type='text/javascript' src='".base_url()."../assets/perfil/perfil.js'></script>
            <script src='".base_url()."../assets/html/js/plugins/jasny/jasny-bootstrap.min.js'></script>";
        break;
        
        case 'Sucursales':
            echo "<script type='text/javascript' src='".base_url()."../assets/html/js/plugins/dataTables/datatables.min.js'></script>
            <script src='".base_url()."../assets/sucursales/sucursales.js'></script>";
        break;

        case 'Boleta':
            echo "<script type='text/javascript' src='".base_url()."../assets/html/js/plugins/price-format/jquery.priceformat.min.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/datapicker/bootstrap-datepicker.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/datapicker/bootstrap-datepicker.es.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/toastr/toastr.min.js'></script>
            <script src='".base_url()."../assets/boleta/boleta.js'></script>";
        break;

        case 'Ventas':
            echo "<script type='text/javascript' src='".base_url()."../assets/html/js/plugins/datapicker/bootstrap-datepicker.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/datapicker/bootstrap-datepicker.es.js'></script>
            <script src='".base_url()."../assets/boleta/ventas.js'></script>";
        break;

        case 'Libro de Caja':
            echo "<script type='text/javascript' src='".base_url()."../assets/html/js/plugins/price-format/jquery.priceformat.min.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/dataTables/datatables.min.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/datapicker/bootstrap-datepicker.js'></script>
            <script type='text/javascript' src='".base_url()."../assets/html/js/plugins/datapicker/bootstrap-datepicker.es.js'></script>
            <script src='".base_url()."../assets/html/js/plugins/jasny/jasny-bootstrap.min.js'></script>
            <script src='".base_url()."../assets/libro_caja/libro_caja.js'></script>";
        break;
    }
?>
