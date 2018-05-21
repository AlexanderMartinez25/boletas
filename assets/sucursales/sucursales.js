$(document).ready(function(){

    var l = $( '.ladda-button-demo' ).ladda();
    
    crearTabla();

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
                
                // si no hay errores de formulario y se inserta en la bd
                if(data.error==0 && data.insert==1){
                    swal({
                        title: "Sucursal agregada",
                        text: "Para continuar presione ok",
                        type: "success"
                    });

                    $('#sucursalForm')[0].reset();
                    $('#modal_add_sucursal').modal('hide');
                    recrearTabla();
                    
                    
                }else if(data.error==1){
                    $('#resp').html(data.errores);       
                }else if(data.insert!=1){
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

    // envio de formulario editar
    $("#sucursalEditForm").submit(function(e){
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
                $('#resp_edit').html('');       
                
                // si no hay errores de formulario y se inserta en la bd
                if(data.error==0 && data.insert==1){
                    swal({
                        title: "Sucursal actualizada",
                        text: "Para continuar presione ok",
                        type: "success"
                    });

                    $('#sucursalEditForm')[0].reset();
                    $('#modal_edit_sucursal').modal('hide');
                    recrearTabla();
                    
                    
                }else if(data.error==1){
                    $('#resp_edit').html(data.errores);       
                }else if(data.insert!=1){
                    swal({
                        title: "Error en actualizar sucursal",
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

function recrearTabla() {
    $.ajax({                        
        url: window.location.href+'/get_sucursales',
        success: function(data)            
        {   
            // destruimos la tabla
            $('#tabla-sucursales').DataTable().destroy();
            $('#body-sucursales').html('');
            // recreamos la tabla
            for(var i in data){
                $('#body-sucursales').append('<tr> <td>'+data[i].nombre+'</td> <td><button class="btn btn-warning btn-xs" onClick="editar(\''+data[i].id_sucursal+'\',\''+data[i].nombre+'\')" type="button"><i class="fa fa-pencil"></i> <span class="bold">Editar</span></button> <button class="btn btn-danger btn-xs" onClick="eliminar(\''+data[i].id_sucursal+'\')" type="button"><i class="fa fa-trash"></i> <span class="bold">Eliminar</span></button></td></tr>')
            }            
            crearTabla();
            
        }
    });
}

function editar(id,nombre){
    $('#nombre_edit').val(nombre);
    $('#id_edit').val(id);
    $('#resp_edit').html('');
    $('#modal_edit_sucursal').modal('show');
    
}

function eliminar(id) {
    swal({
        title: "¿Estas seguro?",
        text: "no podrás recuperarla después de elimnarla",
        type: "warning",
        showCancelButton: true,
        cancelButtonText: 'Cancelar',
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "Si, eliminar!",
        closeOnConfirm: false
    }, function () {
        id_delete = id;
        $.ajax({                        
            url: window.location.href+'/delete',
            data: {'id_delete' : id_delete},
            type: 'post',                 
            success: function(data)            
            {   
                // destruimos la tabla
                $('#tabla-sucursales').DataTable().destroy();
                $('#body-sucursales').html('');
                // recreamos la tabla
                if (data==1){
                    swal("Eliminada!", "Sucursal eliminada.", "success");
                    recrearTabla();

                }else{
                    swal("Error en eliminar sucursal!", "Para continuar presione ok.", "danger");
                }          
            }
        });
    });
}

function crearTabla() {
    $('#tabla-sucursales').DataTable({
        pageLength: 25,
        responsive: true,
        dom: '<"html5buttons"B>lTfgitp',
        buttons: [
            // { extend: 'copy'},
            // {extend: 'csv'},
            {
                text: 'Agregar',
                className: 'btn btn btn-primary',
                action: function (e, dt, node, config) {
                    $('#modal_add_sucursal').modal('show');
                    $('#resp').html('');
                }
            },
            { extend: 'excel', title: 'Sucursales' },
            { extend: 'pdf', title: 'Sucursales' },
            {
            extend: 'print',
                customize: function (win) {
                    $(win.document.body).addClass('white-bg');
                    $(win.document.body).css('font-size', '10px');
                    $(win.document.body).find('table')
                        .addClass('compact')
                        .css('font-size', 'inherit');
                }
            }
        ]
    });
}

