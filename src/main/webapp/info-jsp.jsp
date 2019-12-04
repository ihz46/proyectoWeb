<%String titulo = "HelloWeb | Ejemplos JSP"; %>
<%String nombreTitulo = "Ejemplo JSP"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
<div id="info-jsp">
<h1>Ejemplos SERVLET y JSP</h1>

<img class="button" src="https://i.ibb.co/phfW3xG/IMG-20191204-113850.jpg" alt="imagen resumen servlet jsp" />


<div class="row justify-content-center p-2">
	<div class="col">
		<h2>Ejemplo Servlet</h2>
	</div>
	<div class="col">
		<h2>Ejemplo Servlet + JSP</h2></div>
</div>

<div class="row">
	<div class="col">
		<p>En este ejemplo utilizaremos solo el SERVLET para que pinte la vista directamente sin usar JSP</p>
	</div>
	<div class="col">
		<p>En este ejemplo utilizaremos SERVLET junto a JSP para mostrar al usuario la vista</p>
	</div>
</div>
<div class="row section">
	<div class="col">
		<ol>
			<li><a href="inicio?nombre=pepe&password=123456">ENLACE OK</a></li>
			<li><a href="inicio?nombre=tetera">ENLACE TETERA</a></li>
			<li><a href="inicio">ENLACE NO PERMITIDO</a></li>
		</ol>
	</div>
	<div class="col">
		<ol>
			<li><a href="inicio2?nombre=pepe&password=123456">ENLACE OK</a></li>
			<li><a href="inicio2?nombre=tetera">ENLACE TETERA</a></li>
			<li><a href="inicio2">ENLACE NO PERMITIDO</a></li>
		</ol>
	</div>
</div>
<div class="row section">
	<div class="col">
		<form name="formjsp" action="inicio">
				<input type="text" name="nombre" placeholder="Introduce el nombre" required>
				<input type="password" name="password" placeholder="Introduce el password" required>
				<input type="submit" value="Enviar">
		</form>
	</div>
	
	<div class="col">
		<form name="formjspservlet" action="inicio2">
				<input type="text" name="nombre" placeholder="Introduce el nombre" required>
				<input type="password" name="password" placeholder="Introduce el password" required>
				<input type="submit" value="Enviar">
		</form>
	</div>

</div>	
		