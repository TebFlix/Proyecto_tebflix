package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controlDatos.LogicaBD;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext contextoAplicacion = this.getServletContext();
		LogicaBD lbd = (LogicaBD) contextoAplicacion.getAttribute("LogicaBD");
		HttpSession sesion = request.getSession(true);
		String usua = request.getParameter("usuario");
		String p = request.getParameter("password");

		RequestDispatcher rd = null;

		if (lbd.iniciarSesion(usua, p)) {
			rd = request.getRequestDispatcher("/miperfil.jsp");
			sesion.setAttribute("usuario", usua);
		} else {
			rd = request.getRequestDispatcher("/login2.jsp");
		}
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
