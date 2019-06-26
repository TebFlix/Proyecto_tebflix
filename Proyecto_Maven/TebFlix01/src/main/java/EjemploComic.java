


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.*;
public class EjemploComic {

	public static void main(String[] args) {
		EntityManagerFactory factoria = Persistence.createEntityManagerFactory("TebFlix01");
		EntityManager em = factoria.createEntityManager();
		String sql= "SELECT co FROM Comic co where co.pdf='ejemplo_esp'";
		TypedQuery<Comic> query = em.createQuery(sql, Comic.class);
		Comic c = query.getSingleResult();
		System.out.println("Este es el nombre del pdf "+c.getPdf());

	
	}



}