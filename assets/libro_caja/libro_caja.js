$(document).on('ready',function(){
    
    var l = $( '#guardar' ).ladda();
    
    $('#fecha_operacion, #fecha_exi').datepicker({
        keyboardNavigation: false,
        forceParse: false,
        language: "es",
        autoclose: true
    });

    $("#tipo_documento,#glosa_operacion,#documento").select2();

    $('#monto_neto,#monto_total,#m_no_gravada,#monto_percibido,#monto_ingreso,#monto_egreso,#saldo').priceFormat({
        prefix: '',
        centsSeparator: ',',
        thousandsSeparator: '.'
    });

    // envio de formulario
    $("#libroCajaForm").submit(function(e){
        e.preventDefault();
        var form = $(this);

        l.ladda( 'start' );
        
        $.ajax({                        
            url: form.attr('action'),
            type: form.attr('method'),                 
            data: form.serialize(),
            success: function(data)            
            {   
                l.ladda('stop');
                $('#resp').html('');       

               // si no hay errores de formulario y se inserta en la bd
                if(data.error==0 && data.insert==1){
                    swal({
                        title: "Datos insertados",
                        text: "Para continuar presione ok",
                        type: "success"
                    });
                    $("#libroCajaForm")[0].reset();
                    $("#tipo_documento,#glosa_operacion,#documento").select2();

                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.insert!=1){
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

function toggle() {
    var checkBox = document.getElementById('plazo_pago');

    if (checkBox.checked == true) {
        $('#fecha_exi').removeAttr('disabled');
        $('#showExi').removeClass('hide');
    }
    else {
        $('#fecha_exi').attr('disabled', 'disabled');
        $('#fecha_exi').val('');
        $('#showExi').addClass('hide');
    }
}

