package com.controladores;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.entidades.Cliente;
import com.repositorios.ClienteReposistory;

@Controller
@RequestMapping("/clientes")
public class ClienteController {

	@Autowired
	private ClienteReposistory clienteReposistory;


	@RequestMapping(path = { "/" }, method = RequestMethod.GET)
	public String obtenerClientes(Model model) {
		List<Cliente> clientes = clienteReposistory.findAll();

		model.addAttribute("clientes", clientes);

		return "Clientes";
	}

	@RequestMapping(path = "/guardar", method = RequestMethod.POST)
	public String agregarVendedor(@ModelAttribute("vendedor") Cliente cliente, Model model) {
		clienteReposistory.save(cliente);
		return "redirect:/clientes/";
	}

	@RequestMapping(path = { "/formulario" }, method = RequestMethod.GET)
	public String obtenerFormulario(Model model) {

		List<Cliente> clientes = clienteReposistory.findAll();
		model.addAttribute("clientes", clientes);
		model.addAttribute("cliente", new Cliente());

		return "Clienteform";
	}

	

	@RequestMapping(path = { "/modificar/{id}" }, method = RequestMethod.GET)
	public String obtenerFormulario(Model model, @PathVariable("id") Long id) {
		Optional<Cliente> cliente = clienteReposistory.findById(id);

		if(cliente.isPresent())
			model.addAttribute("cliente", cliente);

		return "Clienteform";
	}

	@RequestMapping(path = { "/eliminar/{id}" }, method = RequestMethod.GET)
	public String eliminarVendedor(Model model, @PathVariable("id") Long id) {
		clienteReposistory.deleteById(id);
		return "redirect:/clientes/";
	}

}
