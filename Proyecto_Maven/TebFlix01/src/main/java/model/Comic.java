package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the comic database table.
 * 
 */
@Entity
@NamedQueries({@NamedQuery(name="Comic.findAll", query="SELECT c FROM Comic c"),
	@NamedQuery(name="Comic.findByName", query="SELECT co FROM Comic co where co.pdf=:nombre")})

public class Comic implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int codigo;

	private String categoria;

	@Temporal(TemporalType.DATE)
	private Date fecha;

	private String imagen;

	private String pdf;

	@Lob
	private String sinopsis;

	private String titulo;

	//bi-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="USUARIO")
	private Usuario usuarioBean;

	//bi-directional many-to-one association to Comicfav
	@OneToMany(mappedBy="comic")
	private List<Comicfav> comicfavs;

	public Comic() {
	}

	public int getCodigo() {
		return this.codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getCategoria() {
		return this.categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getPdf() {
		return this.pdf;
	}

	public void setPdf(String pdf) {
		this.pdf = pdf;
	}

	public String getSinopsis() {
		return this.sinopsis;
	}

	public void setSinopsis(String sinopsis) {
		this.sinopsis = sinopsis;
	}

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Usuario getUsuarioBean() {
		return this.usuarioBean;
	}

	public void setUsuarioBean(Usuario usuarioBean) {
		this.usuarioBean = usuarioBean;
	}

	public List<Comicfav> getComicfavs() {
		return this.comicfavs;
	}

	public void setComicfavs(List<Comicfav> comicfavs) {
		this.comicfavs = comicfavs;
	}

	public Comicfav addComicfav(Comicfav comicfav) {
		getComicfavs().add(comicfav);
		comicfav.setComic(this);

		return comicfav;
	}

	public Comicfav removeComicfav(Comicfav comicfav) {
		getComicfavs().remove(comicfav);
		comicfav.setComic(null);

		return comicfav;
	}

}