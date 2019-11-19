package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/sumar")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculadoraController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Obtener datos del formulario.
		
		
		//Recibimos el tipo de operación
		String op = request.getParameter("op");
		
		String numero1 = request.getParameter("op1");
		String numero2 = request.getParameter("op2");
		String operacion ="";
		float resultado = 0;
		
		try {
			switch (op) {
			case "1":
				//Suma
				resultado = Float.parseFloat(numero1) + Float.parseFloat(numero2);
				operacion = "+";
				break;
				
			case "2":
				//Resta
				resultado = Float.parseFloat(numero1) - Float.parseFloat(numero2);
				operacion="-";
				break;
				
			case "3":
				//Multiplicación 
				resultado = Float.parseFloat(numero1) * Float.parseFloat(numero2);
				operacion="x";
				break;
			
			case "4":
				//División
				if (Integer.parseInt(numero2)==0) {
					request.setAttribute("error", "No puedes dividir entre cero");
				}else {
					resultado = Float.parseFloat(numero1) / Float.parseFloat(numero2);
					operacion="/";
				}
				
				break;

			default:
				break;
			}
		} catch (NumberFormatException e) {
			String error="Eres un jeta, debes de meter números";
			request.setAttribute("resultado", resultado);
			request.setAttribute("error", error);
		} catch (Exception e) {
			String error=e.getMessage();
			request.setAttribute("error",error);
		}
		
		
		//Realizar cálculos
		
	
					
			request.setAttribute("resultado",  resultado);
			request.setAttribute("op1", numero1);
			request.setAttribute("op2", numero2);
			request.setAttribute("op", op);
			request.setAttribute("operacion", operacion);
	
		
		//Enviar datos a la vista
		
		
		
		//Vamos a la vista
		request.getRequestDispatcher("resultado.jsp").forward(request, response);
		
	
	}

}
