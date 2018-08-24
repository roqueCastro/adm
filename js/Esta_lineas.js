$(document).ready(function() {
    cargarEsDia();
    listarEstadisticasMensual();
    cargarDAnual();
});
//
//GRAFICA MENSUAL
//
var uno = 0;
var dos = 0;
var tres = 0;
var cuatro = 0;
var cinco = 0;
var seis = 0;
var siete = 0;
var ocho = 0;
var nueve = 0;
var diez = 0;
var once = 0;
var doce = 0;
//
setInterval(function() {
    listarEstadisticasMensual();
    cargarEsDia();
    cargarDAnual();
}, 6000);
//
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
            for (var i = 0; i < jsonData.length; i++) {
                // arrayCabeza[i] = jsonData[i].TOTAL;
                switch (jsonData[i].MES_NUM) {
                    case "1":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor1
                        uno = jsonData[i].TOTAL;
                        break;
                    case "2":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor2
                        dos = jsonData[i].TOTAL;
                        break;
                    case "3":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        tres = jsonData[i].TOTAL;
                        break;
                    case "4":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        cuatro = jsonData[i].TOTAL;
                        break;
                    case "5":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        cinco = jsonData[i].TOTAL;
                        break;
                    case "6":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        seis = jsonData[i].TOTAL;
                        break;
                    case "7":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        siete = jsonData[i].TOTAL;
                        break;
                    case "8":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        ocho = jsonData[i].TOTAL;
                        break;
                    case "9":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        nueve = jsonData[i].TOTAL;
                        break;
                    case "10":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        diez = jsonData[i].TOTAL;
                        break;
                    case "11":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN\
                        once = jsonData[i].TOTAL;
                        break;
                    case "12":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        doce = jsonData[i].TOTAL;
                        break;
                    default:
                        //Sentencias_def ejecutadas cuando no ocurre una coincidencia con los anteriores casos
                        alert('defecto o no paso numero: ' + i);
                        break;
                }
            }
            /*  for (var z = 0; z < CalcuNew; z++) {
                  arrayCabeza[numeroDatos] = 0;
                  numeroDatos = numeroDatos + 1;
              }*/
            var arreglo = [uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, diez, once, doce];
            // alert(arreglo);
            moris(arreglo);
        },
        error: function(xhr, status) {
            alert(status);
            // $('#msg').html();
        }
    });
}
// graficador
function moris(total) {
    var cabezaChartis = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Deciembre '];
    var data = {
        labels: cabezaChartis,
        series: [total]
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
// aparte
// grafica anual
var morris1 = new Morris.Line({
    element: 'graficaAnual',
    data: [{
        ano: '2005',
        total: 12
    }],
    xkey: 'ano',
    ykeys: ['total'],
    labels: ['Incendios'],
    resize: true,
    lineColors: ['#12C300', '#12C300', '#89009C'],
    lineWidth: 3
});

function cargarDAnual() {
    $.ajax({
        url: '../Controladores/Control_Estadistica.php',
        type: 'POST',
        dataType: "json",
        data: {
            Operacion: 'Listar_Estadisticas_Anual'
        },
        success: function(datos) {
            // var jsonDataAn = JSON.parse(datos);
            morris1.setData(datos);
        },
        error: function(xhr, status) {
            alert(status);
            // $('#msg').html();
        }
    });
}
//
// grafica diaria
//
//Simple line chart
var a1 = 0;
var a2 = 0;
var a3 = 0;
var a4 = 0;
var a5 = 0;
var a6 = 0;
var a7 = 0;
var a8 = 0;
var a9 = 0;
var a10 = 0;
var a11 = 0;
var a12 = 0;
//
var p1 = 0;
var p2 = 0;
var p3 = 0;
var p4 = 0;
var p5 = 0;
var p6 = 0;
var p7 = 0;
var p8 = 0;
var p9 = 0;
var p10 = 0;
var p11 = 0;
var p12 = 0;
//
function grafiDia(impre) {
    new Chartist.Line('#simple-line-chart', {
        labels: ['1 AM', '2 AM', '3 AM', '4 AM', '5 AM', '6 AM', '7 AM', '8 AM', '9 AM', '10 AM', '11 AM', '12 PM', '1 PM', '2 PM', '3 PM', '4 PM', '5 PM', '6 PM', '7 PM', '8 PM', '9 PM', '10 PM', '11 PM', '12 AM'],
        series: [impre]
    }, {
        fullWidth: true,
        chartPadding: {
            right: 40
        },
        plugins: [
            Chartist.plugins.tooltip()
        ]
    });
}
//
function cargarEsDia() {
    $.ajax({
        url: '../Controladores/Control_Estadistica.php',
        type: 'POST',
        dataType: "json",
        data: {
            Operacion: 'Listar_Estadisticas_Diaria'
        },
        success: function(datos) {
            for (var i = 0; i < datos.length; i++) {
                // arrayCabeza[i] = jsonData[i].TOTAL;
                switch (datos[i].HORA) {
                    case "1 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor1
                        a1 = datos[i].TOTAL;
                        break;
                    case "2 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor2
                        a2 = datos[i].TOTAL;
                        break;
                    case "3 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a3 = datos[i].TOTAL;
                        break;
                    case "4 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a4 = datos[i].TOTAL;
                        break;
                    case "5 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a5 = datos[i].TOTAL;
                        break;
                    case "6 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a6 = datos[i].TOTAL;
                        break;
                    case "7 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a7 = datos[i].TOTAL;
                        break;
                    case "8 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a8 = datos[i].TOTAL;
                        break;
                    case "9 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a9 = datos[i].TOTAL;
                        break;
                    case "10 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a10 = datos[i].TOTAL;
                        break;
                    case "11 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN\
                        a11 = datos[i].TOTAL;
                        break;
                    case "12 AM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        a12 = datos[i].TOTAL;
                        break;
                    case "1 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor1
                        p1 = datos[i].TOTAL;
                        break;
                    case "2 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valor2
                        p2 = datos[i].TOTAL;
                        break;
                    case "3 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p3 = datos[i].TOTAL;
                        break;
                    case "4 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p4 = datos[i].TOTAL;
                        break;
                    case "5 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p5 = datos[i].TOTAL;
                        break;
                    case "6 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p6 = datos[i].TOTAL;
                        break;
                    case "7 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p7 = datos[i].TOTAL;
                        break;
                    case "8 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p8 = datos[i].TOTAL;
                        break;
                    case "9 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p9 = datos[i].TOTAL;
                        break;
                    case "10 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p10 = datos[i].TOTAL;
                        break;
                    case "11 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN\
                        p11 = datos[i].TOTAL;
                        break;
                    case "12 PM":
                        //Sentencias ejecutadas cuando el resultado de expresion coincide con valorN
                        p12 = datos[i].TOTAL;
                        break;
                    default:
                        //Sentencias_def ejecutadas cuando no ocurre una coincidencia con los anteriores casos
                        alert('defecto o no paso numero: ' + i);
                        break;
                }
            }
            var arreglo2 = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12];
            grafiDia(arreglo2);
        },
        error: function(xhr, status) {
            alert(status);
            // $('#msg').html();
        }
    });
}