-- ==============================
-- DATA.SQL - Inventario Automotriz
-- Base de datos de prueba H2
-- ==============================

-- ==============================
-- MARCAS
-- ==============================

INSERT INTO marcas (nombre, pais) VALUES ('Honda', 'Japón');
INSERT INTO marcas (nombre, pais) VALUES ('Toyota', 'Japón');
INSERT INTO marcas (nombre, pais) VALUES ('Nissan', 'Japón');
INSERT INTO marcas (nombre, pais) VALUES ('Ford', 'Estados Unidos');
INSERT INTO marcas (nombre, pais) VALUES ('Chevrolet', 'Estados Unidos');
INSERT INTO marcas (nombre, pais) VALUES ('Volkswagen', 'Alemania');
INSERT INTO marcas (nombre, pais) VALUES ('BMW', 'Alemania');
INSERT INTO marcas (nombre, pais) VALUES ('Hyundai', 'Corea del Sur');
INSERT INTO marcas (nombre, pais) VALUES ('Kia', 'Corea del Sur');
INSERT INTO marcas (nombre, pais) VALUES ('Mazda', 'Japón');
INSERT INTO marcas (nombre, pais) VALUES ('Mercedes-Benz', 'Alemania');
INSERT INTO marcas (nombre, pais) VALUES ('Audi', 'Alemania');
INSERT INTO marcas (nombre, pais) VALUES ('Jeep', 'Estados Unidos');
INSERT INTO marcas (nombre, pais) VALUES ('Renault', 'Francia');
INSERT INTO marcas (nombre, pais) VALUES ('Peugeot', 'Francia');
INSERT INTO marcas (nombre, pais) VALUES ('Fiat', 'Italia');
INSERT INTO marcas (nombre, pais) VALUES ('Suzuki', 'Japón');
INSERT INTO marcas (nombre, pais) VALUES ('Mitsubishi', 'Japón');
INSERT INTO marcas (nombre, pais) VALUES ('Volvo', 'Suecia');
INSERT INTO marcas (nombre, pais) VALUES ('Tesla', 'Estados Unidos');

-- ==============================
-- AUTOS HONDA id_marca = 1
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN001', 'CRV', 2023, 450000.00, 1);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN002', 'BRV', 2024, 380000.00, 1);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN003', 'Civic', 2025, 520000.00, 1);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN004', 'HRV', 2022, 340000.00, 1);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN005', 'Accord', 2024, 610000.00, 1);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN006', 'City', 2023, 310000.00, 1);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HN007', 'Pilot', 2025, 880000.00, 1);

-- ==============================
-- AUTOS TOYOTA id_marca = 2
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY001', 'RAV4', 2024, 520000.00, 2);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY002', 'Yaris', 2023, 290000.00, 2);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY003', 'Corolla', 2025, 420000.00, 2);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY004', 'Camry', 2024, 590000.00, 2);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY005', 'Hilux', 2025, 710000.00, 2);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY006', 'Avanza', 2022, 330000.00, 2);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TY007', 'Supra', 2024, 1250000.00, 2);

-- ==============================
-- AUTOS NISSAN id_marca = 3
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('NS001', 'Xtrail', 2024, 510000.00, 3);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('NS002', 'Sentra', 2023, 360000.00, 3);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('NS003', 'Kicks', 2025, 430000.00, 3);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('NS004', 'Versa', 2024, 310000.00, 3);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('NS005', 'Frontier', 2025, 620000.00, 3);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('NS006', 'March', 2022, 240000.00, 3);

-- ==============================
-- AUTOS FORD id_marca = 4
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FD001', 'Mustang', 2024, 850000.00, 4);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FD002', 'Explorer', 2025, 780000.00, 4);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FD003', 'Escape', 2023, 490000.00, 4);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FD004', 'Bronco', 2024, 890000.00, 4);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FD005', 'Ranger', 2025, 690000.00, 4);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FD006', 'F-150', 2024, 980000.00, 4);

-- ==============================
-- AUTOS CHEVROLET id_marca = 5
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('CH001', 'Camaro', 2024, 920000.00, 5);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('CH002', 'Equinox', 2025, 550000.00, 5);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('CH003', 'Tracker', 2023, 380000.00, 5);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('CH004', 'Aveo', 2024, 280000.00, 5);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('CH005', 'Onix', 2025, 320000.00, 5);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('CH006', 'Suburban', 2024, 1300000.00, 5);

-- ==============================
-- AUTOS VOLKSWAGEN id_marca = 6
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VW001', 'Jetta', 2022, 290000.00, 6);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VW002', 'Tiguan', 2024, 620000.00, 6);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VW003', 'Taos', 2025, 470000.00, 6);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VW004', 'Virtus', 2024, 340000.00, 6);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VW005', 'Vento', 2023, 280000.00, 6);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VW006', 'Teramont', 2025, 890000.00, 6);

-- ==============================
-- AUTOS BMW id_marca = 7
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('BM001', 'Serie 3', 2024, 890000.00, 7);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('BM002', 'X5', 2025, 1200000.00, 7);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('BM003', 'Serie 1', 2023, 680000.00, 7);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('BM004', 'X1', 2024, 790000.00, 7);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('BM005', 'X3', 2025, 980000.00, 7);

-- ==============================
-- AUTOS HYUNDAI id_marca = 8
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HY001', 'Tucson', 2024, 520000.00, 8);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HY002', 'Creta', 2025, 440000.00, 8);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HY003', 'Elantra', 2023, 370000.00, 8);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HY004', 'Accent', 2022, 270000.00, 8);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('HY005', 'Santa Fe', 2025, 720000.00, 8);

-- ==============================
-- AUTOS KIA id_marca = 9
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('KI001', 'Sportage', 2024, 540000.00, 9);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('KI002', 'Seltos', 2025, 460000.00, 9);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('KI003', 'Rio', 2023, 300000.00, 9);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('KI004', 'Forte', 2024, 390000.00, 9);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('KI005', 'Sorento', 2025, 710000.00, 9);

-- ==============================
-- AUTOS MAZDA id_marca = 10
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MZ001', 'CX-5', 2024, 560000.00, 10);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MZ002', 'Mazda 3', 2025, 490000.00, 10);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MZ003', 'CX-30', 2024, 470000.00, 10);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MZ004', 'CX-50', 2025, 650000.00, 10);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MZ005', 'Mazda 2', 2023, 310000.00, 10);

-- ==============================
-- AUTOS MERCEDES-BENZ id_marca = 11
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MB001', 'Clase A', 2024, 760000.00, 11);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MB002', 'Clase C', 2025, 980000.00, 11);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MB003', 'GLA', 2024, 890000.00, 11);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MB004', 'GLE', 2025, 1450000.00, 11);

-- ==============================
-- AUTOS AUDI id_marca = 12
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('AU001', 'A3', 2024, 720000.00, 12);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('AU002', 'A4', 2025, 890000.00, 12);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('AU003', 'Q3', 2024, 830000.00, 12);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('AU004', 'Q5', 2025, 1100000.00, 12);

-- ==============================
-- AUTOS JEEP id_marca = 13
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('JP001', 'Wrangler', 2024, 1050000.00, 13);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('JP002', 'Cherokee', 2023, 690000.00, 13);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('JP003', 'Compass', 2025, 620000.00, 13);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('JP004', 'Renegade', 2024, 490000.00, 13);

-- ==============================
-- AUTOS RENAULT id_marca = 14
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('RN001', 'Duster', 2024, 390000.00, 14);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('RN002', 'Kwid', 2023, 230000.00, 14);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('RN003', 'Stepway', 2025, 340000.00, 14);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('RN004', 'Oroch', 2024, 430000.00, 14);

-- ==============================
-- AUTOS PEUGEOT id_marca = 15
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('PG001', '208', 2024, 360000.00, 15);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('PG002', '2008', 2025, 480000.00, 15);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('PG003', '3008', 2024, 650000.00, 15);

-- ==============================
-- AUTOS FIAT id_marca = 16
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FT001', 'Mobi', 2023, 240000.00, 16);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FT002', 'Argo', 2024, 310000.00, 16);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('FT003', 'Pulse', 2025, 410000.00, 16);

-- ==============================
-- AUTOS SUZUKI id_marca = 17
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('SZ001', 'Swift', 2024, 320000.00, 17);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('SZ002', 'Vitara', 2025, 460000.00, 17);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('SZ003', 'Jimny', 2024, 530000.00, 17);

-- ==============================
-- AUTOS MITSUBISHI id_marca = 18
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MS001', 'L200', 2024, 620000.00, 18);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MS002', 'Outlander', 2025, 710000.00, 18);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('MS003', 'Xpander', 2023, 420000.00, 18);

-- ==============================
-- AUTOS VOLVO id_marca = 19
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VL001', 'XC40', 2024, 850000.00, 19);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VL002', 'XC60', 2025, 1150000.00, 19);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('VL003', 'S60', 2024, 940000.00, 19);

-- ==============================
-- AUTOS TESLA id_marca = 20
-- ==============================

INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TS001', 'Model 3', 2024, 820000.00, 20);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TS002', 'Model Y', 2025, 980000.00, 20);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TS003', 'Model S', 2024, 1650000.00, 20);
INSERT INTO autos (no_serie, tipo, modelo, precio, id_marca) VALUES ('TS004', 'Cybertruck', 2025, 1900000.00, 20);