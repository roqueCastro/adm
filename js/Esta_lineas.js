var ID = 0;
var nomAnual = 'INSENDIO';
$(document).ready(function() {
    Listar_Tipos_Encuestas();
    clicEncuesta();
    cargarEsDia(ID);
    listarEstadisticasMensual(ID);
    cargarDAnual(ID);
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
    listarEstadisticasMensual(ID);
    cargarEsDia(ID);
    cargarDAnual(ID);
}, 6000);
//
function listarEstadisticasMensual(ID) {
    uno = 0;
    dos = 0;
    tres = 0;
    cuatro = 0;
    cinco = 0;
    seis = 0;
    siete = 0;
    ocho = 0;
    nueve = 0;
    diez = 0;
    once = 0;
    doce = 0;
    $.ajax({
        url: '../Controladores/Control_Estadistica.php',
        type: 'POST',
        dataType: "html",
        data: {
            Operacion: 'Listar_Estadisticas_Mes',
            id: ID
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
            var arreglo = [uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, diez, once, doce];
            // alert(arreglo);
            moris(arreglo);
        },
        error: function(xhr, status) {
            alert(status);
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
    labels: ['Eventos'],
    resize: true,
    lineColors: ['#12C300', '#12C300', '#89009C'],
    lineWidth: 3
});

function cargarDAnual(ID) {
    $.ajax({
        url: '../Controladores/Control_Estadistica.php',
        type: 'POST',
        dataType: "json",
        data: {
            Operacion: 'Listar_Estadisticas_Anual',
            id: ID
        },
        success: function(datos) {
            // var jsonDataAn = JSON.parse(datos);
            if (datos.length == 0) {
                datos = [{
                    ano: '2018',
                    total: 0
                }];
            }
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
function cargarEsDia(ID) {
    a1 = 0;
    a2 = 0;
    a3 = 0;
    a4 = 0;
    a5 = 0;
    a6 = 0;
    a7 = 0;
    a8 = 0;
    a9 = 0;
    a10 = 0;
    a11 = 0;
    a12 = 0;
    p1 = 0;
    p2 = 0;
    p3 = 0;
    p4 = 0;
    p5 = 0;
    p6 = 0;
    p7 = 0;
    p8 = 0;
    p9 = 0;
    p10 = 0;
    p11 = 0;
    p12 = 0;
    $.ajax({
        url: '../Controladores/Control_Estadistica.php',
        type: 'POST',
        dataType: "json",
        data: {
            Operacion: 'Listar_Estadisticas_Diaria',
            id: ID
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
//
// tipos de encuesta
function Listar_Tipos_Encuestas() {
    $.ajax({
        url: '../Controladores/Control_Encuesta.php',
        data: {
            Operacion: 'Listar_Tipos_Encuestas'
        },
        type: 'POST',
        dataType: 'json',
        success: function(datos) {
            //creamos el ciclo para recorrer el json y creamos la variable
            // tipo_pre de tipo string y la imprimimos en el select de tipo pregunta
            var dato_imprimir = '';
            var entro = 0;
            for (var i = 0; i < datos.length; i++) {
                if (entro == 0) {
                    ID = datos[i].id_encuesta;
                    $('#TiDiaria').html(datos[i].nomb_encta);
                    $('#TiMensual').html(datos[i].nomb_encta);
                    $('#TiAnual').html(datos[i].nomb_encta);
                    nomAnual = datos[i].nomb_encta;
                    cargarEsDia(datos[i].id_encuesta);
                    listarEstadisticasMensual(datos[i].id_encuesta);
                    cargarDAnual(datos[i].id_encuesta);
                    entro = 1;
                }
                dato_imprimir += '<option value="' + datos[i].id_encuesta + '">' + datos[i].nomb_encta + '</option>';
            }
            $('#encuesta').html(dato_imprimir);
        },
        error: function(xhr, status) {
            alert('Disculpe, existió un problema');
            // $('#msg').html();
        },
        // código a ejecutar sin importar si la petición falló o no
        complete: function(xhr, status) {
            $('#msg').html('Se listaron todos los eventos..');
        }
    });
}
//
// clic en el tipo de encuesta
function clicEncuesta() {
    $("#encuesta").change(function() {
        $("#encuesta option:selected").each(function() {
            id_encuesta = $(this).val();
            ID = id_encuesta;
            nombresSegunEncu(id_encuesta);
        });
    });
}
//
// poner nombres con una consulta
function nombresSegunEncu(ID) {
    $.ajax({
        url: '../Controladores/Control_Encuesta.php',
        data: {
            Operacion: 'Listar_Tipos_EncuestasID',
            id: ID
        },
        type: 'POST',
        dataType: 'json',
        success: function(datos) {
            for (var i = 0; i < datos.length; i++) {
                // Se imprime el nombre segun la seleccion de la encuesta
                $('#TiDiaria').html(datos[i].nomb_encta);
                $('#TiMensual').html(datos[i].nomb_encta);
                $('#TiAnual').html(datos[i].nomb_encta);
                // Se inserta en la variable global el nombre segun la encuesta(solo grafica anual)
                nomAnual = datos[i].nomb_encta;
                // se cargan las variables de grafica con el id
                cargarEsDia(datos[i].id_encuesta);
                listarEstadisticasMensual(datos[i].id_encuesta);
                cargarDAnual(datos[i].id_encuesta);
            }
        },
        error: function(xhr, status) {
            alert('Disculpe, existió un problema');
        }
    });
}