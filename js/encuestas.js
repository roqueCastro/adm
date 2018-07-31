$(document).ready(function() {});
//GUARDA TODAS LAS PREGUNTAS
function Registrar_Encuesta() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    //
    var nomEncuesta = $('#nombre_encuesta').val();
    var estado = $('#estado').val();
    //
    // Validacion que todos los campos esten llenos
    //
    if (nomEncuesta.length == 0) {
        $('#nombre_encuesta').focus();
        errorDatos('Ingresa un  nombre');
    } else if (estado.length == 0) {} else {
        //
        // alert("nomEncuesta: " + nomEncuesta + ", estado: " + estado);
        $.ajax({
            url: 'Controladores/Control_Encuesta.php',
            type: 'POST',
            dataType: 'html',
            data: {
                Operacion: 'Registrar_Encuesta',
                nomEncuesta: nomEncuesta,
                estado: estado
            },
            success: function(datos) {
                if (datos == "Registro exitosamente.") {
                    $('#nombre_encuesta').val('');
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