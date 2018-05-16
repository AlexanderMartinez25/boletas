<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Perfil</h2>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Información. <small> Los campos con (<i class="fa fa-info-circle text-warning"></i>) son requeridos. </small></h5>
                </div>

                

                <div class="ibox-content">
                    <form method='post' role="form" action="<?php echo base_url();?>index.php/perfil/process" id="perfilForm">
                        <?php 
                            echo validation_errors(); 
                            echo form_open('form'); 
                        ?>
                        <div class="row">
                            <div id="resp"></div>  
                            
                            <div class="col-sm-4 b-r">
                                <div class="form-group">
                                    <label>Nombre <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="nombre" name="nombre" placeholder="Ingrese Nombre" value="<?= $datos_perfil['nombre']?>" class="form-control">
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Apellido <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="apellido" name="apellido" placeholder="Ingrese Apellido" value="<?= $datos_perfil['apellido']?>" class="form-control">
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Email <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="email" id="email" name="email" placeholder="Ingrese Email" value="<?= $datos_perfil['email']?>" class="form-control">
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Rut <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="rut" name="rut" data-mask="99999999-9" placeholder="Ingrese Rut" value="<?= $datos_perfil['rut']?>" class="form-control">
                                </div>
                                
                            </div>
                            <div class="col-sm-4 b-r">
                                <div class="form-group">
                                    <label>Teléfono</label> 
                                    <input type="text" id="telefono" data-mask="(9)-99999999" name="telefono" placeholder="Ingrese Teléfono" value="<?= $datos_perfil['telefono']?>" class="form-control">
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Región <i class="fa fa-info-circle text-warning"></i></label>
                                    <select name="region" id="region" class="form-control">
                                        <option value="">Seleccione</option>
                                        <option value=""><?= $datos_perfil['region']?></option>
                                    </select>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Provincia <i class="fa fa-info-circle text-warning"></i></label> 
                                    <select name="provincia" id="provincia" disabled="disabled" class="form-control">
                                        <option value=""></option>
                                    </select>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Comuna <i class="fa fa-info-circle text-warning"></i></label> 
                                    <select name="comuna" id="comuna" disabled="disabled" class="form-control">
                                        <option value=""></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Calle <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="calle" name="calle" placeholder="Ingrese Calle" value="<?= $datos_perfil['calle']?>" class="form-control">
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Número <i class="fa fa-info-circle text-warning"></i></label> 
                                    <input type="text" id="numero" name="numero" placeholder="Ingrese Número" value="<?= $datos_perfil['numero']?>" class="form-control">
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group">
                                    <label>Dpto./ Casa/ Oficina/ Condominio</label> 
                                    <input type="text" id="vivienda" name="vivienda" value="<?= $datos_perfil['vivienda']?>" class="form-control">
                                </div>

                            </div>
                            <div class="col-sm-12">
                                <button class="ladda-button ladda-button-demo btn btn-primary pull-right" type="submit"><strong>Actualizar</strong></button>
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
