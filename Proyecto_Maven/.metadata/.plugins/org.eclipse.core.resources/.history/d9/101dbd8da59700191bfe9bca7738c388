package controlDatos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.*;

public class LogicaBD {
	private String mensaje;
	EntityManagerFactory factoria = Persistence.createEntityManagerFactory("TebFlix01");
	EntityManager em = factoria.createEntityManager();

	public LogicaBD() {
	}

	public Usuario devuelveUsuario(String usuario) {
		Usuario usu = em.find(Usuario.class, usuario);
			return usu;
	}
	
	public boolean comprobarUsuario(String usuario, String correo) {
		boolean x = false;
		try {
			Usuario usur = em.find(Usuario.class, usuario);
			TypedQuery<Usuario> query = em
					.createQuery("SELECT u FROM " + "Usuario u WHERE u.correo='" + correo + "'", Usuario.class);
			List<Usuario> correoActual = query.getResultList();

			if ((usur == null) && (correoActual.size() == 0)) {
				x = true;
				// Usuario no existe, todo correcto.
			} else {
				// Usuario existe, no se puede crear cuenta.
				x = false;
			}
		} catch (Exception e) {
			mensaje = "Error";
			System.out.println(e.getMessage());
			x = false;
			// error, impide continuar
		}
		return x;
	}

	// Si comprbarUsuario es true, se ejecutará crearCuenta
	public boolean crearCuenta(String correo, String usuario, String nom, String ape1, String ape2, String contra,
			boolean prov) {
		boolean x = false;
		try {
			Usuario usuarioNuevo = new Usuario();
			em.getTransaction().begin();
			em.persist(usuarioNuevo);
			em.getTransaction().commit();
			x = true;
		} catch (Exception e) {
			mensaje = "Error a la hora de crear una cuenta nueva";
			x = false;
		}
		return x;
	}

	// Listado de cómics subidos por el usuario
	public String comicSubidos(String usuario) {
		String salida = "";
		try {
			TypedQuery<Comic> query = em
					.createQuery("SELECT c FROM Comic c WHERE c.usuarioBean.usuario='" + usuario + "'", Comic.class);
			List<Comic> comicUsur = query.getResultList();
			if (comicUsur.size() == 0) {
				salida = "<p> Aún no has subido ningún cómic </p>";
			} else {
				salida = "<table>";
				for (Comic c : comicUsur) {
					salida = salida + "<tr> <td class='comicsSubidos'>" + c.getTitulo() + " - " + c.getCategoria() + "[" + c.getFecha()
							+ "] </td> </tr>";
				}
				salida = salida + "</table>";
			}
		} catch (Exception e) {
			salida = "Error";
			System.out.println(e.getMessage());
		}
		return salida;
	}

	// Listado de cómics favoritos del usuario
	public String comicsFavoritos(String usuario) {
		String salida = "";
		try {
			TypedQuery<Comicfav> query = em
					.createQuery("SELECT c FROM Comicfav c WHERE c.usuarioBean.usuario='" + usuario + "'", Comicfav.class);
			List<Comicfav> comicFavUsur = query.getResultList();
			if (comicFavUsur.size() == 0) {
				salida = "<p> Aún no has subido ningún cómic </p>";
			} else {
				salida = "<table>";
				for (Comicfav c : comicFavUsur) {
					salida = salida + "<tr> <td class='comicsSubidos'>" + c.getComic().getTitulo() + " - " + c.getComic().getCategoria()
							+ "(Autor: " + c.getUsuarioBean().getUsuario() + ") </td> </tr>";
				}
				salida = salida + "</table>";
			}
			return salida;
		} catch (Exception e) {
			salida = "Error";
			System.out.println(e.getMessage());
			return salida;
		}
	}

	// Listado de imágenes y títulos de cómics subidos principal.jsp
	public String ultimosComics() {
		String salida = "";
		try {
			TypedQuery<Comic> query = em.createNamedQuery("Comic.findAll", Comic.class);
			List<Comic> comicSubidos = query.getResultList();
			if (comicSubidos.size() == 0) {
				salida = "<p> Aún no hay ningún cómic subido. ¡Disculpa!</p>";
			} else {
				for (Comic c : comicSubidos) {
					salida = salida + "<div> <p>" + c.getTitulo() + "</p> + <p>" + c.getImagen() + "</p> </div>";
				}
			}
			return salida;
		} catch (Exception e) {
			salida = "Error";
			System.out.println(e.getMessage());
			return salida;
		}
	}

	public boolean cambiarAvatar(String pathImg) {
		return true;
	}

	public boolean iniciarSesion(String usuario, String contrasena) {
		boolean x = false;
		try {
			Usuario u = em.find(Usuario.class, usuario);
			if (u.getUsuario().equals(usuario) && u.getContrasena().equals(contrasena)) {
				x = true;
			} else {
				x = false;
			}
		} catch (Exception e) {
			x = false;
		}
		return x;
	}
	
	public boolean cambiarDatos(String correo, String usuarioAntiguo, String nombre, String apellido1, String apellido2,
			String contrasena) {
		boolean x = false;
		try {
			Usuario u = em.find(Usuario.class, usuarioAntiguo);
			em.getTransaction().begin();
			u.setCorreo(correo);
			em.getTransaction().commit();
			em.getTransaction().begin();
			u.setNombre(nombre);
			em.getTransaction().commit();
			em.getTransaction().begin();
			u.setApellido1(apellido1);
			em.getTransaction().commit();
			em.getTransaction().begin();
			u.setApellido2(apellido2);
			em.getTransaction().commit();
			em.getTransaction().begin();
			u.setContrasena(contrasena);
			em.getTransaction().commit();
			em.getTransaction().begin();
			u.setCorreo(correo);
			em.getTransaction().commit();
		} catch (Exception e) {
			x = false;
		}
		return x;
			
	}

}



