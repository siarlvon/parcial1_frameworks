-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: control_pacientes
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abdomen`
--

DROP TABLE IF EXISTS `abdomen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abdomen` (
  `id_abdomen` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `percusion` text,
  `auscultacion` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_abdomen`),
  KEY `FK_id_examen_fisico_adbomen_idx` (`id_examen_fisico`),
  CONSTRAINT `FK_id_examen_fisico_adbomen` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abdomen`
--

LOCK TABLES `abdomen` WRITE;
/*!40000 ALTER TABLE `abdomen` DISABLE KEYS */;
/*!40000 ALTER TABLE `abdomen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antecendentes_personales`
--

DROP TABLE IF EXISTS `antecendentes_personales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antecendentes_personales` (
  `id_antecendentes_personales` int NOT NULL AUTO_INCREMENT,
  `id_consulta` int DEFAULT NULL,
  `enfermedad_de_infancia` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_antecendentes_personales`),
  KEY `FK_id_consulta_antecedentes_personales_idx` (`id_consulta`),
  CONSTRAINT `FK_id_consulta_antecedentes_personales` FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antecendentes_personales`
--

LOCK TABLES `antecendentes_personales` WRITE;
/*!40000 ALTER TABLE `antecendentes_personales` DISABLE KEYS */;
/*!40000 ALTER TABLE `antecendentes_personales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabeza`
--

DROP TABLE IF EXISTS `cabeza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabeza` (
  `id_cabeza` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `craneo_y_cara` text,
  `cuero_cabelludo` text,
  `region_frontal` text,
  `region_orbitonasal` text,
  `region_orinfarengea` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_cabeza`),
  KEY `FK_id_examen_fisico_cabeza_idx` (`id_examen_fisico`),
  CONSTRAINT `FK_id_examen_fisico_cabeza` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabeza`
--

LOCK TABLES `cabeza` WRITE;
/*!40000 ALTER TABLE `cabeza` DISABLE KEYS */;
/*!40000 ALTER TABLE `cabeza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardiovascular`
--

DROP TABLE IF EXISTS `cardiovascular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardiovascular` (
  `id_cardiovascular` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `auscultacion` text,
  `pulsos` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_cardiovascular`),
  KEY `FK_id_examen_fisico_cardiovascular_idx` (`id_examen_fisico`),
  CONSTRAINT `FK_id_examen_fisico_cardiovascular` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardiovascular`
--

LOCK TABLES `cardiovascular` WRITE;
/*!40000 ALTER TABLE `cardiovascular` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardiovascular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas_asignadas`
--

DROP TABLE IF EXISTS `citas_asignadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas_asignadas` (
  `id_citas_asignadas` int NOT NULL AUTO_INCREMENT,
  `id_solicitud_cita_paciente` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_citas_asignadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas_asignadas`
--

LOCK TABLES `citas_asignadas` WRITE;
/*!40000 ALTER TABLE `citas_asignadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `citas_asignadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id_consultas` int NOT NULL AUTO_INCREMENT,
  `motivo_consulta` varchar(500) DEFAULT NULL,
  `enfermedad_actual` text,
  `antecendentes_enfermedad_ac` text,
  `infectologicos` varchar(500) DEFAULT NULL,
  `endocrinologicos` varchar(500) DEFAULT NULL,
  `quirurgicos` varchar(500) DEFAULT NULL,
  `traumatologicos` varchar(500) DEFAULT NULL,
  `alergicos` varchar(500) DEFAULT NULL,
  `antecedentes_familiares` text,
  `fecha_consulta` date DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuello`
--

DROP TABLE IF EXISTS `cuello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuello` (
  `id_cuello` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `percusion` text,
  `auscultacion` text,
  `estado` tinyint DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_cuello`),
  KEY `FK_id_examen_fisico_cuello_idx` (`id_examen_fisico`),
  CONSTRAINT `FK_id_examen_fisico_cuello` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuello`
--

LOCK TABLES `cuello` WRITE;
/*!40000 ALTER TABLE `cuello` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermedades` (
  `id_enfermedades` int NOT NULL AUTO_INCREMENT,
  `id_consultas` int DEFAULT NULL,
  `CV` varchar(100) DEFAULT NULL,
  `respiratorio` varchar(100) DEFAULT NULL,
  `nefrourologicos` varchar(100) DEFAULT NULL,
  `neurologicos` varchar(100) DEFAULT NULL,
  `hematologicos` varchar(100) DEFAULT NULL,
  `infectologicos` text,
  `endocrinologicos` text,
  `quirurgicos` text,
  `traumatologicos` text,
  `alergicos` text,
  `epidemiologicos` text,
  `antecedentes_heredofamiliares` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_enfermedades`),
  KEY `FK_id_consultas_enfermedades_idx` (`id_consultas`),
  CONSTRAINT `FK_id_consultas_enfermedades` FOREIGN KEY (`id_consultas`) REFERENCES `consultas` (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades`
--

LOCK TABLES `enfermedades` WRITE;
/*!40000 ALTER TABLE `enfermedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfermedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_fisico`
--

DROP TABLE IF EXISTS `examen_fisico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen_fisico` (
  `id_examen_fisico` int NOT NULL AUTO_INCREMENT,
  `id_consultas` int DEFAULT NULL,
  `TA` varchar(300) DEFAULT NULL,
  `FC` varchar(300) DEFAULT NULL,
  `FR` varchar(300) DEFAULT NULL,
  `temperatura` varchar(300) DEFAULT NULL,
  `altura` varchar(300) DEFAULT NULL,
  `peso` varchar(300) DEFAULT NULL,
  `impresion_general` varchar(300) DEFAULT NULL,
  `constitucion` varchar(300) DEFAULT NULL,
  `facies` varchar(300) DEFAULT NULL,
  `actitud` varchar(300) DEFAULT NULL,
  `decubito` varchar(300) DEFAULT NULL,
  `marcha` varchar(300) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_cracion` date DEFAULT NULL,
  PRIMARY KEY (`id_examen_fisico`),
  KEY `FK_id_consultas_examen_fisico_idx` (`id_consultas`),
  CONSTRAINT `FK_id_consultas_examen_fisico` FOREIGN KEY (`id_consultas`) REFERENCES `consultas` (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_fisico`
--

LOCK TABLES `examen_fisico` WRITE;
/*!40000 ALTER TABLE `examen_fisico` DISABLE KEYS */;
/*!40000 ALTER TABLE `examen_fisico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formula_medica`
--

DROP TABLE IF EXISTS `formula_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formula_medica` (
  `id_formula_medica` int NOT NULL AUTO_INCREMENT,
  `id_medicamento` int DEFAULT NULL,
  `preescribe` varchar(100) DEFAULT NULL,
  `recomendacion` varchar(200) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `observaciones` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_formula_medica`),
  KEY `FK_id_medicamentos_formual_medica_idx` (`id_medicamento`),
  CONSTRAINT `FK_id_medicamentos_formual_medica` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formula_medica`
--

LOCK TABLES `formula_medica` WRITE;
/*!40000 ALTER TABLE `formula_medica` DISABLE KEYS */;
/*!40000 ALTER TABLE `formula_medica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ginecologicos`
--

DROP TABLE IF EXISTS `ginecologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ginecologicos` (
  `id_genecologico` int NOT NULL AUTO_INCREMENT,
  `id_enferdemades` int DEFAULT NULL,
  `e` varchar(45) DEFAULT NULL,
  `p` varchar(45) DEFAULT NULL,
  `c` varchar(45) DEFAULT NULL,
  `a` varchar(45) DEFAULT NULL,
  `mac` varchar(45) DEFAULT NULL,
  `fum` varchar(45) DEFAULT NULL,
  `menarca` varchar(45) DEFAULT NULL,
  `menopausia` varchar(45) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_genecologico`),
  KEY `FK_id_enfermedades_ginecologicos_idx` (`id_enferdemades`),
  CONSTRAINT `FK_id_enfermedades_ginecologicos` FOREIGN KEY (`id_enferdemades`) REFERENCES `enfermedades` (`id_enfermedades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ginecologicos`
--

LOCK TABLES `ginecologicos` WRITE;
/*!40000 ALTER TABLE `ginecologicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ginecologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitos_fisiologicos`
--

DROP TABLE IF EXISTS `habitos_fisiologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitos_fisiologicos` (
  `id_habitos_fisiologicos` int NOT NULL AUTO_INCREMENT,
  `id_antecedentes_personales` int DEFAULT NULL,
  `alimentacion` varchar(300) DEFAULT NULL,
  `diuresis` varchar(300) DEFAULT NULL,
  `catarsis` varchar(300) DEFAULT NULL,
  `sueño` varchar(300) DEFAULT NULL,
  `sexualidad` varchar(300) DEFAULT NULL,
  `otros` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_habitos_fisiologicos`),
  KEY `FK_id_antecedentes_personales_h_fisiologicos_idx` (`id_antecedentes_personales`),
  CONSTRAINT `FK_id_antecedentes_personales_h_fisiologicos` FOREIGN KEY (`id_antecedentes_personales`) REFERENCES `antecendentes_personales` (`id_antecendentes_personales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitos_fisiologicos`
--

LOCK TABLES `habitos_fisiologicos` WRITE;
/*!40000 ALTER TABLE `habitos_fisiologicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitos_fisiologicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitos_toxicos`
--

DROP TABLE IF EXISTS `habitos_toxicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitos_toxicos` (
  `id_habitos_toxicos` int NOT NULL AUTO_INCREMENT,
  `id_antecedentes_personales` int DEFAULT NULL,
  `alcohol` varchar(45) DEFAULT NULL,
  `tabaco` varchar(45) DEFAULT NULL,
  `drogas` varchar(45) DEFAULT NULL,
  `infusiones` varchar(45) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_habitos_toxicos`),
  KEY `Fk_id_antecedentes_personales_h_toxicos_idx` (`id_antecedentes_personales`),
  CONSTRAINT `Fk_id_antecedentes_personales_h_toxicos` FOREIGN KEY (`id_antecedentes_personales`) REFERENCES `antecendentes_personales` (`id_antecendentes_personales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitos_toxicos`
--

LOCK TABLES `habitos_toxicos` WRITE;
/*!40000 ALTER TABLE `habitos_toxicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `habitos_toxicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `id_medicamento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `primer_nombre` varchar(45) DEFAULT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) DEFAULT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `identificacion` varchar(45) DEFAULT NULL,
  `especializacion` varchar(100) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`),
  KEY `FK_id_usuario_medicos_idx` (`id_usuario`),
  CONSTRAINT `FK_id_usuario_medicos` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neurologico`
--

DROP TABLE IF EXISTS `neurologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neurologico` (
  `id_neurologico` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `glasgow` text,
  `motilidad_activa` text,
  `motilidad_pasiva` text,
  `motilidad_refleja` text,
  `pares_craneales` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_neurologico`),
  KEY `FK_id_examen_fisico_neurologico_idx` (`id_examen_fisico`),
  CONSTRAINT `FK_id_examen_fisico_neurologico` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neurologico`
--

LOCK TABLES `neurologico` WRITE;
/*!40000 ALTER TABLE `neurologico` DISABLE KEYS */;
/*!40000 ALTER TABLE `neurologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_medico` int DEFAULT NULL,
  `id_consultas` int DEFAULT NULL,
  `id_citas_asignadas` int DEFAULT NULL,
  `id_formula_medica` int DEFAULT NULL,
  `identificacion` varchar(45) DEFAULT NULL,
  `primer_nombre` varchar(45) DEFAULT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) DEFAULT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ocupacion` varchar(100) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`),
  KEY `FK_id_consultas_pacientes_idx` (`id_consultas`),
  KEY `FK_id_citas_asignadas_pacientes_idx` (`id_citas_asignadas`),
  KEY `FK_id_formual_medica_paciente_idx` (`id_formula_medica`),
  KEY `FK_id_medico_paciente_idx` (`id_medico`),
  KEY `FK_id_usuario_paciente_idx` (`id_usuario`),
  CONSTRAINT `FK_id_citas_asignadas_pacientes` FOREIGN KEY (`id_citas_asignadas`) REFERENCES `citas_asignadas` (`id_citas_asignadas`),
  CONSTRAINT `FK_id_consultas_pacientes` FOREIGN KEY (`id_consultas`) REFERENCES `consultas` (`id_consultas`),
  CONSTRAINT `FK_id_formual_medica_paciente` FOREIGN KEY (`id_formula_medica`) REFERENCES `formula_medica` (`id_formula_medica`),
  CONSTRAINT `FK_id_medico_paciente` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `FK_id_usuario_paciente` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piel_faneras_tejido_celular_subcutaneo`
--

DROP TABLE IF EXISTS `piel_faneras_tejido_celular_subcutaneo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `piel_faneras_tejido_celular_subcutaneo` (
  `id_p_f_t_c_s` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `aspecto` text,
  `distribucionpilosa` text,
  `lesiones` text,
  `faneras` text,
  `t_c_subcutaneo` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_p_f_t_c_s`),
  KEY `Fk_id_examen_fisico_p_f_t_c_s_idx` (`id_examen_fisico`),
  CONSTRAINT `Fk_id_examen_fisico_p_f_t_c_s` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piel_faneras_tejido_celular_subcutaneo`
--

LOCK TABLES `piel_faneras_tejido_celular_subcutaneo` WRITE;
/*!40000 ALTER TABLE `piel_faneras_tejido_celular_subcutaneo` DISABLE KEYS */;
/*!40000 ALTER TABLE `piel_faneras_tejido_celular_subcutaneo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respiratorio`
--

DROP TABLE IF EXISTS `respiratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respiratorio` (
  `id_respiratorio` int NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `percusion` text,
  `auscultacion` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_respiratorio`),
  KEY `FK_id_examen_fisico_respiratorio_idx` (`id_examen_fisico`),
  CONSTRAINT `FK_id_examen_fisico_respiratorio` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respiratorio`
--

LOCK TABLES `respiratorio` WRITE;
/*!40000 ALTER TABLE `respiratorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `respiratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensibilidad_profunda`
--

DROP TABLE IF EXISTS `sensibilidad_profunda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensibilidad_profunda` (
  `id_sensibilidad_profunda` int NOT NULL AUTO_INCREMENT,
  `id_neurologico` int DEFAULT NULL,
  `dolor_profunda` text,
  `vibratorioa` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_sensibilidad_profunda`),
  KEY `FK_id_neurologico_sensibilidad_profund_idx` (`id_neurologico`),
  CONSTRAINT `FK_id_neurologico_sensibilidad_profund` FOREIGN KEY (`id_neurologico`) REFERENCES `neurologico` (`id_neurologico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensibilidad_profunda`
--

LOCK TABLES `sensibilidad_profunda` WRITE;
/*!40000 ALTER TABLE `sensibilidad_profunda` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensibilidad_profunda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensibilidad_superficial`
--

DROP TABLE IF EXISTS `sensibilidad_superficial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensibilidad_superficial` (
  `id_sensibilidad_superficial` int NOT NULL AUTO_INCREMENT,
  `id_neurologico` int DEFAULT NULL,
  `tactil` text,
  `dolorosa` text,
  `termica` text,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_sensibilidad_superficial`),
  KEY `FK_id_neurologico_sensibilidad_superficial_idx` (`id_neurologico`),
  CONSTRAINT `FK_id_neurologico_sensibilidad_superficial` FOREIGN KEY (`id_neurologico`) REFERENCES `neurologico` (`id_neurologico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensibilidad_superficial`
--

LOCK TABLES `sensibilidad_superficial` WRITE;
/*!40000 ALTER TABLE `sensibilidad_superficial` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensibilidad_superficial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_cita_pacientes`
--

DROP TABLE IF EXISTS `solicitud_cita_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_cita_pacientes` (
  `id_solicitud_cita_paciente` int NOT NULL AUTO_INCREMENT,
  `id_paciente` int DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_solicitud_cita_paciente`),
  KEY `FK_id_pacientes_solicitud_cita_pacientes_idx` (`id_paciente`),
  CONSTRAINT `FK_id_pacientes_solicitud_cita_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_cita_pacientes`
--

LOCK TABLES `solicitud_cita_pacientes` WRITE;
/*!40000 ALTER TABLE `solicitud_cita_pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_cita_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(45) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_UNIQUE` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-09 21:42:13
