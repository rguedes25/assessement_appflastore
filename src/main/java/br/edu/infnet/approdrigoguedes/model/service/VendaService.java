package br.edu.infnet.approdrigoguedes.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.approdrigoguedes.model.negocio.Usuario;
import br.edu.infnet.approdrigoguedes.model.negocio.Venda;
import br.edu.infnet.approdrigoguedes.model.repository.IVendaRepository;

@Service
public class VendaService {
	
	@Autowired
	private IVendaRepository vendaRepository;
	
	
	public List<Venda> obterLista(Usuario usuario){
		return (List<Venda>)vendaRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "descricao"));
		
	}
	
	public List<Venda> obterLista(){
		return (List<Venda>)vendaRepository.findAll();
		
	}
	
	public void incluir(Venda venda) {
		vendaRepository.save(venda);
		
	}
	
	public void excluir(Integer id) {
		
		vendaRepository.deleteById(id);
		
	}

}
