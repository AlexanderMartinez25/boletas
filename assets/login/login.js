    $(document).on('ready',function(){
        $("#loginForm").submit(function(e){
            e.preventDefault();
            var form = $(this);

            $.ajax({                        
                url: form.attr('action'),
                type: form.attr('method'),                 
                data: form.serialize(),
                success: function(data)            
                {
                    if(data.error==0){
                        location.href = data.ruta;
                    }else if(data.error==1){
                        $('#resp').html(data.errores);       
                    }else{
                        $('#resp').html('<div class="text-danger"><i class="fa fa-info-circle"/> El usuario o contraseña son incorrectos </div>');       
                    }   
                },
                
            });
        });
    });