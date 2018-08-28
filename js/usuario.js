$(document).ready(function() {});
//GUARDA TODAS LAS PREGUNTAS
function Registrar_Usuario(ema, usu, pass) {
    $.ajax({
        url: '../Controladores/Control_Usuario.php',
        type: 'POST',
        dataType: "html",
        data: {
            Operacion: 'Registrar_Usu',
            ema: ema,
            usu: usu,
            pass: pass
        },
        success: function(datos) {
            if (datos == "Registro exitosamente.") {
                $('#email').val('');
                $('#usuario').val('');
                $('#pass').val('');
                alert(datos);
            } else {
                alert(datos);
            }
        },
        error: function(xhr, status) {
            alert('Datos de ajax invalidos..');
            // $('#msg').html();
        }
    });
}

function Validar_Usuario() {
    //
    var ema = $('#email').val();
    var usu = $('#usuario').val();
    var pass = $('#pass').val();
    if (ema.length == 0) {
        alert('Email vacio');
        $('#email').focus();
    } else if (usu.length == 0) {
        alert("usuario vacio");
        $('#usuario').focus();
    } else if (pass.length == 0 || pass.length < 10) {
        alert('Contraseña minimo 10 caracteres.');
        $('#pass').focus();
    } else {
        $.ajax({
            url: '../Controladores/Control_Usuario.php',
            type: 'POST',
            dataType: "json",
            data: {
                Operacion: 'Validar_Usuario',
                ema: ema
            },
            success: function(datos) {
                if (datos.length == 0) {
                    Registrar_Usuario(ema, usu, pass);
                    $("#email").css("border-color", "white");
                } else {
                    alert('Email ya existe..');
                    $('#email').focus();
                    $("#email").css("border-color", "red");
                }
            },
            error: function(xhr, status) {
                alert('Datos de ajax invalidos..');
                // $('#msg').html();
            }
        });
    }
}

function InicioSesion() {
    var cor = $('#cor').val();
    var con = $('#con').val();
    if (cor.length == 0) {
        alert('Correo vacio');
        $('#cor').focus();
    } else if (con.length == 0) {
        alert('Contraseña vacia');
        $('#con').focus();
    } else {
        $.ajax({
            url: '../Controladores/Control_Usuario.php',
            type: 'POST',
            dataType: "html",
            data: {
                Operacion: 'Iniciar_Sesion',
                cor: cor,
                con: con
            },
            success: function(datos) {
                if (datos == 'si') {
                    window.location = "../index.php";
                } else {
                    alert(datos);
                }
            },
            error: function(xhr, status) {
                alert('Datos de ajax invalidos..');
                // $('#msg').html();
            }
        });
    }
}

function cerrarSesion() {
    $.ajax({
        url: 'Controladores/Control_Usuario.php',
        type: 'POST',
        dataType: "html",
        data: {
            Operacion: 'Cerrar_session'
        },
        success: function(datos) {
            if (datos == 'true') {
                window.location = "Vistas/login.php";
            }
        },
        error: function(xhr, status) {
            alert('Datos de ajax invalidos..');
            // $('#msg').html();
        }
    });
}