$(document).on('ready',function(){
    
    var l = $( '#guardar' ).ladda();

    $('#monto').priceFormat({
        prefix: '',
        centsSeparator: ',',
        thousandsSeparator: '.'
    });
    
    select2Active();

    $('#fecha').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        language: "es",
        autoclose: true
    });

    // envio de formulario
    $("#boletaForm").submit(function(e){
        e.preventDefault();
        var form = $(this);

        l.ladda( 'start' );
        montoUnformat = $('#monto').unmask();
        $('#monto_hide').val(montoUnformat);
        
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
                        title: "Boleta ingresada",
                        text: "Para continuar presione ok",
                        type: "success"
                    });
                    $("#boletaForm")[0].reset();
                    select2Active();

                }else if(data.error==1){
                    $('#resp').html(data.errores);
                }else if(data.error==2){
                    
                    toasterOptions();
                    toastr.error('Existe un mismo número de boleta para la sucursal seleccionada', 'Error al insertar');

                }else if(data.insert!=1){
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

function toasterOptions() {
    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "8000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };
};



function select2Active() {
    $("#sucursal").select2({
        placeholder: "Selecciona Sucursal",
        allowClear: true
    });
}
