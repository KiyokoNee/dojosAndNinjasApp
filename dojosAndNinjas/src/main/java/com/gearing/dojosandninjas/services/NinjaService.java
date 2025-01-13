package com.gearing.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.gearing.dojosandninjas.models.Ninja;
import com.gearing.dojosandninjas.repositories.NinjaRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class NinjaService {
	@Autowired
	private NinjaRepository ninjaRepository;
	private static final int PAGE_SIZE = 5;
	
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
	
	public Page<Ninja> ninjasPerPage(int pageNumber) {
		PageRequest pageRequest = PageRequest.of(pageNumber, PAGE_SIZE, Sort.Direction.ASC, "lname");
		Page<Ninja> ninjas = ninjaRepository.findAll(pageRequest);
		return ninjas;
	}
}
