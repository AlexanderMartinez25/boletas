$(document).on('ready',function(){
    
    var l = $( '.ladda-button-demo' ).ladda();
    $('#monto').priceFormat({
        prefix: '',
        centsSeparator: ',',
        thousandsSeparator: '.'
    });
    
    $('#fecha').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });

    // envio de formulario
    $("#boletaForm").submit(function(e){
        e.preventDefault();
        var form = $(this);

        l.ladda( 'start' );
        $('#monto').unmask();

        $.ajax({                        
            url: form.attr('action'),
            type: form.attr('method'),                 
            data: form.serialize(),
            success: function(data)            
            {   
                l.ladda('stop');
                $('#resp').html('');       

                // si no hay errores de formulario y se inserta en la bd
                if(data.error==0 && data.updated==1){
                    swal({
                        title: "Boleta ingresada",
                        text: "Para continuar presione ok",
                        type: "success"
                    });
                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.updated!=1){
                    swal({
                        title: "Error en ingresar boleta",
                        text: "Para continuar presione ok",
                        type: "danger"
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