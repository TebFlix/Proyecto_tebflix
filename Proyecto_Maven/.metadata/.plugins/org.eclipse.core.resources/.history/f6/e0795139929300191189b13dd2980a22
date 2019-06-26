package com.TebFlix;

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

	private byte proveedor;

	//bi-directional many-to-one association to Comic
	@OneToMany(mappedBy="usuarioBean")
	private List<Comic> comics1;

	//bi-directional many-to-many association to Comic
	@ManyToMany(mappedBy="usuarios")
	private List<Comic> comics2;

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

	public byte getProveedor() {
		return this.proveedor;
	}

	public void setProveedor(byte proveedor) {
		this.proveedor = proveedor;
	}

	public List<Comic> getComics1() {
		return this.comics1;
	}

	public void setComics1(List<Comic> comics1) {
		this.comics1 = comics1;
	}

	public Comic addComics1(Comic comics1) {
		getComics1().add(comics1);
		comics1.setUsuarioBean(this);

		return comics1;
	}

	public Comic removeComics1(Comic comics1) {
		getComics1().remove(comics1);
		comics1.setUsuarioBean(null);

		return comics1;
	}

	public List<Comic> getComics2() {
		return this.comics2;
	}

	public void setComics2(List<Comic> comics2) {
		this.comics2 = comics2;
	}

}