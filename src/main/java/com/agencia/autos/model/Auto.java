package com.agencia.autos.model;

import jakarta.persistence.*;
import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "autos")
public class Auto {

    @Id
    @Column(name = "no_serie")
    private String noSerie;

    @Column(nullable = false)
    private String tipo;

    @Column(nullable = false)
    private Integer modelo;

    @Column(nullable = false, precision = 10, scale = 2)
    private BigDecimal precio;

    @ManyToOne
    @JoinColumn(name = "id_marca", nullable = false)
    @JsonIgnoreProperties("autos")
    private Marca marca;

    // Constructores
    public Auto() {}

    public Auto(String noSerie, String tipo, Integer modelo, BigDecimal precio, Marca marca) {
        this.noSerie = noSerie;
        this.tipo = tipo;
        this.modelo = modelo;
        this.precio = precio;
        this.marca = marca;
    }

    // Getters y Setters
    public String getNoSerie() {
        return noSerie;
    }

    public void setNoSerie(String noSerie) {
        this.noSerie = noSerie;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Integer getModelo() {
        return modelo;
    }

    public void setModelo(Integer modelo) {
        this.modelo = modelo;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public Marca getMarca() {
        return marca;
    }

    public void setMarca(Marca marca) {
        this.marca = marca;
    }
}