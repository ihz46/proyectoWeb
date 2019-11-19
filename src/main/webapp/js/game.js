/* JS para el mítico juego de ARKANOID*/

console.trace('Comenzamos a jugar');

//Añadimos la referencia, para seleccionar el canvas
var canvas = document.getElementById("canva");
var ctx = canvas.getContext("2d");

//Contador
var score = 0;

//Vidas
var lives = 3;


//Variables de movimiento
var x = canvas.width / 2;
var y = canvas.height - 30;

var dx = 2;
var dy = -2;

//Variables para colisiones
var ballRadius = 10;

//Definimos los datos de la pala (altura, anchura y posición inicial)
var paddleHeight = 10;
var paddleWidth = 75;
var paddleX = (canvas.width - paddleWidth / 2);

//Definimos información sobre los ladrillos
var brickRowCount = 9;
var brickColumnCount = 16;
var brickWidth = 75;
var brickHeight = 20;
var brickPadding = 10;
var brickOffsetTop = 30;
var brickOffsetLeft = 30;

//Variables para saber si está pulsado el botón izdo o dcho
var rightPressed = false;
var leftPressed = false;


//Creamos los ladrillos
var bricks = [];
for (c = 0; c < brickColumnCount; c++) {
    bricks[c] = [];
    for (r = 0; r < brickRowCount; r++) {
        bricks[c][r] = { x: 0, y: 0, status: 1 };
    }
}




//Función para dibujar la bola
function drawBall() {
    ctx.beginPath();
    ctx.arc(x, y, ballRadius, 0, Math.PI * 2);
    ctx.fillStyle = "#0095DD";
    ctx.fill();
    ctx.closePath();
}

//Función para dibujar la paleta
function drawPaddle() {
    ctx.beginPath();
    ctx.rect(paddleX, canvas.height - paddleHeight, paddleWidth, paddleHeight);
    ctx.fillStyle = "#0095DD";
    ctx.fillStroke = "000000";
    ctx.fill();
    ctx.closePath();
}

//Función para dibujar los ladrillos
function drawBricks() {
    for (c = 0; c < brickColumnCount; c++) {
        for (r = 0; r < brickRowCount; r++) {
            if (bricks[c][r].status == 1) {
                var brickX = (c * (brickWidth + brickPadding)) + brickOffsetLeft;
                var brickY = (r * (brickHeight + brickPadding)) + brickOffsetTop;
                bricks[c][r].x = brickX;
                bricks[c][r].y = brickY;
                ctx.beginPath();
                ctx.rect(brickX, brickY, brickWidth, brickHeight);
                ctx.fillStyle = "#0095DD";
                ctx.fill();
                ctx.closePath();
            }
        }
    }
}

//Función para mover la bola (sprite)
function draw() {
    //console.debug('dibujar');

    //Limpiamos canvas
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    //Llamamos a la función para pintar los ladrillos
    drawBricks();


    //Llamamos a la función para pintar la bola
    drawBall();


    //Llamamos a la función para pintar la pala
    drawPaddle();

    //Llamamos a la función para pintar la puntuación
    drawScore();

    //Llamamos a la función para pintar las vidas
    drawLives();

    //Llamamos a la función para detectar las colisiones de los ladrillos
    collisionDetection();




    //Comprobamos que la bola haya colisionado con las paredes

    //Paredes laterales
    if (x + dx > canvas.width - ballRadius || x + dx < ballRadius) {

        dx = -dx;

    }

    //Pared superior, en caso de que toque la pared inferior y no la pala será el fin del juego
    if (y + dy < ballRadius) {
        dy = -dy;
    } else if (y + dy > canvas.height - ballRadius) {
        if (x > paddleX && x < paddleX + paddleWidth) {
            dy = -dy;
        }
        else {
            lives--;
            if (!lives) {
                alert("GAME OVER");
                document.location.reload();
            }
            else {
                x = canvas.width / 2;
                y = canvas.height - 30;
                dx = 2;
                dy = -2;
                paddleX = (canvas.width - paddleWidth) / 2;
            }
        }
    }



    //Establecemos el movimiento al pulsar las teclas.
    if (rightPressed && paddleX < canvas.width - paddleWidth) {
        paddleX += 7;
    }
    else if (leftPressed && paddleX > 0) {
        paddleX -= 7;
    }

    x += dx;
    y += dy;

    //requestAnimationFrame(draw);

}//Fin del draw



//Funciones para definir que hacer al pulsar y al soltar una tecla
function keyDownHandler(e) {
    if (e.keyCode == 39) {
        rightPressed = true;
    }
    else if (e.keyCode == 37) {
        leftPressed = true;
    }
}

function keyUpHandler(e) {
    if (e.keyCode == 39) {
        rightPressed = false;
    }
    else if (e.keyCode == 37) {
        leftPressed = false;
    }
}

//Función para detectar las colisiones entre la bola y los bloques
function collisionDetection() {
    for (c = 0; c < brickColumnCount; c++) {
        for (r = 0; r < brickRowCount; r++) {
            var b = bricks[c][r];
            if (b.status == 1) {
                if (x > b.x && x < b.x + brickWidth && y > b.y && y < b.y + brickHeight) {
                    dy = -dy;
                    b.status = 0;
                    score++;
                    if (score == brickRowCount * brickColumnCount) {
                        alert("ENHORABUENA, HAS GANADO!!");
                        document.location.reload();
                    }
                }
            }
        }
    }
}

function drawScore() {
    ctx.font = "16px Arial";
    ctx.fillStyle = "#0095DD";
    ctx.fillText("Score: " + score, 8, 20);
}

function drawLives() {
    ctx.font = "16px Arial";
    ctx.fillStyle = "#0095DD";
    ctx.fillText("Lives: " + lives, canvas.width - 65, 20);
}

//Listeners para saber si se han pulsado las teclas
document.addEventListener("keydown", keyDownHandler, false);
document.addEventListener("keyup", keyUpHandler, false);

//Listener para el movimiento del ratón
document.addEventListener("mousemove", mouseMoveHandler, false);

//Función para detectar el movimiento del ratón
function mouseMoveHandler(e) {
    var relativeX = e.clientX - canvas.offsetLeft;
    if (relativeX > 0 && relativeX < canvas.width) {
        paddleX = relativeX - paddleWidth / 2;
    }
}

//draw();
setInterval(draw, 5); //Se realizará todo lo que se encuentre dentro de la función draw cada 10 milisegundos(-tiempo + dificultad)





