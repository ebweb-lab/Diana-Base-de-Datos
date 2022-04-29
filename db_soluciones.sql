-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2022 a las 05:26:25
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_soluciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nombreCargo` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `salario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `nombreCargo`, `descripcion`, `salario`) VALUES
(1, 'Analista', 'Los analistas de sistemas informáticos adaptan y diseñan sistemas de información para ayudar a las e', 35000),
(2, 'Director de Operaciones', 'Un director de operaciones es responsable de supervisar varias áreas internas, por lo que se espera ', 45000),
(3, 'Director de Comercial', 'El Director comercial (del inglés Chief Commercial Officer, también abreviado como CCO) adscrito a la Dirección genera', 45000),
(4, 'Especialista en SEO', 'Son responsables de todas las estrategias de SEO on-page y off-page, como por ejemplo buscar formas de obtener más backlinks al dominio de la empresa', 55000),
(5, 'Gerente de RR.PP', 'Suelen estar a cargo de las comunicaciones corporativas para que la mensajería de la empresa sea favorable y clara.', 30000),
(6, 'Gerente Financiero', 'La gerencia financiera es el cargo de una empresa que se encarga de que las compañías están en buena situación económica', 45000),
(7, 'Gerente de TI', 'Los administradores de TI determinan las necesidades tecnológicas de la empresa y planifican cómo satisfacer esas necesidades', 30000),
(8, 'Gerente de Logística', 'El Supply Chain Manager  (SCM) es un puesto clave en la organización de la empresa', 45000),
(9, 'Gerente de Comunicaciones', 'El Chief Communications Officer (CCO) es el que se encarga de diseñar el plan de comunicación de una empresa, que en la actualidad es considerada una parte muy relevante de la estrategia corporativa.', 40000),
(10, 'Director de Marketing', 'El Director de Marketing es un ejecutivo que está a cargo de supervisar todas las actividades de marketing de la empresa.', 35000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `idCargo` int(11) NOT NULL,
  `genero` varchar(9) NOT NULL,
  `apellido` varchar(10) NOT NULL,
  `cedula` varchar(13) NOT NULL,
  `email` text NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `idCargo`, `genero`, `apellido`, `cedula`, `email`, `numero`) VALUES
(1, 'Yoan', 2, 'masculino', 'Bueno', '000-000000-0', 'correo@gmail.com', 809000000),
(2, 'Eliezer', 3, 'masculino', 'Bueno', '000-000000-0', 'correo@gmail.com', 809000000),
(3, 'Diana', 4, 'Femenina', 'Luna', '000-000000-0', 'correo@gmail.com', 809000000),
(4, 'Jeniffer', 4, 'Femenina', 'Hernandez', '000-000000-0', 'correo@gmail.com', 809000000),
(5, 'Luisa', 6, 'Femenina', 'Gomez', '000-000000-0', 'correo@gmail.com', 809000000),
(6, 'Jose', 2, 'masculino', 'Mendez', '000-000000-0', 'correo@gmail.com', 809000000),
(7, 'Carlos', 10, 'masculino', 'Roble', '000-000000-0', 'correo@gmail.com', 809000000),
(8, 'Nicol', 8, 'Femenina', 'Garcia', '000-000000-0', 'correo@gmail.com', 809000000),
(9, 'Yenni', 7, 'Femenina', 'Pascual', '000-000000-0', 'correo@gmail.com', 809000000),
(10, 'Mery', 4, 'Femenina', 'Nuñez', '000-000000-0', 'correo@gmail.com', 809000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` tinyint(1) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idServicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `fechaRegistro`, `estado`, `idTipo`, `idServicio`) VALUES
(1, 'Claro', '2022-04-25 02:41:16', 1, 2, 2),
(2, 'Sundown', '2022-04-25 02:41:16', 1, 2, 1),
(3, 'ECO', '2022-04-25 02:41:16', 1, 3, 2),
(4, 'Esmovile', '2022-04-25 02:41:16', 1, 2, 2),
(5, 'Respuesto AR', '2022-04-25 02:41:16', 1, 2, 3),
(6, 'Razer', '2022-04-25 02:41:16', 1, 3, 2),
(7, 'Sinder', '2022-04-25 02:41:16', 1, 2, 1),
(8, 'Laney', '2022-04-25 02:41:16', 1, 3, 2),
(9, 'Toppits', '2022-04-25 02:41:16', 1, 2, 1),
(10, 'Dell', '2022-04-25 02:41:16', 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `tipoServicio` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `tipoServicio`, `precio`, `descripcion`) VALUES
(1, 'SCADA', 3, 'Permite controlar y supervisar procesos industriales a distancia, enviando toda la información que se genera en un proceso productivo.'),
(2, 'EKON', 25000, 'Automatiza los procesos de gestión del capital humano , agiliza los procesos y potencia él valor empresarial de los trabajadores.'),
(3, 'FLEXSIM', 130, 'Permite modelar, analizar y optimizar cualquier proceso industrial , desde procesos de manufactura hasta cadenas de suministros.'),
(4, 'PAQ ACADEMICO', 3, 'Plan gratuito para quien quiere aprender a diagramar procesos con la notación BPMN. Grabación de diagramas en la nube, Descargar diagrama como imagen o PDF, Importación y exportación'),
(5, 'PAQ EMPRESARIAL', 25000, 'Este plan fue diseñado para empresas que desean automatizar, controlar y escalar procesos de negocio.\r\nLa mejor manera de entender cómo podemos ayudarlo a mejorar sus procesos es ver la plataforma en '),
(6, 'PAQ Express', 13000, 'Para implementaciones de pequeña y mediana complejidad, su soluciónExpress. Un software para control de gestión de costos y rentabilidad que ofrece practicidad y agilidad a sus transacciones y análisi'),
(7, 'PAQ Corporate', 250000, 'Un software sofisticado y rápido, que brinda dinamismo y versatilidad en los análisis de costos y rentabilidad de su organización.'),
(8, 'Consultoría de procesos', 1300, 'enfocados a la actualización, optimización y transformación de procesos con el objetivo de conseguir una mayor productividad, gestión del conocimiento de estos y una gestión orientada a trabajar sin p'),
(9, 'Six Sigma', 3000, 'Encontramos una herramienta llamada DMAIC, específicamente diseñada para la mejora continua de procesos.'),
(10, 'Kaizen', 25000, 'Kaizen es uno de los modelos de mejoramiento continuo más conocidos del mundo. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempresas`
--

CREATE TABLE `tipoempresas` (
  `id` int(11) NOT NULL,
  `NombreTipo` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoempresas`
--

INSERT INTO `tipoempresas` (`id`, `NombreTipo`, `descripcion`) VALUES
(1, 'Empresas Publica', 'Este tipo de empresas son aquellas que se encuentran gestionadas por la administración del Estado.'),
(2, 'Empresa Privada', 'En las empresas privadas los recursos económicos provienen de individuos particulares.'),
(3, 'Empresas Multinacional', 'La empresa ofrece sus servicios en más de un país, teniendo un gran alcance y expandiendo sus oportu'),
(4, 'EMPRESAS DEL SECTOR SECUNDARIO', 'Las empresas del sector secundario se encargan de la transformación de materias primas, convirtiéndolas en distintos bienes listos para el consumo.'),
(5, 'EMPRESAS DEL SECTOR TERCIARIO', 'El sector terciario se basa en todas aquellas actividades vinculadas a la creación y gestión de servicios que permiten garantizar el bienestar de la población.'),
(6, 'EMPRESAS CONCERTADAS', 'Este tipo de organizaciones son gestionadas por organismos generalmente privados, si bien se encuentran supeditadas y en parte subvencionadas por la administración.'),
(7, 'EMPRESA REGIONAL', 'Su ámbito de actuación se circunscribe a una región concreta, como por ejemplo una comunidad autónoma.'),
(8, 'EMPRESA NACIONAL', 'La empresa en cuestión puede actuar a lo largo de toda una nación.'),
(9, 'MEDIANA EMPRESA', 'La mediana empresa suele poseer entre una cincuentena y doscientos cincuenta empleados'),
(10, 'GRAN EMPRESA', 'Las multinacionales suelen estar en este grupo. Se trata de empresas con un volumen de facturación superior a los cincuenta millones y un activo total superior a los cuarenta y tres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cargo` (`idCargo`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicio` (`idServicio`),
  ADD KEY `fk_tipo` (`idTipo`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoempresas`
--
ALTER TABLE `tipoempresas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipoempresas`
--
ALTER TABLE `tipoempresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `fk_servicio` FOREIGN KEY (`idServicio`) REFERENCES `servicios` (`id`),
  ADD CONSTRAINT `fk_tipo` FOREIGN KEY (`idTipo`) REFERENCES `tipoempresas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
