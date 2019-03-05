eventListener();

function eventListener(){
    // DETECTAR SI SE DIO CLIC EN EL FORMULARIO DE INICIO DE SESION
    if(document.getElementById('btnEntrar') !== null)
        document.getElementById('btnEntrar').addEventListener('click', iniciarSesion);

    if(document.getElementById('btnSalir') !== null)
        document.getElementById('btnSalir').addEventListener('click', cerrarSesion);
}

function iniciarSesion(e){
    e.preventDefault();
    document.getElementById('btnEntrar').removeEventListener('click', iniciarSesion);
    
    var usuario = document.getElementById('txtUsuario').value,
        clave = document.getElementById('txtClave').value,
        accion = document.getElementById('accion').value;

    // console.log('Iniciaste sesión ' + usuario + ' ' + clave + ' ' + accion);

    if(usuario === '' || clave === ''){
        swal({
            title: 'Error!',
            text: 'Favor de llenar todos los campos',
            type: 'error'
        }).then(resultado => {
            if(resultado.value){
                location.reload();
            }
        })
    } else {
        // datos que se envian al servidor
            var datos = new FormData();
            datos.append('usuario', usuario);
            datos.append('clave', clave);
            // datos.append('accion', tipo);
            datos.append('action', accion);
            
            // crear el llamado a ajax
            var xhr = new XMLHttpRequest();
            
            // abrir la conexión.
            xhr.open('POST', 'http://187.188.159.205:8090/web_serv/accessWeb/inc/model/forms.php', true);
            
            // retorno de datos
            xhr.onload = function(){
                if(this.status === 200 && this.readyState === 4) {
                    var respuesta = JSON.parse(xhr.responseText);
                    
                    // Si la respuesta es correcta
                    if(respuesta.estado === 'OK') 
                    {
                        var tipo = respuesta.tipo,
                            mensaje = respuesta.mensaje,
                            informacion = respuesta.informacion,
                            usuario_activo = respuesta.usuario_activo,
                            usuario_departamento = respuesta.usuario_departamento,
                            ubicacion = respuesta.ubicacion,
                            usuario_nombre = respuesta.usuario_nombre,
                            sesion = respuesta.sesion;
                            if(sesion)
                            {
                                //INICIAR SESION METODO (SEGURA)
                                asignarSesion(usuario_activo, usuario_nombre, usuario_departamento);
                                swal({
                                    type: tipo,
                                    title: informacion,
                                    text: mensaje + ' ' + usuario_nombre,
                                    timer: 1800,
                                    showConfirmButton: false,
                                    backdrop: `
                                        rgba(13, 63, 114, 0.6)
                                        center top
                                        no-repeat
                                    `
                                }).then(function(){ 
                                    // location.reload();
                                    window.location.href = 'index.php?request='+ubicacion;
                                })
                            }else
                            {
                                swal({
                                    type: tipo,
                                    title: informacion,
                                    text: mensaje,
                                    timer: 1800,
                                    showConfirmButton: false,
                                    backdrop: `
                                        rgba(13, 63, 114, 0.6)
                                        center top
                                        no-repeat
                                    `
                                }).then(function(){ 
                                    location.reload();
                                })
                            }
                            
                    }
                    else if(respuesta.estado === 'NOK')
                    {
                        Swal.fire({
                            position: 'center',
                            type: 'error',
                            title: 'Hay un problema con la Base de datos!',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    }
                }
            }
            // Enviar la petición
            xhr.send(datos);
    }
}

function asignarSesion( id, name, depto ){
    var u_nombre = name,
        u_id =  id,
        u_depto = depto;
    $.ajax({
        url: 'inc/model/crear_sesion.php',
        type: 'GET',
        data: 'id=' + u_id + '&name=' + u_nombre + '&depto_id=' + u_depto,
        error: function(xhr, status, error) {
            alert("error");
        }
    });
}

function cerrarSesion(e){
    e.preventDefault();
    document.getElementById('btnSalir').removeEventListener('click', cerrarSesion);
    // console.log('cerrar');
    var accion = 'salir';
    var cerrar_sesion = new FormData();
    cerrar_sesion.append('accion', accion);
    var xmlhr = new XMLHttpRequest();
    xmlhr.open( 'POST', 'inc/model/control.php', true );
    xmlhr.onload = function(){
        if (this.status === 200){
            var respuesta = JSON.parse(xmlhr.responseText);
            var tipo = respuesta.tipo,
                        titulo = respuesta.mensaje,
                        mensaje = respuesta.informacion;
                        swal({
                            type: tipo,
                            title: titulo,
                            text: mensaje,
                            timer: 1800,
                            showConfirmButton: false,
                            backdrop: `
                                rgba(13, 63, 114, 0.6)
                                center top
                                no-repeat
                            `
                        }).then(function(){ 
                            window.location.href = 'index.php';
                        })
        } else {
            swal({
                title: 'Error!',
                text: 'Hubo un error',
                type: 'error'
            })            
        }
    }
    xmlhr.send(cerrar_sesion);
}


