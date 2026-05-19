package com.agencia.autos.repository;

import com.agencia.autos.model.Marca;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MarcaRepository extends JpaRepository<Marca, Long> {
    
    Marca findByNombreIgnoreCase(String nombre);
}