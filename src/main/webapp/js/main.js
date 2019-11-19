
// Comentario de línea
/*
    Comentario de bloque
*/

/**
 * 
 * Comentario de bloque para documentar
 */

console.trace('Esto es una traza de log');
console.info('Para informar sobre cosas');
var a = 2;
console.debug('La variable a=' + a);
/*console.warn('Houston tenemos un problema');
console.error('Error en la conexión al servidor REST');
*/

function buscarVoluntario() {
    console.trace('click buscarVoluntario');
    var listaNombres = ['Endika', 'Joseba', 'Maria', 'Ana', 'Juan Carlos', 'Aitor', 'Iker', 'Kiryl', 'erlantz', 'mikel', 'alejandro', 'raul', 'cristian', 'iñigo'];
    var nombre = listaNombres[Math.floor(Math.random() * listaNombres.length)];


    document.getElementById('nombre').innerHTML = nombre;



}

function mostrarAlert() {
    alert('Funciona correctamente el botón');
}

function verTexto() {
    console.trace('funciona el botón');
    let iContrasena = document.getElementById('contrasena');
    if (iContrasena.type == "text") {
        iContrasena.type = "password";
        event.target.innerHTML = 'Ver';
    } else {
        iContrasena.type = "text";
        event.target.innerHTML = 'Ocultar';
    }



}



(function ($) {
    "use strict";

    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    

})(jQuery);