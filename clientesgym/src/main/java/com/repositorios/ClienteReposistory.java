package com.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.entidades.Cliente;

@Transactional
@Repository
public interface ClienteReposistory extends JpaRepository<Cliente, Long> {
		
	
}
