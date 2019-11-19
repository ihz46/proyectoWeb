<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<%

String mensaje = (String)request.getAttribute("mensaje");
if(mensaje != null){
	%>
	<p class="error"><%=mensaje %></p>
<% }%>




<head>
	<title>Login Ipartek</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/logoIpartekWeb.jpg" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	
	
	<!--===============================================================================================-->
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="login" method="post">
					<span class="login100-form-title">
						Iniciar Sesión 
					</span>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate="Introduce tu nombre de usuario">
						<input class="input100" type="text" name="nombre" placeholder="Introduce tu nombre">
						<span class="focus-input100"></span>
					</div>
	
					<div class="wrap-input100 validate-input" data-validate="Introduce la contraseña">
						<input class="input100" type="password" name="contrasena" placeholder="Introduce tu contraseña">
						<span class="focus-input100"></span>
					</div>

					<div class="idioma">
						<select name="idioma" id="idioma">
							<option value="castellano">Castellano</option>
							<option value="euskera">Euskera</option>
							<option value="ingles">Inglés</option>
							<option value="frances">Francés</option>
							<option value="aleman">Alemán</option>
						
						</select>
					</div>

					<div class="check">
						Recordar
						<input type="checkbox" name="recuerdame" id="recuerdame" value="si">
					</div>
	
					
	
					<div class="container-login100-form-btn">
						<input type="submit" class="login100-form-btn" value="Entrar">
							
						
					</div>
	
					
				</form>
			</div>
		</div>
	</div>
	
	<a href="calculadora.jsp">Calculadora</a>
	
	
	<script src="js/main.js"></script>
</body>

</html>


