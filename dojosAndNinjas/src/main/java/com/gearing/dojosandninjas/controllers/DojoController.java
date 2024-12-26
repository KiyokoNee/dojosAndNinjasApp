package com.gearing.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.gearing.dojosandninjas.models.Dojo;
import com.gearing.dojosandninjas.models.Ninja;
import com.gearing.dojosandninjas.services.DojoService;
import com.gearing.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class DojoController {
	@Autowired
	private DojoService dojoService;
	@Autowired
	private NinjaService ninjaService;
	
	@GetMapping("/")
	public String testPath(Model model) {
		List<Dojo> dojos = dojoService.allDojos();
		
		model.addAttribute("dojos", dojos);
		return "alldojos.jsp";
	}
	
	@GetMapping("/dojos/new")
	public String newDojo(Model model, @ModelAttribute Dojo dojo) {
		
		return "newdojo.jsp";
	}
	
	@PostMapping("/dojos")
	public String createDojo(Model model, @Valid @ModelAttribute Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newdojo.jsp";
		}
		
		dojoService.createDojo(dojo);
		return "redirect:/";
	}
	
	@GetMapping("/dojos/{id}")
	public String dojoNinjas(Model model, @PathVariable Long id) {
		Dojo dojo = dojoService.findDojo(id);
		model.addAttribute("dojo", dojo);
		return "dojoninjas.jsp";
	}
	
	@GetMapping("/ninjas/new")
	public String newNinja(Model model, @ModelAttribute Ninja ninja) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		return "newninja.jsp";
	}
	
	@PostMapping("/ninjas")
	public String createNinja(Model model, @Valid @ModelAttribute Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "newninja.jsp";
		}
		
		ninjaService.createNinja(ninja);
		return "redirect:/";
	}

}
