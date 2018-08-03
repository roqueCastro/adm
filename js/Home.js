function Abrir_Form_Pregunta() {
    $("#mySmallModalLabel").html('Preguntas');
    $('.modal-body').load('Vistas/preguntas.php', function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}

function Abrir_Form_Respuesta() {
    $("#mySmallModalLabel").html('Respuestas');
    $('.modal-body').load('Vistas/respuestas.php', function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}

function Abrir_Form_Encuestas() {
    $("#mySmallModalLabel").html('Encuestas');
    $('.modal-body').load('Vistas/encuestas.php', function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}

function Abrir_Form_Contacto() {
    $("#mySmallModalLabel").html('Contactos');
    $('.modal-body').load('Vistas/contactos.php', function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}

function Abrir_Ventana() {
    $("#mySmallModalLabel").html('Informacion evento');
    $('.modal-body').load('Vistas/marcador_datos.php', function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}