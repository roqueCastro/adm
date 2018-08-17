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

function Abrir_Ventana(id_even) {
    //$('#roque').html(id_even);
    $("#mySmallModalLabel").html('Informacion evento');
    $('.modal-body').load("Vistas/marcador_datos.php?id=" + id_even + " ", function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}

function Abrir_Ventana_EventoSolu(id_even) {
    $('#modalMapa').modal('hide').on('shown.bs.modal', function() {});
    //$('#roque').html(id_even);
    $("#mySmallModalLabel").html('Informacion evento solucionado');
    $('.modal-body').load("Vistas/marcador_datos_solucion.php?id=" + id_even + " ", function() {
        $('#Frm_Admin').modal({
            show: true
        });
    });
}