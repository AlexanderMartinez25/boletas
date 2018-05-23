<?php 
    if ($datos_perfil['tipo_cliente']==1){ // juridico
        $juridico ='';
        $natural  = 'disabled';
    }else{
        $juridico='disabled';
        $natural='';
    }

?>

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
                    <h5>Información. <small> <i class="fa fa-info-circle text-navy"></i> Los campos son requeridos. </small></h5>
                </div>

                <div class="ibox-content">
                    <form method='post' role="form" action="<?php echo base_url();?>/perfil/process" id="perfilForm">
                        <?php 
                            echo validation_errors(); 
                            echo form_open('form'); 
                        ?>
                        <!-- ENTIDAD -->
                        <div class="row">
                            <div class="col-sm-12">
                                <h3>Datos Entidad</h3>
                            </div>
                            <div id="resp" class="col-sm-12"></div>

                            <div class="col-sm-4">
                                
                                <div class="form-group">
                                    <label>Tipo <i class="fa fa-info-circle text-navy"></i></label> 
                                    <select id="tipo_cliente" name="tipo_cliente" class="form-control">
                                        <?php
                                            if( $datos_perfil['tipo_cliente'] == 1 ){
                                                echo '<option value='.$datos_perfil['tipo_cliente'].'>Jurídico</option>
                                                    <option value="2">Natural</option>';
                                            }else{
                                                echo '<option value='.$datos_perfil['tipo_cliente'].'>Natural</option>
                                                    <option value="1">Jurídico</option>';
                                            }
                                            
                                        ?>
                                    </select>
                                </div>
                            </div>
                                
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Nombre <i class="fa fa-info-circle hide text-navy" id="alert-nombre"></i></label> 
                                    <input type="text" id="nombre" name="nombre" placeholder="Ingrese Nombre" value="<?= $datos_perfil['nombre']?>" <?php echo $natural;?> class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Apellido <i class="fa fa-info-circle hide text-navy" id="alert-apellido"></i></label> 
                                    <input type="text" id="apellido" name="apellido" placeholder="Ingrese Apellido" value="<?= $datos_perfil['apellido']?>" <?php echo $natural;?> class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Email <i class="fa fa-info-circle text-navy"></i></label> 
                                    <input type="email" id="email" name="email" placeholder="Ingrese Email" value="<?= $datos_perfil['email']?>" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Rut <i class="fa fa-info-circle text-navy"></i></label> 
                                    <input type="text" id="rut" name="rut" data-mask="99999999-9" placeholder="Ingrese Rut" value="<?= $datos_perfil['rut']?>" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Razón Social <i class="fa fa-info-circle text-navy" id="alert-razon"></i></label> 
                                    <input type="text" id="razon_social" name="razon_social" placeholder="Ingrese Razón" value="<?= $datos_perfil['razon_social']?>" <?php echo $juridico;?> class="form-control">
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Nombre de Fantasia <i class="fa fa-info-circle text-navy hide" id="alert-fantasia"></i></label> 
                                    <input type="text" id="nombre_fantasia" name="nombre_fantasia" placeholder="Ingrese Nombre" value="<?= $datos_perfil['nombre_fantasia']?>" <?php echo $juridico;?> class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Tipo Contribuyente <i class="fa fa-info-circle text-navy"></i></label> 
                                    <select id="tipo_contribuyente" name="tipo_contribuyente" class="form-control">
                                        <?php
                                            if( $datos_perfil['tipo_contribuyente'] == 1 ){
                                                echo '<option value='.$datos_perfil['tipo_contribuyente'].'>Ter A</option>
                                                    <option value="2">Ter B</option>
                                                    <option value="3">Ter 14</option>
                                                ';
                                            }elseif( $datos_perfil['tipo_contribuyente'] == 2 ){
                                                echo '<option value='.$datos_perfil['tipo_contribuyente'].'>Ter B</option>
                                                    <option value="1">Ter A</option>
                                                    <option value="3">Ter 14</option>
                                                ';
                                            }elseif( $datos_perfil['tipo_contribuyente'] == 3 ){
                                                echo '<option value='.$datos_perfil['tipo_contribuyente'].'>Ter 14</option>
                                                    <option value="1">Ter A</option>
                                                    <option value="2">Ter B</option>
                                                ';
                                            }
                                            
                                        ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- / ENTIDAD -->
                        <div class="hr-line-dashed"></div>

                        <div class="row">
                            <div class="col-sm-12">
                                <h3>Dirección</h3>
                            </div>
                                
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Región <i class="fa fa-info-circle text-navy"></i></label>
                                    <select name="region" id="region" class="form-control">
                                        <?php
                                            if( $datos_perfil['id_region'] ){
                                                echo "<option value=".$datos_perfil['id_region'].">".$datos_perfil['region_nombre']."</option>";
                                            }
                                            foreach ($regiones as $region) {
                                                echo "<option value=".$region->region_id.">".$region->region_nombre."</option>";
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Provincia <i class="fa fa-info-circle text-navy"></i></label> 
                                    <select name="provincia" id="provincia" class="form-control">
                                        <?php
                                            if( $datos_perfil['id_provincia'] ){
                                                echo "<option value=".$datos_perfil['id_provincia'].">".$datos_perfil['provincia_nombre']."</option>";
                                            }
                                            foreach ($provincias as $provincia) {
                                                echo "<option value=".$provincia->provincia_id.">".$provincia->provincia_nombre."</option>";
                                            }
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Comuna <i class="fa fa-info-circle text-navy"></i></label> 
                                    <select name="comuna" id="comuna" class="form-control">
                                        <?php
                                            if( $datos_perfil['id_comuna'] ){
                                                echo "<option value=".$datos_perfil['id_comuna'].">".$datos_perfil['comuna_nombre']."</option>";
                                            }
                                            foreach ($comunas as $comuna) {
                                                echo "<option value=".$comuna->comuna_id.">".$comuna->comuna_nombre."</option>";
                                            }
                                        ?>                                    
                                    </select>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Calle <i class="fa fa-info-circle text-navy"></i></label> 
                                    <input type="text" id="calle" name="calle" placeholder="Ingrese Calle" value="<?= $datos_perfil['calle']?>" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Número <i class="fa fa-info-circle text-navy"></i></label> 
                                    <input type="text" id="numero" name="numero" placeholder="Ingrese Número" value="<?= $datos_perfil['numero']?>" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Dpto./ Casa/ Oficina/ Condominio</label> 
                                    <input type="text" id="vivienda" name="vivienda" value="<?= $datos_perfil['vivienda']?>" class="form-control">
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Teléfono</label> 
                                    <input type="text" id="telefono" data-mask="(9)-99999999" name="telefono" placeholder="Ingrese Teléfono" value="<?= $datos_perfil['telefono']?>" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <button class="ladda-button ladda-button-demo btn btn-primary pull-right" data-style="zoom-in" id='actualiza' disabled ='disabled'  type="submit"><strong>Actualizar</strong></button>
                            </div>
                            
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
