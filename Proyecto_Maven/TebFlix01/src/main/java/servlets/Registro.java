package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controlDatos.LogicaBD;

/**
 * Servlet implementation class Registro
 */
@WebServlet("/Registro")
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registro() {
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
		RequestDispatcher rd;
		HttpSession sesion = request.getSession(true);
		ServletContext contextoAplicacion = this.getServletContext();
		LogicaBD lbd = (LogicaBD) contextoAplicacion.getAttribute("miLogicaBD");
		
		//Reocojo correo y usuario, que no pueden estar repetidos
		String correo = request.getParameter("correo");
		String usuario = request.getParameter("usuario");
		
		String nombre = request.getParameter("nombre");
		String ape1 = request.getParameter("apellido1");
		String ape2 = request.getParameter("apellido2");
		String contra = request.getParameter("contrasena");
		String prov = request.getParameter("prove");
		boolean proveBol = false;
		if (prov.equals("1")) {
			proveBol = true;
		} else {
			proveBol = false;
		}
		//meter en crear cuenta si el usuario va a ser proveedor o no de cómics
		
		//debería recuperar el objeto de lbd, pero ahora no sé hacerlo
		//Uso la clase abstracta por probar, da igual cómo hacerlo
		lbd = new LogicaBD();
		if (lbd.comprobarUsuario(usuario, correo)) {
			if (lbd.crearCuenta(correo, usuario, nombre, ape1, ape2, contra, proveBol)) {
				rd = request.getRequestDispatcher("/cuentaNueva.jsp");
				sesion.setAttribute("nombre", nombre);		
			} else {
				rd = request.getRequestDispatcher("/error.jsp"); 
			}
		} else {
			rd = request.getRequestDispatcher("/error.jsp");
		}
		
		rd.forward(request, response);
	}

}
