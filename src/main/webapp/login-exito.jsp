<!-- Esta página saldra si se loguea correctamente el usuario -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mensajeBienvenida = (String) request.getAttribute("mensajeBienvenida");
	

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">

</head>
<body>

<p><%=mensajeBienvenida %> </p>

</body>
</html>