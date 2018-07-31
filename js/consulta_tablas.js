$(document).ready(function() {});
var listar = function() {
    var table = $('#tables').DataTable({
        "bDeferRender": true,
        "sPaginationType": "full_numbers"
    });
    /*$('#modalTable').modal({
        backdrop: 'static',
        keyboard: false
    });*/
    table.destroy();
    table = $("#tables").DataTable({
        "ajax": {
            "method": "POST",
            "url": "Controladores/Control_Consulta_Tablas.php",
            "data": {
                "Operacion": "Listar_data"
            },
            "type": "json"
        },
        "columns": [{
            "data": "id_pgta"
        }, {
            "data": "nomb_pgta"
        }, {
            "data": "estado_pgta"
        }],
        "oLanguage": idioma_esp
    });
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

function tablapregunta() {
    /* var tabla = '<table id="tables" class="table table-striped table-bordered" cellspacing="0" width="100%">';
     tabla += '<thead>';
     tabla += '<tr>';
     tabla += '<th>id</th>';
     tabla += '<th>Pregunta</th>';
     tabla += '<th>estado</th>';
     tabla += '</tr>';
     tabla += '</thead>';
     tabla += '<tbody>';
     tabla += '</tbody>';
     tabla += '</table>';
     $('#tab').html(tabla);*/
    listar();
}

function cerrarTabla() {
    var vaciarTable = $('#tables').DataTable();
    vaciarTable.destroy();
}