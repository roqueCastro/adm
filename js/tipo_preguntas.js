$(document).ready(function() {});

function Registrar_Tipo_Pre() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    //
    var nom_t_p = $('#nombre_tipo_pre').val();
    //
    // Validacion que todos los campos esten llenos
    //
    if (nom_t_p.length == 0) {
        errorDatos('Ingresa un nombre.');
        $('#nombre_tipo_pre').focus();
    } else {
        // alert("pregunta: " + pregunta + ", tipo_dato: " + tipo_dato + ", Nombre: " + nomRes + ", estado_re: " + estado_re);
        $.ajax({
            url: 'Controladores/Control_Tipo_Pregunta.php',
            type: 'POST',
            dataType: "html",
            data: {
                Operacion: 'Registrar_Ti_Pr',
                nom_t_p: nom_t_p
            },
            success: function(datos) {
                if (datos == "Registro exitosamente.") {
                    $('#nombre_tipo_pre').val('');
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