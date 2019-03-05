$(document).ready(function(){

    //BUSCADOR
    var seccion = $('#tablaActual').val(),
        folder = seccion.toUpperCase();
    // llenarTablas(seccion);
    console.log(seccion);

    $("#searchBox").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tablaInformacion tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
    });

    if (seccion === 'nuevoDocumento'){
        nuevoDocumento();
    }else if(seccion === 'editarDocumento'){
        editarDocumento();
    }else if(seccion === ''){
        // DO SOMETHING
    }else{
        llenarTablas(seccion);
    }

    function llenarTablas(seccion = ''){
        var accion  = 'consulta1',
            seccion = seccion;
        // console.log('DESDE FUNCION ' + seccion);
        var Informacion = new FormData();
        Informacion.append('accion', accion);
        Informacion.append('seccion', seccion);
        var xmlhr = new XMLHttpRequest();
        xmlhr.open('POST', 'inc/model/control.php', true);
        xmlhr.onload = function(){
            if (this.status === 200) {
            var respuesta = JSON.parse(xmlhr.responseText);
            // console.log(respuesta);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                    for(var i in informacion){
                        tablaInformacion(informacion[i]);
                    }
                } else if(respuesta.status === 'error'){
                    var informacion = respuesta.data;
                }
            }
        }
        xmlhr.send(Informacion);
    }

    function tablaInformacion(rowInfo){
            
        var row = $("<tr>");
        
        $("#tablaInformacion").append(row); //this will append tr element to table... keep its reference for a while since we will add cels into it
        // NUMERO DE EQUIPO
        row.append($("<td class='text-muted trID'>" + rowInfo[0] + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td class='text-muted trNombre'><a href='../../calidad/" + folder + "_archivos/" + rowInfo[1] + ".pdf' class='btn btn-link text-small' target = '_blank' title='Ver formato'>" + rowInfo[1] + "</a></td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo[2] + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo[3] + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + rowInfo[4] + "</td>"));
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                        + "<a tabindex='0' class='btn btn-sm btn-primary btn-editar' data-id='"+rowInfo[0]+"' data-nombre='"+rowInfo[1]+"' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                        + "<a tabindex='1' class='btn btn-sm btn-warning mx-1 btnOcultar' data-id='"+rowInfo.id+"' role='button' title='Ocultar registro'><i class='fas fa-eye-slash'></i></a>"
                        + "<a tabindex='2' class='btn btn-sm btn-info btnAdjuntar' data-id='"+rowInfo.id+"' role='button' title='Adjuntar'><i class='fas fa-paperclip'></i></a>"
                        + "<a tabindex='3' class='btn btn-sm btn-danger ml-1 btn-eliminar' role='button' title='Eliminar registro'><i class='fas fa-trash-alt'></i></a>"
                        + "</td>"));
    
        $(".btn-eliminar").unbind().click(function() {
            eliminarFormato($(this));
        });

        $(".btn-editar").unbind().click(function() {
            var formatoID = $((this)).data('id'),
                formatoNombre = $((this)).data('nombre');
                url = "index.php?request=editarDocumento&seccion=editar-"+seccion;
            localStorage.setItem('formatoID', formatoID);//GUARADR CODIGO DEL FORMATO EN LA MEMORIA LOCAL DEL NAVEGADOR
            localStorage.setItem('formatoNombre', formatoNombre);//GUARADAR NOMBRE DEL FORMATO EN LA MEMORIA LOCAL DEL NAVEGADOR
            localStorage.setItem('seccion', seccion);//GUARADAR NOMBRE DEL FORMATO EN LA MEMORIA LOCAL DEL NAVEGADOR
            $(location).attr('href',url);
        });
    }


    $('#btn-nuevo').click(function(){
        console.log('NUEVO DOCUMENTO ' + seccion);
        var url = "index.php?request=nuevoDocumento&seccion=subir-"+seccion;
        localStorage.setItem('seccion', seccion); //GUARADAR CODIGO DE LA SECCION EN LA MEMORIA LOCAL DEL NAVEGADOR
        $(location).attr('href',url);
    });

    function nuevoDocumento()
    {
        var seccion = localStorage.getItem('seccion'),
            titulo = ''; //OBTENER EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
        console.log('El Nuevo ' + seccion);
        if(seccion === 'macs')
            titulo = 'nuevo manual de calidad (MAC)';
        else if(seccion === 'pacs')
            titulo = 'nuevo procedimiento de calidad (PAC)';
        else if(seccion === 'its')
            titulo = 'nueva instruccion de trabajo (ITS)';
        else if(seccion === 'formatos')
            titulo = 'nuevo formato de calidad';
        $(".tituloNuevo").text(titulo);
        $(".tituloNuevo").text(titulo);
    }
    
    $('#btn-guardar').click(function(){
        var seccion = localStorage.getItem('seccion'),
        accion  = 'guardar-formato';
        console.log('GUARDAR ' + seccion);
        //OBTENER LO VALORES DEL FORMULARIO
        var campo1 = document.getElementById('ipCampo1').value.toUpperCase(),
            campo2 = document.getElementById('ipCampo2').value.toUpperCase(),
            campo3 = document.getElementById('ipCampo3').value.toUpperCase(),
            campo4 = document.getElementById('ipCampo4').value,
            campo5 = document.getElementById('ipCampo5'),
            formatoPDF = campo5.files[0];//OBTENER EL ARCHIVO ADJUNTO

            //CONVERTIR FECHA A VARCHAR (INTELIGENTEMENTE ASI HICE EL CAMPO EN LA BD)
            // campo4 = campo4.split('-');
            // campo4 = campo4[2] + '/' + campo4 [1] + '/' + campo4[0];

        console.log(campo1 + ' ' + campo2 + ' ' + campo3 + ' ' + campo4 );

        if(campo1.trim() === '' || campo2.trim() === '' || campo3.trim() === '' || campo4.trim() === ''){
            swal({
                type: 'error',
                title: 'Error!',
                text: 'Todos los campos son obligatorios!'
            })
        }else{
            var datosFormato = new FormData();
                datosFormato.append('accion', accion);
                datosFormato.append('seccion', seccion);
                datosFormato.append('campo1', campo1);
                datosFormato.append('campo2', campo2);
                datosFormato.append('campo3', campo3);
                datosFormato.append('campo4', campo4);
                datosFormato.append('campo5', formatoPDF);
                var xhr = new XMLHttpRequest();
            xhr.open('POST', 'inc/model/control.php', true);
            xhr.onload = function(){
                if (this.status === 200 && this.readyState === XMLHttpRequest.DONE) {
                    var respuesta = JSON.parse(xhr.responseText);
                    console.log(respuesta);
                    if (respuesta.estado === 'OK') {
                        var destination = respuesta.log;
                        swal({
                                title: 'Guardado exitoso!',
                                text: 'Guardado de la información exitoso!',
                                type: 'success'
                            })
                            .then(resultado => {
                                    if(resultado.value) {
                                        location.reload();
                                        window.location.href = 'index.php?request='+destination;
                                    }
                                })
                        localStorage.removeItem('seccion'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
                    } else {
                        // Hubo un error
                        swal({
                            title: 'Error!',
                            text: 'Hubo un error',
                            type: 'error'
                        })
                    }
                }
            }
            xhr.send(datosFormato);
        }
    });

   function editarDocumento(){
        // console.log('Editar Formato');
        var accion = 'consultar-datos';
        var formatoID = localStorage.getItem('formatoID'), //OBTENER EL CODIGO DEL FORMATO DE LA MEMORIA LOCAL DEL NAVEGADOR
        formatoNombre = localStorage.getItem('formatoNombre'); //OBTENER EL NOMBRE DEL FORMATO DE LA MEMORIA LOCAL DEL NAVEGADOR
        seccion = localStorage.getItem('seccion'); //OBTENER EL NOMBRE DEL FORMATO DE LA MEMORIA LOCAL DEL NAVEGADOR
        var dataComputer = new FormData();
        dataComputer.append('accion', accion);
        dataComputer.append('seccion', seccion);
        dataComputer.append('formatoID', formatoID);
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'inc/model/control.php', true);
        xhr.send(dataComputer);
        xhr.onload = function(){
            if (this.status === 200 && this.readyState === XMLHttpRequest.DONE) {
                var respuesta = JSON.parse(xhr.responseText);
                console.log(respuesta);
                if (respuesta.status === 'OK') {
                    var informacion = respuesta.data;
                    for(var i in informacion){
                        llenarCampos(informacion[i]);
                    }
                }
            }
        }

        function llenarCampos(rowInfo){
            $('#ipCampo0').val(rowInfo[0]);
            $('#ipCampo1').val(rowInfo[1]);
            $('#ipCampo1_').val(rowInfo[1]);
            $('#ipCampo2').val(rowInfo[2]);
            if(seccion === 'formatos'){
                $('#ipCampo3').val(rowInfo[4]);
                $('#ipCampo4').val(rowInfo[3]);
            }else if (seccion !== 'formatos'){
                $('#ipCampo3').val(rowInfo[3]);
                $('#ipCampo4').val(rowInfo[4]);
            }
        }

        $('#btn-editar').click(function(){
            console.log('Actualizar datos');
            // localStorage.removeItem('formatoID'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
            // localStorage.removeItem('formatoNombre'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
            // localStorage.removeItem('seccion'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR

            var accion = 'editar-formato',
                campo0 = document.getElementById('ipCampo0').value,
                campo1 = document.getElementById('ipCampo1').value.toUpperCase(),
                campo2 = document.getElementById('ipCampo2').value.toUpperCase(),
                campo3 = document.getElementById('ipCampo3').value.toUpperCase(),
                campo4 = document.getElementById('ipCampo4').value,
                campo5 = document.getElementById('ipCampo5'),
                formatoPDF = campo5.files[0];//OBTENER EL ARCHIVO ADJUNTO

                //CONVERTIR FECHA A VARCHAR (INTELIGENTEMENTE ASI HICE EL CAMPO EN LA BD)
                // campo4 = campo4.split('-');
                // campo4 = campo4[2] + '/' + campo4 [1] + '/' + campo4[0];

                if(campo1.trim() === '' || campo2.trim() === '' || campo3.trim() === '' || campo4.trim() === ''){
                    swal({
                        type: 'error',
                        title: 'Error!',
                        text: 'Todos los campos son obligatorios!'
                    })
                }else{
                    var datosFormato = new FormData();
                        datosFormato.append('accion', accion);
                        datosFormato.append('seccion', seccion);
                        datosFormato.append('campo0', campo0);
                        datosFormato.append('campo1', campo1);
                        datosFormato.append('campo2', campo2);
                        datosFormato.append('campo3', campo3);
                        datosFormato.append('campo4', campo4);
                        datosFormato.append('campo5', formatoPDF);
                        var xhr = new XMLHttpRequest();
                    xhr.open('POST', 'inc/model/control.php', true);
                    xhr.onload = function(){
                        if (this.status === 200 && this.readyState === XMLHttpRequest.DONE) {
                            var respuesta = JSON.parse(xhr.responseText);
                            console.log(respuesta);
                            if (respuesta.estado === 'OK') {
                                var destination = respuesta.log;
                                swal({
                                        title: 'Guardado exitoso!',
                                        text: 'Guardado de la información exitoso!',
                                        type: 'success'
                                    })
                                    .then(resultado => {
                                            if(resultado.value) {
                                                location.reload();
                                                window.location.href = 'index.php?request='+destination;
                                            }
                                        })
                                localStorage.removeItem('seccion'); //ELIMINAR EL CODIGO DEL EQUIPO DE LA MEMORIA LOCAL DEL NAVEGADOR
                            } else {
                                // Hubo un error
                                swal({
                                    title: 'Error!',
                                    text: 'Hubo un error',
                                    type: 'error'
                                })
                            }
                        }
                    }
                    xhr.send(datosFormato);
                }
        });

    }

    function eliminarFormato (regFormato){
        var accion = 'eliminar-formato',
            formatoID = regFormato.closest("tr").find(".trID").text(),
            formatoNombre = regFormato.closest("tr").find(".trNombre").text(); 
        console.log(formatoID);
        Swal({
            title: 'Eliminar el registro',
            text: '¿Estas seguro de eliminar el registro ' + formatoNombre + '?',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            cancelButtonText: 'Cancelar',
            confirmButtonText: 'Si, borrar!'
          }).then((result) => {
            if (result.value) {
                var datosFormato = new FormData();
                datosFormato.append('accion', accion);
                datosFormato.append('seccion', seccion);
                datosFormato.append('campo1', formatoID);
                datosFormato.append('campo2', formatoNombre);
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'inc/model/control.php', true);
                xhr.send(datosFormato);
                xhr.onload = function(){
                    if (this.status === 200 && this.readyState === XMLHttpRequest.DONE) {
                        var respuesta = JSON.parse(xhr.responseText);
                        console.log(respuesta);
                        if (respuesta.estado === 'OK') {
                            regFormato.parents("tr").remove();//ELIMINAR LINEA DEL REGISTRO BORRADO
                            Swal(
                                'Registro eliminado!',
                                'El registro ' + formatoNombre + ' fue eliminado exitosamente.',
                                'success'
                            )
                        } else {
                            // Hubo un error
                            swal({
                                title: 'Error!',
                                text: 'Hubo un error',
                                type: 'error'
                            })
                        }
                    }
                }
            }
          })
    }


});