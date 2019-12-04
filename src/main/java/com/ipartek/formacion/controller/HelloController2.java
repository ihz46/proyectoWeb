package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController2
 * 
 * Ejemplo para aprender como recibir peticiones del cliente y enviar una respuesta a un JSP
 */
@WebServlet("/inicio2")
public class HelloController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String NOMBRE = "pepe";
	private static final String PASSWORD = "123456";
	private static final String TETERA = "tetera";
	private static final String VISTA = "inicio.jsp";
	private static final String VISTA_TETERA = "tetera.jsp";
	private static final String VISTA_NO_PERMISO = "nopermiso.jsp";
       
   
	/**
	 * @see HelloController para ver como hacer esto sin JSP.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Peticion del cliente
		
		
				String userAgent = request.getHeader("User-Agent"); //Obtenemos información relativa al navegador y so del cliente.
				String nombre = request.getParameter("nombre"); //Obtenemos el parámetro nombre
				String password = request.getParameter("password"); //obtenemos el parámetro password (123456)
				String protocolo = request.getProtocol();
				String movil = "";
		
		//Logica de negocio
				
				if (NOMBRE.equalsIgnoreCase(nombre) && PASSWORD.equalsIgnoreCase(password)) {
					if (userAgent.toLowerCase().contains("mobile")) {
						movil = "si";
						
					}else {
						movil="no";
					}
					//Codigo OK
					response.setStatus(200);
					
					//Mandamos los atributos
					request.setAttribute("nombre", nombre);
					request.setAttribute("userAgent", userAgent);
					request.setAttribute("protocolo",protocolo);
					request.setAttribute("movil", movil);
					
					
					//Request interna del servidor
					request.getRequestDispatcher(VISTA).forward(request, response);
					
				}else {
					if (TETERA.equalsIgnoreCase(nombre)) {
						//Vammos a la vista de la tetera
						response.setStatus(200);
						//Request interna del servidor
						request.getRequestDispatcher(VISTA_TETERA).forward(request, response);
						
						
					}else {
						//Vamos a la vista de error
						response.setStatus(200);
						//Request interna del servidor
						request.getRequestDispatcher(VISTA_NO_PERMISO).forward(request, response);
						
					}
				}
				
				
				
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Llamamos al doget
		doGet(request, response);
	}

}
