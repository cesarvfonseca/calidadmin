$(document).ready(function(){

    //BUSCADOR
    var seccion = $('#tablaActual').val();
    llenarTablas(seccion);
    

    $("#searchBox").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tablaInformacion tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
    });

    // switch (seccion){
    //     case 'formatos':
    //         llenarTablas(seccion);
    //         break;
    //     default:
    //         llenarTablas(seccion);
    //         break;
    // }

    function llenarTablas(seccion = ''){
        var accion  = 'consulta1',
            seccion = seccion;
        console.log('DESDE FUNCION ' + seccion);
        var Informacion = new FormData();
        Informacion.append('accion', accion);
        Informacion.append('seccion', seccion);
        var xmlhr = new XMLHttpRequest();
        xmlhr.open('POST', 'inc/model/control.php', true);
        xmlhr.onload = function(){
            if (this.status === 200) {
            var respuesta = JSON.parse(xmlhr.responseText);
              console.log(respuesta);
            if (respuesta.status === 'OK') {
                var informacion = respuesta.data;
                for(var i in informacion){
                    tablaInformacion(informacion[i]);
                }
                // if (seccion === 'formatos'){
                //     for(var i in informacion){
                //         tablaInformacion2(informacion[i]);
                //     }     
                // }else{
                //     for(var i in informacion){
                //         tablaInformacion(informacion[i]);
                //     }
                // }
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
        row.append($("<td>" + rowInfo[0] + " </td>"));
        // NOMINA DEL EMPLEADO
        row.append($("<td> " + rowInfo[1] + " </td>"));
        // NOMBRE DEL EMPLEADO
        row.append($("<td> " + rowInfo[2] + " </td>"));
        // TIPO DE SUCURSAL
        row.append($("<td> " + rowInfo[3] + " </td>"));
        // COLUMNA DEPARTAMENTO
        row.append($("<td>" + rowInfo[4] + "</td>"));
        // COLUMNA ACCION
        row.append($("<td class='text-center'>"
                        + "<a tabindex='0' class='btn btn-sm btn-primary btnEditar' data-id='"+rowInfo.id+"' role='button' title='Editar registro'><i class='fas fa-pen-square'></i></a>"
                        + "<a tabindex='1' class='btn btn-sm btn-warning mx-1 btnOcultar' data-id='"+rowInfo.id+"' role='button' title='Ocultar registro'><i class='fas fa-eye-slash'></i></a>"
                        + "<a tabindex='2' class='btn btn-sm btn-info btnAdjuntar' data-id='"+rowInfo.id+"' role='button' title='Adjuntar'><i class='fas fa-paperclip'></i></a>"
                        + "<a tabindex='3' class='btn btn-sm btn-danger ml-1 btnEliminar' data-id='"+rowInfo.id+"' role='button' title='Eliminar registro'><i class='fas fa-trash-alt'></i></a>"
                        + "</td>"));
    }

});