package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpRetryException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController
 */
@WebServlet("/inicio")
public class HelloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String NOMBRE = "pepe";
	private static final String PASSWORD = "123456";
	private static final String TETERA = "tetera";
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//Peticion del cliente
		
		String userAgent = request.getHeader("User-Agent"); //Obtenemos información relativa al navegador y so del cliente.
		String nombre = request.getParameter("nombre"); //Obtenemos el parámetro nombre
		String password = request.getParameter("password"); //obtenemos el parámetro password (123456)
		String protocolo = request.getProtocol();
		String movil = "";
		
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		
		//Respuesta
		PrintWriter out = response.getWriter();
		
		
		if (NOMBRE.equalsIgnoreCase(nombre) && PASSWORD.equalsIgnoreCase(password)) {
			if (userAgent.toLowerCase().contains("mobile")) {
				movil = "si";
				
			}else {
				movil="no";
			}
			//Mandamos el código de OK
			response.setStatus(200);
			
			
			out.print("<html lang=\"es\">");
			out.print("<head>");
			out.print("<meta charset=\"utf-8\">");
			out.print("<title>Título del título</title>");
			out.print("</head>");
			out.print("<body style=\"font-size:24px\">");
			out.print("<h1>Página de ejemplo</h1>");
			out.print("<ol>");
			out.print("<li> Tú navegador es : " + userAgent + ". </li>" );
			out.print("<li> Tu nombre es: " + nombre + "</li>");
			out.print("<li>Estas usando el protocolo " + protocolo + ".</li>");
			out.print("<li>Es móvil : " + movil + ".</li>");
			out.print("</body>");
			out.print("</html>");
			
			out.flush();
		}else {
			if (TETERA.equalsIgnoreCase(nombre)) {
				//Devolvemos codigo de error 418
				response.setStatus(418);
				out.print("<img src=\"https://soyunatetera.com/wp-content/uploads/2018/06/itunes_album_art.jpg\" alt=\"tetera\">");
			}else {
				//Devolvemos codigo de error 401
				response.setStatus(401);
				out.print("<h1>ACCESO NO AUTORIZADO</h1>");
				out.print("Se notificará a la administración");
			}
		}
			
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
