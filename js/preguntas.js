$(document).ready(function() {
    Listar_Tipos_Encuestas();
    Listar_Tipo_Tipo_Pregunta();
    /*listar();*/
    // $("#Frm_Reg_Preguntas").hide();
});
//GUARDA TODAS LAS PREGUNTAS
function Registrar_Pregunta() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    //
    var encuesta = $('#tipo_encuesta').val();
    var tipoPregunta = $('#tipo_pregunta').val();
    var nomPregunta = $('#nombre_pregunta').val();
    var estado_pre = $('#estado').val();
    //
    // Validacion que todos los campos esten llenos
    //
    if (encuesta.length == 0) {
        errorDatos('Seleccione una encuesta');
    } else if (tipoPregunta.length == 0) {
        errorDatos('Seleccione un tipo pregunta');
    } else if (nomPregunta.length == 0) {
        $('#nombre_pregunta').focus();
        errorDatos('Ingresa un  nombre');
    } else if (estado_pre.length == 0) {} else {
        //
        // alert("encuesta: " + encuesta + ", Tipo pregunta: " + tipoPregunta + ", Nombre: " + nomPregunta + ", estado_pre: " + estado_pre);
        $.ajax({
            url: 'Controladores/Control_Pregunta.php',
            type: 'POST',
            dataType: 'html',
            data: {
                Operacion: 'Registrar_Pregunta',
                encuesta: encuesta,
                tipoPregunta: tipoPregunta,
                nomPregunta: nomPregunta,
                estado_pre: estado_pre
            },
            success: function(datos) {
                if (datos == "Registro exitosamente.") {
                    $('#nombre_pregunta').val('');
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
    }
}

function showMessageCancel() {
    $('#verde').hide();
    $('#rojo').hide();
}

function errorDatos(datos) {
    $('#error').html(datos);
    $('#verde').hide();
    $('#rojo').show();
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
            var dato_imprimir = '';
            for (var i = 0; i < datos.length; i++) {
                dato_imprimir += '<option value="' + datos[i].id_encuesta + '">' + datos[i].nomb_encta + '</option>';
            }
            $('#tipo_encuesta').html(dato_imprimir);
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