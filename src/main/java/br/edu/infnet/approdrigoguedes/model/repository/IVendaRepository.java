package br.edu.infnet.approdrigoguedes.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.approdrigoguedes.model.negocio.Venda;

@Repository
public interface IVendaRepository extends CrudRepository<Venda, Integer>{
	
	@Query("from Venda v where v.usuario.id=:id")
	List<Venda> obterLista(Integer id, Sort by);

}
