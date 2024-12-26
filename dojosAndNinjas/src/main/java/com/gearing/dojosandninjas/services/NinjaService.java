package com.gearing.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gearing.dojosandninjas.models.Ninja;
import com.gearing.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	private NinjaRepository ninjaRepository;
	
	public List<Ninja> allNinjas() {
		return ninjaRepository.findAll();
	}
	
	public void createNinja(Ninja ninja) {
		ninjaRepository.save(ninja);
	}
	
	public Ninja findNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepository.findById(id);
		return optionalNinja.isPresent() ? optionalNinja.get() : null;
	}
	
	public void updateNinja(Ninja ninja) {
		ninjaRepository.save(ninja);
	}
	
	public void deleteNinjaById(Long id) {
		ninjaRepository.deleteById(id);
	}
}
