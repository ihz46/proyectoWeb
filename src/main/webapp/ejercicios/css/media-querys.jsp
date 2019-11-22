<%String titulo = "HelloWeb | MEDIA QUERYS"; %>
<%String nombreTitulo = "Media Querys"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %>  

<section>
<h2>Definici�n</h2>
<br>
<p>Una media query consiste en un tipo de medio y al menos una consulta que limita las hojas de estilo utilizando caracter�sticas del medio como ancho, alto y color. Se entiende como un m�dulo CSS3 que permite adaptar la representaci�n del contenido a caracter�sticas del dispositivo. A�adido en CSS3, las media queries dejan que la presentaci�n del contenido se adapte a un rango espec�fico de dispositivos de salida sin tener que cambiar el contenido en s�.</p>
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
	
	
	/*M�vil*/
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