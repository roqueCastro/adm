//GUARDA TODAS LAS PREGUNTAS
function Registrar_Contactos() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    var nom_c = $('#nombre_c').val();
    var telefono_c = $('#telefono_c').val();
    var correo_c = $('#correo_c').val();
    if (nom_c.length == 0) {
        errorDatos("Ingresa nombre empresa");
    } else if (telefono_c.length == 0) {
        errorDatos("Ingresa numero telefonico");
    } else if (correo_c.length == 0) {
        errorDatos("Ingresa correo electronico");
    } else {
        /*alert(nom_c);
        alert(telefono_c);
        alert(correo_c);*/
        $.ajax({
            url: 'Controladores/Control_Contacto.php',
            type: 'POST',
            dataType: 'html',
            data: {
                Operacion: 'Registrar_Con',
                nom_c: nom_c,
                telefono_c: telefono_c,
                correo_c: correo_c
            },
            success: function(datos) {
                if (datos == "Registro exitosamente.") {
                    $('#nombre_pregunta').val('');
                    $('#nombre_pregunta').val('');
                    $('#nombre_pregunta').val('');
                    correctDatos(datos);
                } else {
                    errorDatos(datos);
                }
            },
            error: function(xhr, status) {
                alert('Ocurrio un error');
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