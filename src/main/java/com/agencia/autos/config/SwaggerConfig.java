package com.agencia.autos.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfig {

    @Bean
    public OpenAPI inventarioOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("API de Inventario Automotriz")
                        .description("API RESTful para gestión integral de inventario automotriz - Agencia de Autos")
                        .version("1.0"));
    }
}