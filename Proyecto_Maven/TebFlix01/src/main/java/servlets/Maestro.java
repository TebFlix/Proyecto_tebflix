package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controlDatos.LogicaBD;

/**
 * Servlet implementation class Maestro
 */
@WebServlet(
		description = "Primer controlador único", 
		urlPatterns = { "/Maestro" }, 
		initParams = { 
				@WebInitParam(name = "Jerarquía", value = "Primero")
		})
public class Maestro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LogicaBD lbd;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Maestro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Intentar recuperar sesión en el caso de que, por lo que sea, se haya iniciado:
		RequestDispatcher rd = null;
		String usuario = "";
		String contrasena = "";
		HttpSession sesion = request.getSession(true);
		if (!sesion.isNew()) {
			usuario = (String) sesion.getAttribute("usuario");
			contrasena = (String) sesion.getAttribute("contrasena");
			if (usuario == null /*no sé si poner contra tb*/) {
				rd = request.getRequestDispatcher("/principal.jsp");
			} else if(lbd.iniciarSesion(usuario, contrasena)) {	/*método de jorge*/
				rd = request.getRequestDispatcher("/principalUsur.jsp");
				sesion.setAttribute("usuario", usuario);
				sesion.setAttribute("contraseña", contrasena);
			} else {
				rd = request.getRequestDispatcher("/principal.jsp");
				sesion.invalidate();
			}
		} else {
			rd = request.getRequestDispatcher("/principal.jsp");
		}
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		// Lógica de la conexión con la base de datos.
		ServletContext contextoAplicacion = this.getServletContext();
		lbd = new LogicaBD();
		contextoAplicacion.setAttribute("LogicaBD", lbd);
	}

}
