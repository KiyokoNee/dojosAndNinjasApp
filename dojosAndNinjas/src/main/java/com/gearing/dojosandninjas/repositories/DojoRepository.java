package com.gearing.dojosandninjas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.gearing.dojosandninjas.models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long> {
	List<Dojo> findAll();
	
	Optional<Dojo> findById(Long id);
	
	void deleteById(Long id);
	
	@Query("SELECT d, n FROM Dojo d JOIN d.ninjas n")
	List<Object[]> joinDojosAndNinjas();
}
