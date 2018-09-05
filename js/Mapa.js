function initMap() {
    mpa();
}
var cont = 0;
setInterval(function() {
    if (cont == 0) {
        var pitalito = {
            lat: 1.8522305999999997,
            lng: -76.0488719
        };
        // variable para cargar el mapa de google y mostrar en el div
        map = new google.maps.Map(document.getElementById('map'), {
            zoom: 10,
            center: pitalito,
            mapTypeId: google.maps.MapTypeId.HYBRID
            // mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        cont = 1;
    }
    ajaxCoordenadas(map);
}, 10000);

function mpa() {
    var pitalito = {
        lat: 1.8522305999999997,
        lng: -76.0488719
    };
    // variable para cargar el mapa de google y mostrar en el div
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 10,
        center: pitalito,
        // mapTypeId: google.maps.MapTypeId.HYBRID
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    ajaxCoordenadas(map);
}

function ajaxCoordenadas(map) {
    $.ajax({
        url: 'Controladores/Control_Evento.php',
        type: 'POST',
        dataType: 'html',
        data: {
            Operacion: 'listar_coordenadas'
        },
        success: function(datos) {
            var allData = JSON.parse(datos);
            showAllCollages(allData, map);
        },
        error: function(xhr, status) {
            alert("Error: " + xhr + " Estatus: " + status)
        }
    });
}

function ajaxCoordenadasSolucionada() {
    $.ajax({
        url: 'Controladores/Control_Evento.php',
        type: 'POST',
        dataType: 'html',
        data: {
            Operacion: 'listar_coordenadas_Solucionadas'
        },
        success: function(datos) {
            var AllCoordenadas = JSON.parse(datos);
            showAllCoordenadasSolucionadas(AllCoordenadas);
        },
        error: function(xhr, status) {
            alert("Error: " + xhr + " Estatus: " + status)
        }
    });
}
var markers = [];

function showAllCollages(allData, map) {
    var infoWind = new google.maps.InfoWindow;
    deleteMarkers();
    // variable para direccion principal de mapa
    Array.prototype.forEach.call(allData, function(data) {
        //
        //
        var content = document.createElement('div');
        //var titulo = document.createElement('h6');
        //titulo.href = 'https://www.google.com/';
        //
        /*strong.textContent = data.nomb_encta;
        content.appendChild(strong);*/
        //titulo.textContent = data.nomb_encta;
        //content.appendChild(titulo);
        //
        ////
        //
        //
        var img = document.createElement('img');
        var nameFoto = "";
        if (data.imagen != null) {
            console.log(data.imagen);
            nameFoto = data.imagen;
            img.src = '../webService/' + nameFoto + '';
        } else {
            nameFoto = "imgnull.gif";
            img.src = 'img/' + nameFoto + '';
        }
        img.style.width = '100px';
        img.class = "img-responsive";
        //
        //
        content.appendChild(img);
        //
        /////
        //
        //////
        //
        var center = document.createElement('center');
        //
        var inflarVista = document.createElement('a');
        inflarVista.textContent = 'Ver +';
        inflarVista.href = 'javascript:Abrir_Ventana(' + data.id_evento + ')';
        //
        center.appendChild(inflarVista);
        //
        content.appendChild(center);
        var coordenadas = new google.maps.LatLng(data.latitud, data.longitud);
        var optionMap = {
            position: coordenadas,
            map: map
        }
        var marker = new google.maps.Marker(optionMap)
        if (data.id_encuesta == 7) {
            marker.setIcon('img/marcadores/incendio.png')
        } else if (data.id_encuesta == 2) {} else if (data.id_encuesta == 3) {
            marker.setIcon('img/marcadores/accidente.png')
        }
        marker.setAnimation(google.maps.Animation.BOUNCE);
        marker.addListener('click', function() {
            infoWind.setContent(content);
            infoWind.open(map, marker);
        });
        markers.push(marker)
    });
}

function setMapOnAll(map) {
    //hace ciclo sobre los marcadores que hemos guardado en la variable markers
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }
}

function deleteMarkers() {
    setMapOnAll(null);
    markers = [];
}

function showAllCoordenadasSolucionadas(allCoordenadas) {
    var infoWind1 = new google.maps.InfoWindow;
    var mapss;
    // variable para direccion principal de mapa
    var pitalito = {
        lat: 1.8522305999999997,
        lng: -76.0488719
    };
    // variable para cargar el mapa de google y mostrar en el div
    mapss = new google.maps.Map(document.getElementById('mapaSolucion'), {
        zoom: 10,
        center: pitalito,
        mapTypeId: google.maps.MapTypeId.HYBRID
        // mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    Array.prototype.forEach.call(allCoordenadas, function(data) {
        //
        //
        var contentenedor = document.createElement('div');
        //var titulo = document.createElement('h6');
        //titulo.href = 'https://www.google.com/';
        //
        /*strong.textContent = data.nomb_encta;
        content.appendChild(strong);*/
        //titulo.textContent = data.nomb_encta;
        //content.appendChild(titulo);
        //
        ////
        //
        //
        var img = document.createElement('img');
        var nameFoto = "";
        if (data.imagen != null) {
            console.log(data.imagen);
            nameFoto = data.imagen;
            img.src = '../webService/' + nameFoto + '';
        } else {
            nameFoto = "imgnull.gif";
            img.src = 'img/' + nameFoto + '';
        }
        img.style.width = '100px';
        img.class = "img-responsive";
        //
        var contenImg = document.createElement('a');
        contenImg.class = "image-popup-vertical-fit";
        if (data.imagen != null) {
            contenImg.href = '../webService/' + nameFoto + '';
        } else {
            contenImg.href = 'img/' + nameFoto + '';
        }
        contenImg.appendChild(img);
        //
        contentenedor.appendChild(contenImg);
        //
        /////
        //
        //////
        //
        var center = document.createElement('center');
        //
        var inflarVista = document.createElement('a');
        inflarVista.href = 'javascript:Abrir_Ventana_EventoSolu(' + data.id_evento + ')';
        inflarVista.textContent = 'Ver +';
        // inflarVista.href = 'javascript:Abrir_Ventana(' + data.id_evento + ')';
        //
        center.appendChild(inflarVista);
        //
        contentenedor.appendChild(center);
        var coordenadas = new google.maps.LatLng(data.latitud, data.longitud);
        var optionMap = {
            position: coordenadas,
            map: mapss
        }
        var marker = new google.maps.Marker(optionMap)
        if (data.id_encuesta == 7) {
            marker.setIcon('img/marcadores/s_incendio.png')
        } else if (data.id_encuesta == 2) {} else if (data.id_encuesta == 3) {
            marker.setIcon('img/marcadores/accidente.png')
        }
        marker.addListener('click', function() {
            infoWind1.setContent(contentenedor);
            infoWind1.open(mapss, marker);
        });
    });
}

function eventossolucionados() {
    $('#modalMapa').modal('show').on('shown.bs.modal', function() {
        // variable para cargar el mapa de google y mostrar en el div
        ajaxCoordenadasSolucionada();
    });
};