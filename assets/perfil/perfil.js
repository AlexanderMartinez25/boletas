$(document).on('ready',function(){
    
    var l = $( '.ladda-button-demo' ).ladda();

    // cambiar region
    $("#region").change(function(e){

        let region = $('#region').val();

        if (region){
            $.ajax({                        
                url: window.location.href+'/provincias/'+region,
                success: function(provincias)            
                {   
                    $('#provincia').html(provincias);
                    $.each(provincias, function(key, value) {
                        console.log(value.provincia_id, value.provincia_nombre);
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
                url: window.location.href+'/comunas/'+provincia,
                success: function(comunas)            
                {   
                    $('#provincia').html(comunas);
                    $.each(comunas, function(key, value) {
                        console.log(value.provincia_id, value.provincia_nombre);
                    });
                },
                
            });
        }
    });
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
                        type: "success"
                    });
                }
            },
            
        });
    });
});