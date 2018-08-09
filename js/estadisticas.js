function Grafica() {
    $.post("../Controladores/Control_Estadistica.php", {}, function(respuesta) {
        var abc = respuesta;
        // $("#mes").html(abc);
        /*   Morris.Line({
               element: 'mes',
               data: abc,
               xkey: 'MES',
               xLabels: "Tiempo",
               ykeys: ['TOTAL', 'AÑO'],
               labels: ['TOTAL', 'AÑO']
           });*/
    });
}