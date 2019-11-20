
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



