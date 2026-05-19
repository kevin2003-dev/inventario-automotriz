package com.agencia.autos.controller;

import com.agencia.autos.model.Marca;
import com.agencia.autos.repository.MarcaRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/marcas")
@Tag(name = "Marcas", description = "API para gestión de marcas automotrices")
public class MarcaController {

    private final MarcaRepository marcaRepository;

    public MarcaController(MarcaRepository marcaRepository) {
        this.marcaRepository = marcaRepository;
    }

    // ========== M1: Lista general de marcas con paginación ==========
    @GetMapping
    @Operation(summary = "Visualizar lista de marcas", 
               description = "Retorna lista paginada de marcas registradas en la agencia")
    public ResponseEntity<Page<Marca>> getAllMarcas(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        
        Pageable pageable = PageRequest.of(page, size);
        Page<Marca> marcas = marcaRepository.findAll(pageable);
        return ResponseEntity.ok(marcas);
    }
}