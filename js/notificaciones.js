$(document).ready(function() {
    ajaxListarEventosEmergentes();
});

function ajaxListarEventosEmergentes() {
    $.ajax({
        url: 'Controladores/Control_Evento.php',
        type: 'POST',
        dataType: 'json',
        data: {
            Operacion: 'listar_coordenadas'
        },
        success: function(datos) {
            imprimirNoti(datos);
        },
        error: function(xhr, status) {
            alert("Error: " + xhr + " Estatus: " + status)
        }
    });
}

function imprimirNoti(jsonEventosEmerg) {
    var htmlNotifi = '';
    var datoCabeza = 0;
    for (var i = 0; i < 6; i++) {
        if (datoCabeza == 0) {
            htmlNotifi += '<div class="dropdown-item noti-title">';
            htmlNotifi += '<h5>';
            htmlNotifi += ' Notification (' + jsonEventosEmerg.length + ')';
            htmlNotifi += '</h5>';
            htmlNotifi += '</div>';
            datoCabeza = 1;
        }
        //VENTANA DE ALERTA
        //
        htmlNotifi += '<a href="javascript:Abrir_Ventana(' + jsonEventosEmerg[i].id_evento + ')" class="dropdown-item notify-item active">';
        htmlNotifi += '<div class="notify-icon bg-danger">';
        htmlNotifi += '<i class="mdi mdi-alert-octagon">';
        htmlNotifi += '</i>';
        htmlNotifi += '</div>';
        htmlNotifi += '<p class="notify-details">';
        htmlNotifi += '<b>';
        htmlNotifi += jsonEventosEmerg[i].nomb_encta;
        htmlNotifi += '</b>';
        htmlNotifi += '<small class="text-muted">';
        htmlNotifi += 'Avenida primera';
        htmlNotifi += '</small>';
        htmlNotifi += '</p>';
        htmlNotifi += '</a>';
    }
    if (jsonEventosEmerg.length > 6) {
        var datoFaltante = jsonEventosEmerg.length - 6;
        htmlNotifi += '<a class="dropdown-item notify-item">';
        htmlNotifi += 'FALTAN(' + datoFaltante + ') Soluciona los primeros';
        htmlNotifi += '</a>';
    }
    $("#notificacion").html(htmlNotifi);
    $("#numNoti").html(jsonEventosEmerg.length);
}