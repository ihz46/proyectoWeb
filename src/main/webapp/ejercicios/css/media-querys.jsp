<%String titulo = "HelloWeb | MEDIA QUERYS"; %>
<%String nombreTitulo = "Media Querys"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %>  

<section>
<h2>Definición</h2>
<br>
<p>Una media query consiste en un tipo de medio y al menos una consulta que limita las hojas de estilo utilizando características del medio como ancho, alto y color. Se entiende como un módulo CSS3 que permite adaptar la representación del contenido a características del dispositivo. Añadido en CSS3, las media queries dejan que la presentación del contenido se adapte a un rango específico de dispositivos de salida sin tener que cambiar el contenido en sí.</p>
<a href="https://devcode.la/tutoriales/unidades-vh-vw-css/">Unidades vh y vw</a>
</section>


<style>


	/*Tablet*/
	@media screen and (max-width:768px) and (min-width:425px){
	
		section{
				background-color: orange;
		}
		
		h1,h2{
				color:orange;
		}
	
	
	}
	
	
	/*Móvil*/
	@media screen and (max-width:425px){
	
		section{
				background-color: pink;
		}
		
		h1,h2{
				color: pink;
		}
	
	}
	
</style>




<%@include file="/includes/footer.jsp" %> 