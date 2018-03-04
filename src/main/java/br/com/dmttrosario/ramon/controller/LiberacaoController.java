package br.com.dmttrosario.ramon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.dmttrosario.ramon.daos.LiberacaoDAO;
import br.com.dmttrosario.ramon.models.Liberacao;

@Controller
public class LiberacaoController {
	
	@Autowired
	private LiberacaoDAO liberacaoDao;
	
	@RequestMapping(value="/liberacao", method=RequestMethod.POST)
	public ModelAndView gravarLiberacao(Liberacao liberacao){
		System.out.println(liberacao);
		liberacaoDao.gravar(liberacao);
		
		return  new ModelAndView("redirect:veiculos");
	}
	

}
