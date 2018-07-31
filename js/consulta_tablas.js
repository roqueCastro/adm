var arrayNombres = new Array();
var datos = [];
var objeto = {};
var listar = function() {
    var table = $('#tables').DataTable({
        "bDeferRender": true,
        "sPaginationType": "full_numbers"
    });
    /*$('#modalTable').modal({
        backdrop: 'static',
        keyboard: false
    });*/
    var hola = "";
    var ultimo = arrayNombres.length - 1;
    for (var i = 0; i < arrayNombres.length; i++) {
        if (i == ultimo) {
            hola += '"data"' + : +arrayNombres[i];
        } else {
            hola += "data": arrayNombres[i] + ',';
        }
    }
    datos.push({
        hola
    });
    objeto.datos = datos;
    alert(objeto);
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
        "columns": hola,
        "oLanguage": idioma_esp
    });
}
var listarcabecera = function(n_t) {
    if (n_t == "pregunta") {
        var cabeza = '<tr>';
        cabeza += '<th>id</th>';
        cabeza += '<th>Pregunta</th>';
        cabeza += '<th>estado</th>';
        cabeza += '<th></th>';
        cabeza += '<th></th>';
        cabeza += '</tr>';
    }
    $('#cabeza').html(cabeza);
    arrayNombres[0] = "id_pgta";
    arrayNombres[1] = "nomb_pgta";
    arrayNombres[2] = "estado_pgta";
    var numero = "3";
    listar();
}
var datosm = [{
    "data": "id_pgta"
}, {
    "data": "nomb_pgta"
}, {
    "data": "estado_pgta"
}];
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