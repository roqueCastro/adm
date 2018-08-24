$(document).ready(function() {
    Listar_Tipos_Encuestas();
    listarPreguntas();
});
//GUARDA TODAS LAS PREGUNTAS
var id_encuesta = 0;

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
                telefono_c: telefono_c,
                correo_c: correo_c,
                id_encuesta,
                id_encuesta
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
//
function listarPreguntas() {
    $("#encuestac").change(function() {
        $("#encuestac option:selected").each(function() {
            id_encuesta = $(this).val();
            alert(id_encuesta);
        });
    });
}
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
            $('#encuestac').html(dato_imprimir);
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