<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Boleta</h2>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Ingreso de nueva boleta. <small> <i class="fa fa-info-circle text-warning"></i> Los campos son requeridos. </small></h5>
                </div>

                <div class="ibox-content">
                    <form method='post' role="form" action="<?php echo base_url();?>/boleta/process" id="boletaForm">
                        <?php 
                            echo validation_errors(); 
                            echo form_open('form'); 
                        ?>
                        <div class="row">
                        
                            <div id="resp" class="col-sm-12"></div>  
                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Sucursal <i class="fa fa-info-circle text-warning"></i></label>
                                    <select name="sucursal" id="sucursal" class="form-control">
                                        <?php
                                            foreach ($sucursales as $sucursal) {
                                                echo "
                                                    <option value='".$sucursal->id_sucursal."'>".$sucursal->nombre."</option>
                                                ";
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Número <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="text" name="text" placeholder="Ingrese Número" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Fecha <i class="fa fa-info-circle text-warning"></i></label> 
                                    <div class="input-group date">
                                        <input type="text" id="fecha" name="fecha" class="form-control" placeholder="dd/mm/yyyy">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3">
                                <div class="form-group">
                                    <label>Monto <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="text" name="text" placeholder="Ingrese Monto" class="form-control">
                                </div>
                            </div>
                            
                            <div class="col-sm-12">
                                <button class="ladda-button ladda-button-demo btn btn-primary pull-right" data-style="zoom-in" id='actualiza' type="submit"><strong>Actualizar</strong></button>
                            </div>
                            
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
