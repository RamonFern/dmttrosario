package br.com.dmttrosario.ramon.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.dmttrosario.ramon.models.Liberacao;

@Repository
@Transactional
public class LiberacaoDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Liberacao liberacao){
		manager.persist(liberacao);		
	}
	
	public Liberacao find(Integer id_veiculoLiberado) {
		return manager.find(Liberacao.class, id_veiculoLiberado);
		
	}

	public List<Liberacao> listar() {
		return manager.createQuery("select l from Liberacao l", Liberacao.class).getResultList();
	}
}
