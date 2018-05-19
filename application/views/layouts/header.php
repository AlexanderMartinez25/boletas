<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>VMC Tecnología | <?= $titulo;?></title>

    <link href="<?php echo base_url('../assets/html/css/bootstrap.min.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('../assets/html/font-awesome/css/font-awesome.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('../assets/html/css/style.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('../assets/html/css/animate.css');?>" rel="stylesheet">
    <!-- loading button -->
    <link href="<?php echo base_url('../assets/html/css/plugins/ladda/ladda-themeless.min.css');?>" rel="stylesheet">
    <!-- Input Mask-->
    <link href="<?php echo base_url('../assets/html/css/plugins/jasny/jasny-bootstrap.min.css');?>" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="<?php echo base_url('../assets/html/css/plugins/sweetalert/sweetalert.css');?>" rel="stylesheet">
    <?php
        if($titulo=="Sucursales"){
            echo"<link href=".base_url('../assets/html/css/plugins/dataTables/datatables.min.css')." rel='stylesheet'>";
        }
    ?>
</head>