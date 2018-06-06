$(document).on('ready',function(){
    
    var l = $( '#guardar' ).ladda();
    
    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green'
    });

    $('#fecha_operacion, #fecha_exi').datepicker({
        keyboardNavigation: false,
        forceParse: false,
        language: "es",
        autoclose: true
    });
    $("#glosa_operacion").select2({
        placeholder: "Selecciona",
        allowClear: true
    });
    $('#monto_neto,#monto_total,#monto_percibido,#monto_ingreso,#monto_egreso,#saldo').priceFormat({
        prefix: '',
        centsSeparator: ',',
        thousandsSeparator: '.'
    });
    // envio de formulario
    $("#libroCajaForm").submit(function(e){
        e.preventDefault();
        var form = $(this);

        l.ladda( 'start' );
        $('.spiner-example').removeClass('hide').fadeIn();
        
        $.ajax({                        
            url: form.attr('action'),
            type: form.attr('method'),                 
            data: form.serialize(),
            success: function(data)            
            {   
               // si no hay errores de formulario y se inserta en la bd
               if(data.error==0 && data.updated==1){
                    swal({
                        title: "Datos insertados",
                        text: "Para continuar presione ok",
                        type: "success"
                    });
                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.updated!=1){
                    swal({
                        title: "Error al insertar datos",
                        text: "Para continuar presione ok",
                        type: "warning"
                    });
                }
                
            },
            error: function(data)            
            {
                console.log(data);
            }
            
        });
    });
});
