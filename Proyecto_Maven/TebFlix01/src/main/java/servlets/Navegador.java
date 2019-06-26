package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Navegador
 */
@WebServlet(description = "Navegador entre las opciones del menú", urlPatterns = { "/Navegador" })
public class Navegador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Navegador() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(true);
		String accion = request.getParameter("accion");
		String usuario = request.getParameter("usuario");
		RequestDispatcher rd = null;
		
		if (accion == null) {
			response.sendRedirect("/principal.jsp");
		} else {
			switch(accion) {
			case "Inicio": //Se podría resolver desde el propio HTML?
				if (sesion.isNew() || usuario == null) {
					rd = request.getRequestDispatcher("/principal.jsp");
				} else {
					rd = request.getRequestDispatcher("/principalUsur.jsp");
				}
				break;
			case "Categorias":
				rd = request.getRequestDispatcher("/categrias.jsp");
				break;
			//meter subcategorías
			case "Eventos":
				rd = request.getRequestDispatcher("/eventos.jsp");
				break;
			case "Tiendas":
				rd = request.getRequestDispatcher("/tiendas.jsp");
				break;
			case "Conocenos":
				rd = request.getRequestDispatcher("/conocenos.jsp");
				break;
			case "Iniciar":
				rd = request.getRequestDispatcher("/login.jsp");
				break;
			case "Registrar":
				rd = request.getRequestDispatcher("/registro.jsp");
				break;
			//Habrá que hacer una página para ver los cómics.
			case "Cerrar":
				rd = request.getRequestDispatcher("/cerrarsesion.jsp");
				break;
			case "Perfil":
				rd = request.getRequestDispatcher("/miperfil.jsp");
				break;
			case "Cambiar":
				rd = request.getRequestDispatcher("/cambiardatos.jsp");
				break;
			}
			
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

}
