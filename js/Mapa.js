function initMap() {
    mpa();
}

function mpa() {
    ajaxCoordenadas();
}

function ajaxCoordenadas() {
    $.ajax({
        url: 'Controladores/Control_Evento.php',
        type: 'POST',
        dataType: 'html',
        data: {
            Operacion: 'listar_coordenadas'
        },
        success: function(datos) {
            var allData = JSON.parse(datos);
            showAllCollages(allData);
        },
        error: function(xhr, status) {
            alert("Error: " + xhr + " Estatus: " + status)
        }
    });
}

function showAllCollages(allData) {
    var infoWind = new google.maps.InfoWindow;
    // variable para direccion principal de mapa
    var pitalito = {
        lat: 1.8522305999999997,
        lng: -76.0488719
    };
    // variable para cargar el mapa de google y mostrar en el div
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 10,
        center: pitalito,
        mapTypeId: google.maps.MapTypeId.HYBRID
        /*mapTypeId: google.maps.MapTypeId.ROADMAP*/
    });
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
        if (data.id_encuesta == 1) {
            marker.setIcon('img/marcadores/incendio.png')
        } else if (data.id_encuesta == 2) {} else if (data.id_encuesta == 3) {
            marker.setIcon('img/marcadores/accidente.png')
        }
        marker.addListener('click', function() {
            infoWind.setContent(content);
            infoWind.open(map, marker);
        });
    });
}