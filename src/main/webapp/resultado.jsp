<h1>Calculadora</h1>
<%
//Recibimos los atributos del controlador
String error = (String) request.getAttribute("error");
String op1 = (String) request.getAttribute("op1");
String op2 = (String) request.getAttribute("op2");
String operacion = (String) request.getAttribute("operacion");

float resultado = (float) request.getAttribute("resultado");

//Si el mensaje de error no es null, mostramos el error.
if(error != null){
	


	%>
	<p style="color:red;"><%=error%></p>
	
<!-- -En caso de error debemos de mostrar el resultado de la operación -->
	
	<%}else{ %>
		
	
			<h2>Operación matemática</h2>
	
			<p> <%=op1 %> <%=operacion %> <%=op2 %> = <%=resultado%></p>
	
	<%}%>
	
	
	
	<a href="calculadora.jsp">Volver a Calcular</a>
	
	