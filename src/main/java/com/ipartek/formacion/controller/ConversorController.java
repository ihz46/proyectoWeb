package com.ipartek.formacion.controller;

import java.awt.font.NumericShaper;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class ConversorControler
 */
@WebServlet("/convertir")
public class ConversorController extends HttpServlet {
	public static final float METROS_PIES = (float) 3.28084;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConversorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//Recojemos los parámetros rellenados en el formulario, siempre llegan en formato string
			
			
			String metros =  request.getParameter("metros");
			try {
				
				
					if ("".equals(metros)) {
						request.setAttribute("mensaje", "Por favor, debes indicar los metros");
					}else {
						request.setAttribute("metros", metros);
						//Casteamos el resultado.
						float resultado =  Float.parseFloat(metros) * METROS_PIES;
						request.setAttribute("resultado", resultado);
						
					}
					
					request.getRequestDispatcher("convertir.jsp").forward(request, response);
			} catch (NullPointerException e) {
				request.setAttribute("mensaje", "Error, null pointer");
				
			} catch (ClassCastException e) {
				request.setAttribute("mensaje", "Error del casting");
				
			}
			catch (NumberFormatException e) {
				request.setAttribute("mensaje", "Error por introducción de un número erróneo");
			}
			catch (Exception e) {
				request.setAttribute("mensaje", "Error, debes de introducir un valor válido.");
			}	
			finally {
				request.getRequestDispatcher("convertir.jsp").forward(request, response);
			}
			
			
			
		
			
		}
		
		
	}


