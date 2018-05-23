$(document).on('ready',function(){
    
    var l = $( '.ladda-button-demo' ).ladda();
    
    $('#region,#provincia,#comuna,#tipo_contribuyente,#tipo_cliente').select2({
        placeholder: 'Seleccione'
    });

    // cambiar region
    $("#region").change(function(e){

        let region = $('#region').val();

        if (region){
            $.ajax({                        
                url: window.location.href+'/provincias/'+region,
                success: function(provincias)            
                {   
                    $('#provincia').html('');
                    $('#provincia').html('<option value="">Seleccione</option>');

                    $.each(provincias, function(key, value) {
                        $('#provincia').append('<option value="'+value.provincia_id+'">'+value.provincia_nombre+'</option>');
                    });
                },
                
            });
        }

        $("#provincia").val('');
    });
    
    // cambiar provincia
    $("#provincia").change(function(e){

        let provincia = $('#provincia').val();

        if (provincia){
            $.ajax({                        
                url: window.location.href+'/comunas_by_provincia/'+provincia,
                success: function(comunas)            
                {   
                    $('#comuna').html('<option value="">Seleccione</option>');
                    $.each(comunas, function(key, value) {
                        $('#comuna').append('<option value="'+value.comuna_id+'">'+value.comuna_nombre+'</option>');
                    });
                },
                
            });
        }
    });


    // cambiar tipo_cliente
    $('#tipo_cliente').on("change", function(e) { 
        let tipo_cliente = $('#tipo_cliente').val();

        if (tipo_cliente==1){ //juridico
            $('#razon_social,#nombre_fantasia').removeAttr('disabled');
            $('#alert-razon,#alert-fantasia').removeClass('hide');
            $('#nombre,#apellido').prop('disabled','disabled').val('');
            $('#alert-nombre,#alert-apellido').addClass('hide');
            
        }else{
            $('#nombre,#apellido').removeAttr('disabled');
            $('#alert-nombre,#alert-apellido').removeClass('hide');
            $('#razon_social,#nombre_fantasia').prop('disabled','disabled').val('');
            $('#alert-razon,#alert-fantasia').addClass('hide');
            
        };
    });

    // activar boton de actualizar al cambiar algun campo
    $("#perfilForm").change(function(e){
        $('#actualiza').removeAttr('disabled');
    })
    // envio de formulario
    $("#perfilForm").submit(function(e){
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
                if(data.error==0 && data.updated==1){
                    swal({
                        title: "Datos actualizados",
                        text: "Para continuar presione ok",
                        type: "success"
                    });
                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.updated!=1){
                    swal({
                        title: "Error en actualizar datos",
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