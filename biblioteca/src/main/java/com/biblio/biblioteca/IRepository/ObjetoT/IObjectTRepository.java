package com.biblio.biblioteca.IRepository.ObjetoT;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface IObjectTRepository <T, ID> extends JpaRepository<T, ID> {

	List<T>findByEstadoTrue();
	
}
