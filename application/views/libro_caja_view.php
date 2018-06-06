
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Libro de Caja</h2>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Registre ingreso/egreso. <small> <i class="fa fa-info-circle text-navy"></i> Los campos son requeridos. </small></h5>
                </div>

                <div class="ibox-content">
                    <form method='post' role="form" action="<?php echo base_url();?>/libro_caja/process" id="libroCajaForm">
                        <div id="resp" class="col-sm-12"></div>  
                        <?php 
                            echo validation_errors(); 
                            echo form_open('form'); 
                        ?>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Documento <i class="fa fa-info-circle text-navy"></i></label> 
                                    <input type="text" id="documento" name="documento" placeholder="Ingrese Documento" class="form-control">
                                </div>
                            </div>
                                
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Tipo Documento <i class="fa fa-info-circle hide text-navy"></i></label> 
                                    <input type="text" id="tipo_documento" name="tipo_documento" placeholder="Ingrese Tipo Documento" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Rut Emisor <i class="fa fa-info-circle hide text-navy"></i></label> 
                                    <input type="text" id="rut_emisor" name="rut_emisor" placeholder="Ingrese Rut Emisor" class="form-control">
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
                                    <input type="number" id="monto_neto" name="monto_neto" placeholder="Ingrese Monto Neto" class="form-control">
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
                                    <label>Monto Operaciones Exentas o no Gravadas con IVA <i class="fa fa-info-circle text-navy hide"></i></label> 
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
                                    <input type="text" id="glosa_operacion" name="glosa_operacion" placeholder="Glosa Operación" class="form-control">
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="checkbox checkbox-primary">
                                        <input id="entidad_relacionada" type="checkbox">
                                        <label for="entidad_relacionada">
                                            Operación Entidad Relacionada
                                        </label>
                                    </div> 
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="checkbox checkbox-primary">
                                        <input id="percepcion" type="checkbox">
                                        <label for="percepcion">
                                            Operación pactada con pago a plazo
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Fecha de Exigibilidad del Pago <i class="fa fa-info-circle text-navy"></i></label> 
                                    <div class="input-group date">
                                        <input type="text" id="fecha_exi" name="fecha_exi" class="form-control" disabled placeholder="dd/mm/yyyy">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="checkbox checkbox-primary">
                                        <input id="percepcion" type="checkbox">
                                        <label for="percepcion">
                                            Percepción
                                        </label>
                                    </div>
                                </div>
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
                                <button class="ladda-button ladda-button-demo btn btn-primary pull-right" data-style="zoom-in" id='actualiza' disabled ='disabled'  type="submit"><strong>Actualizar</strong></button>
                            </div>
                            
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
