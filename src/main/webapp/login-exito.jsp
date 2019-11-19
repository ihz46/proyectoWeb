<!-- Esta página saldra si se loguea correctamente el usuario -->
<%
	String mensajeBienvenida = (String) request.getAttribute("mensajeBienvenida");
	

%>

<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">

</head>
<body>

<p><%=mensajeBienvenida %> </p>

</body>
</html>