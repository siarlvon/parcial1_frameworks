-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 13-10-2022 a las 17:48:43
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorio_pacientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abdomen`
--

DROP TABLE IF EXISTS `abdomen`;
CREATE TABLE IF NOT EXISTS `abdomen` (
  `id_abdomen` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `percusion` text,
  `auscultacion` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_abdomen`),
  KEY `FK_id_examen_fisico_adbomen_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecendentes_personales`
--

DROP TABLE IF EXISTS `antecendentes_personales`;
CREATE TABLE IF NOT EXISTS `antecendentes_personales` (
  `id_antecendentes_personales` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) DEFAULT NULL,
  `enfermedad_de_infancia` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_antecendentes_personales`),
  KEY `FK_id_consulta_antecedentes_personales_idx` (`id_consulta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeza`
--

DROP TABLE IF EXISTS `cabeza`;
CREATE TABLE IF NOT EXISTS `cabeza` (
  `id_cabeza` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `craneo_y_cara` text,
  `cuero_cabelludo` text,
  `region_frontal` text,
  `region_orbitonasal` text,
  `region_orinfarengea` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_cabeza`),
  KEY `FK_id_examen_fisico_cabeza_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cardiovascular`
--

DROP TABLE IF EXISTS `cardiovascular`;
CREATE TABLE IF NOT EXISTS `cardiovascular` (
  `id_cardiovascular` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `auscultacion` text,
  `pulsos` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_cardiovascular`),
  KEY `FK_id_examen_fisico_cardiovascular_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_asignadas`
--

DROP TABLE IF EXISTS `citas_asignadas`;
CREATE TABLE IF NOT EXISTS `citas_asignadas` (
  `id_citas_asignadas` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud_cita_paciente` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_citas_asignadas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE IF NOT EXISTS `consultas` (
  `id_consultas` int(11) NOT NULL AUTO_INCREMENT,
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
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuello`
--

DROP TABLE IF EXISTS `cuello`;
CREATE TABLE IF NOT EXISTS `cuello` (
  `id_cuello` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `percusion` text,
  `auscultacion` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_cuello`),
  KEY `FK_id_examen_fisico_cuello_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
CREATE TABLE IF NOT EXISTS `enfermedades` (
  `id_enfermedades` int(11) NOT NULL AUTO_INCREMENT,
  `id_consultas` int(11) DEFAULT NULL,
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
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_enfermedades`),
  KEY `FK_id_consultas_enfermedades_idx` (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_fisico`
--

DROP TABLE IF EXISTS `examen_fisico`;
CREATE TABLE IF NOT EXISTS `examen_fisico` (
  `id_examen_fisico` int(11) NOT NULL AUTO_INCREMENT,
  `id_consultas` int(11) DEFAULT NULL,
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
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_cracion` date DEFAULT NULL,
  PRIMARY KEY (`id_examen_fisico`),
  KEY `FK_id_consultas_examen_fisico_idx` (`id_consultas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formula_medica`
--

DROP TABLE IF EXISTS `formula_medica`;
CREATE TABLE IF NOT EXISTS `formula_medica` (
  `id_formula_medica` int(11) NOT NULL AUTO_INCREMENT,
  `id_medicamento` int(11) DEFAULT NULL,
  `preescribe` varchar(100) DEFAULT NULL,
  `recomendacion` varchar(200) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `observaciones` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_formula_medica`),
  KEY `FK_id_medicamentos_formual_medica_idx` (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ginecologicos`
--

DROP TABLE IF EXISTS `ginecologicos`;
CREATE TABLE IF NOT EXISTS `ginecologicos` (
  `id_genecologico` int(11) NOT NULL AUTO_INCREMENT,
  `id_enferdemades` int(11) DEFAULT NULL,
  `e` varchar(45) DEFAULT NULL,
  `p` varchar(45) DEFAULT NULL,
  `c` varchar(45) DEFAULT NULL,
  `a` varchar(45) DEFAULT NULL,
  `mac` varchar(45) DEFAULT NULL,
  `fum` varchar(45) DEFAULT NULL,
  `menarca` varchar(45) DEFAULT NULL,
  `menopausia` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_genecologico`),
  KEY `FK_id_enfermedades_ginecologicos_idx` (`id_enferdemades`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitos_fisiologicos`
--

DROP TABLE IF EXISTS `habitos_fisiologicos`;
CREATE TABLE IF NOT EXISTS `habitos_fisiologicos` (
  `id_habitos_fisiologicos` int(11) NOT NULL AUTO_INCREMENT,
  `id_antecedentes_personales` int(11) DEFAULT NULL,
  `alimentacion` varchar(300) DEFAULT NULL,
  `diuresis` varchar(300) DEFAULT NULL,
  `catarsis` varchar(300) DEFAULT NULL,
  `sueño` varchar(300) DEFAULT NULL,
  `sexualidad` varchar(300) DEFAULT NULL,
  `otros` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_habitos_fisiologicos`),
  KEY `FK_id_antecedentes_personales_h_fisiologicos_idx` (`id_antecedentes_personales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitos_toxicos`
--

DROP TABLE IF EXISTS `habitos_toxicos`;
CREATE TABLE IF NOT EXISTS `habitos_toxicos` (
  `id_habitos_toxicos` int(11) NOT NULL AUTO_INCREMENT,
  `id_antecedentes_personales` int(11) DEFAULT NULL,
  `alcohol` varchar(45) DEFAULT NULL,
  `tabaco` varchar(45) DEFAULT NULL,
  `drogas` varchar(45) DEFAULT NULL,
  `infusiones` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_habitos_toxicos`),
  KEY `Fk_id_antecedentes_personales_h_toxicos_idx` (`id_antecedentes_personales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
CREATE TABLE IF NOT EXISTS `medicamentos` (
  `id_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id_medicamento`, `nombre`, `cantidad`, `estado`, `fecha_creacion`) VALUES
(1, 'ibuprofeno omega', '4', NULL, NULL),
(2, 'acetaminofen plus', '2 tabletas', NULL, NULL),
(3, 'pruebasd edit', '3d medicasp', NULL, NULL),
(4, 'prueba2', '5 gg', NULL, NULL),
(11, 'prueba parcial', '8 dosis', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

DROP TABLE IF EXISTS `medicos`;
CREATE TABLE IF NOT EXISTS `medicos` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `primer_nombre` varchar(45) DEFAULT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `primer_apellido` varchar(45) DEFAULT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `identificacion` varchar(45) DEFAULT NULL,
  `especializacion` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`),
  KEY `FK_id_usuario_medicos_idx` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `neurologico`
--

DROP TABLE IF EXISTS `neurologico`;
CREATE TABLE IF NOT EXISTS `neurologico` (
  `id_neurologico` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `glasgow` text,
  `motilidad_activa` text,
  `motilidad_pasiva` text,
  `motilidad_refleja` text,
  `pares_craneales` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_neurologico`),
  KEY `FK_id_examen_fisico_neurologico_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `id_consultas` int(11) DEFAULT NULL,
  `id_citas_asignadas` int(11) DEFAULT NULL,
  `id_formula_medica` int(11) DEFAULT NULL,
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
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`),
  KEY `FK_id_consultas_pacientes_idx` (`id_consultas`),
  KEY `FK_id_citas_asignadas_pacientes_idx` (`id_citas_asignadas`),
  KEY `FK_id_formual_medica_paciente_idx` (`id_formula_medica`),
  KEY `FK_id_medico_paciente_idx` (`id_medico`),
  KEY `FK_id_usuario_paciente_idx` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piel_faneras_tejido_celular_subcutaneo`
--

DROP TABLE IF EXISTS `piel_faneras_tejido_celular_subcutaneo`;
CREATE TABLE IF NOT EXISTS `piel_faneras_tejido_celular_subcutaneo` (
  `id_p_f_t_c_s` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `aspecto` text,
  `distribucionpilosa` text,
  `lesiones` text,
  `faneras` text,
  `t_c_subcutaneo` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_p_f_t_c_s`),
  KEY `Fk_id_examen_fisico_p_f_t_c_s_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respiratorio`
--

DROP TABLE IF EXISTS `respiratorio`;
CREATE TABLE IF NOT EXISTS `respiratorio` (
  `id_respiratorio` int(11) NOT NULL AUTO_INCREMENT,
  `id_examen_fisico` int(11) DEFAULT NULL,
  `inspeccion` text,
  `palpacion` text,
  `percusion` text,
  `auscultacion` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_respiratorio`),
  KEY `FK_id_examen_fisico_respiratorio_idx` (`id_examen_fisico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensibilidad_profunda`
--

DROP TABLE IF EXISTS `sensibilidad_profunda`;
CREATE TABLE IF NOT EXISTS `sensibilidad_profunda` (
  `id_sensibilidad_profunda` int(11) NOT NULL AUTO_INCREMENT,
  `id_neurologico` int(11) DEFAULT NULL,
  `dolor_profunda` text,
  `vibratorioa` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_sensibilidad_profunda`),
  KEY `FK_id_neurologico_sensibilidad_profund_idx` (`id_neurologico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sensibilidad_superficial`
--

DROP TABLE IF EXISTS `sensibilidad_superficial`;
CREATE TABLE IF NOT EXISTS `sensibilidad_superficial` (
  `id_sensibilidad_superficial` int(11) NOT NULL AUTO_INCREMENT,
  `id_neurologico` int(11) DEFAULT NULL,
  `tactil` text,
  `dolorosa` text,
  `termica` text,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_sensibilidad_superficial`),
  KEY `FK_id_neurologico_sensibilidad_superficial_idx` (`id_neurologico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_cita_pacientes`
--

DROP TABLE IF EXISTS `solicitud_cita_pacientes`;
CREATE TABLE IF NOT EXISTS `solicitud_cita_pacientes` (
  `id_solicitud_cita_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_solicitud_cita_paciente`),
  KEY `FK_id_pacientes_solicitud_cita_pacientes_idx` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(45) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `usuario_UNIQUE` (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abdomen`
--
ALTER TABLE `abdomen`
  ADD CONSTRAINT `FK_id_examen_fisico_adbomen` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `antecendentes_personales`
--
ALTER TABLE `antecendentes_personales`
  ADD CONSTRAINT `FK_id_consulta_antecedentes_personales` FOREIGN KEY (`id_consulta`) REFERENCES `consultas` (`id_consultas`);

--
-- Filtros para la tabla `cabeza`
--
ALTER TABLE `cabeza`
  ADD CONSTRAINT `FK_id_examen_fisico_cabeza` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `cardiovascular`
--
ALTER TABLE `cardiovascular`
  ADD CONSTRAINT `FK_id_examen_fisico_cardiovascular` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `cuello`
--
ALTER TABLE `cuello`
  ADD CONSTRAINT `FK_id_examen_fisico_cuello` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD CONSTRAINT `FK_id_consultas_enfermedades` FOREIGN KEY (`id_consultas`) REFERENCES `consultas` (`id_consultas`);

--
-- Filtros para la tabla `examen_fisico`
--
ALTER TABLE `examen_fisico`
  ADD CONSTRAINT `FK_id_consultas_examen_fisico` FOREIGN KEY (`id_consultas`) REFERENCES `consultas` (`id_consultas`);

--
-- Filtros para la tabla `formula_medica`
--
ALTER TABLE `formula_medica`
  ADD CONSTRAINT `FK_id_medicamentos_formual_medica` FOREIGN KEY (`id_medicamento`) REFERENCES `medicamentos` (`id_medicamento`);

--
-- Filtros para la tabla `ginecologicos`
--
ALTER TABLE `ginecologicos`
  ADD CONSTRAINT `FK_id_enfermedades_ginecologicos` FOREIGN KEY (`id_enferdemades`) REFERENCES `enfermedades` (`id_enfermedades`);

--
-- Filtros para la tabla `habitos_fisiologicos`
--
ALTER TABLE `habitos_fisiologicos`
  ADD CONSTRAINT `FK_id_antecedentes_personales_h_fisiologicos` FOREIGN KEY (`id_antecedentes_personales`) REFERENCES `antecendentes_personales` (`id_antecendentes_personales`);

--
-- Filtros para la tabla `habitos_toxicos`
--
ALTER TABLE `habitos_toxicos`
  ADD CONSTRAINT `Fk_id_antecedentes_personales_h_toxicos` FOREIGN KEY (`id_antecedentes_personales`) REFERENCES `antecendentes_personales` (`id_antecendentes_personales`);

--
-- Filtros para la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `FK_id_usuario_medicos` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `neurologico`
--
ALTER TABLE `neurologico`
  ADD CONSTRAINT `FK_id_examen_fisico_neurologico` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `FK_id_citas_asignadas_pacientes` FOREIGN KEY (`id_citas_asignadas`) REFERENCES `citas_asignadas` (`id_citas_asignadas`),
  ADD CONSTRAINT `FK_id_consultas_pacientes` FOREIGN KEY (`id_consultas`) REFERENCES `consultas` (`id_consultas`),
  ADD CONSTRAINT `FK_id_formual_medica_paciente` FOREIGN KEY (`id_formula_medica`) REFERENCES `formula_medica` (`id_formula_medica`),
  ADD CONSTRAINT `FK_id_medico_paciente` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`),
  ADD CONSTRAINT `FK_id_usuario_paciente` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `piel_faneras_tejido_celular_subcutaneo`
--
ALTER TABLE `piel_faneras_tejido_celular_subcutaneo`
  ADD CONSTRAINT `Fk_id_examen_fisico_p_f_t_c_s` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `respiratorio`
--
ALTER TABLE `respiratorio`
  ADD CONSTRAINT `FK_id_examen_fisico_respiratorio` FOREIGN KEY (`id_examen_fisico`) REFERENCES `examen_fisico` (`id_examen_fisico`);

--
-- Filtros para la tabla `sensibilidad_profunda`
--
ALTER TABLE `sensibilidad_profunda`
  ADD CONSTRAINT `FK_id_neurologico_sensibilidad_profund` FOREIGN KEY (`id_neurologico`) REFERENCES `neurologico` (`id_neurologico`);

--
-- Filtros para la tabla `sensibilidad_superficial`
--
ALTER TABLE `sensibilidad_superficial`
  ADD CONSTRAINT `FK_id_neurologico_sensibilidad_superficial` FOREIGN KEY (`id_neurologico`) REFERENCES `neurologico` (`id_neurologico`);

--
-- Filtros para la tabla `solicitud_cita_pacientes`
--
ALTER TABLE `solicitud_cita_pacientes`
  ADD CONSTRAINT `FK_id_pacientes_solicitud_cita_pacientes` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
