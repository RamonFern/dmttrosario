package br.com.dmttrosario.ramon.daos;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.dmttrosario.ramon.models.Veiculo;

@Repository
@Transactional
public class VeiculoDAO {
	
	@PersistenceContext
	private EntityManager manager;
	
	public void gravar(Veiculo veiculo){
		manager.persist(veiculo);		
	}
	

	public List<Veiculo> listar() {
		return manager.createQuery("select v from Veiculo v", Veiculo.class).getResultList();
	}

	public Veiculo find(Integer id) {
		return manager.find(Veiculo.class, id);
		
	}
	/*
	public Veiculo listarPorPlaca(String placa) {
		return manager.find(Veiculo.class, placa);
	}*/
	


}
