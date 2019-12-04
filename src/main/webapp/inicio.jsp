<%String titulo = "HelloWeb | Inicio"; %>
<%String nombreTitulo = "Ejemplo JSP"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %> 


<h1>Resumen</h1>


<ol>
	<li>User agent : ${userAgent}</li>
	<li>Nombre: ${nombre}</li>
	<li>Protocolo:${protocolo}</li>
	<li>Es móvil : ${movil}</li>
</ol>














<%@include file="/includes/footer.jsp" %> 
