<%String titulo = "HelloWeb | Login Éxito"; %>
<%String nombreTitulo = "Login Éxito"; %>
<%@include file="/includes/header.jsp" %>
<%@include file="/includes/parallax.jsp" %>
<%@include file="/includes/top-menu.jsp" %> 

<!-- Esta página saldra si se loguea correctamente el usuario -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mensajeBienvenida = (String) request.getAttribute("mensajeBienvenida");
	

%>


<p><%=mensajeBienvenida %> </p>

</body>
</html>