package br.com.dmttrosario.ramon.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.dmttrosario.ramon.daos.LiberacaoDAO;
import br.com.dmttrosario.ramon.daos.VeiculoDAO;
import br.com.dmttrosario.ramon.models.Liberacao;
import br.com.dmttrosario.ramon.models.Veiculo;
import br.com.dmttrosario.ramon.models.VeiculoValidation;

@Controller
@RequestMapping("/veiculos")
public class VeiculosController {
	

	@Autowired
	private VeiculoDAO veiculoDao;
	
	@Autowired
	private LiberacaoDAO liberacaoDao;
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(new VeiculoValidation());
	}
	
	@RequestMapping("/form")
	public ModelAndView form(Veiculo veiculo){
		return new ModelAndView("veiculos/form");
	}
	
	@RequestMapping("/index")
	public ModelAndView home(){
		return new ModelAndView("veiculos/index");
	}
	
	@RequestMapping(method=RequestMethod.POST)
	@CacheEvict(value="veiculosHome", allEntries=true)
	public ModelAndView gravar(@Valid Veiculo veiculo, BindingResult result,
			RedirectAttributes redirectAttributes){
		if(result.hasErrors()){
			return form(veiculo);
		}
		veiculoDao.gravar(veiculo);
		redirectAttributes.addFlashAttribute("sucesso", "Veiculo cadastrado com sucesso!");
		
		return  new ModelAndView("redirect:veiculos");
	}
	
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView listar(){
		List<Veiculo> veiculos = veiculoDao.listar();
		List<Liberacao> liberacoes = liberacaoDao.listar();

		ModelAndView modelAndView = new ModelAndView("veiculos/lista");
		modelAndView.addObject("veiculos", veiculos);
		modelAndView.addObject("liberacoes", liberacoes);
		
		return modelAndView;
	}
 
		
	@RequestMapping("/detalhe")
	public ModelAndView detalhe(Integer id){
		ModelAndView modelAndView = new ModelAndView();
		Veiculo veiculo = veiculoDao.find(id);
		modelAndView.addObject("veiculo", veiculo);
		return modelAndView;
	}
	
	@RequestMapping("/detalheLiberacao")
	public ModelAndView detalheLiberacao(Integer id){
		ModelAndView modelAndView = new ModelAndView("veiculos/formLiberacao");
		Veiculo veiculo = veiculoDao.find(id);
		modelAndView.addObject("veiculo", veiculo);
		
		return modelAndView;
	}
	
	

	
	@RequestMapping("/{id}")
	@ResponseBody
	public Veiculo detalheJson(@PathVariable("id") Integer id){
		return veiculoDao.find(id);
	}
}
