package com.agencia.autos.controller;

import com.agencia.autos.model.Auto;
import com.agencia.autos.model.Marca;
import com.agencia.autos.repository.AutoRepository;
import com.agencia.autos.repository.MarcaRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/autos")
@Tag(name = "Autos", description = "API para gestión de automóviles del inventario")
public class AutoController {

    private final AutoRepository autoRepository;
    private final MarcaRepository marcaRepository;

    public AutoController(AutoRepository autoRepository, MarcaRepository marcaRepository) {
        this.autoRepository = autoRepository;
        this.marcaRepository = marcaRepository;
    }

    // ========== M2: ELIMINAR un auto por NoSerie ==========
    @SuppressWarnings("null")
    @DeleteMapping("/{noSerie}")
    @Operation(summary = "Eliminar un auto", 
               description = "Elimina un automóvil del inventario por su número de serie")
    public ResponseEntity<?> deleteAuto(
            @Parameter(description = "Número de serie del auto a eliminar") 
            @PathVariable String noSerie) {
        
        if (!autoRepository.existsById(noSerie)) {
            return ResponseEntity.notFound().build();
        }
        
        autoRepository.deleteById(noSerie);
        return ResponseEntity.ok().body("{\"mensaje\": \"Auto con NoSerie " + noSerie + " eliminado correctamente\"}");
    }

    // ========== M3: REGISTRAR un nuevo auto ==========
    @SuppressWarnings("null")
    @PostMapping
    @Operation(summary = "Registrar nuevo automóvil", 
               description = "Agrega un nuevo automóvil al inventario")
    public ResponseEntity<?> createAuto(@RequestBody Auto auto) {
        
        if (auto.getNoSerie() == null || auto.getNoSerie().isEmpty()) {
            return ResponseEntity.badRequest().body("{\"error\": \"NoSerie es obligatorio\"}");
        }
        
        if (autoRepository.existsById(auto.getNoSerie())) {
            return ResponseEntity.badRequest().body("{\"error\": \"Ya existe un auto con ese NoSerie\"}");
        }
        
        Marca marcaBody = auto.getMarca();
        if (marcaBody == null || marcaBody.getIdMarca() == null) {
            return ResponseEntity.badRequest().body("{\"error\": \"Debe especificar el idMarca\"}");
        }
        
        Marca marca = marcaRepository.findById(marcaBody.getIdMarca()).orElse(null);
        if (marca == null) {
            return ResponseEntity.badRequest().body("{\"error\": \"La marca especificada no existe\"}");
        }
        
        auto.setMarca(marca);
        Auto saved = autoRepository.save(auto);
        return ResponseEntity.ok(saved);
    }

    // ========== M4: Lista de autos por marca ==========
    @GetMapping("/marca/{nombre}")
    @Operation(summary = "Autos filtrados por marca", 
               description = "Retorna lista de autos que pertenecen a una marca específica")
    public ResponseEntity<List<Auto>> getAutosByMarca(
            @Parameter(description = "Nombre de la marca (ej: toyota, honda)") 
            @PathVariable("nombre") String nombre) {
        
        List<Auto> autos = autoRepository.findAutosByMarca(nombre);
        if (autos.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(autos);
    }

    // ========== M5: Autos por marca, precio mínimo y modelo mínimo ==========
    @GetMapping
    @Operation(summary = "Autos filtrados", 
               description = "Retorna autos por marca, precio mínimo y modelo mínimo")
    public ResponseEntity<List<Auto>> getAutosByMarcaPrecioModelo(
            @Parameter(description = "Nombre de la marca") 
            @RequestParam(name = "marca") String marca,
            @Parameter(description = "Precio mínimo") 
            @RequestParam(name = "precioMin") BigDecimal precioMin,
            @Parameter(description = "Modelo mínimo (año)") 
            @RequestParam(name = "modelo") Integer modelo) {
        
        List<Auto> autos = autoRepository.findAutosByMarcaPrecioMinAndModeloMin(marca, precioMin, modelo);
        if (autos.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(autos);
    }
}