var table;
var listar = function(n_t, datosm) {
    table = $('#tables').DataTable();
    $('#Frm_Admin').modal({
        backdrop: 'static',
        keyboard: false
    });
    table.destroy();
    table = $("#tables").DataTable({
        "bDeferRender": true,
        "sPaginationType": "full_numbers",
        "ajax": {
            "method": "POST",
            "url": "Controladores/Control_Consulta_Tablas.php",
            "data": {
                "Operacion": "Listar_tablas_n",
                "tabla": n_t
            },
            "type": "json"
        },
        "columns": datosm,
        "oLanguage": idioma_esp
    });
}
/*----------------click en el boton editar-----------------*/
$(document).on('click', '.btn-eliminar-pregunta', function(e) {
    e.preventDefault();
    var trData = $(this).parent().parent().children().first().text();
    eliminar(trData, "pregunta");
    // table.ajax.reload();
});

function eliminar(id, nomT) {
    var mensaje = confirm("¿Desea eliminar?");
    //Detectamos si el usuario acepto el mensaje
    if (mensaje) {
        if (nomT == "pregunta") {
            eliminarDatos(id, nomT);
        }
    }
    //Detectamos si el usuario denegó el mensaje
    else {}
}

function eliminarDatos(id, ntabla) {
    if (ntabla == "pregunta") {
        var Url = 'Controladores/Control_Pregunta.php';
        var operation = 'EliminarID';
    }
    $.ajax({
        url: Url,
        type: 'POST',
        dataType: 'html',
        data: {
            Operacion: operation,
            id: id
        },
        success: function(datos) {
            alert(datos);
        },
        error: function(xhr, status) {
            alert(status);
            // $('#msg').html();
        }
    });
}
var listarcabecera = function(n_t) {
    if (n_t == "pregunta") {
        var cabeza = '<tr>';
        cabeza += '<th>ID</th>';
        cabeza += '<th>PREGUNTA</th>';
        cabeza += '<th>ESTADO</th>';
        cabeza += '<th></th>';
        cabeza += '</tr>';
        var datosm = [{
            "data": "id_pgta"
        }, {
            "data": "nomb_pgta"
        }, {
            "data": "estado_pgta"
        }, {
            "defaultContent": "<button type='button' title='Eliminar' class='btn btn-danger btn-eliminar-pregunta' ><i class='fa fa-trash'></i></button>"
        }];
        $('#cabeza').html(cabeza);
        listar(n_t, datosm);
    }
    if (n_t == "respuesta") {
        var cabeza = '<tr>';
        cabeza += '<th>ID</th>';
        cabeza += '<th>PREGUNTA</th>';
        cabeza += '<th>RESPUESTA</th>';
        cabeza += '<th>TIPO DATO</th>';
        cabeza += '<th>Acciones</th>';
        cabeza += '</tr>';
        var datosm = [{
            "data": "id_rpta"
        }, {
            "data": "nomb_pgta"
        }, {
            "data": "nomb_rpta"
        }, {
            "data": "tipo_dato"
        }];
        $('#cabeza').html(cabeza);
        listar(n_t, datosm);
    }
    if (n_t == "encuesta") {
        var cabeza = '<tr>';
        cabeza += '<th>ID</th>';
        cabeza += '<th>ENCUESTA</th>';
        cabeza += '<th>ESTADO</th>';
        cabeza += '<th></th>';
        cabeza += '</tr>';
        var datosm = [{
            "data": "id_encuesta"
        }, {
            "data": "nomb_encta"
        }, {
            "data": "est_encta"
        }];
        $('#cabeza').html(cabeza);
        listar(n_t, datosm);
    }
}
var idioma_esp = {
    "sProcessing": "Procesando...",
    "sLengthMenu": 'Mostrar <select>' + '<option value="5">5</option>' + '<option value="10">10</option>' + '<option value="15">15</option>' + '<option value="20">20</option>' + '<option value="-1">All</option>' + '</select> registros',
    "sZeroRecords": "No se encontraron resultados",
    "sEmptyTable": "Ningún dato disponible en esta tabla",
    "sInfo": "Mostrando del (_START_ al _END_) de un total de _TOTAL_ registros",
    "sInfoEmpty": "Mostrando del 0 al 0 de un total de 0 registros",
    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
    "sInfoPostFix": "",
    "sSearch": "Filtrar:",
    "sUrl": "",
    "sInfoThousands": ",",
    "sLoadingRecords": "Por favor espere - cargando...",
    "oPaginate": {
        "sFirst": "Primero",
        "sLast": "Último",
        "sNext": "Siguiente",
        "sPrevious": "Anterior"
    },
    "oAria": {
        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
    }
};

function tablapregunta(nombreTabla) {
    listarcabecera(nombreTabla);
}

function borrarTabla() {
    window.location = "index.php";
}