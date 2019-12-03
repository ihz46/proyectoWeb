<%@page import="com.ipartek.formacion.controller.ConversorController"%>
<%String titulo = "HelloWeb | CONVERSOR DE MEDIDAS"; %>
<%String nombreTitulo = "Conversor de medidas"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %> 

<h1>Conversor de METROS a PIES</h1>

<p>1 metro equivale a <%=  ConversorController.METROS_PIES %> pies</p> 

<p style="color:red">${mensaje }</p>

	<form action="convertir" method="post">
		<label for="metros">METROS</label>
		<input type="text" name="metros" id="metros" value="${metros }" placeholder="Escribe los metros"/>
		
		<label for="pies">PIES</label>
		<input type="text" name="pies" value="${(resultado == null )? 0 : resultado }"/>
		
		<input type="submit" value="Convertir"/> 	
	
	</form>
	
Resultado:
<%
	//Debemos de castear los resultados
	
	float resultado= 0;
	
	if(request.getAttribute("resultado")!= null){
		resultado = (float) request.getAttribute("resultado");
	}
	
	//pintamos en el html
	out.print(resultado);
%>
<p style="color:green">Resultado de forma abreviada ${resultado }</p>
<%@include file="/includes/footer.jsp" %> 

