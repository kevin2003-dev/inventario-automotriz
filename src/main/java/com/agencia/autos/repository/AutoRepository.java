package com.agencia.autos.repository;

import com.agencia.autos.model.Auto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

@Repository
public interface AutoRepository extends JpaRepository<Auto, String> {

    // ========== M4: Autos filtrados por marca ==========
    @Query("SELECT a FROM Auto a JOIN a.marca m WHERE LOWER(m.nombre) = LOWER(:nombreMarca)")
    List<Auto> findAutosByMarca(@Param("nombreMarca") String nombreMarca);

    // ========== M5: Autos por marca, precio mínimo y modelo >= ==========
    @Query("SELECT a FROM Auto a JOIN a.marca m " +
           "WHERE LOWER(m.nombre) = LOWER(:marca) " +
           "AND a.precio >= :precioMin " +
           "AND a.modelo >= :modelo")
    List<Auto> findAutosByMarcaPrecioMinAndModeloMin(
            @Param("marca") String marca,
            @Param("precioMin") BigDecimal precioMin,
            @Param("modelo") Integer modelo);
}