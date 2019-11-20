<%String titulo = "HelloWeb | Flexbox"; %>
<%String nombreTitulo = "FLEXBOX"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/nav.jsp" %> 

<section>
<ul>
	<li><a href="https://css-tricks.com/snippets/css/a-guide-to-flexbox /" target="_blank">Guía Completa flexbox</a>
	<li><a href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/" target="_blank">Maquetar web con flexbox</a>
	<li><a href="https://flexboxfroggy.com/#es" target="_blank">Juego Flexbox</a></ul>
</ul>
<p>Flex es una nueva forma de <code>display</code> de CSS3 totalmente nueva, para que las cajas no sean <code>inline o block</code>. Se comportarán de una nueva forma mucho más flexible.</p>
<p>Sirve para distribuir los elementos contenidos (hijos) en una etiqueta (contenedor) con <code>display:flex</code></p>

</section>

<style>
	/*estilos para practicar con flexbox*/
	.container{
	border:5px solid black;
	width:80%;
	margin:auto;
	
	/*flexbox*/
	display:flex;
	/*por defecto*/
	flex-direction:row;	/*por defecto acomoda todos los hijos no desborda*/
	flex-wrap:nowrap;
	justify-content:center; /*Es necesario quitar el width*/
	
	}
	
	.container div{
	border:5px solid teal;
	background-color:lightblue;
	box-sizing:border-box;
	width:50%;
	text-align:center;
	min-height:80px;
	
	
	/*flexbox*/
	
	
	}
	
	
</style>

<div class="container">
	<div>hijo1</div>
	<div>hijo2</div>
	<div>hijo3</div>
	<div>hijo4</div>
	<div>hijo5</div>
	<div>hijo6</div>
</div>
<br>
<br>
<h2 class="subrayado">Ejes flexbox</h2>

<img src="images/axis-flexbox.png" alt="orden flex-box" height="" width="">

<section>
<h2>justify-content:</h2>
	<code>justify-content: space-around</code>
	<p>Deja un espacio entre los hijos, justificando</p>
	<img src="images/justifycontentspacearound.PNG">
	<br>
	<br>

	<code>justify-content: space-between</code>
	<p>Deja un margen entre los hijos, similar al anterior</p>
	<img src="images/justifycontentspacebetween.PNG">
	
</section>

<section>
	<h2>align-items:</h2>
	<code>align-items:flex-end</code>
	<p>Alinea los elementos a la parte inferior del contenedor</p>
	<img src="images/alignitemsflexend.PNG">
	
	<br>
	<br>
	<code>align-items:flex-start</code>
	<p>Alinea los elementos a la parte superior del contenedor</p>
	
	<br>
	<br>
	
	<code>align-items:flex-center</code>
	<br>
	<p>Alinea elementos en el centro (y) del contendor</p>
	<br>
	<code>align-items:flex-baseline</code>
	<br>
	<p>Muestra los elementos en la línea base del contendor</p>
	<br>
	<code>align-items:flex-stretch</code>
	<br>
	<p>Los elementos se estiran para ajustarse al contenedor</p>
</section>


<section>
	<h2>flex-direction:</h2>
	<code>flex-direction:row</code>
	<br>
	<p>Los elementos son colocados en forma de celdas, es decir horizontal.</p>
	<br>
	<code>flex-direction:row-reverse</code>
	<br>
	<p>Los elementos son colocados de forma horizontal, pero en reverso</p>
	<br>
	<code>flex-direction:column</code>
	<br>
	<p>Los elementos son colocados de forma vertical, de arriba hacia abajo</p>
	<br>
	<code>flex-direction:column-reverse</code>
	<br>
	<p>Los elementos se colocan de forma vertical, de abajo hacia arriba</p>
</section>

<section>
	<h2>order</h2>
	<p>Nos permite alterar el orden de los elementos de una clase.</p>
	<img src="images/ordenInicial.PNG">
	<p>Ahora vamos a aplicar un orden a la rana 1, de manera que la desplazaremos una posición. Inicialmente es 0</p>
	<code>.yellow{
	<br>
	order:1;
	}</code>
	
	<br>
	<br>
	<img src="images/ordenFinal.PNG">
	
</section>
<%@include file="/includes/footer.jsp" %> 