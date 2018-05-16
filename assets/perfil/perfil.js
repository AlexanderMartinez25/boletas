$(document).on('ready',function(){
    $("#perfilForm").submit(function(e){
        e.preventDefault();
        var form = $(this);

        $.ajax({                        
            url: form.attr('action'),
            type: form.attr('method'),                 
            data: form.serialize(),
            success: function(data)            
            {
                if(data.error==0){
                    console.log('errores de input');
                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.updated!=1){
                    console.log('exito al actualizar')
                }else{
                    console.log('no se actualizo')
                }
            },
            
        });
    });
});