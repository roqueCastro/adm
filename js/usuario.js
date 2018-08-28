$(document).ready(function() {});
// LISTAR texarea
function listarRespuestas() {
    $("#pregunta").change(function() {
        $("#pregunta option:selected").each(function() {
            id_pregunta = $(this).val();
            id_encues = $("#encuesta").val();
            if (id_pregunta == 0) {
                $('#respuestasM').hide();
            } else {
                $('#respuestasM').hide();
                opcionPregunta(id_pregunta, id_encues);
            }
        });
    });
}
//
///
//
function listarPreguntas() {
    $("#encuesta").change(function() {
        $("#encuesta option:selected").each(function() {
            id_encuesta = $(this).val();
            if (id_encuesta == 0) {
                $('#rojo').hide();
                $('#verde').hide();
                $('#respuestasM').hide();
                $('#nombreRespuestaOpcion').hide();
                $('#multipleOpcion').hide();
                $('#btnEnviar').hide();
                $('#estadoOpcion').hide();
                $('#pregunta').hide();
            } else {
                Listar_Preguntas(id_encuesta);
            }
        });
    });
}
//Ajax de listar text area
var opcionPregunta = function(id_pregunta, id_encues) {
    $.post("Controladores/Control_Pregunta.php", {
        Operacion: 'Listar_PreguntasID',
        id_pregunta: id_pregunta,
        id_encues: id_encues
    }, function(data) {
        var datos = JSON.parse(data);
        // alert(datos);
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
function Registrar_Usuario() {
    //
    var ema = $('#email').val();
    var usu = $('#usuario').val();
    var pass = $('#pass').val();
    alert(ema);
    /*      if (ema.length == 0) {
              alert('Email vacio');
          } else if (usu.length == 0) {
              alert("usuario vacio");
          } else if (pass.length == 0) {
              alert('Contraseña vacia');
          } else {
              alert(ema, pass, usu, terC):
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
                              } else {
                                  errorDatos(datos);
                              }
                          },
                          error: function(xhr, status) {
                              errorDatos(status);
                              // $('#msg').html();
                          }
                      });
          }*/
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
//  Listar_preguntas
function Listar_Preguntas(encuesta2) {
    $.ajax({
        url: 'Controladores/Control_Pregunta.php',
        data: {
            Operacion: 'Listar_PreguntasIdEncuesta',
            encuesta2: encuesta2
        },
        type: 'POST',
        dataType: 'json',
        success: function(datos) {
            $('#pregunta').show();
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
/////////////////////////////
//
//////////
//  Listar_Tipos_Encuestas
function Listar_Tipos_Encuestas() {
    $.ajax({
        url: 'Controladores/Control_Encuesta.php',
        data: {
            Operacion: 'Listar_Tipos_Encuestas'
        },
        type: 'POST',
        dataType: 'json',
        success: function(datos) {
            //creamos el ciclo para recorrer el json y creamos la variable
            // tipo_pre de tipo string y la imprimimos en el select de tipo pregunta
            var dato_imprimir = '<option value="0">Seleccione</option>';
            for (var i = 0; i < datos.length; i++) {
                dato_imprimir += '<option value="' + datos[i].id_encuesta + '">' + datos[i].nomb_encta + '</option>';
            }
            $('#encuesta').html(dato_imprimir);
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