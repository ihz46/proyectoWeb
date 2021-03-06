package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. Recibimos parámetros

		String nombre = (String) request.getParameter("nombre");
		String contrasena = (String) request.getParameter("contrasena");
		String idioma = (String) request.getParameter("idioma");
		String recuerdame = (String) request.getParameter("recuerdame");
		if (recuerdame==null) {
			recuerdame="no";
		}else {
			recuerdame="si";
		}
		
		
		/*
		 * Creamos una variable para guardar el mensaje de bienvenida dependiendo del idioma
		 */
		

		String mensajeBienvenida = "";

		if ("admin".equalsIgnoreCase(nombre) && "admin".equalsIgnoreCase(contrasena)) {
			
			
			//Recuperar la session del usuario == navegador
			
			HttpSession session = request.getSession();
			
			//Guardamos un atributo en la sesión
			session.setAttribute("usuarioLogeado", "Administrador");
			session.setAttribute("idioma", idioma);
			
			
			//Establecemos un valor máximo de tiempo de sesión
			session.setMaxInactiveInterval(-1); //5S
			
			switch (idioma) {
			case "castellano":
				mensajeBienvenida = "Hola " + nombre + ", bienvenido a la web. ";

				if (recuerdame!=null) {

					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Tus datos serán recordados.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				} else {
					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Tus datos no serán recordados.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				}

				break;

			case "euskera":
				mensajeBienvenida = "Kaixo " + nombre + ", ongi etorri webgunera.";
				if (recuerdame!=null) {

					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Zure datuak gogoan izango dira.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				} else {
					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Zure datuak ez dira gogoratuko.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				}
				
				break;

			case "ingles":
				mensajeBienvenida = "Hello " + nombre + ", welcome to the web.";
				if (recuerdame!=null) {

					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Your data will be remembered");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				} else {
					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Your data will not be remembered");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				}
				
				break;

			case "aleman":
				mensajeBienvenida = " Hallo " + nombre + ", Willkommen im Internet. Ihre Daten werden gespeichert.";
				if (recuerdame!=null) {

					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Ihre Daten werden gespeichert.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				} else {
					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Ihre Daten werden nicht gespeichert.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				}
				break;

			case "frances":
				mensajeBienvenida = "Salut " + nombre + ", bienvenue sur le web.";
				if (recuerdame!=null) {

					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Vos données seront mémorisées");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				} else {
					request.setAttribute("mensajeBienvenida", mensajeBienvenida + ". Vos données ne seront pas mémorisées.");
					request.getRequestDispatcher("login-exito.jsp").forward(request, response);
				}
				break;

			}

		} else {
			request.setAttribute("mensaje", "Has introducido un usuario/contraseña no válido.");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
