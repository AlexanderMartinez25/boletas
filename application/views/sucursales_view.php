<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Sucursales</h2>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Listado de Sucursales</h5>
                </div>

                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="tabla-sucursales">
                            <thead>
                                <tr>
                                    <th>Sucursal</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($sucursales as $sucursal) {
                                        echo "<tr>
                                            <td>".$sucursal->id_sucursal." ".$sucursal->nombre."</td>
                                        </tr>";
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- modal agregar sucursal -->
    <div class="modal inmodal fade" id="modal_sucursal" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Agregar sucursal de ventas</h4>
                </div>
                <form method='post' role="form" action="<?php echo base_url();?>/sucursal/process" id="sucursalForm">
                    <?php 
                        echo validation_errors(); 
                        echo form_open('form'); 
                    ?>
                    <div class="modal-body">
                        
                        <div class="row">
                        
                            <div id="resp" class="col-sm-12"></div>  
                            <div class="col-sm-4 b-r">
                                <div class="form-group">
                                    <label>Nombre <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="nombre" name="nombre" placeholder="Ingrese Nombre" value="" class="form-control">
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-white" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="ladda-button btn btn-primary" data-style="zoom-in">Guardar</button>
                    </div>
                </form>
                
            </div>
        </div>
    </div>
</div>
<!-- crear boton de agregar
con respectivo diseño
para que llame al modal

tambien debe tener boton editar 
el cual debe llamar a una funcion en javasscript
pasandole el id_sucursal invicando al modal editar -->
