
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Libro de Caja</h2>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                

                <div class="tabs-container">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-check-square-o"></i> Registro</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-copy"></i> No Coincidencia</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="panel-body">
                                <h5>Registre Ingreso / Egreso. <small> <i class="fa fa-info-circle text-navy"></i> Los campos son requeridos. </small></h5>
                                <div class="hr-line-dashed"></div>
                                
                                <form method='post' role="form" action="<?php echo base_url();?>/libro_caja/process" id="libroCajaForm">
                                    <div id="resp"></div>  
                                    <?php 
                                        echo validation_errors(); 
                                        echo form_open('form'); 
                                    ?>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Documento <i class="fa fa-info-circle text-navy"></i></label>
                                                <select name="documento" id="documento" class="form-control">
                                                    <option value="">Seleccione</option>
                                                    <option value="1">Ingreso</option>
                                                    <option value="2">Egreso</option>
                                                </select>
                                            </div>
                                        </div>
                                            
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Tipo Documento <i class="fa fa-info-circle text-navy"></i></label> 
                                                <select id="tipo_documento" name="tipo_documento" class="form-control">
                                                    <option value="">Seleccione</option>
                                                    <?php
                                                        foreach ($tipo_documento as $tipo) {
                                                            echo "<option value=".$tipo->id_tipo_documento.">".$tipo->nombre."</option>";
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Rut Emisor <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="rut_emisor" name="rut_emisor" data-mask="99999999-9" placeholder="Ingrese Rut Emisor" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Fecha Operación <i class="fa fa-info-circle text-navy"></i></label> 
                                                <div class="input-group date">
                                                    <input type="text" id="fecha_operacion" name="fecha_operacion" class="form-control" placeholder="dd/mm/yyyy">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Monto Neto <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="monto_neto" name="monto_neto" placeholder="Ingrese Monto Neto" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>IVA <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="iva" name="iva" value="19" placeholder="Ingrese IVA" class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="col-sm-8">
                                            <div class="form-group">
                                                <label>Monto Operaciones Exentas o no Gravadas con IVA <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="m_no_gravada" name="m_no_gravada" placeholder="Ingrese Monto" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Monto Total <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="monto_total" name="monto_total" placeholder="Ingrese Monto Total" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Monto Percibido <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="monto_percibido" name="monto_percibido" placeholder="Ingrese Monto" class="form-control">
                                            </div>
                                        </div>
                                        
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Glosa Operación <i class="fa fa-info-circle text-navy"></i></label>
                                                <select name="glosa_operacion" id="glosa_operacion" class="form_control">
                                                    <option value="">Seleccione</option>
                                                    <?php
                                                        foreach ($glosa_operacion as $tipo) {
                                                            echo "<option value=".$tipo->id_glosa_operacion.">".$tipo->nombre."</option>";
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="col-sm-12">
                                            <div class="hr-line-dashed"></div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <div class="checkbox checkbox-primary">
                                                    <input id="entidad_relacionada" name="entidad_relacionada" value="1" type="checkbox">
                                                    <label for="entidad_relacionada">
                                                        Operación Entidad Relacionada
                                                    </label>
                                                </div> 
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <div class="checkbox checkbox-primary">
                                                    <input id="plazo_pago" name="plazo_pago" value="1" type="checkbox" onclick="toggle()">
                                                    <label for="plazo_pago">
                                                        Operación pactada con pago a plazo
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <div class="checkbox checkbox-primary">
                                                    <input id="percepcion" name="percepcion" value="1" type="checkbox">
                                                    <label for="percepcion">
                                                        Percepción o pago proviene de operación devengada
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-sm-8 col-md-">
                                            <div class="form-group">
                                                <label>Fecha de Exigibilidad del Pago <i class="fa fa-info-circle text-navy hide" id="showExi"></i></label> 
                                                <div class="input-group date">
                                                    <input type="text" id="fecha_exi" name="fecha_exi" class="form-control" disabled placeholder="dd/mm/yyyy">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="hr-line-dashed"></div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Monto Ingreso <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="monto_ingreso" name="monto_ingreso" placeholder="Monto Ingreso" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Monto Egreso <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="monto_egreso" name="monto_egreso" placeholder="Monto Egreso" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label>Saldo <i class="fa fa-info-circle text-navy"></i></label> 
                                                <input type="text" id="saldo" name="saldo" placeholder="Ingrese Saldo" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <button class="ladda-button ladda-button-demo btn btn-primary pull-right" data-style="zoom-in" id='guardar' type="submit"><strong>Guardar</strong></button>
                                        </div>
                                        
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <div class="panel-body">
                                <strong>Facturas no coincidentes</strong>

                                <p>Agregue los correspondientes documentos para analizar. </p>
                                
                                <div class="hr-line-dashed"></div>
                                <form method='post' role="form" action="<?php echo base_url();?>/libro_caja/do_upload"  enctype="multipart/form-data" id="analizaForm">
                                    <div id="resp2"></div>  
                                    <?php 
                                        echo validation_errors(); 
                                        echo form_open('form');
                                    ?>
                                    <div class="row">

                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Documento SII <i class="fa fa-info-circle text-navy"></i></label>
                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                    <span class="btn btn-default btn-file"><span class="fileinput-new">Seleciona Archivo</span>
                                                    <span class="fileinput-exists">Cambiar</span><input type="file" name="documento_sii"/></span>
                                                    <span class="fileinput-filename"></span>
                                                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">×</a>
                                                </div> 
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Documento del Sistema <i class="fa fa-info-circle text-navy"></i></label>
                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                    <span class="btn btn-default btn-file"><span class="fileinput-new">Seleciona Archivo</span>
                                                    <span class="fileinput-exists">Cambiar</span><input type="file" name="documento_sistema"/></span>
                                                    <span class="fileinput-filename"></span>
                                                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">×</a>
                                                </div> 
                                            </div>
                                        </div>
                                            
                                        <div class="col-sm-12">
                                            <button class="ladda-button ladda-button-demo btn btn-primary pull-right" data-style="zoom-in" id='analizar' type="submit"><strong>Analizar</strong></button>
                                        </div>
                                        
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>


                </div>

                

            </div>
        </div>
    </div>
</div>
