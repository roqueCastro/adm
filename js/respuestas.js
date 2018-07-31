$(document).ready(function() {
    Listar_Preguntas();
    listarRespuestas();
});
// LISTAR texarea
function listarRespuestas() {
    $("#pregunta").change(function() {
        $("#pregunta option:selected").each(function() {
            id_pregunta = $(this).val();
            if (id_pregunta == 0) {
                $('#respuestasM').hide();
            } else {
                $('#respuestasM').hide();
                opcionPregunta(id_pregunta);
            }
        });
    });
}
//Ajax de listar text area
var opcionPregunta = function(id_pregunta) {
    $.post("Controladores/Control_Pregunta.php", {
        Operacion: 'Listar_PreguntasID',
        id_pregunta: id_pregunta
    }, function(data) {
        var datos = JSON.parse(data);
        for (var i = 0; i < datos.length; i++) {
            var opcion = datos[i].tipo_pregunta;
        }
        if (opcion == 2) {
            $('#multipleOpcion').hide();
            var tipo_dato_respuesta = ' <option value="0">ss</option>';
            $('#tipo_dato').html(tipo_dato_respuesta);
            $('#nombreRespuestaOpcion').show();
        } else {
            $('#multipleOpcion').show();
            var tipo_dato_respuesta = ' <option value="numerico">numerico</option>' + '<option value="texto">texto</option>';
            $('#tipo_dato').html(tipo_dato_respuesta);
            $('#nombreRespuestaOpcion').hide();
        }
        $('#btnEnviar').show();
        $('#estadoOpcion').show();
        cargar(id_pregunta, opcion);
    });
}
//Ajax de listar text area
var cargar = function(id_pregunta, opcion) {
    $('#respuestasM').show();
    $.post("Controladores/Control_Respuesta.php", {
        Operacion: 'Listar_Respuestas_ID',
        id_pregunta: id_pregunta
    }, function(data) {
        var datos = "";
        datos = JSON.parse(data);
        if (datos.length != 0) {
            var dImpri = 'Ya estan registradas: \n';
            for (var i = 0; i < datos.length; i++) {
                dImpri += '-' + datos[i].nomb_rpta + ' (' + datos[i].tipo_dato + ')' + '\n';
            }
            $('#respuestas').html(dImpri);
            if (opcion == 1 && datos.length > 0) {
                $('#multipleOpcion').hide();
                $('#btnEnviar').hide();
                $('#estadoOpcion').hide();
            } else if (opcion == 0) {
                $('#multipleOpcion').hide();
            }
        } else {
            $("#respuestasM").hide();
        }
    });
}
//GUARDA TODAS LAS PREGUNTAS
function Registrar_Respuesta() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    //
    var pregunta = $('#pregunta').val();
    var tipo_dato = $('#tipo_dato').val();
    var nomRes = $('#nombre_respuesta').val();
    var estado_re = $('#estado').val();
    //
    // Validacion que todos los campos esten llenos
    //
    if (pregunta.length == 0 || pregunta == 0) {
        errorDatos('Seleccione una pregunta');
    } else if (tipo_dato == 0) {
        if (nomRes.length == 0) {
            $('#nombre_respuesta').focus();
            errorDatos('Ingresa una  respuesta');
        } else if (estado_re.length == 0) {
            errorDatos('Selecione un estado.');
        } else {
            // alert("pregunta: " + pregunta + ", tipo_dato: " + tipo_dato + ", Nombre: " + nomRes + ", estado_re: " + estado_re);
            tipo_dato = "multiple";
            $.ajax({
                url: 'Controladores/Control_Respuesta.php',
                type: 'POST',
                dataType: "html",
                data: {
                    Operacion: 'Registrar_Respuesta',
                    pregunta: pregunta,
                    tipo_dato: tipo_dato,
                    nomRes: nomRes,
                    estado_re: estado_re
                },
                success: function(datos) {
                    if (datos == "Registro exitosamente.") {
                        $('#nombre_respuesta').val('');
                        correctDatos(datos);
                        cargar(pregunta);
                    } else {
                        errorDatos(datos);
                    }
                },
                error: function(xhr, status) {
                    errorDatos(status);
                    // $('#msg').html();
                }
            });
        }
    } else {
        $.ajax({
            url: 'Controladores/Control_Respuesta.php',
            type: 'POST',
            dataType: "html",
            data: {
                Operacion: 'Registrar_Respuesta',
                pregunta: pregunta,
                tipo_dato: tipo_dato,
                nomRes: tipo_dato,
                estado_re: estado_re
            },
            success: function(datos) {
                if (datos == "Registro exitosamente.") {
                    $('#nombre_respuesta').val('');
                    correctDatos(datos);
                    cargar(pregunta);
                } else {
                    errorDatos(datos);
                }
            },
            error: function(xhr, status) {
                errorDatos(status);
                // $('#msg').html();
            }
        });
    }
}

function showMessageCancel() {
    $('#verde').hide();
    $('#rojo').hide();
}

function errorDatos(datos) {
    $('#rojo').show();
    $('#error').html(datos);
    $('#verde').hide();
    setInterval(function() {
        showMessageCancel()
    }, 10000);
}

function correctDatos(datos) {
    $('#correcto').html(datos);
    $('#verde').show();
    $('#rojo').hide();
    setInterval(function() {
        showMessageCancel()
    }, 3000);
}
// 
////
//
//LISTA TODOS LOS TIPOS DE PREGUNTAS
function Listar_Tipo_Tipo_Pregunta() {
    $.ajax({
        url: 'Controladores/Control_Tipo_Pregunta.php',
        data: {
            Operacion: 'Listar_Tipo_Pregunta'
        },
        type: 'POST',
        dataType: 'json',
        success: function(datos) {
            //creamos el ciclo para recorrer el json y creamos la variable
            // tipo_pre de tipo string y la imprimimos en el select de tipo pregunta
            var tipo_pre = '';
            for (var i = 0; i < datos.length; i++) {
                tipo_pre += '<option value="' + datos[i].id_tipo_pgta + '">' + datos[i].nomb_tipo_pgta + '</option>';
            }
            $('#tipo_pregunta').html(tipo_pre);
        },
        error: function(xhr, status) {
            alert('Disculpe, existió un problema');
            // $('#msg').html();
        },
        // código a ejecutar sin importar si la petición falló o no
        complete: function(xhr, status) {
            $('#msg').html('Se listaron todos los eventos..');
        }
    });
}
//
////
////
//  Listar_Tipos_Encuestas
function Listar_Preguntas() {
    $.ajax({
        url: 'Controladores/Control_Pregunta.php',
        data: {
            Operacion: 'Listar_Preguntas'
        },
        type: 'POST',
        dataType: 'json',
        success: function(datos) {
            //creamos el ciclo para recorrer el json y creamos la variable
            // tipo_pre de tipo string y la imprimimos en el select de tipo pregunta
            var dato_imprimir = ' <option value="0">Seleccione</option>';
            for (var i = 0; i < datos.length; i++) {
                dato_imprimir += '<option value="' + datos[i].id_pgta + '">' + datos[i].nomb_pgta + '</option>';
            }
            $('#pregunta').html(dato_imprimir);
        },
        error: function(xhr, status) {
            alert('Disculpe, existió un problema');
            // $('#msg').html();
        },
        // código a ejecutar sin importar si la petición falló o no
        complete: function(xhr, status) {
            $('#msg').html('Se listaron todos los eventos..');
        }
    });
}