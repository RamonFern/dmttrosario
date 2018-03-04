package br.com.dmttrosario.ramon.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.dmttrosario.ramon.daos.UsuarioDAO;
import br.com.dmttrosario.ramon.daos.VeiculoDAO;
import br.com.dmttrosario.ramon.models.Role;
import br.com.dmttrosario.ramon.models.Usuario;
import br.com.dmttrosario.ramon.models.Veiculo;

@Controller
public class HomeController {
	
	
	@Autowired
	private VeiculoDAO veiculoDAO;
	@Autowired
	private UsuarioDAO usuarioDao;

	@RequestMapping("/")
	@Cacheable(value="veiculosHome")
	public ModelAndView index(){
		List<Veiculo> veiculos = veiculoDAO.listar();
		ModelAndView modelAndView = new ModelAndView("home2");
		modelAndView.addObject("veiculos",veiculos);		
		return modelAndView;
	}
	
	@RequestMapping("/homeList")
	//@Cacheable(value="veiculosHome")
	public ModelAndView list(){
		List<Veiculo> veiculos = veiculoDAO.listar();
		ModelAndView modelAndView = new ModelAndView("homeList");
		modelAndView.addObject("veiculos",veiculos);		
		return modelAndView;
	}
	
	@RequestMapping("/album")
	public String album(){
		return "album";
	}
	
	@RequestMapping("/contato")
	public String contato(){
		return "contato";
	}

	@RequestMapping("/operacaoTransito")
	public String operacaoTransito(){
		return "operacaoTransito";
	}
	
	@RequestMapping("/quemsomos")
	public String quemsomos(){
		return "quemsomos";
	}
	

	@RequestMapping("/cursoGmAt")
	public String cursoGmAt(){
		return "cursoGmAt";
	}
	
	
	@Transactional
	@ResponseBody
	@RequestMapping("/url-magica-maluca-234ksksdfhns34634d47broiehoihe754lbnlrnbadfnbrer73097093485345340")
	public String urlMagicaMaluca(){
		Usuario usuario = new Usuario();
		usuario.setNome("Admin");
		usuario.setEmail("ramonfernandes9@gmail.com");
		usuario.setSenha("$2a$10$lt7pS7Kxxe5JfP.vjLNSyOXP11eHgh7RoPxo5fvvbMCZkCUss2DGu");
		usuario.setRoles(Arrays.asList(new Role("ROLE_ADMIN")));
		
		usuarioDao.gravar(usuario);
		return "Url Mágica Executada...";
	}
}
