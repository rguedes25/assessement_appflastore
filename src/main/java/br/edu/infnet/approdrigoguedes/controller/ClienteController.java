package br.edu.infnet.approdrigoguedes.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.approdrigoguedes.model.negocio.Cliente;
import br.edu.infnet.approdrigoguedes.model.negocio.Usuario;
import br.edu.infnet.approdrigoguedes.model.service.ClienteService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService clienteService;
	
	@GetMapping(value = "/cliente")
	public String showDetalhe(Model model, @SessionAttribute("user") Usuario usuario) {
		
		model.addAttribute("lista", clienteService.obterLista(usuario));
						
		return "cliente/detalhe";
	}
	
	@PostMapping (value = "/cliente/incluir")
	public String incluir(Cliente cliente, @SessionAttribute("user") Usuario usuario) {
		
		cliente.setUsuario(usuario);
		
		clienteService.incluir(cliente);
		
		return "redirect:/cliente";
	}
	
	@GetMapping(value = "/cliente/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id, @SessionAttribute("user") Usuario usuario) {
		
		try {
			clienteService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("mensagem", "Não foi possível excluir o cliente: " + e.getMessage());
			return showDetalhe(model, usuario);
		}
	
		return "redirect:/cliente";
	}
}
