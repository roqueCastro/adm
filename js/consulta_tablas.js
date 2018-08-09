var Eliminar = function(tbody, table) {
    alert('eliminar');
    $(tbody).on("click", "button.eliminar", function() {
        var data = table.row($(this).parents("tr")).data();
        alert(data.ID);
        // $('#msg').html("<center><img src='Iconos/barra.gif' width='30' height='30' ></center>");
        /*   $.post('Cont_Pregunta', {
               id: data.id,
               Eliminar_Pregunta: "Eliminar_Pregunta"
           }, function(responseText) {
               Cargar_Data_Table();
               $('#msg').html(responseText);
           });*/
    });
};
var Actializar = function(tbody, table) {
    $(tbody).on("click", "button.editar", function() {
        alert('Edit');
        var data = table.row($(this).parents("tr")).data();
        $('#msg').html("<center><img src='Iconos/barra.gif' width='30' height='30' ></center>");
        alert(data.ID);
        /* $.post('Cont_Pregunta', {
             id: data.id,
             Buscar_Pregunta_Id: "Buscar_Pregunta_Id"
         }, function(responseText) {
             //  Cargar_Data_Table();  
             var cadena = responseText.split(";");
             $('#id_preg').val(cadena[0]);
             $('#nom_pre').val(cadena[1]);
             $('#tipo_pregunta').val(cadena[2]);
             $('#estado_pregunta').val(cadena[3]);
             $("#Frm_Reg_Preguntas").show();
             $('#msg').html("Resultado de la busqueda");
         });*/
    });
};
var listar = function(n_t, datosm) {
    var table = $('#tables').DataTable();
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
    Eliminar("#datatable tbody", table);
    Actializar("#datatable tbody", table);
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
            "defaultContent": "<button type='button' class='editar btn btn-primary'><i class='fa fa-pencil-square-o'></i></button>  <button type='button' class='eliminar btn btn-danger' data-toggle='modal' data-target='#modalEliminar' ><i class='fa fa-trash-o'></i></button>"
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
        cabeza += '<th></th>';
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