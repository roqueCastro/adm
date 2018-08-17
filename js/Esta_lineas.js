/*var morris1 = new Morris.Line({
    element: '',
    data: [{
        MES: '1',
        accidentes: 20,
        incendio: 12
    }, {
        MES: '2',
        accidentes: 10,
        incendio: 16
    }, {
        MES: '3',
        accidentes: 5,
        incendio: 40
    }, {
        MES: '4',
        accidentes: 5,
        incendio: 0
    }, {
        MES: '5',
        accidentes: 20,
        incendio: 30
    }],
    xkey: 'MES',
    ykeys: ['accidentes', 'incendio'],
    labels: ['Acidentes', 'Incendios'],
    resize: true,
    lineColors: ['#EE8600', '#12C300', '#89009C'],
    lineWidth: 3
});*/
var arrayCabeza = new Array();

function moris(arrayCabeza) {
    var cabezaChartis = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Deciembre '];
    var data = {
        labels: cabezaChartis,
        series: arrayCabeza
    };
    var options = {
        seriesBarDistance: 10
    };
    var responsiveOptions = [
        ['screen and (max-width: 640px)', {
            seriesBarDistance: 5,
            axisX: {
                labelInterpolationFnc: function(value) {
                    return value[0];
                }
            }
        }]
    ];
    new Chartist.Bar('#myfirstchart', data, options, responsiveOptions);
}
setInterval(function() {
    listarEstadisticasMensual()
}, 6000);

function listarEstadisticasMensual() {
    $.ajax({
        url: '../Controladores/Control_Estadistica.php',
        type: 'POST',
        dataType: "html",
        data: {
            Operacion: 'Listar_Estadisticas_Mes'
        },
        success: function(datos) {
            var jsonData = JSON.parse(datos);
            var numeroDatos = jsonData.length;
            var CalcuNew = 12 - numeroDatos;
            for (var i = 0; i < jsonData.length; i++) {
                // arrayCabeza[i] = jsonData[i].TOTAL;
                switch (jsonData[i].MES_NUM) {
                    case "1":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor1
                        break;
                    case "2":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor2
                        break;
                    case "3":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        break;
                    default:
                        //Sentencias_def ejecutadas cuando no ocurre una coincidencia con los anteriores casos
                        break;
                }
            }
            /*  for (var z = 0; z < CalcuNew; z++) {
                  arrayCabeza[numeroDatos] = 0;
                  numeroDatos = numeroDatos + 1;
              }*/
            var arreglo = [arrayCabeza];
            alert(arreglo);
            moris(arreglo);
        },
        error: function(xhr, status) {
            alert(status);
            // $('#msg').html();
        }
    });
}