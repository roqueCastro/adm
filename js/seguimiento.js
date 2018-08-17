$(document).ready(function() {
    cargarTableS($("#id_evento").val());
});

function Registrar_Seguimiento() {
    // $('#resu').html("<center> <img src='iconos/cargando.gif' width='30' height='30' ></center>");
    //
    var id_evento = $("#id_evento").val();
    var descripcion = $("#descripcion").val();
    //alert('evento: ' + id_evento + " descripcion: " + descripcion);
    if (id_evento.length == 0) {
        alert("falta evento");
    } else if (descripcion.length == 0) {
        alert('Ingresa descripcion');
        $("#descripcion").focus();
    } else {
        $("#btnRS").hide();
        $.ajax({
            url: 'Controladores/Control_Seguimiento.php',
            type: 'POST',
            dataType: 'html',
            data: {
                Operacion: 'Registrar_Seguimiento',
                id_evento: id_evento,
                descripcion: descripcion
            },
            success: function(datos) {
                if (datos == "Registro exitosamente.") {
                    cargarTableS(id_evento);
                    $('#descripcion').val('');
                    alert(datos);
                    $("#btnRS").show();
                } else {
                    alert(datos);
                    $("#btnRS").show();
                }
            },
            error: function(xhr, status) {
                alert(status, " " + xhr);
                $("#btnRS").show();
                // $('#msg').html();
            }
        });
    }
}

function cargarTableS(id_eve) {
    var tdCabeza = ' <th>DESCRIPCION</th>';
    tdCabeza += ' <th>FECHA</th>';
    $('#td').html(tdCabeza);
    $.ajax({
        url: 'Controladores/Control_Seguimiento.php',
        type: 'POST',
        dataType: 'html',
        data: {
            Operacion: 'Listar_tabla_segui',
            id_evento: id_eve
        },
        success: function(datos) {
            var segui = JSON.parse(datos);
            var htmTr;
            for (var i = 0; i < segui.length; i++) {
                htmTr += '<tr>';
                htmTr += '<td>' + segui[i].DESCRIPCION + '</td>';
                htmTr += '<td>' + segui[i].FECHA + '</td>';
                htmTr += '</tr>';
            }
            $('#tr').html(htmTr);
        },
        error: function(xhr, status) {
            alert(status, " Error: " + xhr);
        }
    });
}

function SolucionadoEvent(id) {
    var mensaje = confirm("¿Seguro evento solucionado?");
    //Detectamos si el usuario acepto el mensaje
    if (mensaje) {
        $.ajax({
            url: 'Controladores/Control_Evento.php',
            type: 'POST',
            dataType: 'html',
            data: {
                Operacion: 'Update_EventoID',
                id_evento: id
            },
            success: function(datos) {
                alert(datos);
                if (datos == "Se inserto") {
                    window.location = "index.php";
                }
            },
            error: function(xhr, status) {
                alert(status, " " + xhr);
                $("#btnRS").show();
                // $('#msg').html();
            }
        });
    }
    //Detectamos si el usuario denegó el mensaje
    else {}
}