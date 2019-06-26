package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controlDatos.LogicaBD;

@WebServlet("/Cambio")
public class Cambio extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Cambio() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LogicaBD lbd = new LogicaBD();
		HttpSession sesion = request.getSession(true);
		String usuarioSesion = (String) sesion.getAttribute("usuario");

		String correo = request.getParameter("correo");
		String nombre = request.getParameter("nombre");
		String apellido1 = request.getParameter("apellido1");
		String apellido2 = request.getParameter("apellido2");
		String contrasena = request.getParameter("contrasena"); 
		
		RequestDispatcher rd = null;

		lbd.cambiarDatos(correo, usuarioSesion, nombre, apellido1, apellido2, contrasena);
		rd = request.getRequestDispatcher("/cambiardatos2.jsp");

		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
