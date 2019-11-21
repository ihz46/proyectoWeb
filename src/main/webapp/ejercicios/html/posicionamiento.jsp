<%String titulo = "HelloWeb | POSICIONAMIENTO"; %>
<%String nombreTitulo = "Posicionamiento"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/nav.jsp" %> 



 
 
 <p>Existen diversas maneras de posicionamiento <code>static | relative | absolute | fixed | sticky | inherit</code>
    </p>
    <section>
        <h2>Relativo</h2>
        <p>Consiste en posicionar una caja de una manera normal y después desplazarla de la posición original. Podemos
            mover la caja a través de las propiedades <code>top, right, bottom, left</code> Siempre dentro de su
            contenedor</p>
        <div class="box" style="overflow:auto">
            <p style="font-size: 10px;">Posición estática</p>
        </div>
        <div class="box" style="position:relative; left:100px; overflow:auto">
            <p style="font-size: 10px">Posición relativa</p>
        </div>
    </section>

    <section>
        <h2>Absoluto</h2>
        <p>El posicionamiento de la caja se establece de forma absoluta respecto del <span class="subrayado">elemento
                contenedor</span>, mientras
            el resto de elementos ignoran la nueva posición del elemento. También se puede mover la caja con las
            propiedades <code>top, right, bottom, left</code></p>
        <div class="box" style="overflow:auto">
            <p style="font-size: 10p">Posición estática, normal</p>
        </div>
        <div class="box" style="position: absolute;right: 50px">
            <p style="font-size: 10p">Posición absoluta</p>
        </div>
        <p>El contenedor siempre tiene que ser relative!!!!</p>
        
        <div class="contenedor">
            <span class="absoluto">1</span>
            <img src="http://lorempixel.com/400/400/" alt="imagen aleatoria">
            <div class="texto">
                <h3>título</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos earum optio corporis modi a
                    culpa enim!
                    Reprehenderit molestias earum aspernatur alias enim eaque non. Quo, ratione. Molestias velit
                    laboriosam aspernatur!
                </p>
            </div>
        </div>
    </section>

    <section>
        <h2>Fixed</h2>
        <p>El posicionamiento fijo es una variante del posicionamiento absoluto, pero este funciona de manera que
            siempre se queda fijo en un sitio, independientemente de que el usuario haga scroll o haga otro tipo de
            elementos.</p>
        <div class="box" style="position:fixed right:100px">
           
        </div>
        <div class="box">
            <p></p>
        </div>

    </section>
    <section>
        <h2>Sticky CSS3</h2>
        <p> Se comporta como un elemento relativo, pero solo dentro del contenedor.. Es necesario aportar un valor <code>top, bottom, left o right</code> </p>
    <div class="box" style="position:sticky; bottom:100px"></div>
    <div class="box"></div>
    </section>


  <%@include file="/includes/footer.jsp" %>