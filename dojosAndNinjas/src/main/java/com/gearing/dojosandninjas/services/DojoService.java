package com.gearing.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gearing.dojosandninjas.models.Dojo;
import com.gearing.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	private DojoRepository dojoRepository;
	
	public List<Dojo> allDojos() {
		return dojoRepository.findAll();
	}
	
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepository.findById(id);
		return optionalDojo.isPresent() ? optionalDojo.get() : null;
	}
	
	public Dojo updateDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	public void deleteDojoById(Long id) {
		dojoRepository.deleteById(id);
	}
}
