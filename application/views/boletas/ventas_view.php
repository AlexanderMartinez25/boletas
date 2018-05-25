<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Ventas</h2>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Consultar Ventas. <small> <i class="fa fa-info-circle text-navy"></i> Los campos son requeridos. </small></h5>
                </div>
                
                <div class="ibox-content">
                    <form method='post' role="form" action="<?php echo base_url();?>/ventas/process" id="ventasForm">
                        <?php 
                            echo validation_errors(); 
                            echo form_open('form'); 
                        ?>
                        <div class="row">
                        
                            <div id="resp" class="col-sm-12"></div>  
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Sucursal <i class="fa fa-info-circle text-navy"></i></label>
                                    <select name="sucursal" id="sucursal" class="form-control">
                                    <option value="">Seleccione</option>
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

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Rango de Fecha <i class="fa fa-info-circle text-navy"></i></label> 
                                    <div class="input-daterange input-group" id="datepicker">
                                        <input type="text" class="form-control" name="start" autocomplete="off" />
                                        <span class="input-group-addon">a</span>
                                        <input type="text" class="form-control" name="end" autocomplete="off" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-2 m-t-md">
                                <button class="ladda-button ladda-button-demo btn btn-primary pull-right" data-style="zoom-in" id='buscar' type="submit"><strong>Buscar</strong></button>
                            </div>
                            
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox">
                <div class="ibox-content" style="position:relative;">

                    <!-- spinner -->
                    <div class="spiner-example hide">
                        <div class="sk-spinner sk-spinner-cube-grid">
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                            <div class="sk-cube"></div>
                        </div>
                    </div>
                    <!-- / spinner -->

                    <table class="table hide">
                        <thead>
                            <tr>
                                <th>Cantidad de Boletas</th>
                                <th>Monto Neto</th>
                                <th>Débito Fiscal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="result">
                                
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
