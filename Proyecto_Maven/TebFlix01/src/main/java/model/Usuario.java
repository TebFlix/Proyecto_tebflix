package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the usuario database table.
 * 
 */
@Entity
@NamedQuery(name="Usuario.findAll", query="SELECT u FROM Usuario u")
public class Usuario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String usuario;

	private String apellido1;

	private String apellido2;

	private String contrasena;

	private String correo;

	private String nombre;

	private boolean proveedor;

	//bi-directional many-to-one association to Comic
	@OneToMany(mappedBy="usuarioBean")
	private List<Comic> comics;

	//bi-directional many-to-one association to Comicfav
	@OneToMany(mappedBy="usuarioBean")
	private List<Comicfav> comicfavs;

	public Usuario() {
	}

	public String getUsuario() {
		return this.usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getApellido1() {
		return this.apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return this.apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public String getContrasena() {
		return this.contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getCorreo() {
		return this.correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public boolean getProveedor() {
		return this.proveedor;
	}

	public void setProveedor(boolean proveedor) {
		this.proveedor = proveedor;
	}

	public List<Comic> getComics() {
		return this.comics;
	}

	public void setComics(List<Comic> comics) {
		this.comics = comics;
	}

	public Comic addComic(Comic comic) {
		getComics().add(comic);
		comic.setUsuarioBean(this);

		return comic;
	}

	public Comic removeComic(Comic comic) {
		getComics().remove(comic);
		comic.setUsuarioBean(null);

		return comic;
	}

	public List<Comicfav> getComicfavs() {
		return this.comicfavs;
	}

	public void setComicfavs(List<Comicfav> comicfavs) {
		this.comicfavs = comicfavs;
	}

	public Comicfav addComicfav(Comicfav comicfav) {
		getComicfavs().add(comicfav);
		comicfav.setUsuarioBean(this);

		return comicfav;
	}

	public Comicfav removeComicfav(Comicfav comicfav) {
		getComicfavs().remove(comicfav);
		comicfav.setUsuarioBean(null);

		return comicfav;
	}

}