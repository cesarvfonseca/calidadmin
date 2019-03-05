-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2019 a las 00:30:21
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mexqcmmx_mexqmx_sgc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatos`
--

CREATE TABLE `formatos` (
  `id` int(11) NOT NULL,
  `cod` varchar(25) CHARACTER SET latin1 NOT NULL,
  `nombre` varchar(80) CHARACTER SET latin1 NOT NULL,
  `revision` date NOT NULL,
  `area` varchar(30) CHARACTER SET latin1 NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `formatos`
--

INSERT INTO `formatos` (`id`, `cod`, `nombre`, `revision`, `area`, `visible`, `updated_at`, `updated_by`, `status`) VALUES
(2, 'F7.5-01', 'Lista de Listas', '2018-07-09', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(3, 'F7.5-02', 'Lista de auditores internos', '2018-07-09', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(4, 'F7.5-03', 'Lista de formatos', '2018-07-09', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(7, 'F7.5-04', 'Solicitud de cambio', '2018-07-09', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(8, 'F7.5-06', 'Lista de documentos externos', '2018-07-09', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(9, 'F7.5-05', 'Lista de Formatos v/s Documentos', '2018-07-09', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(10, 'F8.2-20', 'Alcance de proyecto especial', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(18, 'F6.1-05', 'Detalle de Taxis', '2015-08-03', 'Finanzas', 1, '2019-03-05 16:45:55', '', 1),
(19, 'F6.1-06', 'Solicitud de Depósito Bancario', '2015-08-03', 'Finanzas', 1, '2019-03-05 16:45:55', '', 1),
(20, 'F6.1-07', 'Solicitud de viáticos', '0000-00-00', 'Finanzas', 1, '2019-03-05 16:45:55', '', 1),
(21, 'F6.1-08', 'Autorización Incrementos de Presupuestos', '2015-08-03', 'Finanzas', 1, '2019-03-05 16:45:55', '', 1),
(22, 'F7.2-01_A', 'Hoja de Control ILU - Frente', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(23, 'F7.2-01_B', 'Hoja de Control ILU - Reverso', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(24, 'F7.2-05', 'Registro de participantes', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(25, 'F7.2-06', 'Matriz de Competencia Administrativa', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(26, 'F7.2-07', 'Registro individual de capacitación', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(28, 'F7.2-04', 'Descripción General de Puesto (DGP)', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(29, 'F6.2-11', 'Lista de Asistencia', '2010-08-02', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(30, 'F6.2-12', 'Lista de Asistencia Servicio Especial(prueba)', '2012-05-28', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(31, 'F7.2-20', 'Plan Anual de Capacitación', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(32, 'F6.2-24', 'Matriz de Habilidades contra puesto', '2009-08-10', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(35, 'F7.2-03', 'Evaluación de desempeño', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(36, 'F7.2-09', 'Matriz de Certificación', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(37, 'F7.2-10', 'Checklist de Tutor', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(38, 'F7.2-11', 'Checklist de Comodín', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(39, 'F7.2-12', 'Día Tipo Líder', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(40, 'F7.2-13', 'Día Tipo Supervisor', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(41, 'F7.2-14', 'Hoja de Verificación', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(42, 'F7.2-15', 'Hoja de Verificación de Líder de Operaciones', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(43, 'F7.2-16', 'Hoja de Verificación de Supervisor de Operaciones', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(44, 'F6.2-42', 'Resultado de encuesta 360°', '2009-08-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(45, 'F7.2-17', 'Plan de capacitación al puesto', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(46, 'F6.2-49', 'Programa de Capacitaciones', '0000-00-00', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(47, 'F6.2-55', 'Autorización de Tiempo extra con cargo a sucursal', '2014-01-05', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(50, 'F6.2-58', 'Alta, Baja y Cambios de Categoría de Trabajadores', '2014-06-30', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(51, 'F7.1-35', 'Entrega de Personal', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(52, 'F6.2-60', 'Matriz de Contratos', '2010-06-30', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(53, 'F7.1-37', 'Base de Datos de Aspirantes', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(54, 'F6.2-62', 'Control de Requisición de Personal por Sucursal', '2011-03-01', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(55, 'F6.2-65', 'Lista de Asistencia del Supervisor de Operaciones', '2011-02-18', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(56, 'F6.2-68', 'Escrito de Nominas', '2011-02-18', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(58, 'F6.2-70', 'Checklist de revisión de Pre-nomina', '2011-03-01', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(63, 'F6.2-73', 'Autorización de Transportes Excedentes', '2011-03-01', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(64, 'F6.2-74', 'Recibos de Nómina enviados a Operaciones', '2011-03-01', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(65, 'F6.3-02_A', 'Formato De Máximos y Mínimos', '2016-02-29', 'R. Materiales', 1, '2019-03-05 16:45:55', '', 1),
(66, 'F6.3-02_B', 'Formato De Máximos y Mínimos', '2016-02-29', 'R. Materiales', 1, '2019-03-05 16:45:55', '', 1),
(67, 'F6.3-03', 'Checklist de Respaldo de Información Diario', '0000-00-00', 'Sistemas', 1, '2019-03-05 16:45:55', '', 1),
(68, 'F6.3-05', 'Inventario de Bienes', '2003-06-30', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(69, 'F6.3-07', 'Bitácora de Transporte', '2012-01-16', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(70, 'F6.3-09', 'Contrato de Prestación de Servicios Profesionales', '2010-03-01', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(71, 'F7.1-14', 'Registro de seguridad en el trabajo', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(72, 'F6.4-02', 'Reporte de ambiente de trabajo (Checklist)', '2010-03-04', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(73, 'F7.1-15_A', 'Reporte de accidente de trabajo', '2009-08-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(74, 'F7.1-15_B', 'Reporte de accidente de trabajo', '2009-08-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(75, 'F6.4-06', 'Reporte de Accidentes al corporativo', '2011-07-18', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(76, 'F6.4-07', 'Control de Accidentes de Trabajo', '2011-07-18', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(77, 'F7.1-01_A', 'Listado de Personal & Resumen CI por Planta', '0000-00-00', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(78, 'F7.1-01_B', 'Listado de Personal & Resumen CI por Planta', '0000-00-00', 'Recursos Humanos ', 1, '2019-03-05 16:45:55', '', 1),
(79, 'F8.2-13', 'Solución express', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(80, 'F8.2-12', 'Programación de pagos', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(81, 'F8.2-14', 'Checklist para detener un servicio', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(82, 'F8.2-15', 'Identificación de pagos', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(83, 'F8.2-16', 'Entrega de Aut/OC para registro en ERP', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(84, 'F8.2-17', 'Base de datos', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(85, 'F8.2-18', ' Checklist Pase de cliente', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(86, 'F7.2-08', 'Control de alta de clientes ERP', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(89, 'F7.2-11_A', 'Bitácora de Cliente', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(90, 'F7.2-11_B', 'Bitácora de Cliente', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(91, 'F7.2-11_C', 'Bitácora de Cliente', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(92, 'F7.2-11_D', 'Bitácora de Cliente', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(93, 'F7.2-11_E', 'Bitácora de Cliente', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(94, 'F7.2-11_F', 'Bitácora de Cliente', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(103, 'F8.2-19', 'Contrato de Prestación de Servicios', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(104, 'F7.2-21', 'Detección de Funciones, Habilidades y Conocimientos', '2011-08-01', '', 1, '2019-03-05 16:45:55', '', 1),
(105, 'F7.2-26', 'Pronostico de Pagos Semanales', '2010-04-05', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(106, 'F7.2-27', 'Control de Clientes Inactivos', '0000-00-00', '', 1, '2019-03-05 16:45:55', '', 1),
(109, 'F7.2-30', 'Seguimiento semanal a la cobranza', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(110, 'F7.2-31', 'Control de Facturación Yorozu', '0000-00-00', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(111, 'F7.2-32', 'Entrega de HAS/OC a ventas', '2009-11-23', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(112, 'F7.2-34', 'Estado de cuenta', '2009-08-10', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(113, 'F7.2-35', 'Autorización para no envió de facturas', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(114, 'F7.2-37', 'Listado de Cargos extras al Cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(115, 'F7.2-43', 'Especificaciones del personal', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(116, 'F7.2-44', 'Historial de Documentos para Notas', '0000-00-00', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(117, 'F8.2-21', 'Costeo', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(118, 'F7.2-48', 'Seguimiento A Cotizaciones', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(119, 'F7.2-49', 'Seguimiento a Clientes Servicios Especiales', '2015-10-07', '', 1, '2019-03-05 16:45:55', '', 1),
(120, 'F7.2-50', 'Requisitos Para Cotizar Residencia', '2015-10-07', '', 1, '2019-03-05 16:45:55', '', 1),
(121, 'F7.2-51', 'Requisitos Para Cotizar Representación', '2015-10-07', '', 1, '2019-03-05 16:45:55', '', 1),
(122, 'F7.2-54', 'Reporte de Cierre de Servicios Especiales', '2015-10-07', '', 1, '2019-03-05 16:45:55', '', 1),
(123, 'F7.2-55', 'Reporte Mensual de Facturación Tiempos Extras Servicio Especiales', '2015-10-07', '', 1, '2019-03-05 16:45:55', '', 1),
(125, 'F7.2-61', 'Solicitud de autorización de tiempo extra con cargo al cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(126, 'F7.2-62', 'Listado de Tiempo Extra con Cargo al Cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(127, 'F7.2-64', 'Requerimientos especiales de facturación', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(128, 'F7.2-67', 'Control de ordenes de servicio', '2009-08-31', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(129, 'F7.2-68', 'Fast Response de Admon. Del servicio.', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(130, 'F7.2-71', 'Checklist de revisión de reporte de actividad de servicios', '2010-12-06', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(131, 'F7.2-76', 'Reporte de servicios especiales mensuales', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(132, 'F7.2-77', 'Reporte de incidencias', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(133, 'F7.2-78', 'Control de alta de entidades', '2009-08-31', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(134, 'F7.2-79', 'Listado de verificación del cliente', '2009-08-31', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(136, 'F7.2-81', 'Control de alta en plantas', '2009-08-31', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(137, 'F7.2-82', 'Seguimiento a requerimientos del cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(138, 'F7.2-82_A', 'Solicitud de factura', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(139, 'F8.4-01', 'Requisición de Compra', '2018-09-03', 'R. Materiales', 1, '2019-03-05 16:45:55', '', 1),
(140, 'F7.4-03', 'Plan semestral de Mantenimiento de Equipo de Computo', '0000-00-00', 'Sistemas', 1, '2019-03-05 16:45:55', '', 1),
(141, 'F8.4-04', 'Control de productos-servicios y proveedores que afectan la calidad del servicio', '2018-09-03', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(142, 'F7.4-08', 'Evaluación 360', '2011-11-22', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(143, 'F8.4-03_A', 'Solicitud de Equipo de Seguridad Nuevo Ingreso', '2018-09-03', 'R. Materiales', 1, '2019-03-05 16:45:55', '', 1),
(144, 'F8.4-03B', 'Solicitud de Equipo de Seguridad Reposición', '2018-09-03', 'R. Materiales', 1, '2019-03-05 16:45:55', '', 1),
(145, 'F7.4-11', 'Solicitud de deposito bancario Recursos Materiales', '0000-00-00', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(147, 'F7.4-12', 'Matriz de Máximos y Mínimos', '0000-00-00', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(148, 'F7.4-14', 'Checklist mantenimiento preventivo', '0000-00-00', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(149, 'F8.4-05', 'Evaluación de Proveedores', '2018-09-07', 'Recursos Materiales', 1, '2019-03-05 16:45:55', '', 1),
(150, 'F8.5-01_A', 'Hoja de Inspección Estándar - Ayuda Inicial', '2018-09-03', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(151, 'F8.5-03', 'Tarjeta de Material Scrap', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(152, 'F8.5-04', 'Tarjeta de Material Aceptado', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(153, 'F8.5-05', 'Tarjeta de Material Pendiente', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(154, 'F8.5-16', 'Minuta Diaria', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(155, 'F7.5-07', 'Reporte de Medición de Tiempo Estándar', '2011-03-14', '', 1, '2019-03-05 16:45:55', '', 1),
(156, 'F8.5-06', 'Hoja de Control del Scrap', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(157, 'F7.5-09', 'Auditoria Interna de 5\'s', '2010-04-05', 'Mejora Continua', 1, '2019-03-05 16:45:55', '', 1),
(158, 'F7.5-10', 'Hoja de Control Mastering', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(159, 'F7.5-11', 'Hoja de Control de las 5\'s Bench Mark', '2010-01-18', 'Mejora Continua', 1, '2019-03-05 16:45:55', '', 1),
(160, 'F7.5-12', 'Control de las 3 plazas en gavetas', '2010-01-18', 'Mejora Continua', 1, '2019-03-05 16:45:55', '', 1),
(161, 'F7.5-13', 'Control de las 3 plazas en contenedores', '2010-01-18', 'Mejora Continua', 1, '2019-03-05 16:45:55', '', 1),
(162, 'F7.5-15', 'Checklist de Residente', '2002-05-13', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(163, 'F8.5-42', 'Respuestas rápidas al cliente', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(166, 'F8.5-07', 'Etiqueta de material rechazado', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(167, 'F8.5-15_A', 'Reporte de campaña - Frente', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(168, 'F8.5-15_B', 'Reporte de campaña - Reverso', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(169, 'F7.5-20', 'Corte de cargos extras con cargo al cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(170, 'F7.5-21', 'Revisión de Corte de servicios mensuales', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(171, 'F8.5-19', 'Registro de calidad del servicio', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(172, 'F8.5-50', 'Hoja de distribución de personal', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(173, 'F8.5-34', 'Distribución de personal y Responsabilidades', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(174, 'F7.5-25', 'Bitácora de cobranza', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(175, 'F8.5-33', 'Control de uso de la capacidad instalada', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(179, 'F8.5-41', 'Errores en reportes de inspección', '2018-08-27', 'Información', 1, '2019-03-05 16:45:55', '', 1),
(180, 'F7.5-34', 'Hoja de Verificación de Servicios y Procesos', '2011-09-28', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(181, 'F8.5-08', 'Liberación, validación y cierre del servicio nuevo', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(182, 'F8.5-18', 'Hoja de Verificación de Calidad en Planta', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(183, 'F8.5-02', 'Hoja para Registro de Observación de la Operación', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(184, 'F7.5-39', 'Hoja de Verificación de Calidad en Planta (AMST-AGS)', '2010-02-01', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(185, 'F8.5-46', 'Propiedad del Cliente', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(186, 'F7.5-42', 'Sticker de Rechazo MexQ & Ford Chihuahua', '2011-08-11', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(188, 'F7.5-44', 'Tarjeta de Material Aceptado MexQ & Ford Chihuahua', '2011-08-11', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(189, 'F8.5-35', 'Control de Apertura de inspección', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(190, 'F8.5-09_A', 'Minuta de Junta de Kick Off - Frente', '2018-08-27', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(191, 'F8.5-09_B', 'Minuta de Junta de Kick Off - Reverso', '2018-08-27', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(192, 'F8.5-10', 'Inspección CSII', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(193, 'F7.5-48', 'Listado de Equipo Propiedad del Cliente', '2003-07-01', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(194, 'F7.5-49', 'Control de Horas PQE -Assessment', '2006-12-11', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(195, 'F7.5-50', 'Etiqueta de material OK', '2004-02-16', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(196, 'F7.5-52', 'Hoja de Verificación de Calidad en Planta para servicios foráneos', '2009-12-02', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(197, 'F7.5-53', 'Corte de tiempo extra con cargo al cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(198, 'F8.5-36', 'Corte diario de Actividades', '2018-08-27', 'Facturación y Cobranza', 1, '2019-03-05 16:45:55', '', 1),
(199, 'F7.5-57', 'Control de Suministro de Material Inspeccionado', '2009-12-02', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(200, 'F7.5-58', 'Control de material autorizado para inspección', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(201, 'F7.5-59', 'Checklist de Apertura de Servicio (Yorozu)', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(203, 'F7.5-62', 'Control de Distribución de Folios de Reportes de Inspección', '2011-10-31', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(204, 'F7.5-63', 'Control de Requisición de Reportes con Folio', '0000-00-00', '', 1, '2019-03-05 16:45:55', '', 1),
(205, 'F7.5-67_A', 'Resumen de Cumplimiento de APQP', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(206, 'F7.5-67_B', 'Checklist APQP para servicios críticos', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(207, 'F7.5-68', 'Calculo de Tiempo Estándar (Serv. Puebla)', '2011-04-15', '', 1, '2019-03-05 16:45:55', '', 1),
(208, 'F8.5-44', 'Cuadro maestro', '2018-08-27', 'Información', 1, '2019-03-05 16:45:55', '', 1),
(209, 'F8.5-37', 'Cheklist de supervisor de operaciones', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(210, 'F7.5-73', 'Préstamo de la Herramienta', '2007-03-05', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(211, 'F7.5-75', 'Matriz de Control de Servicios CKD', '2010-01-08', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(213, 'F7.5-76', 'Matriz de Control de Servicios VW y Compra Directa', '2006-08-01', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(214, 'F7.5-77', 'Relación de Claim Semanal', '2006-08-01', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(215, 'F7.5-78', 'Control de Facturas VWM', '2006-08-01', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(216, 'F7.5-79', 'Calculo de Tiempo Estándar', '2008-04-30', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(217, 'F7.5-80', 'Control de Distribución de Reportes de Inspección por Folios', '2007-08-08', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(219, 'F7.5-82', 'UCI (Uso de la Capacidad Instalada)', '2010-01-08', 'Información', 1, '2019-03-05 16:45:55', '', 1),
(220, 'F7.5-83', 'Control de Entradas y salidas', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(221, 'F7.5-84', 'Hoja de Verificación de Calidad en Planta Hermosillo', '2007-09-03', 'Información', 1, '2019-03-05 16:45:55', '', 1),
(228, 'F7.5-91', 'Bitácora (Hillo)', '2008-05-05', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(231, 'F8.5-38', 'Lay out de gaveta o archivero', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(236, 'F7.5-97', 'Control de cantidades', '2008-10-14', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(237, 'F7.5-98', 'Requisición de materiales Seglo nave 29', '2008-10-14', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(238, 'F7.5-99', 'Aviso de anomalía al cliente', '2008-10-14', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(239, 'F8.5-11', 'Minuta por Corte Diario', '2018-08-27', 'Operaciones SON', 1, '2019-03-05 16:45:55', '', 1),
(240, 'F8.5-17', 'Análisis del día', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(242, 'F7.5-105', 'Eventos de  Calidad del Servicio', '2014-06-06', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(243, 'F7.5-106', 'Control de  Ranes Garant', '2014-06-06', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(244, 'F7.5-107', 'Registro de servicios de AAM', '0000-00-00', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(246, 'F7.6-02', 'Instrumento calibrado', '2002-09-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(254, 'F9.2-01', 'Programa de Auditorias Internas', '2018-10-29', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(255, 'F9.2-03', 'Reporte de Auditoria Interna (Portada)', '2018-10-29', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(256, 'F8.2-08', 'Reporte de satisfacción del cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(257, 'F9.2-02', 'Aviso / Plan para Auditoria Interna', '2018-10-29', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(258, 'F8.2-11', 'Encuesta de Satisfacción de Servicio al Cliente', '2009-08-18', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(261, 'F8.2-30', 'Acciones a encuesta de satisfacción de servicio al cliente', '2009-07-20', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(262, 'F10.1-01_A', 'Solicitud de Mejora al Proceso - Frente', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(263, 'F10.1-01_B', 'Solicitud de Mejora al Proceso - Reverso', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(264, 'F10.1-02', 'Reporte de Acción correctiva (RAC)', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(266, 'F10.1-03', 'Fast Response', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(269, 'F10.1-05', 'Hoja de Contención', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(274, 'F8.5-13', 'Reporte de Inspección (RI)', '2018-08-27', 'Información', 1, '2019-03-05 16:45:55', '', 1),
(275, 'F8.5-12', 'Reporte de Línea', '2018-08-27', 'Información', 1, '2019-03-05 16:45:55', '', 1),
(276, 'F7.2-02', 'Análisis de Perfil', '2018-08-27', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(277, 'F8.5-01_B', 'Hoja de Inspección Estándar - Frente', '2018-09-03', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(278, 'F8.5-01_C', 'Hoja de Inspección Estándar - Reverso', '2018-09-03', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(279, 'F8.5-01_D', 'Hoja de Inspección Estándar - Alerta de Calidad', '2018-09-03', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(280, 'F8.5-01_E', 'Hoja de Inspección Estándar - Anexo 1 Frente', '2018-09-03', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(281, 'F8.5-01_F', 'Hoja de Inspección Estándar - Anexo 1 Reverso', '2018-09-03', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(282, 'F8.5-14', 'Reporte de Inspección Media Carta', '2018-08-27', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(283, 'F7.1-01', 'Resumen de entrevista', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(284, 'F7.1-02', 'Check list entrega de personal', '2018-07-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(285, 'F7.1-03', 'Control de boletos de comedor', '2018-04-16', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(286, 'F7.1-04', 'Autocontrol de flujo de efectivo', '2018-04-23', 'Finanzas', 1, '2019-03-05 16:45:55', '', 1),
(287, 'F7.1-05', 'Presupuesto para la liquidez real MEXQ', '2018-04-23', 'Finanzas', 1, '2019-03-05 16:45:55', '', 1),
(288, 'F7.1-06', 'Requisición de personal', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(289, 'F7.1-07', 'Autorización de incidencias', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(290, 'F7.1-08', 'Fomato de finiquito', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(291, 'F7.1-09', 'Control de Bajas de personal', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(292, 'F7.1-10', 'Matriz de Recibos de Nómina', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(293, 'F7.1-11', 'Formato de Alta', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(294, 'F7.1-12', 'Entrega de Tarjetas de Nomina', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(295, 'F7.1-13', 'Cambio de Categoría', '2018-04-23', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(296, 'F8.2-01', 'Seguimiento a Armadoras Potenciales', '2018-04-30', '', 1, '2019-03-05 16:45:55', '', 1),
(297, 'F8.2-02', 'Blue Sheet', '2018-04-30', '', 1, '2019-03-05 16:45:55', '', 1),
(298, 'F6.2-13', 'Encuesta de Clima Laboral', '2018-01-22', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(299, 'F6.2-14', 'Encuesta de Salida', '2018-01-22', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(300, 'F6.2-15', 'Mesa Redonda', '2018-01-22', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(301, 'F7.1-18', 'Sistema de Prevención del Riesgo', '2018-09-03', '', 1, '2019-03-05 16:45:55', '', 1),
(303, 'F9.3-01', 'SSAE', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(304, 'F9.3-03', 'Objetivos de Calidad', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(305, 'F9.3-04', 'Indicadores de Proceso', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(306, 'F9.3-05', 'Minuta de Junta', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(307, 'F9.3-06', 'Resultados de Indicadores de BSC', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(308, 'F9.3-02', 'Revisión de la Dirección', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(309, 'F9.3-07', 'Seguimiento a WORKSHOP', '2018-07-09', 'Dirección', 1, '2019-03-05 16:45:55', '', 1),
(310, 'F8.2-03', 'Reporte de factura de Logistica', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(311, 'F8.2-04', 'Control de cargos extra', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(312, 'F8.2-05', 'Control de tiempos extras', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(313, 'F8.2-06', 'Reporte Mensual de Facturación tiempos extras de SE', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(314, 'F8.2-06_A', 'Reporte mensual de Facturación especial', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(315, 'F8.2-07', 'Prefactura de servicio especial', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(316, 'F8.2-07_A', 'Prefactura de servicio especial', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(317, 'F 8.2-08', 'Control de notas de crédito', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(318, 'F8.2-09', 'Control de solicitud de facturas', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(319, 'F8.2-10', 'Control de generación y envio de facturas / Checklist', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(320, 'F 8.2-11', 'Solicitud de nota de crédito', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(321, 'F8.5-47', 'Orden de servicio nuevo', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(322, 'F8.5-48', 'Orden de servicio web', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(323, 'F8.5-49', 'Orden de cambio en servicio', '2018-09-03', 'Ventas y Admon. Serv.', 1, '2019-03-05 16:45:55', '', 1),
(324, 'F7.1-19', 'Prestamo de equipo de medición', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(325, 'F7.1-20', 'Identificación de equipo de medición', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(326, 'F7.1-21', ' Identificacion de piezas master o patrón', '2018-08-21', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(327, 'F7.1-22', 'Programa de calibración de instrumentos', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(328, 'F7.1-23', 'Bitacora de calibración', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(329, 'F7.1-24_A', 'Ayuda visual escala (Cónica)', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(330, 'F7.1-24_B', 'Ayuda Visual escala (Plana)', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(331, 'F7.1-25', 'Ayuda visual vernier', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(332, 'F7.1-26', 'Ayuda visual micrometro', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(333, 'F7.1-27', 'Dibujo de Calibrador de GO NO GO', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(334, 'F7.1-28', 'Registro Calibración de GO NO GOs', '2018-08-27', 'A. De Calidad', 1, '2019-03-05 16:45:55', '', 1),
(336, 'F8.4-06', 'Resumen de Evaluación', '2018-09-07', 'Operaciones', 1, '2019-03-05 16:45:55', '', 1),
(337, 'F6.1-01', 'Matriz de riesgos', '2018-05-25', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(338, 'F6.1-02', 'Analisis FODA', '2018-05-25', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(339, 'F9.2-04', 'Lista de Verificación de Auditoria Interna', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(340, 'F9.2-05', 'Reporte de Auditoria Interna', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(341, 'F9.2-06', 'Matriz de cumplimiento', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(342, 'F9.2-07', '% de cumplimientos de los elementos evaluados', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(343, 'F9.2-08', 'Minuta de Auditoria Interna', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(344, 'F9.2-09', 'Matriz de Procesos vs Aplicabilidad ISO', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(345, 'F8.2-06_B', 'Reporte mensual de Facturación especial T.E.', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(346, 'F8.2-07_B', 'Prefactura de tiempo extra servicio especial', '2018-08-27', 'FACTURACIÓN', 1, '2019-03-05 16:45:55', '', 1),
(347, 'F7.1-16', 'Solicitud de empleo', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(348, 'F7.1-17', 'Ficha de informacion indispensable', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(349, 'F7.1-29', 'Valoracion de agudez visual', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(350, 'F7.1-30', 'Analisis de Reclutamiento', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(351, 'F7.1-31', 'Solicitud de Referencias Laborales', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(352, 'F7.1-32', 'Check list de Documentos', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(353, 'F7.1-33', 'Lista de Asistencia Reclutamiento', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(354, 'F7.1-34', 'Vale por uniforme y equipo de seguridad', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(355, 'F7.1-36', 'Seguimiento de personal de nuevo ingreso durante primero 5 dias', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(356, 'F7.1-38', 'Encuesta de seguimiento', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(357, 'F7.1-39', 'Reporte Base para Reclutamiento', '2018-12-10', 'Recursos Humanos', 1, '2019-03-05 16:45:55', '', 1),
(358, 'F9.3-08', 'Check List Score Card con Cliente', '2019-02-13', 'Calidad', 1, '2019-03-05 16:45:55', '', 1),
(360, 'F9.2-10', 'Formacion para el auditor interno', '2018-10-29', 'A. de Calidad', 1, '2019-03-05 16:45:55', '', 1),
(363, 'F200', 'F200', '2019-03-05', 'RH', 1, '2019-03-05 18:05:36', '08444', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `its`
--

CREATE TABLE `its` (
  `id` int(11) NOT NULL,
  `cod` varchar(25) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `revision` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `its`
--

INSERT INTO `its` (`id`, `cod`, `nombre`, `revision`, `fecha`, `visible`, `updated_at`, `updated_by`, `status`) VALUES
(2, 'IT 5.2-02', 'Ssae ', '1', '2010-06-30', 1, '2019-03-05 16:47:43', '', 1),
(3, 'IT 6.3-01', 'Control de Mantenimiento de Equipo de Computo ', '2', '2013-03-12', 1, '2019-03-05 16:47:43', '', 1),
(4, 'IT 6.3-02', 'Action Rule Observaciones Despacho ', '1', '2015-08-03', 1, '2019-03-05 16:47:43', '', 1),
(5, 'IT 7.1-01', 'Control de UCI por Nomina ', '1', '2015-08-03', 1, '2019-03-05 16:47:43', '', 1),
(6, 'IT 7.2-11', 'Cargos Extras Con Cargo Al Cliente ', '5', '2014-03-01', 1, '2019-03-05 16:47:43', '', 1),
(7, 'IT 7.2-12', 'Tiempo Extra Con Cargo Al Cliente ', '3', '2009-08-18', 1, '2019-03-05 16:47:43', '', 1),
(10, 'IT 7.5-23', 'Servicios De Campaña (Hillo) ', '3', '2009-08-17', 1, '2019-03-05 16:47:43', '', 1),
(11, 'IT 7.5-24', 'Control De Servicios De Puebla ', '1', '2009-04-14', 1, '2019-03-05 16:47:43', '', 1),
(12, 'IT 7.5-25', 'Plan De Contingencia ', 'E ', '2009-01-23', 1, '2019-03-05 16:47:43', '', 1),
(13, 'IT 7.5-26', 'Flujo de Operación Yorozu & Proveedores ', '1', '2012-12-17', 1, '2019-03-05 16:47:43', '', 1),
(14, 'IT 8.5-01', 'Orden de Servicio electronico ', '2', '2018-09-03', 1, '2019-03-05 16:47:43', '', 1),
(15, 'IT 8.2-04', 'Respuesta A Cliente Encuestado ', '2', '2009-08-10', 1, '2019-03-05 16:47:43', '', 1),
(16, 'IT 10.1-01', 'Fast Response de Calidad ', '2', '2018-08-27', 1, '2019-03-05 16:47:43', '', 1),
(17, 'IT 7.5-20', 'Calculo de Tiempo Estándar ', 'E ', '2011-07-08', 1, '2019-03-05 16:47:43', '', 1),
(18, 'IT 8.5-02', 'Envío de información', '5', '2018-08-27', 1, '2019-03-05 16:47:43', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `macs`
--

CREATE TABLE `macs` (
  `id` int(5) NOT NULL,
  `cod` varchar(25) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `revision` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `macs`
--

INSERT INTO `macs` (`id`, `cod`, `nombre`, `revision`, `fecha`, `visible`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'MAC 01', 'Manual De Calidad ', '27', '2019-01-07', 1, '2019-03-05 16:47:44', '', 1),
(2, 'MAC 02', 'Manual De Auditorias Internas ', '21', '2018-10-29', 1, '2019-03-05 16:47:44', '', 1),
(3, 'MAC 04', 'Manual De Twi MEXQ', '6', '2013-10-02', 1, '2019-03-05 16:47:44', '', 1),
(4, 'MAC 06', 'Manual De Captura Tiempos Y Gastos ', '3', '2015-08-03', 1, '2019-03-05 16:47:44', '', 1),
(5, 'MAC 07', 'Manual De Capacitación Para Auxiliar De Información', '3', '2018-01-08', 1, '2019-03-05 16:47:44', '', 1),
(6, 'MAC 08', 'Manual de Sistema de Información Dynamics SL (ERP)', '1', '2018-01-22', 1, '2019-03-05 16:47:44', '', 1),
(7, 'MAC 09', 'Curso de Inducción General y Operativa ', 'E ', '2010-04-08', 1, '2019-03-05 16:47:44', '', 1),
(8, 'MAC 03', 'MANUAL DE CAPTURA DE ASISTENCIA DEL PERSONAL OPERATIVO EN APP', 'E', '2018-07-09', 1, '2019-03-05 16:47:44', '', 1),
(9, 'MAC 05', 'MANUAL DE GESTIÓN DE LOS RIESGOS', '1', '2018-11-27', 1, '2019-03-05 16:47:44', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacs`
--

CREATE TABLE `pacs` (
  `id` int(5) NOT NULL,
  `cod` varchar(15) NOT NULL,
  `nombre` varchar(85) NOT NULL,
  `revision` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pacs`
--

INSERT INTO `pacs` (`id`, `cod`, `nombre`, `revision`, `fecha`, `visible`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'PAC 7.5-01', 'Control de información documentada', '24', '2018-07-09', 1, '2019-03-05 16:47:44', '', 1),
(3, 'PAC 5.5-01', 'Comunicación Interna', '15', '2018-01-16', 1, '2019-03-05 16:47:44', '', 1),
(5, 'PAC 5.6-02', 'Contactos Clave', '4', '2018-03-05', 1, '2019-03-05 16:47:44', '', 1),
(6, 'PAC 6.1-01', 'Solicitud De Deposito', '11', '2015-08-03', 1, '2019-03-05 16:47:44', '', 1),
(7, 'PAC 6.1-02', 'Cierre Contable', '1', '2018-01-16', 1, '2019-03-05 16:47:44', '', 1),
(9, 'PAC 6.2-02', 'Atención a requerimientos de trabajadores', '1', '2018-01-08', 1, '2019-03-05 16:47:44', '', 1),
(12, 'PAC 6.2-13', 'Lista de Asistencia', '3', '2012-07-30', 1, '2019-03-05 16:47:44', '', 1),
(13, 'PAC 6.2-15', 'Control De Nómina', '2', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(14, 'PAC 6.2-16', 'Control De Impuestos y Obligaciones Por Sueldo', '2', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(15, 'PAC 6.3-01', 'Infraestructura', '9', '2010-03-01', 1, '2019-03-05 16:47:44', '', 1),
(17, 'PAC 6.4-01', 'Ambiente De Trabajo', '15', '2013-08-02', 1, '2019-03-05 16:47:44', '', 1),
(18, 'PAC 6.4-02', 'Accidente De Trabajo', '12', '2013-08-05', 1, '2019-03-05 16:47:44', '', 1),
(19, 'PAC 6.4-03', 'Plan De Motivación Por Puntos', '1', '2018-01-08', 1, '2019-03-05 16:47:44', '', 1),
(20, 'PAC 7.1-01', 'Reclutamiento, Selección y Contratación de Personal Administrativo', 'E', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(21, 'PAC 8.2-02', 'Administración Del Servicio', '28', '2018-09-03', 1, '2019-03-05 16:47:44', '', 1),
(24, 'PAC 7.2-05', 'Cotización De Servicios', '13', '2010-04-05', 1, '2019-03-05 16:47:44', '', 1),
(25, 'PAC 8.2-06', 'Coordinación y Alta de Servicio Especial', '2', '2018-09-03', 1, '2019-03-05 16:47:44', '', 1),
(27, 'PAC 7.2-08', 'Atención a requerimientos de Recepción\nTécnica de Nissan Civac\n', 'E', '2014-06-06', 1, '2019-03-05 16:47:44', '', 1),
(30, 'PAC 8.2-07', 'Requerimientos Del Cliente', '14', '2018-09-03', 1, '2019-03-05 16:47:44', '', 1),
(31, 'PAC 7.2-12', 'Coordinación Y Alta De Servicio', '14', '2017-07-19', 1, '2019-03-05 16:47:44', '', 1),
(33, 'PAC 7.2-14', 'Campaña de Venta', '1', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(36, 'PAC 8.4-01', 'Compras', '11', '2018-09-03', 1, '2019-03-05 16:47:44', '', 1),
(37, 'PAC 8.4-02', 'Control De Productos / Servicios & Proveedores Que Afectan La Calidad Del Servicio', '9', '2018-09-07', 1, '2019-03-05 16:47:44', '', 1),
(38, 'PAC 8.5-01', 'Servicio Estándar', '18', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1),
(39, 'PAC 8.5-02', 'Reportes de Inspección', '24', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1),
(40, 'PAC 7.5-03', '5\'s', 'E', '2010-04-05', 1, '2019-03-05 16:47:44', '', 1),
(42, 'PAC 7.5-06', 'Propiedad Del Cliente', '6', '2013-08-21', 1, '2019-03-05 16:47:44', '', 1),
(43, 'PAC 8.5-04', 'Autocontrol De Operaciones', '15', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1),
(44, 'PAC 7.5-16', 'APQP', '2', '2013-08-26', 1, '2019-03-05 16:47:44', '', 1),
(45, 'PAC 7.5-17', 'Apertura y cierre de servicios Nissan Civac', 'E', '2014-06-06', 1, '2019-03-05 16:47:44', '', 1),
(46, 'PAC 7.5-19', 'Revisión de eventos de calidad y resultados Nissan', 'E', '2014-06-06', 1, '2019-03-05 16:47:44', '', 1),
(47, 'PAC 7.1-09', 'Control De Equipos De Medición', '14', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1),
(48, 'PAC 9.1-01', 'Satisfacción Del Cliente', '18', '2018-08-13', 1, '2019-03-05 16:47:44', '', 1),
(49, 'PAC 8.3-01', 'Control De Servicio No Conforme', '16', '2013-08-02', 1, '2019-03-05 16:47:44', '', 1),
(50, 'PAC 10.1-01', 'Gestión de la Mejora', '15', '2018-10-02', 1, '2019-03-05 16:47:44', '', 1),
(51, 'PAC 6.2-03', 'Clima Laboral', 'E', '2018-01-08', 1, '2019-03-05 16:47:44', '', 1),
(52, 'PAC 7.1-02', 'Reclutamiento, Selección y Contratación de Personal Operativo', '1', '2018-12-10', 1, '2019-03-05 16:47:44', '', 1),
(53, 'PAC 7.1-06', 'Desarrollos', 'E', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(54, 'PAC 7.1-08', 'Tesoreria', 'E', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(55, 'PAC 7.1-03', 'Alta de Personal', 'E', '2018-02-19', 1, '2019-03-05 16:47:44', '', 1),
(56, 'PAC 7.1-04', 'Baja de Personal', 'E', '2018-02-19', 1, '2019-03-05 16:47:44', '', 1),
(57, 'PAC 7.1-05', 'Gestión Laboral', 'E', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(58, 'PAC 7.1-07', 'Coordinación de Transporte', '6', '2018-02-26', 1, '2019-03-05 16:47:44', '', 1),
(59, 'PAC 8.2-01', 'Certificación de armadoras', 'E', '2018-03-08', 1, '2019-03-05 16:47:44', '', 1),
(60, 'PAC 9.3-01', 'Revisión de la Dirección', '17', '2018-10-02', 1, '2019-03-05 16:47:44', '', 1),
(61, 'PAC 8.2-05', 'Facturación', '25', '2019-02-04', 1, '2019-03-05 16:47:44', '', 1),
(63, 'PAC 7.2-01', 'Competencia', '22', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1),
(64, 'PAC 8.5-05', 'Flujo y autocontrol de información', '25', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1),
(65, 'PAC 7.2-02', 'Certificación de persona', '18', '2018-08-27', 1, '2019-03-05 16:47:44', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spr`
--

CREATE TABLE `spr` (
  `id` int(5) NOT NULL,
  `cod` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `spr`
--

INSERT INTO `spr` (`id`, `cod`) VALUES
(1, 'D-20'),
(2, 'D-22'),
(3, 'D-24'),
(4, 'D-25'),
(5, 'D-26'),
(6, 'D-29'),
(7, 'D-30'),
(8, 'D-34'),
(9, 'D-35'),
(10, 'D-37'),
(11, 'D-39'),
(12, 'D-40'),
(13, 'D-42'),
(14, 'D-43'),
(15, 'D-44'),
(16, 'D-46'),
(17, 'D-47'),
(18, 'D-48'),
(19, 'D-52'),
(20, 'D-53'),
(21, 'EXAMEN'),
(22, 'GUIA PRACTICA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formatos`
--
ALTER TABLE `formatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `its`
--
ALTER TABLE `its`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod` (`cod`);

--
-- Indices de la tabla `macs`
--
ALTER TABLE `macs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod` (`cod`);

--
-- Indices de la tabla `pacs`
--
ALTER TABLE `pacs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod` (`cod`);

--
-- Indices de la tabla `spr`
--
ALTER TABLE `spr`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod` (`cod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formatos`
--
ALTER TABLE `formatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT de la tabla `its`
--
ALTER TABLE `its`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `macs`
--
ALTER TABLE `macs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pacs`
--
ALTER TABLE `pacs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `spr`
--
ALTER TABLE `spr`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
