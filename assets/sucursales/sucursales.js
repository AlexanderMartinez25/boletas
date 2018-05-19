$(document).ready(function(){
    $('#tabla-sucursales').DataTable({
        pageLength: 25,
        responsive: true,
        dom: '<"html5buttons"B>lTfgitp',
        buttons: [
            // { extend: 'copy'},
            {extend: 'csv'},
            {extend: 'excel', title: 'Sucursales'},
            {extend: 'pdf', title: 'Sucursales'},

            {extend: 'print',
                customize: function (win){
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                }
            }
        ]

    });

     // envio de formulario
     $("#sucursalForm").submit(function(e){
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
                
                if(data.error==0 && data.updated==1){
                    swal({
                        title: "Sucursal agregada",
                        text: "Para continuar presione ok",
                        type: "success"
                    });
                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.updated!=1){
                    swal({
                        title: "Error en agregar sucursal",
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

