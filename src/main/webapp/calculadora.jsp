<html>

<h1>Calculadora</h1>

<form action="sumar" method="post">

	<label for="operacion">Operaci�n</label>
	<input type="radio" name="op" value="1">Sumar
	<input type="radio" name="op" value="2">Restar
	<input type="radio" name="op" value="3">Multiplicar
	<input type="radio" name="op" value="4">Dividir
	<br>
	
	<input type="number" name="op1" placeholder="n�mero 1" required>
	<br>
	<input type="number" name="op2" placeholder="n�mero 2" required>
	<br>
	
	
	<input type="submit" value="calcular">
</form>

<a href="login.jsp">Volver</a>

</html>