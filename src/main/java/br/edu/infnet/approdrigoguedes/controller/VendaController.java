package br.edu.infnet.approdrigoguedes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.approdrigoguedes.model.negocio.Usuario;
import br.edu.infnet.approdrigoguedes.model.negocio.Venda;
import br.edu.infnet.approdrigoguedes.model.service.ClienteService;
import br.edu.infnet.approdrigoguedes.model.service.VendaService;

@Controller
public class VendaController {
	
	@Autowired
	private VendaService vendaService;
	@Autowired
	private ClienteService clienteService;
	
	@GetMapping(value = "/venda")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario) {
		
		model.addAttribute("lista", vendaService.obterLista(usuario));
		model.addAttribute("clientes", clienteService.obterLista(usuario));
				
		return "venda/detalhe";
	}
	
	@PostMapping (value = "/venda/incluir")
	public String incluir(Venda venda, @SessionAttribute("user") Usuario usuario) {
		
		venda.setUsuario(usuario);
		
		vendaService.incluir(venda);
		
		return "redirect:/venda";
	}
	
	@GetMapping(value = "/venda/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
	
		return "redirect:/venda";
	}

}
