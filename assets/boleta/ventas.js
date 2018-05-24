$(document).on('ready',function(){
    
    var l = $( '#buscar' ).ladda();

    select2Active();

    $('.input-daterange').datepicker({
        keyboardNavigation: false,
        forceParse: false,
        language: "es",
        autoclose: true
    });

    // envio de formulario
    $("#ventasForm").submit(function(e){
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
                if(data.error==0){

                }else if(data.error==1){
                    $('#resp').html(data.errores);
                }
            },
            error: function(data)            
            {
                console.log(data);
            }
            
        });
    });
});

function select2Active() {
    $("#sucursal").select2({
        placeholder: "Selecciona Sucursal",
        allowClear: true
    });
}
