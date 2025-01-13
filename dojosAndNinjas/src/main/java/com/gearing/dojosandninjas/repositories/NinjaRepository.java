package com.gearing.dojosandninjas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.gearing.dojosandninjas.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long>, PagingAndSortingRepository<Ninja, Long> {
	List<Ninja> findAll();
	
	Optional<Ninja> findById(Long id);
	
	void deleteById(Long id);
}
