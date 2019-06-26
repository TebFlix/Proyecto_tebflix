package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the comicfav database table.
 * 
 */
@Entity
@NamedQuery(name="Comicfav.findAll", query="SELECT c FROM Comicfav c")
public class Comicfav implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="USUARIO")
	private Usuario usuarioBean;

	//bi-directional many-to-one association to Comic
	@ManyToOne
	@JoinColumn(name="CODIGO")
	private Comic comic;

	public Comicfav() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Usuario getUsuarioBean() {
		return this.usuarioBean;
	}

	public void setUsuarioBean(Usuario usuarioBean) {
		this.usuarioBean = usuarioBean;
	}

	public Comic getComic() {
		return this.comic;
	}

	public void setComic(Comic comic) {
		this.comic = comic;
	}

}