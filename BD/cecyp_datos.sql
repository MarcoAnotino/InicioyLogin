use cecyp;

-- Inserción de Administradores
ALTER TABLE Persona AUTO_INCREMENT = 1;
insert into Persona (usuario, nombre, paterno, materno, correo, contra, nacimiento, registro, sexo, direccion) values
    ('Notch', 'Marcus', 'Peterson', '', 'admin1@cecyp', 'adminpass', '1990-01-01', '2020-05-15 10:30:00', 'M', 'Calle Principal 123, Ciudad de Piedra'),
    ('ZachBart', 'Zach', 'Barth', '', 'admin2@cecyp', 'adminpass', '1985-03-12', '2021-02-20 14:45:00', 'F', 'Avenida Central 456, Villa de Diamantes'),
    ('Herobrine', 'Herobrine', 'Barth', 'Peterson', 'admin3@cecyp', 'adminpass', '1992-07-25', '2022-09-10 09:15:00', 'M', 'Plaza Mayor 789, Pueblo de la Madera');
ALTER TABLE Administrador AUTO_INCREMENT = 1;
insert into Administrador (idPersona) values (1), (2), (3);

-- Inserción de Profesores
ALTER TABLE Persona AUTO_INCREMENT = 4;
insert into Persona (usuario, nombre, paterno, materno, correo, contra, nacimiento, registro, sexo, direccion)
values
    ('RojapiedraLavaforja', 'Laura', 'Rojapiedra', 'Lavaforja', 'prof1@cecyp', 'profePass', '1988-11-30', '2020-07-18 12:20:00', 'F', 'Calle Volcánica 234, Ciudad Llameante'),
    ('IgnacioPortalnether', 'Ignacio', 'Portalnether', '', 'prof2@cecyp', 'profePass', '1995-05-08', '2021-04-05 16:10:00', 'M', 'Camino a la Dimensión 567, Pueblo de la Redstone'),
    ('ExploradorBioVerde', 'Javier', 'Bioma', 'Hojaverde', 'prof3@cecyp', 'profePass', '1983-09-17', '2022-11-30 08:00:00', 'M', 'Ruta del Bosque 890, Aldea de la Naturaleza'),
    ('AnhelmBlacksmith', 'Ana', 'Blacksmith', 'Ironhelm', 'prof4@cecyp', 'profePass', '1990-04-05', '2020-10-22 14:15:00', 'F', 'Forja de los Minerales 123, Ciudad de la Forja'),
    ('CreeperStonewell', 'Luis', 'Stonewell', 'Creeper', 'prof5@cecyp', 'profePass', '1987-12-18', '2021-01-15 09:30:00', 'M', 'Valle de la Explosión 456, Pueblo de la Pólvora'),
    ('DiamondiaSmithcraft', 'Diamondia', 'Smithcraft', 'Diaz', 'prof6@cecyp', 'profePass', '1993-06-20', '2022-05-10 11:45:00', 'F', 'Calle de los Diamantes 789, Villa Brillante'),
    ('VillagerMcPickaxe', 'Mateo', 'McPickaxe', 'Village', 'prof7@cecyp', 'profePass', '1985-09-02', '2020-08-03 13:00:00', 'M', 'Avenida Principal 101, Aldea de la Madera'),
    ('LavaforgeRedstone', 'Isabella', 'Redstone', 'Lavaforge', 'prof8@cecyp', 'profePass', '1991-03-25', '2021-12-12 15:20:00', 'F', 'Río de la Redstone 111, Ciudad Tecnológica'),
    ('EndermanMcCrafterson', 'Fernando', 'McCrafterson', 'Enderman', 'prof9@cecyp', 'profePass', '1996-07-14', '2022-09-05 10:45:00', 'M', 'Cueva Oscura 222, Pueblo de las Sombras'),
    ('GreenleafBioExplorer', 'Ricardo', 'Biome', 'Explorer', 'prof10@cecyp', 'profePass', '1989-02-08', '2020-04-30 14:00:00', 'M', 'Selva Perdida 333, Aldea de la Naturaleza'),
    ('SparklestoneEnchantress', 'Mariana', 'Sparklestone', 'Pix', 'prof11@cecyp', 'profePass', '1994-11-11', '2021-08-17 12:15:00', 'F', 'Montaña Encantada 444, Ciudad de los Encantamientos'),
    ('PatriciaBlacksmith', 'Patricia', 'Blacksmith', 'Ironheart', 'prof12@cecyp', 'profePass', '1986-06-29', '2022-03-08 09:30:00', 'F', 'Forja de los Minerales 555, Ciudad de la Forja'),
    ('DiegoIronheart', 'Diego', 'Ironheart', 'Zombiebane', 'prof13@cecyp', 'profePass', '1992-09-03', '2020-02-14 11:45:00', 'M', 'Calle de la Resistencia 666, Aldea de la Resistencia'),
    ('CamilSkyblock', 'Camila', 'Skyblock', 'Skywatcher', 'prof14@cecyp', 'profePass', '1984-05-16', '2021-10-25 13:00:00', 'F', 'Islote Celestial 777, Ciudad Celestial'),
    ('MinersteinSteve', 'Steve', 'Minerstein', 'Diamonds', 'prof15@cecyp', 'profePass', '1998-03-07', '2022-07-09 15:30:00', 'M', 'Mina Principal 888, Ciudad Minera'),
    ('BlockhartValentina', 'Valentina', 'Blockhart', 'TNT', 'prof16@cecyp', 'profePass', '1987-08-12', '2020-11-28 10:45:00', 'F', 'Bloque Central 999, Aldea de los Bloques'),
    ('McPickaxeVillager', 'Javier', 'McPickaxe', '', 'prof17@cecyp', 'profePass', '1995-01-24', '2021-04-03 12:00:00', 'M', 'Avenida Principal 1010, Aldea de la Madera'),
    ('StonewellCreeper', 'Lorena', 'Creeper', 'Stonewell', 'prof18@cecyp', 'profePass', '1988-06-05', '2022-12-20 14:15:00', 'F', 'Valle de la Explosión 1111, Pueblo de la Pólvora'),
    ('SmithcraftMatias', 'Matías', 'Smithcraft', 'Diamonds', 'prof19@cecyp', 'profePass', '1990-10-15', '2020-09-18 16:30:00', 'M', 'Calle de los Diamantes 1212, Villa Brillante'),
    ('LuisMcCrafterson', 'Luis', 'McCrafterson', '', 'prof20@cecyp', 'profePass', '1996-04-03', '2021-01-16 16:45:00', 'M', 'Rivera de los piglims 42, Campos del Nether');
ALTER TABLE Profesor AUTO_INCREMENT = 1;
insert into Profesor (idPersona) values (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23);

-- Inserción de Alumnos
ALTER TABLE Persona AUTO_INCREMENT = 24;
insert into Persona (usuario, nombre, paterno, materno, correo, contra, nacimiento, registro, sexo, direccion)
values
    ('JuanSmithcraft20', 'Juan', 'Smithcraft', '', 'alumno1@minecraft', 'alumnoPass', '2000-03-22', '2020-08-25 09:45:00', 'M', 'Calle de los Diamantes 5678, Villa Brillante'),
    ('MariPickaxeVillager', 'María', 'Villager', 'McPickaxe', 'alumno2@minecraft', 'alumnoPass', '1998-06-10', '2021-06-12 11:30:00', 'F', 'Plaza del Pueblo 910, Aldea de la Esmeralda'),
    ('AndresEnderman2', 'Andrés', 'McCrafterson', '', 'alumno3@minecraft', 'alumnoPass', '2002-09-05', '2022-12-18 13:20:00', 'M', 'Rincón Oscuro 1112, Ciudad Sombría'),
    ('GaBiomeExplorer', 'Gabriela', 'Biome', 'Explorer', 'alumno4@minecraft', 'alumnoPass', '1995-03-15', '2020-11-10 10:00:00', 'F', 'Selva Perdida 1234, Aldea de la Naturaleza'),
    ('SparkleCarlors', 'Carlos', 'Sparklestone', '', 'alumno5@minecraft', 'alumnoPass', '2001-08-28', '2021-09-15 09:30:00', 'M', 'Montaña Encantada 5678, Ciudad de los Encantamientos'),
    ('IronheartLaura99', 'Laura', 'Blacksmith', '', 'alumno6@minecraft', 'alumnoPass', '1999-02-20', '2022-02-05 15:45:00', 'F', 'Forja de los Minerales 910, Ciudad de la Forja'),
    ('MartiZombiebane', 'Martín', 'Ironheart', 'Zombiebane', 'alumno7@minecraft', 'alumnoPass', '1993-07-05', '2020-06-22 13:20:00', 'M', 'Calle de la Resistencia 1112, Aldea de la Resistencia'),
    ('SkywatcherIsa', 'Isabel', 'Skyblock', 'Skywatcher', 'alumno8@minecraft', 'alumnoPass', '2000-11-18', '2021-12-30 11:15:00', 'F', 'Islote Celestial 1314, Ciudad Celestial'),
    ('MigueMiner', 'Miguel', 'Minerstein', '', 'alumno9@minecraft', 'alumnoPass', '1996-04-03', '2022-03-20 14:30:00', 'M', 'Mina Principal 1516, Ciudad Minera'),
    ('BlockhartDani98', 'Daniela', 'Blockhart', '', 'alumno10@minecraft', 'alumnoPass', '1998-09-14', '2020-07-08 16:45:00', 'F', 'Bloque Central 1718, Aldea de los Bloques'),
    ('Javillager', 'Javier', 'Villager', 'McPickaxe', 'alumno11@minecraft', 'alumnoPass', '1994-01-24', '2021-09-03 10:00:00', 'M', 'Avenida Principal 1920, Aldea de la Madera'),
    ('CamilCreeper97', 'Camila', 'Creeper', 'Stonewell', 'alumno12@minecraft', 'alumnoPass', '1997-06-05', '2022-06-18 12:15:00', 'F', 'Valle de la Explosión 2122, Pueblo de la Pólvora'),
    ('JoSmithcraft', 'José', 'Smithcraft', '', 'alumno13@minecraft', 'alumnoPass', '2001-09-03', '2020-03-01 14:30:00', 'M', 'Calle de los Diamantes 2324, Villa Brillante'),
    ('KarlaMcCrafterson', 'Carla', 'McCrafterson', '', 'alumno14@minecraft', 'alumnoPass', '1998-05-15', '2021-01-27 09:45:00', 'F', 'Cueva Oscura 2526, Pueblo de las Sombras'),
    ('EduLavaforja', 'Eduardo', 'Rojapiedra', 'Lavaforja', 'alumno15@minecraft', 'alumnoPass', '1992-10-07', '2022-10-10 16:00:00', 'M', 'Calle Volcánica 2728, Ciudad Llameante'),
	('SofiPortalnether', 'Sofía', 'Portalnether', '', 'alumno16@minecraft', 'alumnoPass', '1995-04-22', '2020-05-05 11:15:00', 'F', 'Camino a la Dimensión 2930, Pueblo de la Redstone'),
	('AleExplorador', 'Alejandro', 'Bioma', 'Hojaverde', 'alumno17@minecraft', 'alumnoPass', '1993-11-14', '2021-08-12 13:30:00', 'M', 'Ruta del Bosque 3132, Aldea de la Naturaleza'),
	('SalmaIronhelm', 'Salma', 'Blacksmith', '', 'alumno18@minecraft', 'alumnoPass', '1998-06-29', '2022-11-01 15:45:00', 'F', 'Forja de los Minerales 3334, Ciudad de la Forja'),
	('DiegoStonewell91', 'Diego', 'Stonewell', 'Creeper', 'alumno19@minecraft', 'alumnoPass', '1991-09-13', '2020-04-17 14:00:00', 'M', 'Valle de la Explosión 3536, Pueblo de la Pólvora'),
	('GaDiamondia', 'Gabriel', 'Smithcraft', '', 'alumno20@minecraft', 'alumnoPass', '1994-02-08', '2021-10-20 16:15:00', 'M', 'Calle de los Diamantes 3738, Villa Brillante'),
	('AnaMcPickaxe', 'Ana', 'McPickaxe', '', 'alumno21@minecraft', 'alumnoPass', '1997-12-25', '2022-02-28 09:30:00', 'F', 'Avenida Principal 3940, Aldea de la Madera'),
	('LavaforgeFrancisco', 'Francisco', 'Redstone', 'Lavaforge', 'alumno22@minecraft', 'alumnoPass', '2000-05-19', '2020-11-15 10:45:00', 'M', 'Río de la Redstone 4142, Ciudad Tecnológica'),
	('MonicaEnderman', 'Mónica', 'McCrafterson', 'Enderman', 'alumno23@minecraft', 'alumnoPass', '1996-08-14', '2021-07-02 12:00:00', 'F', 'Cueva Oscura 4344, Pueblo de las Sombras'),
	('JanExplorer', 'Juan Pablo', 'Biome', 'Explorer', 'alumno24@minecraft', 'alumnoPass', '1993-03-08', '2022-09-18 14:15:00', 'M', 'Selva Perdida 4546, Aldea de la Naturaleza'),
	('Laurstone99', 'Laura', 'Sparklestone', '', 'alumno25@minecraft', 'alumnoPass', '1999-06-20', '2020-10-05 16:30:00', 'F', 'Montaña Encantada 4748, Ciudad de los Encantamientos'),
	('SebasBlacksmith', 'Sebastián', 'Blacksmith', '', 'alumno26@minecraft', 'alumnoPass', '1997-09-03', '2022-01-15 09:45:00', 'M', 'Forja de los Minerales 4950, Ciudad de la Forja'),
	('CaroZombiebane', 'Carolina', 'Ironheart', 'Zombiebane', 'alumno27@minecraft', 'alumnoPass', '1991-12-18', '2020-05-30 11:00:00', 'F', 'Calle de la Resistencia 5152, Aldea de la Resistencia'),
	('SantirSkyblock', 'Santiago', 'Skyblock', 'Skywatcher', 'alumno28@minecraft', 'alumnoPass', '1995-03-25', '2021-03-10 13:15:00', 'M', 'Islote Celestial 5354, Ciudad Celestial'),
	('Valemin98', 'Valentina', 'Minerstein', '', 'alumno29@minecraft', 'alumnoPass', '1998-07-14', '2022-06-26 15:30:00', 'F', 'Mina Principal 5556, Ciudad Minera'),
	('FelixBlock', 'Felipe', 'Blockhart', '', 'alumno30@minecraft', 'alumnoPass', '1994-10-05', '2020-09-10 10:45:00', 'M', 'Bloque Central 5758, Aldea de los Bloques'),
	('RenoVillager', 'Renata', 'Villager', 'McPickaxe', 'alumno31@minecraft', 'alumnoPass', '1997-01-17', '2021-11-18 12:00:00', 'F', 'Avenida Principal 5960, Aldea de la Madera'),
	('AndySCreeper', 'Andrea', 'Creeper', 'Stonewell', 'alumno32@minecraft', 'alumnoPass', '2000-06-25', '2022-08-05 14:15:00', 'F', 'Valle de la Explosión 6162, Pueblo de la Pólvora'),
	('FrankSmithcraft', 'Francisco Javier', 'Smithcraft', '', 'alumno33@minecraft', 'alumnoPass', '1998-09-03', '2020-03-20 15:30:00', 'M', 'Calle de los Diamantes 6364, Villa Brillante'),
	('ValyMcCrafterson', 'Valeria', 'McCrafterson', '', 'alumno34@minecraft', 'alumnoPass', '1993-05-15', '2021-10-05 16:45:00', 'F', 'Cueva Oscura 6566, Pueblo de las Sombras'),
	('DaviRojapiedra', 'David', 'Rojapiedra', 'Lavaforja', 'alumno35@minecraft', 'alumnoPass', '1997-10-07', '2022-01-22 09:00:00', 'M', 'Calle Volcánica 6768, Ciudad Llameante'),
	('FerPo95', 'Fernanda', 'Portalnether', '', 'alumno36@minecraft', 'alumnoPass', '1995-02-22', '2020-07-08 10:15:00', 'F', 'Camino a la Dimensión 6970, Pueblo de la Redstone'),
	('RodriExplorador', 'Rodrigo', 'Biome', 'Hojaverde', 'alumno37@minecraft', 'alumnoPass', '1993-11-14', '2021-12-15 11:30:00', 'M', 'Ruta del Bosque 7172, Aldea de la Naturaleza'),
	('SofiiBlacksmith', 'Sofía', 'Blacksmith', '', 'alumno38@minecraft', 'alumnoPass', '1998-06-29', '2022-03-01 13:45:00', 'F', 'Forja de los Minerales 7374, Ciudad de la Forja'),
	('MartiStonewell', 'Martín', 'Stonewell', 'Creeper', 'alumno39@minecraft', 'alumnoPass', '1991-09-13', '2020-07-16 15:00:00', 'M', 'Valle de la Explosión 7576, Pueblo de la Pólvora'),
	('AnaSofiDiamondia', 'Ana Sofía', 'Smithcraft', '', 'alumno40@minecraft', 'alumnoPass', '1994-02-08', '2021-02-20 16:15:00', 'F', 'Calle de los Diamantes 7778, Villa Brillante'),
	('EduMcPickaxe', 'Eduardo', 'McPickaxe', '', 'alumno41@minecraft', 'alumnoPass', '1997-12-25', '2022-05-10 09:30:00', 'M', 'Avenida Principal 7980, Aldea de la Madera'),
	('LavaLauraRed', 'Laura', 'Redstone', 'Lavaforge', 'alumno42@minecraft', 'alumnoPass', '2000-05-19', '2020-11-05 10:45:00', 'F', 'Río de la Redstone 8182, Ciudad Tecnológica'),
	('JoaquinMcCrafterson', 'Joaquín', 'McCrafterson', 'Enderman', 'alumno43@minecraft', 'alumnoPass', '1996-08-14', '2021-06-22 12:00:00', 'M', 'Cueva Oscura 8384, Pueblo de las Sombras'),
	('IsaExplorer', 'Isabella', 'Biome', 'Explorer', 'alumno44@minecraft', 'alumnoPass', '1993-03-08', '2022-09-18 14:15:00', 'F', 'Selva Perdida 8586, Aldea de la Naturaleza'),
	('JoSparklestone', 'José Luis', 'Sparklestone', '', 'alumno45@minecraft', 'alumnoPass', '1999-06-20', '2020-10-10 15:30:00', 'M', 'Montaña Encantada 8788, Ciudad de los Encantamientos'),
	('DaniBlacksmith97', 'Daniela', 'Blacksmith', '', 'alumno46@minecraft', 'alumnoPass', '1997-09-03', '2022-01-15 09:45:00', 'F', 'Forja de los Minerales 8990, Ciudad de la Forja'),
	('CarlosIronheart', 'Carlos', 'Ironheart', 'Zombiebane', 'alumno47@minecraft', 'alumnoPass', '1991-12-18', '2020-04-20 11:00:00', 'M', 'Calle de la Resistencia 9192, Aldea de la Resistencia'),
	('SkywatcherMajo', 'María José', 'Skyblock', 'Skywatcher', 'alumno48@minecraft', 'alumnoPass', '1995-03-25', '2021-03-10 13:15:00', 'F', 'Islote Celestial 9394, Ciudad Celestial'),
	('MinersteinAndros', 'Andrés', 'Minerstein', '', 'alumno49@minecraft', 'alumnoPass', '1998-07-14', '2022-06-26 15:30:00', 'M', 'Mina Principal 9596, Ciudad Minera'),
	('BlockhartVal', 'Valeria', 'Blockhart', '', 'alumno50@minecraft', 'alumnoPass', '1994-10-05', '2020-09-10 10:45:00', 'F', 'Bloque Central 9798, Aldea de los Bloques');
ALTER TABLE Alumno AUTO_INCREMENT = 1;
insert into Alumno (idPersona) values (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37), (38), (39), (40), (41), (42), (43), (44), (45), (46), (47), (48), (49), (50), (51), (52), (53), (54), (55), (56), (57), (58), (59), (60), (61), (62), (63), (64), (65), (66), (67), (68), (69), (70), (71), (72), (73);

-- Insercion de Cursos
insert into Curso (nombre, nivel, descripcion) values
	('Crafteo Básico', 1, 'El estudiante aprenderá a utilizar las estaciones de creación básicas así como los esquemas más comunes que se utilizan cotidianamente para elaborar los materiales y herramientas necesarios para sobrevivir y prosperar.'),
    ('Matemáticas Discretas', 1, 'El estudiante aprenderá sobre los principios de las matemáticas discretas: Desde la teoría de conjuntos, pasando por los sistemas de numeración, hasta el algebra booleana. Esto lo preparará para desempeñarse correctamente en múltiples áreas de la ingeniería.'),
    ('Algoritmia', 1, 'Estudio de algoritmos eficientes para optimizar tareas y procesos en nuestro entorno. Se enseña la creación y análisis de algoritmos para la resolución de problemas específicos del universo cúbico. Además, se desarrollarán las distintas técnicas formales de representación de algoritmos y el cálculo de su eficiencia.'),
    ('Física de Bloques', 1, 'Base fundamental para conocer cómo funcionan los bloques en el mundo. Se estudiarán los principios de la estática y la dinámica que rigen a todos los bloques de nuestro mundo.'),
    ('Agricultura', 1, 'El estudiante conocerá las distintas especies de plantas, cultivables y no cultivables. Los principios del cultivo eficiente de cultivos básicos y especializados, aplicando técnicas de cosecha y regeneración.'),
    ('Minería Básica', 1, 'El estudiante desarrollará técnicas seguras y eficientes para la extracción de minerales y recursos esenciales. Aprenderá a reconocer los distintos tipos de minerales, sus propiedades y aplicaciones.'),
    ('Armamento', 2, 'Se le presentarán al estudiante las armas básicas de defensa, y se le enseñará a crearlas y usarlas apropiadamente. Además, se estudiarán los distintos tipos de daño y particularidades del combate.'),
    ('Biología', 2, 'El estudiante aprenderá acerca de las distintas especies que existen en el mundo y nuestra propia anatomía. También conocerá los distintos efectos de estado, sus causas y consecuencias.'),
    ('Química', 2, 'El estudiante conocerá los distintos elementos, las partículas que los conforman y sus propiedades. Aprenderá a usar las estaciones de química para poder crear elementos y compuestos.'),
	('Bloques de Construcción', 2, 'Se estudiarán los distintos tipos de materiales que existen en el mundo, sus cualidades y aplicaciones. El estudiante llevará a cabo diversos experimentos para poder observar cómo reaccionan los bloques a distintos estímulos como la gravedad, empujes mecánicos o explosiones.'),
    ('Biomas', 2, 'Exploración y comprensión de las características específicas de los diferentes biomas en nuestro mundo, incluyendo su impacto en la flora y fauna. El estudiante contará con los conocimientos necesarios para saber de qué biomas extraer cada recurso esencial.'),
    ('Análisis de Circuitos de Redstone', 2, 'Estudio detallado de la lógica y funcionamiento de los circuitos de redstone. Se abordarán conceptos de diseño eficiente y solución de problemas en sistemas basados en redstone.'),
    ('Gastronomía', 3, 'Exploración de la variedad culinaria en nuestro mundo. El estudiante aprenderá a preparar alimentos nutritivos y gestionar la dieta para mejorar la resistencia y salud.'),
    ('Alquimia', 3, 'Estudio de las propiedades místicas de ciertos elementos y su aplicación en la creación de pociones y encantamientos. El estudiante dominará las artes alquímicas para potenciar sus habilidades.'),
    ('Dinámica de Fluidos', 3, 'Análisis del comportamiento de líquidos en nuestro mundo cúbico. Se explorarán técnicas para el control y canalización eficiente de agua y lava en construcciones y sistemas.'),
    ('Sistemas Binarios de Redstone', 3, 'Exploración de los fundamentos de los sistemas binarios aplicados a la lógica de redstone. El estudiante comprenderá cómo representar información y realizar operaciones binarias.'),
    ('Zoología y Domesticación', '3', 'Estudio de las criaturas que habitan nuestro mundo. El estudiante aprenderá técnicas de domesticación y cuidado de animales para su uso práctico y compañía.'),
    ('Cálculo y Análisis Cúbico', '3', 'Aplicación de conceptos de cálculo a situaciones prácticas en nuestro mundo cúbico. Incluye análisis detallado de estructuras tridimensionales y su impacto en la construcción.'),
    ('Encantamientos', 4, 'Dominio de la magia en nuestro mundo. El estudiante aprenderá a aplicar encantamientos a herramientas y armaduras para mejorar sus habilidades y resistencia.'),
    ('Principios de Automatización', 4, 'Introducción a los conceptos fundamentales de la automatización en nuestro entorno. El estudiante comprenderá cómo optimizar procesos y tareas mediante sistemas automáticos.'),
    ('Sistemas Hexadecimales de Redstone', 4, 'Exploración de los sistemas hexadecimales aplicados a la lógica de redstone. El estudiante comprenderá la representación hexadecimal y su utilidad en dispositivos redstone avanzados.'),
    ('Probabilidad y Estadística', 4, 'Análisis de la incertidumbre en nuestro mundo cúbico. El estudiante explorará eventos aleatorios, distribución de recursos y tomará decisiones bajo condiciones de incertidumbre.'),
    ('Arquitectura Cúbica', 5, 'Desarrollo de habilidades avanzadas en diseño y construcción en nuestro mundo cúbico. Se fomentará la creatividad y aplicación de conceptos arquitectónicos.'),
    ('Topografía', 5, 'Mapeo y análisis de la topografía del terreno para la planificación efectiva de construcciones y rutas. El estudiante entenderá cómo el terreno afecta el diseño y la urbanización.'),
    ('Sistemas Computacionales de Redstone', 5, 'Estudio a fondo de la mecánica de redstone, desde circuitos básicos hasta sistemas computacionales avanzados. El estudiante adquirirá conocimientos en la implementación de sistemas lógicos y de procesamiento de datos.'),
    ('Instrumentación con Redstone', 5, 'Aplicación de redstone para la creación de sistemas automatizados y dispositivos controlados a distancia. El estudiante dominará la instrumentación avanzada para diversas aplicaciones.'),
    ('Sistemas de Transporte', 5, 'Diseño y optimización de sistemas de transporte en nuestro mundo cúbico. El estudiante aprenderá a crear redes de transporte eficientes y seguras.'),
    ('Sistemas Operativos de Redstone', 6, 'Exploración de sistemas operativos aplicados al mundo de redstone. El estudiante comprenderá los principios de los sistemas operativos y su implementación en entornos automatizados.'),
    ('Automatización Avanzada', 6, 'Desarrollo de sistemas avanzados para la extracción automatizada de recursos, utilizando técnicas de redstone y maquinaria especializada. El estudiante será capaz de crear sistemas automatizados complejos.'),
    ('Urbanización', 6, 'Planificación y diseño de comunidades sostenibles en nuestro universo cúbico. El estudiante adquirirá habilidades para la creación y gestión de entornos urbanos eficientes y estéticos.'),
    ('Viajes Interdimensionales', 6, 'Exploración de tecnologías para viajes interdimensionales. El estudiante comprenderá los principios detrás de los portales y cómo explorar otras dimensiones de nuestro mundo cúbico.');

-- Cursos Seriados ---------------------------------------------------------------------------------------

-- Nivel 2
insert into Cursos_Seriados (idDependiente, idRequerido) values
	((select id from Curso where nombre = 'Armamento'), (select id from Curso where nombre = 'Crafteo Básico')),
    ((select id from Curso where nombre = 'Química'), (select id from Curso where nombre = 'Crafteo Básico')),
    ((select id from Curso where nombre = 'Análisis de Circuitos de Redstone'), (select id from Curso where nombre = 'Algoritmia')),
    ((select id from Curso where nombre = 'Análisis de Circuitos de Redstone'), (select id from Curso where nombre = 'Matemáticas Discretas')),
	((select id from Curso where nombre = 'Bloques de Construcción'), (select id from Curso where nombre = 'Física de Bloques')),
	((select id from Curso where nombre = 'Biología'), (select id from Curso where nombre = 'Minería Básica'));

-- Nivel 3
insert into Cursos_Seriados (idDependiente, idRequerido) values
	((select id from Curso where nombre = 'Alquímia'), (select id from Curso where nombre = 'Química')),
	((select id from Curso where nombre = 'Sistemas Binarios de Redstone'), (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')),
	((select id from Curso where nombre = 'Dinámica de Fluidos'), (select id from Curso where nombre = 'Física de Bloques')),
    ((select id from Curso where nombre = 'Gastronomía'), (select id from Curso where nombre = 'Química')),
	((select id from Curso where nombre = 'Zoólogia y Domesticación'), (select id from Curso where nombre = 'Biología')),
    ((select id from Curso where nombre = 'Zoólogia y Domesticación'), (select id from Curso where nombre = 'Biomas'));

-- Nivel 4
insert into Cursos_Seriados (idDependiente, idRequerido) values
	((select id from Curso where nombre = 'Encantamientos'), (select id from Curso where nombre = 'Biología')),
	((select id from Curso where nombre = 'Principios de Automatización'), (select id from Curso where nombre = 'Sistemas Binarios de Redstone')),
    ((select id from Curso where nombre = 'Principios de Automatización'), (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')),
	((select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone'), (select id from Curso where nombre = 'Sistemas Binarios de Redstone')),
	((select id from Curso where nombre = 'Probabilidad y Estadística'), (select id from Curso where nombre = 'Matemáticas Discretas'));

-- Nivel 5
insert into Cursos_Seriados (idDependiente, idRequerido) values
	((select id from Curso where nombre = 'Sistemas de Transporte'), (select id from Curso where nombre = 'Principios de Automatización')),
    ((select id from Curso where nombre = 'Instrumentación con Redstone'), (select id from Curso where nombre = 'Principios de Automatización')),
	((select id from Curso where nombre = 'Instrumentación con Redstone'), (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')),
    ((select id from Curso where nombre = 'Instrumentación con Redstone'), (select id from Curso where nombre = 'Dinámica de Fluidos')),
	((select id from Curso where nombre = 'Sistemas Computacionales de Redstone'), (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')),
	((select id from Curso where nombre = 'Arquitectura Cúbica'), (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')),
    ((select id from Curso where nombre = 'Arquitectura Cúbica'), (select id from Curso where nombre = 'Biomas')),
    ((select id from Curso where nombre = 'Arquitectura Cúbica'), (select id from Curso where nombre = 'Dinámica de Fluidos')),
	((select id from Curso where nombre = 'Topografía'), (select id from Curso where nombre = 'Biomas'));

-- Nivel 6
insert into Cursos_Seriados (idDependiente, idRequerido) values
	((select id from Curso where nombre = 'Sistemas Operativos de Redstone'), (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')),
	((select id from Curso where nombre = 'Automatización Avanzada'), (select id from Curso where nombre = 'Principios de Automatización')),
    ((select id from Curso where nombre = 'Automatización Avanzada'), (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')),
	((select id from Curso where nombre = 'Urbanización'), (select id from Curso where nombre = 'Arquitectura Cúbica')),
    ((select id from Curso where nombre = 'Urbanización'), (select id from Curso where nombre = 'Topografía')),
	((select id from Curso where nombre = 'Viajes Interdimensionales'), (select id from Curso where nombre = 'Sistemas de Transporte')),
    ((select id from Curso where nombre = 'Viajes Interdimensionales'), (select id from Curso where nombre = 'Topografía'));
    
-- Unidades temáticas --------------------------------------------------------

-- Cursos Nivel 1 -----------------------

-- Crafteo Básico
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Crafteo Básico'), 0, 'Introducción al Crafteo'),
	((select id from Curso where nombre = 'Crafteo Básico'), 1, 'Herramientas y Equipamiento'),
	((select id from Curso where nombre = 'Crafteo Básico'), 2, 'Elaboración de Materiales Esenciales');

-- Unidad: Introducción al Crafteo
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción al Crafteo' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Interacción con la Mesa de Trabajo', 0, 'Uso básico de la mesa de trabajo para craftear objetos.', 60),
	((select id from Unidad where nombre = 'Introducción al Crafteo' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Recursos y Materias Primas', 1, 'Identificación y recolección de materias primas para crafteo.', 75),
	((select id from Unidad where nombre = 'Introducción al Crafteo' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Construcción de Herramientas Básicas', 2, 'Elaboración de herramientas básicas para la supervivencia.', 60),
	((select id from Unidad where nombre = 'Introducción al Crafteo' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Mecánica de Crafteo', 3, 'Comprendiendo las mecánicas detrás del crafteo en el mundo.', 75);

-- Unidad: Herramientas y Equipamiento
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Herramientas y Equipamiento' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Tipos de Herramientas', 0, 'Conocimiento de las diferentes herramientas y sus aplicaciones.', 75),
	((select id from Unidad where nombre = 'Herramientas y Equipamiento' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Equipamiento de Protección', 1, 'Crafteo y uso de equipos de protección para la supervivencia.', 90),
	((select id from Unidad where nombre = 'Herramientas y Equipamiento' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Crafteo de Armas', 2, 'Elaboración y uso de armas básicas para la defensa personal.', 75),
	((select id from Unidad where nombre = 'Herramientas y Equipamiento' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Mantenimiento de Herramientas', 3, 'Técnicas para el mantenimiento y reparación de herramientas.', 90);

-- Unidad: Elaboración de Materiales Esenciales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Elaboración de Materiales Esenciales' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Crafteo de Materiales de Construcción', 0, 'Elaboración de bloques y materiales para construcción.', 75),
	((select id from Unidad where nombre = 'Elaboración de Materiales Esenciales' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Producción de Alimentos', 1, 'Crafteo y producción de alimentos para la supervivencia.', 90),
	((select id from Unidad where nombre = 'Elaboración de Materiales Esenciales' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Creación de Herramientas Avanzadas', 2, 'Crafteo de herramientas avanzadas y especializadas.', 75),
	((select id from Unidad where nombre = 'Elaboración de Materiales Esenciales' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Automatización Básica', 3, 'Introducción a la automatización de procesos de crafteo.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción al Crafteo' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Proyecto de Crafteo Básico', 0, 'Desarrollo de un proyecto de crafteo básico aplicando los conocimientos adquiridos.', 120, 15),
	((select id from Unidad where nombre = 'Herramientas y Equipamiento' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Simulación de Combate y Defensa', 0, 'Simulación práctica de combate y defensa utilizando las herramientas y equipamiento creados.', 180, 20),
	((select id from Unidad where nombre = 'Elaboración de Materiales Esenciales' and idCurso = (select id from Curso where nombre = 'Crafteo Básico')), 'Automatización de Granja', 0, 'Proyecto de automatización para la producción de alimentos y recursos.', 150, 18);

-- Matemáticas Discretas
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Matemáticas Discretas'), 0, 'Teoría de Conjuntos y Lógica'),
	((select id from Curso where nombre = 'Matemáticas Discretas'), 1, 'Álgebra Booleana y Combinatoria'),
	((select id from Curso where nombre = 'Matemáticas Discretas'), 2, 'Teoría de Grafos y Árboles');

-- Unidad: Teoría de Conjuntos y Lógica
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Teoría de Conjuntos y Lógica' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Fundamentos de Conjuntos', 0, 'Introducción a la teoría de conjuntos y sus fundamentos.', 60),
	((select id from Unidad where nombre = 'Teoría de Conjuntos y Lógica' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Lógica Proposicional', 1, 'Estudio de la lógica proposicional y sus aplicaciones en la resolución de problemas.', 75),
	((select id from Unidad where nombre = 'Teoría de Conjuntos y Lógica' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Lógica de Predicados', 2, 'Introducción a la lógica de predicados y su relación con la teoría de conjuntos.', 60),
	((select id from Unidad where nombre = 'Teoría de Conjuntos y Lógica' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Teorema de Cantor', 3, 'Estudio del teorema de Cantor y sus implicaciones en la teoría de conjuntos.', 75);

-- Unidad: Álgebra Booleana y Combinatoria
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Álgebra Booleana y Combinatoria' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Álgebra Booleana', 0, 'Conceptos básicos de álgebra booleana y su aplicación en circuitos lógicos.', 75),
	((select id from Unidad where nombre = 'Álgebra Booleana y Combinatoria' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Combinatoria Básica', 1, 'Introducción a los principios de combinatoria y sus aplicaciones prácticas.', 90),
	((select id from Unidad where nombre = 'Álgebra Booleana y Combinatoria' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Permutaciones y Combinaciones', 2, 'Estudio de permutaciones y combinaciones en la resolución de problemas.', 75),
	((select id from Unidad where nombre = 'Álgebra Booleana y Combinatoria' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Principios de Inclusión-Exclusión', 3, 'Aplicación de los principios de inclusión-exclusión en la combinatoria avanzada.', 90);

-- Unidad: Teoría de Grafos y Árboles
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Teoría de Grafos y Árboles' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Conceptos Básicos de Grafos', 0, 'Introducción a los conceptos básicos de teoría de grafos y sus representaciones.', 75),
	((select id from Unidad where nombre = 'Teoría de Grafos y Árboles' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Árboles y Bosques', 1, 'Estudio de árboles, bosques y sus propiedades en la teoría de grafos.', 90),
	((select id from Unidad where nombre = 'Teoría de Grafos y Árboles' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Conectividad y Flujo en Redes', 2, 'Análisis de la conectividad y el flujo en redes utilizando teoría de grafos.', 75),
	((select id from Unidad where nombre = 'Teoría de Grafos y Árboles' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Aplicaciones Prácticas', 3, 'Aplicación de la teoría de grafos en problemas prácticos y situaciones del mundo cúbico.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Teoría de Conjuntos y Lógica' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Práctica de Lógica', 0, 'Resolución de problemas prácticos utilizando conceptos de lógica proposicional y de predicados.', 120, 15),
	((select id from Unidad where nombre = 'Álgebra Booleana y Combinatoria' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Proyecto de Circuitos Lógicos', 0, 'Diseño y construcción de un proyecto práctico utilizando álgebra booleana en circuitos lógicos.', 180, 20),
	((select id from Unidad where nombre = 'Teoría de Grafos y Árboles' and idCurso = (select id from Curso where nombre = 'Matemáticas Discretas')), 'Simulación de Redes', 0, 'Simulación práctica de problemas de conectividad y flujo en redes utilizando grafos.', 150, 18);

-- Algoritmia
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Algoritmia'), 0, 'Introducción a Algoritmos'),
	((select id from Curso where nombre = 'Algoritmia'), 1, 'Estructuras de Datos y Complejidad'),
	((select id from Curso where nombre = 'Algoritmia'), 2, 'Diseño de Algoritmos Avanzados');

-- Unidad: Introducción a Algoritmos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a Algoritmos' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Conceptos Básicos de Algoritmos', 0, 'Definición y comprensión de los conceptos básicos relacionados con algoritmos.', 60),
	((select id from Unidad where nombre = 'Introducción a Algoritmos' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Notación Asintótica', 1, 'Estudio de la notación asintótica para analizar el rendimiento de los algoritmos.', 75),
	((select id from Unidad where nombre = 'Introducción a Algoritmos' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Algoritmos de Ordenamiento', 2, 'Análisis y diseño de algoritmos de ordenamiento.', 60),
	((select id from Unidad where nombre = 'Introducción a Algoritmos' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Algoritmos de Búsqueda', 3, 'Estudio de algoritmos de búsqueda en diferentes contextos.', 75);

-- Unidad: Estructuras de Datos y Complejidad
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Estructuras de Datos y Complejidad' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Tipos de Estructuras de Datos', 0, 'Introducción a diferentes tipos de estructuras de datos y sus aplicaciones.', 75),
	((select id from Unidad where nombre = 'Estructuras de Datos y Complejidad' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Complejidad Computacional', 1, 'Análisis de la complejidad computacional de algoritmos y estructuras de datos.', 90),
	((select id from Unidad where nombre = 'Estructuras de Datos y Complejidad' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Estructuras Avanzadas', 2, 'Estudio de estructuras de datos avanzadas y su implementación eficiente.', 75),
	((select id from Unidad where nombre = 'Estructuras de Datos y Complejidad' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Optimización de Algoritmos', 3, 'Técnicas para la optimización de algoritmos y estructuras de datos existentes.', 90);

-- Unidad: Diseño de Algoritmos Avanzados
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño de Algoritmos Avanzados' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Algoritmos de Divide y Vencerás', 0, 'Diseño y análisis de algoritmos basados en la estrategia "Divide y Vencerás".', 75),
	((select id from Unidad where nombre = 'Diseño de Algoritmos Avanzados' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Programación Dinámica', 1, 'Aplicación de la técnica de programación dinámica en el diseño de algoritmos.', 90),
	((select id from Unidad where nombre = 'Diseño de Algoritmos Avanzados' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Algoritmos Voraces', 2, 'Estudio de algoritmos voraces y sus aplicaciones en problemas específicos.', 75),
	((select id from Unidad where nombre = 'Diseño de Algoritmos Avanzados' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Algoritmos Aleatorizados', 3, 'Diseño y análisis de algoritmos que incluyen elementos aleatorios.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a Algoritmos' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Desafío de Algoritmos Básicos', 0, 'Resolución de problemas desafiantes utilizando algoritmos básicos.', 120, 15),
	((select id from Unidad where nombre = 'Estructuras de Datos y Complejidad' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Proyecto de Complejidad Computacional', 0, 'Desarrollo de un proyecto que involucre análisis de complejidad computacional.', 180, 20),
	((select id from Unidad where nombre = 'Diseño de Algoritmos Avanzados' and idCurso = (select id from Curso where nombre = 'Algoritmia')), 'Implementación de Algoritmos Avanzados', 0, 'Implementación práctica de algoritmos avanzados en proyectos específicos.', 150, 18);

-- Física de Bloques
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Física de Bloques'), 0, 'Estática de Bloques'),
	((select id from Curso where nombre = 'Física de Bloques'), 1, 'Dinámica de Bloques'),
	((select id from Curso where nombre = 'Física de Bloques'), 2, 'Aplicaciones en Ingeniería de Bloques');

-- Unidad: Estática de Bloques
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Estática de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Principios de Estática', 0, 'Conceptos básicos de estática aplicados a bloques en reposo.', 60),
	((select id from Unidad where nombre = 'Estática de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Equilibrio de Fuerzas', 1, 'Estudio del equilibrio de fuerzas en estructuras construidas con bloques.', 75),
	((select id from Unidad where nombre = 'Estática de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Momento de Fuerza', 2, 'Análisis del momento de fuerza y su aplicación en bloques estáticos.', 60),
	((select id from Unidad where nombre = 'Estática de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Estructuras Estáticas', 3, 'Diseño y análisis de estructuras estáticas utilizando bloques.', 75);

-- Unidad: Dinámica de Bloques
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Dinámica de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Movimiento de Bloques', 0, 'Estudio del movimiento de bloques y su relación con las leyes del movimiento.', 75),
	((select id from Unidad where nombre = 'Dinámica de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Fuerzas y Aceleración', 1, 'Análisis de las fuerzas y aceleraciones en bloques en movimiento.', 90),
	((select id from Unidad where nombre = 'Dinámica de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Colisiones de Bloques', 2, 'Estudio de colisiones entre bloques y sus implicaciones en el diseño de estructuras.', 75),
	((select id from Unidad where nombre = 'Dinámica de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Energía en Bloques', 3, 'Aplicación de los conceptos de energía en el análisis de bloques en movimiento.', 90);

-- Unidad: Aplicaciones en Ingeniería de Bloques
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Aplicaciones en Ingeniería de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Diseño de Máquinas con Bloques', 0, 'Desarrollo de máquinas y dispositivos ingenieriles utilizando bloques.', 75),
	((select id from Unidad where nombre = 'Aplicaciones en Ingeniería de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Estabilidad Estructural', 1, 'Análisis de la estabilidad estructural de construcciones con bloques.', 90),
	((select id from Unidad where nombre = 'Aplicaciones en Ingeniería de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Optimización de Estructuras', 2, 'Técnicas de optimización aplicadas a la construcción y diseño de estructuras con bloques.', 75),
	((select id from Unidad where nombre = 'Aplicaciones en Ingeniería de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Proyecto de Ingeniería de Bloques', 3, 'Desarrollo de un proyecto de ingeniería práctico utilizando bloques en diversas aplicaciones.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Estática de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Simulación de Estructuras Estáticas', 0, 'Simulación práctica de estructuras estáticas utilizando bloques.', 150, 18),
	((select id from Unidad where nombre = 'Dinámica de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Proyecto de Movimiento de Bloques', 0, 'Desarrollo de un proyecto práctico relacionado con el movimiento de bloques.', 180, 20),
	((select id from Unidad where nombre = 'Aplicaciones en Ingeniería de Bloques' and idCurso = (select id from Curso where nombre = 'Física de Bloques')), 'Diseño de Máquinas con Bloques', 0, 'Diseño y simulación de máquinas utilizando bloques.', 150, 18);

-- Agricultura
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Agricultura'), 0, 'Cultivo Básico'),
	((select id from Curso where nombre = 'Agricultura'), 1, 'Técnicas Avanzadas de Cultivo'),
	((select id from Curso where nombre = 'Agricultura'), 2, 'Hidroponía y Agricultura Vertical');

-- Unidad: Cultivo Básico
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Cultivo Básico' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Tipos de Cultivos', 0, 'Introducción a los distintos tipos de cultivos y sus características.', 60),
	((select id from Unidad where nombre = 'Cultivo Básico' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Preparación del Suelo', 1, 'Técnicas para preparar el suelo antes de la siembra.', 75),
	((select id from Unidad where nombre = 'Cultivo Básico' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Siembra y Cosecha', 2, 'Proceso de siembra, cuidado de cultivos y técnicas de cosecha.', 60),
	((select id from Unidad where nombre = 'Cultivo Básico' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Manejo de Plagas', 3, 'Identificación y control de plagas en cultivos básicos.', 75);

-- Unidad: Técnicas Avanzadas de Cultivo
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Técnicas Avanzadas de Cultivo' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Fertilización Específica', 0, 'Uso de fertilizantes específicos para el tipo de cultivo y suelo.', 75),
	((select id from Unidad where nombre = 'Técnicas Avanzadas de Cultivo' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Manejo de Riego', 1, 'Técnicas avanzadas de riego para optimizar el crecimiento de los cultivos.', 90),
	((select id from Unidad where nombre = 'Técnicas Avanzadas de Cultivo' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Rotación de Cultivos', 2, 'Beneficios y técnicas de rotación de cultivos para mantener la salud del suelo.', 75),
	((select id from Unidad where nombre = 'Técnicas Avanzadas de Cultivo' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Manejo Sostenible', 3, 'Prácticas de cultivo sostenible y su importancia en la agricultura moderna.', 90);

-- Unidad: Hidroponía y Agricultura Vertical
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Hidroponía y Agricultura Vertical' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Principios de Hidroponía', 0, 'Introducción a la hidroponía y sus principios básicos.', 75),
	((select id from Unidad where nombre = 'Hidroponía y Agricultura Vertical' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Sistemas de Cultivo Vertical', 1, 'Diseño y implementación de sistemas de cultivo vertical.', 90),
	((select id from Unidad where nombre = 'Hidroponía y Agricultura Vertical' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Control Ambiental', 2, 'Manejo de factores ambientales en entornos de hidroponía y agricultura vertical.', 75),
	((select id from Unidad where nombre = 'Hidroponía y Agricultura Vertical' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Proyecto de Agricultura Especializada', 3, 'Desarrollo de un proyecto de agricultura especializada utilizando hidroponía o agricultura vertical.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Cultivo Básico' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Práctica de Siembra y Cosecha', 0, 'Práctica de siembra, cuidado y cosecha de cultivos básicos.', 120, 15),
	((select id from Unidad where nombre = 'Técnicas Avanzadas de Cultivo' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Proyecto de Mejora de Cultivo', 0, 'Desarrollo de un proyecto para mejorar las técnicas de cultivo.', 180, 20),
	((select id from Unidad where nombre = 'Hidroponía y Agricultura Vertical' and idCurso = (select id from Curso where nombre = 'Agricultura')), 'Implementación de Sistema Vertical', 0, 'Implementación práctica de un sistema de cultivo vertical.', 150, 18);

-- Minería Básica
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Minería Básica'), 0, 'Introducción a la Minería'),
	((select id from Curso where nombre = 'Minería Básica'), 1, 'Técnicas de Extracción'),
	((select id from Curso where nombre = 'Minería Básica'), 2, 'Identificación de Minerales y Rocas');

-- Unidad: Introducción a la Minería
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a la Minería' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Principios de Minería', 0, 'Conceptos básicos y principios de la minería en nuestro entorno.', 60),
	((select id from Unidad where nombre = 'Introducción a la Minería' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Herramientas de Minería', 1, 'Conocimiento y uso de herramientas básicas para la minería.', 75),
	((select id from Unidad where nombre = 'Introducción a la Minería' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Seguridad en Minería', 2, 'Principios de seguridad aplicados a la minería y prevención de riesgos.', 60),
	((select id from Unidad where nombre = 'Introducción a la Minería' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Ética y Sostenibilidad', 3, 'Aspectos éticos y prácticas sostenibles en la minería.', 75);

-- Unidad: Técnicas de Extracción
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Técnicas de Extracción' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Minería Superficial', 0, 'Técnicas de extracción en la superficie terrestre.', 75),
	((select id from Unidad where nombre = 'Técnicas de Extracción' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Minería Subterránea', 1, 'Principios y técnicas de extracción subterránea.', 90),
	((select id from Unidad where nombre = 'Técnicas de Extracción' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Minería de Canteras', 2, 'Extracción de minerales y rocas mediante minería de canteras.', 75),
	((select id from Unidad where nombre = 'Técnicas de Extracción' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Explotación de Filones', 3, 'Proceso de explotación de filones minerales en nuestro entorno.', 90);

-- Unidad: Identificación de Minerales y Rocas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Identificación de Minerales y Rocas' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Minerales Comunes', 0, 'Identificación de minerales comunes y sus propiedades.', 75),
	((select id from Unidad where nombre = 'Identificación de Minerales y Rocas' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Rocas Sedimentarias', 1, 'Estudio e identificación de rocas sedimentarias.', 90),
	((select id from Unidad where nombre = 'Identificación de Minerales y Rocas' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Rocas Ígneas', 2, 'Características y clasificación de rocas ígneas.', 75),
	((select id from Unidad where nombre = 'Identificación de Minerales y Rocas' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Rocas Metamórficas', 3, 'Identificación de rocas metamórficas y sus transformaciones.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a la Minería' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Práctica de Herramientas de Minería', 0, 'Práctica de uso de herramientas básicas para la minería.', 120, 15),
	((select id from Unidad where nombre = 'Técnicas de Extracción' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Simulación de Minería Subterránea', 0, 'Simulación práctica de técnicas de extracción subterránea.', 180, 20),
	((select id from Unidad where nombre = 'Identificación de Minerales y Rocas' and idCurso = (select id from Curso where nombre = 'Minería Básica')), 'Proyecto de Identificación de Rocas', 0, 'Desarrollo de un proyecto para identificar y clasificar rocas en nuestro entorno.', 150, 18);

-- Cursos Nivel 2 -------------------------------

-- Armamento
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Armamento'), 0, 'Armas Básicas'),
	((select id from Curso where nombre = 'Armamento'), 1, 'Armas a Distancia'),
	((select id from Curso where nombre = 'Armamento'), 2, 'Armas Avanzadas');

-- Unidad: Armas Básicas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Armas Básicas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Espadas y Hachas', 0, 'Crafteo y uso de espadas y hachas para combate cuerpo a cuerpo.', 75),
	((select id from Unidad where nombre = 'Armas Básicas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Arcos y Flechas', 1, 'Crafteo y uso de arcos y flechas para combate a distancia.', 90),
	((select id from Unidad where nombre = 'Armas Básicas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Defensa con Escudos', 2, 'Técnicas de defensa y crafteo de escudos para protección.', 75),
	((select id from Unidad where nombre = 'Armas Básicas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Técnicas de Combate', 3, 'Estudio de técnicas básicas de combate y estrategias defensivas.', 90);

-- Unidad: Armas a Distancia
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Armas a Distancia' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Ballestas y Dardos', 0, 'Crafteo y uso de ballestas y dardos para combate a distancia avanzado.', 75),
	((select id from Unidad where nombre = 'Armas a Distancia' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Armas Explosivas', 1, 'Elaboración y manejo de armas explosivas para combate estratégico.', 90),
	((select id from Unidad where nombre = 'Armas a Distancia' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Trampas y Dispositivos', 2, 'Construcción y aplicación de trampas y dispositivos para combate táctico.', 75),
	((select id from Unidad where nombre = 'Armas a Distancia' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Precisión y Apuntado', 3, 'Desarrollo de habilidades de precisión y apuntado en combate a distancia.', 90);

-- Unidad: Armas Avanzadas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Armas Avanzadas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Espadas Encantadas', 0, 'Crafteo y uso de espadas encantadas con habilidades especiales.', 75),
	((select id from Unidad where nombre = 'Armas Avanzadas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Arcos Mágicos', 1, 'Elaboración y uso de arcos mágicos con flechas encantadas.', 90),
	((select id from Unidad where nombre = 'Armas Avanzadas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Armas de Asedio', 2, 'Construcción y aplicación de armas de asedio para combate masivo.', 75),
	((select id from Unidad where nombre = 'Armas Avanzadas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Estrategias de Combate Avanzadas', 3, 'Estudio de estrategias avanzadas y tácticas de combate.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Armas Básicas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Combate en la Arena', 0, 'Participación en combates simulados para aplicar las técnicas aprendidas.', 120, 15),
	((select id from Unidad where nombre = 'Armas a Distancia' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Práctica de Tiro al Blanco', 0, 'Ejercicios prácticos de tiro al blanco para mejorar la precisión.', 180, 20),
	((select id from Unidad where nombre = 'Armas Avanzadas' and idCurso = (select id from Curso where nombre = 'Armamento')), 'Construcción de Catapulta', 0, 'Proyecto de construcción de una catapulta para pruebas de asedio.', 150, 18);

-- Bloques de Construcción
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Bloques de Construcción'), 0, 'Propiedades de los Materiales'),
	((select id from Curso where nombre = 'Bloques de Construcción'), 1, 'Diseño Estructural con Bloques'),
	((select id from Curso where nombre = 'Bloques de Construcción'), 2, 'Experimentación con Materiales');

-- Unidad: Propiedades de los Materiales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Propiedades de los Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Tipos de Materiales', 0, 'Conocimiento de los diferentes tipos de materiales de construcción en nuestro entorno.', 60),
	((select id from Unidad where nombre = 'Propiedades de los Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Propiedades Físicas', 1, 'Estudio de las propiedades físicas de los materiales de construcción.', 75),
	((select id from Unidad where nombre = 'Propiedades de los Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Durabilidad y Resistencia', 2, 'Análisis de la durabilidad y resistencia de los materiales en estructuras de bloques.', 60),
	((select id from Unidad where nombre = 'Propiedades de los Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Impacto Ambiental', 3, 'Consideraciones sobre el impacto ambiental de los materiales de construcción.', 75);

-- Unidad: Diseño Estructural con Bloques
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño Estructural con Bloques' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Principios de Diseño', 0, 'Principios básicos de diseño estructural aplicados a bloques de construcción.', 75),
	((select id from Unidad where nombre = 'Diseño Estructural con Bloques' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Cargas y Tensiones', 1, 'Análisis de cargas y tensiones en estructuras de bloques.', 90),
	((select id from Unidad where nombre = 'Diseño Estructural con Bloques' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Diseño Sísmico', 2, 'Consideraciones de diseño sísmico en construcciones de bloques.', 75),
	((select id from Unidad where nombre = 'Diseño Estructural con Bloques' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Estructuras Especiales', 3, 'Diseño de estructuras especiales utilizando bloques de construcción.', 90);

-- Unidad: Experimentación con Materiales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Experimentación con Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Pruebas de Laboratorio', 0, 'Realización de pruebas de laboratorio para evaluar propiedades de los materiales.', 75),
	((select id from Unidad where nombre = 'Experimentación con Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Innovación en Materiales', 1, 'Desarrollo de nuevos materiales y técnicas de construcción innovadoras.', 90),
	((select id from Unidad where nombre = 'Experimentación con Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Proyecto de Construcción', 2, 'Planificación y ejecución de un proyecto de construcción utilizando bloques innovadores.', 75);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Propiedades de los Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Análisis de Propiedades Físicas', 0, 'Análisis práctico de las propiedades físicas de los materiales de construcción.', 120, 15),
	((select id from Unidad where nombre = 'Diseño Estructural con Bloques' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Proyecto de Diseño Estructural', 0, 'Desarrollo de un proyecto de diseño estructural con bloques de construcción.', 180, 20),
	((select id from Unidad where nombre = 'Experimentación con Materiales' and idCurso = (select id from Curso where nombre = 'Bloques de Construcción')), 'Pruebas de Laboratorio Avanzadas', 0, 'Realización de pruebas de laboratorio avanzadas para evaluar materiales de construcción.', 150, 18);

-- Biología
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Biología'), 0, 'Fundamentos de Biología'),
	((select id from Curso where nombre = 'Biología'), 1, 'Ecosistemas y Biodiversidad'),
	((select id from Curso where nombre = 'Biología'), 2, 'Genética y Evolución');

-- Unidad: Fundamentos de Biología
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Fundamentos de Biología' and idCurso = (select id from Curso where nombre = 'Biología')), 'Introducción a la Biología', 0, 'Conceptos básicos y principios fundamentales de la biología.', 60),
	((select id from Unidad where nombre = 'Fundamentos de Biología' and idCurso = (select id from Curso where nombre = 'Biología')), 'Estructura Celular', 1, 'Estudio de la estructura y funciones de las células.', 75),
	((select id from Unidad where nombre = 'Fundamentos de Biología' and idCurso = (select id from Curso where nombre = 'Biología')), 'Metabolismo Celular', 2, 'Procesos metabólicos y energéticos en el interior de las células.', 60),
	((select id from Unidad where nombre = 'Fundamentos de Biología' and idCurso = (select id from Curso where nombre = 'Biología')), 'Reproducción Celular', 3, 'Procesos de reproducción y ciclo celular.', 75);

-- Unidad: Ecosistemas y Biodiversidad
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Ecosistemas y Biodiversidad' and idCurso = (select id from Curso where nombre = 'Biología')), 'Ecosistemas Terrestres', 0, 'Estudio de ecosistemas terrestres y sus interacciones.', 75),
	((select id from Unidad where nombre = 'Ecosistemas y Biodiversidad' and idCurso = (select id from Curso where nombre = 'Biología')), 'Ecosistemas Acuáticos', 1, 'Análisis de ecosistemas acuáticos y su biodiversidad.', 90),
	((select id from Unidad where nombre = 'Ecosistemas y Biodiversidad' and idCurso = (select id from Curso where nombre = 'Biología')), 'Conservación de la Biodiversidad', 2, 'Principios y estrategias de conservación de la biodiversidad.', 75),
	((select id from Unidad where nombre = 'Ecosistemas y Biodiversidad' and idCurso = (select id from Curso where nombre = 'Biología')), 'Interacciones Ecológicas', 3, 'Estudio de las interacciones entre organismos en un ecosistema.', 90);

-- Unidad: Genética y Evolución
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Genética y Evolución' and idCurso = (select id from Curso where nombre = 'Biología')), 'Principios de Genética', 0, 'Conceptos básicos de genética y herencia biológica.', 75),
	((select id from Unidad where nombre = 'Genética y Evolución' and idCurso = (select id from Curso where nombre = 'Biología')), 'Variación Genética', 1, 'Estudio de la variación genética y su importancia en la evolución.', 90),
	((select id from Unidad where nombre = 'Genética y Evolución' and idCurso = (select id from Curso where nombre = 'Biología')), 'Evolución Biológica', 2, 'Teorías y evidencias de la evolución biológica.', 75),
	((select id from Unidad where nombre = 'Genética y Evolución' and idCurso = (select id from Curso where nombre = 'Biología')), 'Adaptaciones y Especiación', 3, 'Adaptaciones biológicas y procesos de especiación.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Fundamentos de Biología' and idCurso = (select id from Curso where nombre = 'Biología')), 'Observación Microscópica', 0, 'Práctica de observación microscópica de células.', 120, 15),
	((select id from Unidad where nombre = 'Ecosistemas y Biodiversidad' and idCurso = (select id from Curso where nombre = 'Biología')), 'Proyecto de Conservación', 0, 'Desarrollo de un proyecto de conservación de la biodiversidad.', 180, 20),
	((select id from Unidad where nombre = 'Genética y Evolución' and idCurso = (select id from Curso where nombre = 'Biología')), 'Análisis de Evidencias Evolutivas', 0, 'Análisis de evidencias que respaldan la teoría de la evolución.', 150, 18);

-- Química
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Química'), 0, 'Estructura Atómica y Tabla Periódica'),
	((select id from Curso where nombre = 'Química'), 1, 'Enlace Químico y Reacciones'),
	((select id from Curso where nombre = 'Química'), 2, 'Estequiometría y Termoquímica');

-- Unidad: Estructura Atómica y Tabla Periódica
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Estructura Atómica y Tabla Periódica' and idCurso = (select id from Curso where nombre = 'Química')), 'Átomos y Partículas Subatómicas', 0, 'Estudio de la estructura y componentes básicos del átomo.', 60),
	((select id from Unidad where nombre = 'Estructura Atómica y Tabla Periódica' and idCurso = (select id from Curso where nombre = 'Química')), 'Tabla Periódica y Propiedades', 1, 'Conocimiento de la tabla periódica y sus propiedades.', 75),
	((select id from Unidad where nombre = 'Estructura Atómica y Tabla Periódica' and idCurso = (select id from Curso where nombre = 'Química')), 'Configuración Electrónica', 2, 'Determinación de la configuración electrónica de los elementos químicos.', 60),
	((select id from Unidad where nombre = 'Estructura Atómica y Tabla Periódica' and idCurso = (select id from Curso where nombre = 'Química')), 'Enlace Químico', 3, 'Principios y tipos de enlaces químicos entre átomos.', 75);

-- Unidad: Enlace Químico y Reacciones
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Enlace Químico y Reacciones' and idCurso = (select id from Curso where nombre = 'Química')), 'Tipos de Reacciones Químicas', 0, 'Estudio de los diferentes tipos de reacciones químicas.', 75),
	((select id from Unidad where nombre = 'Enlace Químico y Reacciones' and idCurso = (select id from Curso where nombre = 'Química')), 'Cinética Química', 1, 'Análisis de la velocidad de las reacciones químicas.', 90),
	((select id from Unidad where nombre = 'Enlace Químico y Reacciones' and idCurso = (select id from Curso where nombre = 'Química')), 'Equilibrio Químico', 2, 'Principios y condiciones de equilibrio en las reacciones químicas.', 75),
	((select id from Unidad where nombre = 'Enlace Químico y Reacciones' and idCurso = (select id from Curso where nombre = 'Química')), 'Ácidos y Bases', 3, 'Propiedades y comportamiento de ácidos y bases en soluciones.', 90);

-- Unidad: Estequiometría y Termoquímica
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Estequiometría y Termoquímica' and idCurso = (select id from Curso where nombre = 'Química')), 'Estequiometría', 0, 'Cálculos estequiométricos en reacciones químicas.', 75),
	((select id from Unidad where nombre = 'Estequiometría y Termoquímica' and idCurso = (select id from Curso where nombre = 'Química')), 'Termoquímica', 1, 'Estudio de los cambios de energía en las reacciones químicas.', 90),
	((select id from Unidad where nombre = 'Estequiometría y Termoquímica' and idCurso = (select id from Curso where nombre = 'Química')), 'Gases y Leyes de los Gases', 2, 'Propiedades de los gases y leyes que los rigen.', 75),
	((select id from Unidad where nombre = 'Estequiometría y Termoquímica' and idCurso = (select id from Curso where nombre = 'Química')), 'Química Orgánica Básica', 3, 'Introducción a la química orgánica y sus compuestos básicos.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Estructura Atómica y Tabla Periódica' and idCurso = (select id from Curso where nombre = 'Química')), 'Simulación de Enlace Químico', 0, 'Simulación práctica de enlace químico y estructura molecular.', 120, 15),
	((select id from Unidad where nombre = 'Enlace Químico y Reacciones' and idCurso = (select id from Curso where nombre = 'Química')), 'Experimento de Cinética Química', 0, 'Realización de experimentos para estudiar la cinética de reacciones químicas.', 180, 20),
	((select id from Unidad where nombre = 'Estequiometría y Termoquímica' and idCurso = (select id from Curso where nombre = 'Química')), 'Proyecto de Química Orgánica', 0, 'Desarrollo de un proyecto relacionado con la química orgánica.', 150, 18);

-- Análisis de Circuitos de Redstone
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Análisis de Circuitos de Redstone'), 0, 'Principios Básicos de Redstone'),
	((select id from Curso where nombre = 'Análisis de Circuitos de Redstone'), 1, 'Diseño Lógico con Redstone'),
	((select id from Curso where nombre = 'Análisis de Circuitos de Redstone'), 2, 'Circuitos Secuenciales con Redstone');

-- Unidad: Principios Básicos de Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Principios Básicos de Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Introducción a Redstone', 0, 'Conceptos básicos y funcionamiento de los componentes de redstone.', 60),
	((select id from Unidad where nombre = 'Principios Básicos de Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Puertas Lógicas con Redstone', 1, 'Construcción y funcionamiento de puertas lógicas utilizando redstone.', 75),
	((select id from Unidad where nombre = 'Principios Básicos de Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Máquinas Básicas con Redstone', 2, 'Creación de máquinas y dispositivos básicos utilizando redstone.', 60),
	((select id from Unidad where nombre = 'Principios Básicos de Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Sistemas de Transmisión de Redstone', 3, 'Estudio de los sistemas de transmisión de señal de redstone.', 75);

-- Unidad: Diseño Lógico con Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño Lógico con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Circuitos Combinacionales', 0, 'Diseño y análisis de circuitos combinacionales con redstone.', 75),
	((select id from Unidad where nombre = 'Diseño Lógico con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Decodificadores y Codificadores', 1, 'Funcionamiento y aplicación de decodificadores y codificadores con redstone.', 90),
	((select id from Unidad where nombre = 'Diseño Lógico con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Memorias y Flip-Flops', 2, 'Estudio de memorias y flip-flops construidos con redstone.', 75),
	((select id from Unidad where nombre = 'Diseño Lógico con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Sumadores y Restadores', 3, 'Diseño y aplicación de sumadores y restadores con redstone.', 90);

-- Unidad: Circuitos Secuenciales con Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Circuitos Secuenciales con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Contadores y Temporizadores', 0, 'Construcción y uso de contadores y temporizadores con redstone.', 75),
	((select id from Unidad where nombre = 'Circuitos Secuenciales con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Máquinas de Estado', 1, 'Creación de máquinas de estado utilizando redstone.', 90),
	((select id from Unidad where nombre = 'Circuitos Secuenciales con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Sistemas de Almacenamiento con Redstone', 2, 'Diseño y construcción de sistemas de almacenamiento con redstone.', 75),
	((select id from Unidad where nombre = 'Circuitos Secuenciales con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Proyecto Final de Redstone', 3, 'Desarrollo de un proyecto final que integre los conocimientos adquiridos en el curso.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Principios Básicos de Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Construcción de Máquina Básica', 0, 'Construcción de una máquina básica utilizando redstone.', 120, 15),
	((select id from Unidad where nombre = 'Diseño Lógico con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Simulación de Circuitos Combinacionales', 0, 'Simulación de circuitos combinacionales utilizando herramientas virtuales.', 180, 20),
	((select id from Unidad where nombre = 'Circuitos Secuenciales con Redstone' and idCurso = (select id from Curso where nombre = 'Análisis de Circuitos de Redstone')), 'Proyecto de Máquina de Estado', 0, 'Desarrollo de un proyecto práctico de máquina de estado con redstone.', 150, 18);

-- Biomas
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Biomas'), 0, 'Exploración de Biomas'),
	((select id from Curso where nombre = 'Biomas'), 1, 'Ecología Biómica'),
	((select id from Curso where nombre = 'Biomas'), 2, 'Biomas Específicos');

-- Unidad: Exploración de Biomas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Exploración de Biomas' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Características Generales', 0, 'Estudio de las características generales de los biomas en nuestro mundo.', 75),
	((select id from Unidad where nombre = 'Exploración de Biomas' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Herramientas de Exploración', 1, 'Utilización de herramientas para la exploración efectiva de biomas.', 90),
	((select id from Unidad where nombre = 'Exploración de Biomas' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Mapeo y Navegación', 2, 'Desarrollo de habilidades de mapeo y navegación en diferentes biomas.', 75),
	((select id from Unidad where nombre = 'Exploración de Biomas' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Fauna y Flora', 3, 'Identificación y estudio de la fauna y flora en biomas diversos.', 90);

-- Unidad: Ecología Biómica
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Ecología Biómica' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Ciclos Ecológicos', 0, 'Comprensión de los ciclos ecológicos presentes en los biomas.', 75),
	((select id from Unidad where nombre = 'Ecología Biómica' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Interacciones Bióticas', 1, 'Estudio de las interacciones bióticas entre organismos en un bioma.', 90),
	((select id from Unidad where nombre = 'Ecología Biómica' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Impacto Humano', 2, 'Análisis del impacto humano en la ecología de los biomas.', 75),
	((select id from Unidad where nombre = 'Ecología Biómica' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Conservación Biómica', 3, 'Estrategias y prácticas para la conservación de la biodiversidad en los biomas.', 90);

-- Unidad: Biomas Específicos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Biomas Específicos' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Desierto', 0, 'Características específicas del bioma desierto y su exploración.', 75),
	((select id from Unidad where nombre = 'Biomas Específicos' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Selva', 1, 'Características específicas del bioma selva y su exploración.', 90),
	((select id from Unidad where nombre = 'Biomas Específicos' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Tundra', 2, 'Características específicas del bioma tundra y su exploración.', 75),
	((select id from Unidad where nombre = 'Biomas Específicos' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Bosque Encantado', 3, 'Características específicas del bioma bosque encantado y su exploración.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Exploración de Biomas' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Expedición Biómica', 0, 'Realización de una expedición práctica para explorar y documentar un bioma.', 120, 15),
	((select id from Unidad where nombre = 'Ecología Biómica' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Proyecto de Impacto Ambiental', 0, 'Investigación y presentación sobre el impacto ambiental en un bioma específico.', 180, 20),
	((select id from Unidad where nombre = 'Biomas Específicos' and idCurso = (select id from Curso where nombre = 'Biomas')), 'Guía de Biomas', 0, 'Desarrollo de una guía detallada sobre un bioma específico.', 150, 18);

-- Cursos Nivel 3 ---------------------------------------------------------------

-- Gastronomía
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Gastronomía'), 0, 'Introducción a la Gastronomía'),
	((select id from Curso where nombre = 'Gastronomía'), 1, 'Técnicas Culinarias Básicas'),
	((select id from Curso where nombre = 'Gastronomía'), 2, 'Cocina Internacional');

-- Unidad: Introducción a la Gastronomía
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a la Gastronomía' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Historia de la Gastronomía', 0, 'Evolución histórica de la gastronomía a lo largo del tiempo.', 60),
	((select id from Unidad where nombre = 'Introducción a la Gastronomía' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Importancia de la Gastronomía', 1, 'Relevancia cultural y social de la gastronomía en diferentes sociedades.', 75),
	((select id from Unidad where nombre = 'Introducción a la Gastronomía' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Ingredientes Básicos', 2, 'Conocimiento de ingredientes fundamentales en la cocina.', 60),
	((select id from Unidad where nombre = 'Introducción a la Gastronomía' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Herramientas Culinarias', 3, 'Uso y manejo de herramientas culinarias esenciales.', 75);

-- Unidad: Técnicas Culinarias Básicas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Técnicas Culinarias Básicas' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Preparación de Alimentos', 0, 'Técnicas de corte, lavado y preparación de alimentos.', 75),
	((select id from Unidad where nombre = 'Técnicas Culinarias Básicas' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Cocción y Métodos de Cocción', 1, 'Diferentes métodos de cocción y su aplicación en la cocina.', 90),
	((select id from Unidad where nombre = 'Técnicas Culinarias Básicas' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Salsas y Aderezos', 2, 'Elaboración de salsas y aderezos para realzar sabores.', 75),
	((select id from Unidad where nombre = 'Técnicas Culinarias Básicas' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Presentación de Platillos', 3, 'Técnicas de presentación y decoración de platillos.', 90);

-- Unidad: Cocina Internacional
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Cocina Internacional' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Gastronomía de América Latina', 0, 'Exploración de la gastronomía de países latinoamericanos.', 75),
	((select id from Unidad where nombre = 'Cocina Internacional' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Cocina Europea', 1, 'Conocimiento de la cocina de diferentes países europeos.', 90),
	((select id from Unidad where nombre = 'Cocina Internacional' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Sabores Asiáticos', 2, 'Exploración de la diversidad culinaria en Asia.', 75),
	((select id from Unidad where nombre = 'Cocina Internacional' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Fusiones Culinarias', 3, 'Cocina contemporánea que fusiona diferentes tradiciones culinarias.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a la Gastronomía' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Proyecto de Investigación Gastronómica', 0, 'Investigación y presentación de un proyecto sobre aspectos gastronómicos.', 120, 15),
	((select id from Unidad where nombre = 'Técnicas Culinarias Básicas' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Elaboración de Platillos', 0, 'Preparación de platillos utilizando las técnicas aprendidas.', 180, 20),
	((select id from Unidad where nombre = 'Cocina Internacional' and idCurso = (select id from Curso where nombre = 'Gastronomía')), 'Evento Gastronómico', 0, 'Planificación y participación en un evento culinario internacional.', 150, 18);

-- Alquimia
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Alquimia'), 0, 'Principios Alquímicos'),
	((select id from Curso where nombre = 'Alquimia'), 1, 'Elaboración de Pociones'),
	((select id from Curso where nombre = 'Alquimia'), 2, 'Transmutación de Elementos');

-- Unidad: Principios Alquímicos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Principios Alquímicos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Historia de la Alquimia', 0, 'Repaso histórico de la alquimia y sus principios fundamentales.', 75),
	((select id from Unidad where nombre = 'Principios Alquímicos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Teoría de los Elementos', 1, 'Estudio de la teoría alquímica de los elementos y su aplicación.', 90),
	((select id from Unidad where nombre = 'Principios Alquímicos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Simbología Alquímica', 2, 'Interpretación de los símbolos alquímicos y su significado.', 75),
	((select id from Unidad where nombre = 'Principios Alquímicos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Alquimia y Magia', 3, 'Exploración de la relación entre la alquimia y la magia en nuestro mundo.', 90);

-- Unidad: Elaboración de Pociones
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Elaboración de Pociones' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Ingredientes y Propiedades', 0, 'Identificación de ingredientes y sus propiedades alquímicas.', 75),
	((select id from Unidad where nombre = 'Elaboración de Pociones' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Técnicas de Elaboración', 1, 'Desarrollo de habilidades prácticas en la elaboración de pociones.', 90),
	((select id from Unidad where nombre = 'Elaboración de Pociones' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Pociones Avanzadas', 2, 'Crafteo de pociones con efectos avanzados y mágicos.', 75),
	((select id from Unidad where nombre = 'Elaboración de Pociones' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Uso Estratégico de Pociones', 3, 'Aplicación estratégica de pociones en situaciones específicas.', 90);

-- Unidad: Transmutación de Elementos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Transmutación de Elementos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Círculos de Transmutación', 0, 'Estudio y práctica de los círculos de transmutación en la alquimia.', 75),
	((select id from Unidad where nombre = 'Transmutación de Elementos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Transformación de Metales', 1, 'Técnicas para la transmutación de metales y minerales.', 90),
	((select id from Unidad where nombre = 'Transmutación de Elementos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Alquimia Energética', 2, 'Manipulación de energía alquímica para la transmutación de elementos.', 75),
	((select id from Unidad where nombre = 'Transmutación de Elementos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Creación de Artefactos', 3, 'Desarrollo de habilidades para la creación de artefactos mediante la transmutación.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Principios Alquímicos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Investigación Histórica de Alquimia', 0, 'Investigación y presentación sobre un aspecto histórico de la alquimia.', 120, 15),
	((select id from Unidad where nombre = 'Elaboración de Pociones' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Elaboración de Pociones Especializadas', 0, 'Proyecto de elaboración de pociones con efectos específicos.', 180, 20),
	((select id from Unidad where nombre = 'Transmutación de Elementos' and idCurso = (select id from Curso where nombre = 'Alquimia')), 'Creación de Artefacto Mágico', 0, 'Proyecto de creación de un artefacto mágico mediante transmutación.', 150, 18);

-- Dinámica de Fluidos
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Dinámica de Fluidos'), 0, 'Principios Fundamentales'),
	((select id from Curso where nombre = 'Dinámica de Fluidos'), 1, 'Aplicaciones Prácticas'),
	((select id from Curso where nombre = 'Dinámica de Fluidos'), 2, 'Sistemas de Transporte');

-- Unidad: Principios Fundamentales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Principios Fundamentales' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Propiedades de los Fluidos', 0, 'Estudio de las propiedades físicas y químicas de los fluidos.', 75),
	((select id from Unidad where nombre = 'Principios Fundamentales' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Ecuaciones de la Dinámica de Fluidos', 1, 'Análisis y aplicación de las ecuaciones fundamentales de la dinámica de fluidos.', 90),
	((select id from Unidad where nombre = 'Principios Fundamentales' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Flujo y Velocidad', 2, 'Conceptos de flujo y velocidad en los fluidos y sus implicaciones.', 75),
	((select id from Unidad where nombre = 'Principios Fundamentales' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Presión y Temperatura', 3, 'Relación entre presión, temperatura y comportamiento de los fluidos.', 90);

-- Unidad: Aplicaciones Prácticas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Aplicaciones Prácticas' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Hidráulica', 0, 'Aplicaciones prácticas de la dinámica de fluidos en sistemas hidráulicos.', 75),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Aerodinámica', 1, 'Estudio del comportamiento de los fluidos en entornos aerodinámicos.', 90),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Fluidos en la Industria', 2, 'Aplicaciones de la dinámica de fluidos en procesos industriales.', 75),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Simulaciones Computacionales', 3, 'Uso de simulaciones computacionales para estudiar la dinámica de fluidos.', 90);

-- Unidad: Sistemas de Transporte
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Diseño de Tuberías', 0, 'Principios de diseño y optimización de sistemas de tuberías para fluidos.', 75),
	((select id from Unidad where nombre = 'Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Transporte de Fluidos a Larga Distancia', 1, 'Técnicas para el transporte eficiente de fluidos a largas distancias.', 90),
	((select id from Unidad where nombre = 'Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Transporte de Fluidos a Alta Velocidad', 2, 'Estudio de sistemas de transporte de fluidos a alta velocidad.', 75),
	((select id from Unidad where nombre = 'Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Seguridad en el Transporte de Fluidos', 3, 'Consideraciones de seguridad en el diseño y operación de sistemas de transporte de fluidos.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Principios Fundamentales' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Experimentos con Fluidos', 0, 'Realización de experimentos prácticos para demostrar principios fundamentales.', 120, 15),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Diseño de Sistema Hidráulico', 0, 'Proyecto de diseño y simulación de un sistema hidráulico.', 180, 20),
	((select id from Unidad where nombre = 'Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Dinámica de Fluidos')), 'Análisis de Riesgos en Transporte de Fluidos', 0, 'Estudio y presentación sobre los riesgos asociados al transporte de fluidos.', 150, 18);

-- Sistemas Binarios de Redstone
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Sistemas Binarios de Redstone'), 0, 'Introducción a la Lógica Binaria'),
	((select id from Curso where nombre = 'Sistemas Binarios de Redstone'), 1, 'Operaciones Binarias con Redstone'),
	((select id from Curso where nombre = 'Sistemas Binarios de Redstone'), 2, 'Diseño de Circuitos Lógicos Binarios');

-- Unidad: Introducción a la Lógica Binaria
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a la Lógica Binaria' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Sistema Binario y Redstone', 0, 'Conceptos fundamentales de sistemas binarios aplicados a la tecnología Redstone.', 75),
	((select id from Unidad where nombre = 'Introducción a la Lógica Binaria' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Puertas Lógicas Básicas', 1, 'Construcción y aplicación de puertas lógicas básicas con Redstone.', 90),
	((select id from Unidad where nombre = 'Introducción a la Lógica Binaria' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Representación de Números', 2, 'Formas de representar números binarios y su manipulación en Redstone.', 75),
	((select id from Unidad where nombre = 'Introducción a la Lógica Binaria' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Conversiones Binarias', 3, 'Procesos de conversión entre sistemas numéricos en el entorno Redstone.', 90);

-- Unidad: Operaciones Binarias con Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Operaciones Binarias con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Suma Binaria', 0, 'Desarrollo de circuitos para realizar sumas binarias con Redstone.', 75),
	((select id from Unidad where nombre = 'Operaciones Binarias con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Resta Binaria', 1, 'Construcción de circuitos para realizar restas binarias con Redstone.', 90),
	((select id from Unidad where nombre = 'Operaciones Binarias con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Multiplicación Binaria', 2, 'Diseño de circuitos para llevar a cabo multiplicaciones binarias en Redstone.', 75),
	((select id from Unidad where nombre = 'Operaciones Binarias con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'División Binaria', 3, 'Implementación de circuitos para realizar divisiones binarias con Redstone.', 90);

-- Unidad: Diseño de Circuitos Lógicos Binarios
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño de Circuitos Lógicos Binarios' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Circuitos Combinacionales', 0, 'Diseño y construcción de circuitos combinacionales con Redstone.', 75),
	((select id from Unidad where nombre = 'Diseño de Circuitos Lógicos Binarios' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Circuitos Secuenciales', 1, 'Desarrollo de circuitos secuenciales utilizando lógica binaria y Redstone.', 90),
	((select id from Unidad where nombre = 'Diseño de Circuitos Lógicos Binarios' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Memorias y Registros', 2, 'Construcción de memorias y registros binarios en el entorno Redstone.', 75),
	((select id from Unidad where nombre = 'Diseño de Circuitos Lógicos Binarios' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Proyecto Final', 3, 'Desarrollo y presentación de un proyecto final de diseño de circuitos lógicos binarios.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a la Lógica Binaria' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Construcción de Puertas Lógicas', 0, 'Práctica de construcción de puertas lógicas básicas con Redstone.', 120, 15),
	((select id from Unidad where nombre = 'Operaciones Binarias con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Simulación de Operaciones Binarias', 0, 'Utilización de simulaciones para realizar y entender operaciones binarias.', 180, 20),
	((select id from Unidad where nombre = 'Diseño de Circuitos Lógicos Binarios' and idCurso = (select id from Curso where nombre = 'Sistemas Binarios de Redstone')), 'Presentación de Proyecto Final', 0, 'Presentación y demostración del proyecto final de diseño de circuitos lógicos binarios.', 150, 18);

-- Zoología y Domesticación
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Zoología y Domesticación'), 0, 'Introducción a la Fauna Cúbica'),
	((select id from Curso where nombre = 'Zoología y Domesticación'), 1, 'Ecosistemas y Comportamiento Animal'),
	((select id from Curso where nombre = 'Zoología y Domesticación'), 2, 'Domesticación y Crianza');

-- Unidad: Introducción a la Fauna Cúbica
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a la Fauna Cúbica' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Diversidad Faunística', 0, 'Exploración de la diversidad de especies animales en nuestro entorno.', 75),
	((select id from Unidad where nombre = 'Introducción a la Fauna Cúbica' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Especies Emblemáticas', 1, 'Estudio detallado de especies animales emblemáticas de nuestro mundo.', 90),
	((select id from Unidad where nombre = 'Introducción a la Fauna Cúbica' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Conservación de la Fauna', 2, 'Principios y prácticas de conservación de la fauna cúbica.', 75),
	((select id from Unidad where nombre = 'Introducción a la Fauna Cúbica' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Impacto de la Fauna en el Entorno', 3, 'Análisis del impacto de la fauna en el equilibrio del entorno cúbico.', 90);

-- Unidad: Ecosistemas y Comportamiento Animal
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Ecosistemas y Comportamiento Animal' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Ecosistemas Cúbicos', 0, 'Estudio de los diferentes ecosistemas cúbicos y sus características.', 75),
	((select id from Unidad where nombre = 'Ecosistemas y Comportamiento Animal' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Relaciones Simbióticas', 1, 'Análisis de las relaciones simbióticas entre especies animales.', 90),
	((select id from Unidad where nombre = 'Ecosistemas y Comportamiento Animal' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Comportamiento Reproductivo', 2, 'Estudio del comportamiento reproductivo de la fauna cúbica.', 75),
	((select id from Unidad where nombre = 'Ecosistemas y Comportamiento Animal' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Adaptaciones y Estrategias de Supervivencia', 3, 'Exploración de las adaptaciones y estrategias de supervivencia de las especies animales.', 90);

-- Unidad: Domesticación y Crianza
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Domesticación y Crianza' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Historia de la Domesticación', 0, 'Repaso histórico de la domesticación de animales en nuestro mundo.', 75),
	((select id from Unidad where nombre = 'Domesticación y Crianza' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Técnicas de Domesticación', 1, 'Técnicas y procesos para la domesticación de especies animales.', 90),
	((select id from Unidad where nombre = 'Domesticación y Crianza' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Crianza Responsable', 2, 'Prácticas y ética en la crianza responsable de animales.', 75),
	((select id from Unidad where nombre = 'Domesticación y Crianza' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Entrenamiento y Vinculación', 3, 'Métodos de entrenamiento y desarrollo de vínculos con animales domésticos.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a la Fauna Cúbica' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Presentación de Especie Emblemática', 0, 'Investigación y presentación sobre una especie emblemática de nuestra fauna.', 120, 15),
	((select id from Unidad where nombre = 'Ecosistemas y Comportamiento Animal' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Observación de Comportamiento Animal', 0, 'Proyecto de observación y análisis del comportamiento animal en su entorno natural.', 180, 20),
	((select id from Unidad where nombre = 'Domesticación y Crianza' and idCurso = (select id from Curso where nombre = 'Zoología y Domesticación')), 'Práctica de Entrenamiento', 0, 'Sesiones prácticas de entrenamiento con animales domésticos.', 150, 18);

-- Cálculo y Análisis Cúbico
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Cálculo y Análisis Cúbico'), 0, 'Fundamentos del Cálculo'),
	((select id from Curso where nombre = 'Cálculo y Análisis Cúbico'), 1, 'Aplicaciones Cúbicas'),
	((select id from Curso where nombre = 'Cálculo y Análisis Cúbico'), 2, 'Métodos de Análisis Cúbico');

-- Unidad: Fundamentos del Cálculo
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Fundamentos del Cálculo' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Conceptos Básicos', 0, 'Introducción a los conceptos fundamentales del cálculo en entornos cúbicos.', 75),
	((select id from Unidad where nombre = 'Fundamentos del Cálculo' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Derivadas e Integrales Cúbicas', 1, 'Estudio de derivadas e integrales en el contexto cúbico.', 90),
	((select id from Unidad where nombre = 'Fundamentos del Cálculo' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Teorema Fundamental del Cálculo Cúbico', 2, 'Aplicación del teorema fundamental del cálculo en entornos cúbicos.', 75),
	((select id from Unidad where nombre = 'Fundamentos del Cálculo' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Optimización Cúbica', 3, 'Métodos de optimización utilizando conceptos de cálculo en el mundo cúbico.', 90);

-- Unidad: Aplicaciones Cúbicas
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Aplicaciones Cúbicas' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Geometría Analítica Cúbica', 0, 'Aplicación de herramientas cúbicas en la geometría analítica.', 75),
	((select id from Unidad where nombre = 'Aplicaciones Cúbicas' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Cálculo de Áreas y Volúmenes', 1, 'Cálculo de áreas y volúmenes de formas tridimensionales en entornos cúbicos.', 90),
	((select id from Unidad where nombre = 'Aplicaciones Cúbicas' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Aplicaciones en Ingeniería Cúbica', 2, 'Estudio de aplicaciones prácticas en ingeniería que involucran cálculos cúbicos.', 75),
	((select id from Unidad where nombre = 'Aplicaciones Cúbicas' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Simulaciones Cúbicas', 3, 'Desarrollo y análisis de simulaciones cúbicas mediante técnicas de cálculo avanzado.', 90);

-- Unidad: Métodos de Análisis Cúbico
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Métodos de Análisis Cúbico' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Series y Sucesiones Cúbicas', 0, 'Estudio de series y sucesiones en el contexto cúbico y sus propiedades.', 75),
	((select id from Unidad where nombre = 'Métodos de Análisis Cúbico' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Transformadas Cúbicas', 1, 'Aplicación de transformadas en entornos cúbicos para análisis avanzado.', 90),
	((select id from Unidad where nombre = 'Métodos de Análisis Cúbico' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Ecuaciones Diferenciales Cúbicas', 2, 'Resolución de ecuaciones diferenciales cúbicas y sus aplicaciones.', 75),
	((select id from Unidad where nombre = 'Métodos de Análisis Cúbico' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Proyecto de Investigación', 3, 'Desarrollo y presentación de un proyecto de investigación en el ámbito del análisis cúbico.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Fundamentos del Cálculo' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Resolución de Problemas de Derivadas e Integrales Cúbicas', 0, 'Actividad práctica de resolución de problemas utilizando derivadas e integrales cúbicas.', 120, 15),
	((select id from Unidad where nombre = 'Aplicaciones Cúbicas' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Proyecto de Ingeniería Cúbica', 0, 'Desarrollo de un proyecto de ingeniería que aplique conceptos de cálculo cúbico.', 180, 20),
	((select id from Unidad where nombre = 'Métodos de Análisis Cúbico' and idCurso = (select id from Curso where nombre = 'Cálculo y Análisis Cúbico')), 'Resolución de Problemas Avanzados', 0, 'Actividad avanzada de resolución de problemas utilizando métodos de análisis cúbico.', 150, 18);

-- Cursos Nivel 4 ---------------------------------------------------------------------------------------------

-- Encantamientos
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Encantamientos'), 0, 'Teoría de los Encantamientos'),
	((select id from Curso where nombre = 'Encantamientos'), 1, 'Aplicaciones Prácticas de Encantamientos'),
	((select id from Curso where nombre = 'Encantamientos'), 2, 'Desarrollo Avanzado de Encantamientos');

-- Unidad: Teoría de los Encantamientos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Teoría de los Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Propiedades Mágicas de los Materiales', 0, 'Exploración de las propiedades mágicas de los materiales presentes en nuestro mundo.', 75),
	((select id from Unidad where nombre = 'Teoría de los Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Tipos de Encantamientos', 1, 'Estudio detallado de los diferentes tipos de encantamientos y sus efectos.', 90),
	((select id from Unidad where nombre = 'Teoría de los Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Círculos de Encantamiento', 2, 'Creación y utilización de círculos de encantamiento para potenciar los efectos mágicos.', 75),
	((select id from Unidad where nombre = 'Teoría de los Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Interacciones con Otras Disciplinas', 3, 'Análisis de las interacciones entre los encantamientos y otras disciplinas en nuestro mundo.', 90);

-- Unidad: Aplicaciones Prácticas de Encantamientos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Aplicaciones Prácticas de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Herramientas Encantadas', 0, 'Creación y utilización de herramientas encantadas para diversas tareas.', 75),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Armaduras Mágicas', 1, 'Desarrollo y utilización de armaduras encantadas con propiedades mágicas.', 90),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Armas Místicas', 2, 'Forjado y aplicación de encantamientos en armas para mejorar sus habilidades.', 75),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Encantamientos en la Construcción', 3, 'Uso de encantamientos en la construcción y manipulación de bloques.', 90);

-- Unidad: Desarrollo Avanzado de Encantamientos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Desarrollo Avanzado de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Encantamientos Personalizados', 0, 'Creación y aplicación de encantamientos personalizados para necesidades específicas.', 75),
	((select id from Unidad where nombre = 'Desarrollo Avanzado de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Investigación en Encantamientos', 1, 'Proyecto de investigación en el desarrollo y descubrimiento de nuevos encantamientos.', 90),
	((select id from Unidad where nombre = 'Desarrollo Avanzado de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Límites y Ética de los Encantamientos', 2, 'Exploración de los límites éticos y responsabilidades al utilizar encantamientos avanzados.', 75),
	((select id from Unidad where nombre = 'Desarrollo Avanzado de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Proyecto Final de Encantamientos', 3, 'Desarrollo y presentación de un proyecto final que demuestre dominio en el arte de los encantamientos.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Teoría de los Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Creación de Círculos de Encantamiento', 0, 'Proyecto de creación y utilización de círculos de encantamiento en diferentes contextos.', 120, 15),
	((select id from Unidad where nombre = 'Aplicaciones Prácticas de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Forjado de Armas Místicas', 0, 'Sesiones prácticas de forjado y encantamiento de armas místicas.', 180, 20),
	((select id from Unidad where nombre = 'Desarrollo Avanzado de Encantamientos' and idCurso = (select id from Curso where nombre = 'Encantamientos')), 'Investigación y Desarrollo de Nuevos Encantamientos', 0, 'Proyecto de investigación para descubrir y desarrollar nuevos encantamientos en nuestro mundo.', 150, 18);

-- Principios de Automatización
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Principios de Automatización'), 0, 'Fundamentos de Redstone'),
	((select id from Curso where nombre = 'Principios de Automatización'), 1, 'Máquinas y Dispositivos Automatizados'),
	((select id from Curso where nombre = 'Principios de Automatización'), 2, 'Sistemas Avanzados de Redstone');

-- Unidad: Fundamentos de Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Fundamentos de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Introducción al Redstone', 0, 'Exploración de las propiedades y usos básicos del redstone en la automatización.', 75),
	((select id from Unidad where nombre = 'Fundamentos de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Circuitos Básicos de Redstone', 1, 'Diseño y construcción de circuitos básicos de redstone para automatizar tareas sencillas.', 90),
	((select id from Unidad where nombre = 'Fundamentos de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Puertas Lógicas de Redstone', 2, 'Estudio y aplicación de puertas lógicas de redstone en la construcción de dispositivos automáticos.', 75),
	((select id from Unidad where nombre = 'Fundamentos de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Redstone en la Construcción', 3, 'Integración de redstone en la construcción de estructuras para automatización.', 90);

-- Unidad: Máquinas y Dispositivos Automatizados
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Máquinas y Dispositivos Automatizados' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Sistemas de Transporte Automatizado', 0, 'Diseño y construcción de sistemas de transporte automatizado utilizando redstone.', 75),
	((select id from Unidad where nombre = 'Máquinas y Dispositivos Automatizados' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Granjas Automáticas', 1, 'Desarrollo y aplicación de granjas automáticas para la recolección de recursos.', 90),
	((select id from Unidad where nombre = 'Máquinas y Dispositivos Automatizados' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Sistemas de Iluminación Automática', 2, 'Creación de sistemas de iluminación que responden automáticamente a las condiciones ambientales.', 75),
	((select id from Unidad where nombre = 'Máquinas y Dispositivos Automatizados' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Control de Puertas y Portones', 3, 'Diseño y programación de sistemas para controlar automáticamente puertas y portones.', 90);

-- Unidad: Sistemas Avanzados de Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Sistemas Avanzados de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Sistemas de Contadores y Secuenciadores', 0, 'Construcción y aplicación de sistemas de contadores y secuenciadores utilizando redstone.', 75),
	((select id from Unidad where nombre = 'Sistemas Avanzados de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Cerraduras y Sistemas de Seguridad', 1, 'Diseño y programación de cerraduras y sistemas de seguridad automáticos basados en redstone.', 90),
	((select id from Unidad where nombre = 'Sistemas Avanzados de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Proyectos de Automatización', 2, 'Desarrollo y presentación de proyectos prácticos de automatización utilizando redstone.', 75),
	((select id from Unidad where nombre = 'Sistemas Avanzados de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Optimización y Mejora Continua', 3, 'Aplicación de principios de mejora continua en sistemas de automatización basados en redstone.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Fundamentos de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Construcción de Circuito Básico', 0, 'Construcción y evaluación de un circuito básico de redstone para automatizar una tarea simple.', 120, 15),
	((select id from Unidad where nombre = 'Máquinas y Dispositivos Automatizados' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Diseño y Construcción de Granja Automática', 0, 'Proyecto práctico de diseño y construcción de una granja automática para la recolección de cultivos.', 180, 20),
	((select id from Unidad where nombre = 'Sistemas Avanzados de Redstone' and idCurso = (select id from Curso where nombre = 'Principios de Automatización')), 'Proyecto de Automatización Avanzada', 0, 'Desarrollo y presentación de un proyecto avanzado de automatización utilizando sistemas avanzados de redstone.', 150, 18);

-- Sistemas Hexadecimales de Redstone
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone'), 0, 'Introducción a los Sistemas Hexadecimales'),
	((select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone'), 1, 'Operaciones Hexadecimales en Redstone'),
	((select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone'), 2, 'Circuitos Lógicos Hexadecimales');

-- Unidad: Introducción a los Sistemas Hexadecimales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a los Sistemas Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Bases de la Numeración Hexadecimal', 0, 'Exploración de las bases y principios de la numeración hexadecimal.', 75),
	((select id from Unidad where nombre = 'Introducción a los Sistemas Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Conversiones entre Binario, Decimal y Hexadecimal', 1, 'Estudio y práctica de conversiones entre sistemas numéricos en redstone.', 90),
	((select id from Unidad where nombre = 'Introducción a los Sistemas Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Representación de Datos en Redstone', 2, 'Aplicación de la representación de datos en el mundo de redstone.', 75),
	((select id from Unidad where nombre = 'Introducción a los Sistemas Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Aplicaciones Prácticas', 3, 'Desarrollo de aplicaciones prácticas utilizando sistemas hexadecimales en redstone.', 90);

-- Unidad: Operaciones Hexadecimales en Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Operaciones Hexadecimales en Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Suma y Resta Hexadecimal', 0, 'Estudio y práctica de operaciones de suma y resta en el sistema hexadecimal utilizando redstone.', 75),
	((select id from Unidad where nombre = 'Operaciones Hexadecimales en Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Multiplicación y División Hexadecimal', 1, 'Desarrollo de circuitos para realizar operaciones de multiplicación y división en hexadecimal.', 90),
	((select id from Unidad where nombre = 'Operaciones Hexadecimales en Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Aplicaciones Prácticas de Operaciones Hexadecimales', 2, 'Implementación de operaciones hexadecimales en proyectos prácticos.', 75),
	((select id from Unidad where nombre = 'Operaciones Hexadecimales en Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Optimización de Circuitos', 3, 'Técnicas para la optimización de circuitos que realizan operaciones hexadecimales.', 90);

-- Unidad: Circuitos Lógicos Hexadecimales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Circuitos Lógicos Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Puertas Lógicas Hexadecimales', 0, 'Estudio y aplicación de puertas lógicas en el contexto hexadecimal utilizando redstone.', 75),
	((select id from Unidad where nombre = 'Circuitos Lógicos Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Memoria Hexadecimal', 1, 'Diseño y construcción de circuitos de memoria en el sistema hexadecimal.', 90),
	((select id from Unidad where nombre = 'Circuitos Lógicos Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Proyectos Prácticos de Circuitos Lógicos Hexadecimales', 2, 'Implementación de circuitos lógicos hexadecimales en proyectos prácticos.', 75),
	((select id from Unidad where nombre = 'Circuitos Lógicos Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Optimización y Mejora Continua en Circuitos Lógicos', 3, 'Aplicación de principios de mejora continua en circuitos lógicos hexadecimales.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a los Sistemas Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Construcción de Convertidor Hexadecimal', 0, 'Proyecto de construcción de un convertidor entre sistemas binario, decimal y hexadecimal.', 120, 15),
	((select id from Unidad where nombre = 'Operaciones Hexadecimales en Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Circuito de Suma Hexadecimal', 0, 'Construcción y evaluación de un circuito que realiza la suma de números hexadecimales.', 180, 20),
	((select id from Unidad where nombre = 'Circuitos Lógicos Hexadecimales' and idCurso = (select id from Curso where nombre = 'Sistemas Hexadecimáles de Redstone')), 'Diseño de Memoria Hexadecimal', 0, 'Proyecto práctico de diseño y construcción de una memoria en el sistema hexadecimal.', 150, 18);

-- Probabilidad y Estadística
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Probabilidad y Estadística'), 0, 'Conceptos Básicos de Probabilidad'),
	((select id from Curso where nombre = 'Probabilidad y Estadística'), 1, 'Distribuciones de Probabilidad'),
	((select id from Curso where nombre = 'Probabilidad y Estadística'), 2, 'Estadística Descriptiva'),
	((select id from Curso where nombre = 'Probabilidad y Estadística'), 3, 'Inferencia Estadística y Regresión Lineal');

-- Unidad: Conceptos Básicos de Probabilidad
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Conceptos Básicos de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Definición y Fundamentos', 0, 'Introducción a los conceptos básicos de probabilidad y sus fundamentos teóricos.', 75),
	((select id from Unidad where nombre = 'Conceptos Básicos de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Eventos y Espacios Muestrales', 1, 'Estudio de eventos, espacios muestrales y su relación con la probabilidad.', 90),
	((select id from Unidad where nombre = 'Conceptos Básicos de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Probabilidad Condicional y Regla de la Multiplicación', 2, 'Análisis de la probabilidad condicional y aplicación de la regla de la multiplicación en contextos prácticos.', 75),
	((select id from Unidad where nombre = 'Conceptos Básicos de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Probabilidad Total y Teorema de Bayes', 3, 'Estudio de la probabilidad total y aplicación del teorema de Bayes en problemas de probabilidad.', 90);

-- Unidad: Distribuciones de Probabilidad
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Distribuciones de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Distribuciones Discretas', 0, 'Estudio de distribuciones de probabilidad discretas y aplicación en situaciones prácticas.', 75),
	((select id from Unidad where nombre = 'Distribuciones de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Distribuciones Continuas', 1, 'Análisis de distribuciones de probabilidad continuas y su uso en problemas reales.', 90),
	((select id from Unidad where nombre = 'Distribuciones de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Funciones de Probabilidad y Esperanza Matemática', 2, 'Estudio de funciones de probabilidad y cálculo de esperanza matemática en contextos variados.', 75),
	((select id from Unidad where nombre = 'Distribuciones de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Varianza y Desviación Estándar', 3, 'Cálculo de la varianza y desviación estándar en distribuciones de probabilidad.', 90);

-- Unidad: Estadística Descriptiva
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Estadística Descriptiva' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Medidas de Tendencia Central', 0, 'Cálculo y aplicación de medidas de tendencia central en conjuntos de datos.', 75),
	((select id from Unidad where nombre = 'Estadística Descriptiva' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Medidas de Dispersión', 1, 'Estudio y cálculo de medidas de dispersión en distribuciones estadísticas.', 90),
	((select id from Unidad where nombre = 'Estadística Descriptiva' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Representación Gráfica de Datos', 2, 'Aplicación de técnicas gráficas para la representación visual de conjuntos de datos.', 75),
	((select id from Unidad where nombre = 'Estadística Descriptiva' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Análisis de Datos Bivariados', 3, 'Estudio de relaciones entre dos variables mediante técnicas estadísticas.', 90);

-- Unidad: Inferencia Estadística y Regresión Lineal
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Inferencia Estadística y Regresión Lineal' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Conceptos Básicos de Inferencia Estadística', 0, 'Introducción a los conceptos básicos de inferencia estadística y sus aplicaciones.', 75),
	((select id from Unidad where nombre = 'Inferencia Estadística y Regresión Lineal' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Intervalos de Confianza y Pruebas de Hipótesis', 1, 'Cálculo de intervalos de confianza y realización de pruebas de hipótesis en contextos prácticos.', 90),
	((select id from Unidad where nombre = 'Inferencia Estadística y Regresión Lineal' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Regresión Lineal Simple', 2, 'Estudio y aplicación de la regresión lineal simple en análisis estadísticos.', 75),
	((select id from Unidad where nombre = 'Inferencia Estadística y Regresión Lineal' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Aplicaciones Prácticas de la Inferencia Estadística', 3, 'Desarrollo de proyectos prácticos que involucran conceptos de inferencia estadística.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Conceptos Básicos de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Simulación de Experimentos Aleatorios', 0, 'Realización de simulaciones de experimentos aleatorios para entender conceptos fundamentales de probabilidad.', 120, 15),
	((select id from Unidad where nombre = 'Distribuciones de Probabilidad' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Análisis de Distribuciones en Minecraft', 0, 'Aplicación de conceptos de distribuciones de probabilidad a situaciones específicas en el mundo de Minecraft.', 180, 20),
	((select id from Unidad where nombre = 'Estadística Descriptiva' and idCurso = (select id from Curso where nombre = 'Probabilidad y Estadística')), 'Elaboración de Gráficos en Minecraft', 0, 'Construcción de representaciones gráficas de conjuntos de datos en Minecraft.', 150, 18);

-- Cursos Nivel 5 ---------------------------------------------------------------

-- Arquitectura Cúbica
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Arquitectura Cúbica'), 0, 'Fundamentos de Arquitectura en el Mundo Cúbico'),
	((select id from Curso where nombre = 'Arquitectura Cúbica'), 1, 'Diseño y Construcción de Estructuras'),
	((select id from Curso where nombre = 'Arquitectura Cúbica'), 2, 'Sistemas de Iluminación y Decoración');

-- Unidad: Fundamentos de Arquitectura en el Mundo Cúbico
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Fundamentos de Arquitectura en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Principios Básicos de Construcción', 0, 'Introducción a los principios fundamentales de construcción en el mundo cúbico.', 75),
	((select id from Unidad where nombre = 'Fundamentos de Arquitectura en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Uso Eficiente de Materiales', 1, 'Estudio de técnicas para el uso eficiente de materiales en construcciones cúbicas.', 90),
	((select id from Unidad where nombre = 'Fundamentos de Arquitectura en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Estilo y Diseño en el Mundo Cúbico', 2, 'Exploración de estilos arquitectónicos y diseño en el contexto del mundo cúbico.', 75),
	((select id from Unidad where nombre = 'Fundamentos de Arquitectura en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Construcción Sostenible en Minecraft', 3, 'Aplicación de principios de construcción sostenible en proyectos de Minecraft.', 90);

-- Unidad: Diseño y Construcción de Estructuras
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño y Construcción de Estructuras' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Diseño de Edificaciones', 0, 'Desarrollo de habilidades para el diseño de edificaciones en el mundo cúbico.', 75),
	((select id from Unidad where nombre = 'Diseño y Construcción de Estructuras' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Técnicas de Construcción Avanzada', 1, 'Estudio de técnicas avanzadas para la construcción de estructuras sólidas y estéticas.', 90),
	((select id from Unidad where nombre = 'Diseño y Construcción de Estructuras' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Estructuras Redstone', 2, 'Aplicación de sistemas redstone en la creación de estructuras y mecanismos.', 75),
	((select id from Unidad where nombre = 'Diseño y Construcción de Estructuras' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Proyectos Prácticos de Construcción', 3, 'Desarrollo de proyectos prácticos que involucren diseño y construcción de estructuras en Minecraft.', 90);

-- Unidad: Sistemas de Iluminación y Decoración
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Sistemas de Iluminación y Decoración' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Iluminación Ambiental', 0, 'Estudio de técnicas para la creación de iluminación ambiental en construcciones cúbicas.', 75),
	((select id from Unidad where nombre = 'Sistemas de Iluminación y Decoración' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Decoración Interior y Exterior', 1, 'Aplicación de principios de decoración en el diseño interior y exterior de estructuras.', 90),
	((select id from Unidad where nombre = 'Sistemas de Iluminación y Decoración' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Utilización de Arte en Minecraft', 2, 'Exploración de técnicas para la creación y utilización de arte en proyectos de Minecraft.', 75),
	((select id from Unidad where nombre = 'Sistemas de Iluminación y Decoración' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Proyectos de Iluminación y Decoración', 3, 'Desarrollo de proyectos prácticos enfocados en la iluminación y decoración de construcciones en Minecraft.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Fundamentos de Arquitectura en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Construcción de Casa Básica', 0, 'Proyecto de construcción de una casa básica aplicando los principios aprendidos.', 120, 15),
	((select id from Unidad where nombre = 'Diseño y Construcción de Estructuras' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Construcción de Puente Avanzado', 0, 'Desarrollo de un puente avanzado aplicando técnicas avanzadas de construcción.', 180, 20),
	((select id from Unidad where nombre = 'Sistemas de Iluminación y Decoración' and idCurso = (select id from Curso where nombre = 'Arquitectura Cúbica')), 'Diseño de Interior con Iluminación Creativa', 0, 'Proyecto de diseño interior con énfasis en técnicas de iluminación creativa.', 150, 18);

-- Topografía
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Topografía'), 0, 'Introducción a la Topografía'),
	((select id from Curso where nombre = 'Topografía'), 1, 'Instrumentos Topográficos y Mediciones'),
	((select id from Curso where nombre = 'Topografía'), 2, 'Topografía Aplicada en Minecraft');

-- Unidad: Introducción a la Topografía
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Introducción a la Topografía' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Definición y Principios Básicos', 0, 'Conceptos fundamentales de la topografía y principios básicos de medición topográfica.', 75),
	((select id from Unidad where nombre = 'Introducción a la Topografía' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Tipos de Terreno y Cartografía', 1, 'Estudio de los tipos de terreno y su representación cartográfica en topografía.', 90),
	((select id from Unidad where nombre = 'Introducción a la Topografía' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Técnicas de Levantamiento Topográfico', 2, 'Aplicación de técnicas para realizar levantamientos topográficos básicos.', 75),
	((select id from Unidad where nombre = 'Introducción a la Topografía' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Sistemas de Coordenadas en Topografía', 3, 'Uso de sistemas de coordenadas en la representación de puntos en topografía.', 90);

-- Unidad: Instrumentos Topográficos y Mediciones
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Instrumentos Topográficos y Mediciones' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Nivel y Teodolito', 0, 'Estudio de los instrumentos topográficos nivel y teodolito, y su uso en mediciones topográficas.', 75),
	((select id from Unidad where nombre = 'Instrumentos Topográficos y Mediciones' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Estación Total', 1, 'Conocimiento y aplicación de la estación total en levantamientos topográficos.', 90),
	((select id from Unidad where nombre = 'Instrumentos Topográficos y Mediciones' and idCurso = (select id from Curso where nombre = 'Topografía')), 'GPS en Topografía', 2, 'Utilización del sistema de posicionamiento global (GPS) en trabajos topográficos.', 75),
	((select id from Unidad where nombre = 'Instrumentos Topográficos y Mediciones' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Errores y Precisión en Topografía', 3, 'Estudio de los errores y la precisión en las mediciones topográficas.', 90);

-- Unidad: Topografía Aplicada en Minecraft
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Topografía Aplicada en Minecraft' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Adaptación de Conceptos a Minecraft', 0, 'Aplicación de los conceptos topográficos al entorno de Minecraft.', 75),
	((select id from Unidad where nombre = 'Topografía Aplicada en Minecraft' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Levantamiento Topográfico en Minecraft', 1, 'Realización de levantamientos topográficos en el mundo de Minecraft.', 90),
	((select id from Unidad where nombre = 'Topografía Aplicada en Minecraft' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Proyectos Topográficos en Minecraft', 2, 'Desarrollo de proyectos prácticos que involucren el uso de topografía en Minecraft.', 75),
	((select id from Unidad where nombre = 'Topografía Aplicada en Minecraft' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Presentación de Resultados en Minecraft', 3, 'Elaboración y presentación de resultados topográficos en el entorno de Minecraft.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Introducción a la Topografía' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Levantamiento de Terreno Básico', 0, 'Proyecto de levantamiento básico de terreno aplicando los conceptos aprendidos.', 120, 15),
	((select id from Unidad where nombre = 'Instrumentos Topográficos y Mediciones' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Uso de GPS en Proyecto Topográfico', 0, 'Aplicación del GPS en un proyecto topográfico específico.', 180, 20),
	((select id from Unidad where nombre = 'Topografía Aplicada en Minecraft' and idCurso = (select id from Curso where nombre = 'Topografía')), 'Levantamiento Topográfico en Minecraft', 0, 'Proyecto de levantamiento topográfico en el mundo de Minecraft.', 150, 18);

-- Sistemas Computacionales de Redstone
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Sistemas Computacionales de Redstone'), 0, 'Arquitectura de Computadoras'),
	((select id from Curso where nombre = 'Sistemas Computacionales de Redstone'), 1, 'Memorias'),
	((select id from Curso where nombre = 'Sistemas Computacionales de Redstone'), 2, 'Unidad Aritmético-Lógica con Redstone');

-- Unidad: Arquitectura de Computadoras en Nuestro Mundo
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Arquitectura de Computadoras' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Principios Básicos de la Arquitectura de Computadoras', 0, 'Introducción a los principios fundamentales de la arquitectura de computadoras en nuestro mundo de bloques.', 75),
	((select id from Unidad where nombre = 'Arquitectura de Computadoras' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Organización del Computador en Bloques', 1, 'Estudio de la organización básica de un computador en nuestro mundo de bloques.', 90),
	((select id from Unidad where nombre = 'Arquitectura de Computadoras' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Arquitecturas de Conjunto de Instrucciones (ISA) en Bloques', 2, 'Exploración de diferentes arquitecturas de conjunto de instrucciones en nuestro mundo de bloques.', 75),
	((select id from Unidad where nombre = 'Arquitectura de Computadoras' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Proyectos Prácticos en Arquitectura de Computadoras', 3, 'Desarrollo de proyectos prácticos que apliquen los principios de arquitectura de computadoras en nuestro mundo de bloques.', 90);

-- Unidad: Memorias en el Mundo de Bloques
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Memorias' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Tipos de Memorias en el Mundo de Bloques', 0, 'Estudio de los diferentes tipos de memorias y su aplicación en la construcción de computadoras en nuestro mundo de bloques.', 75),
	((select id from Unidad where nombre = 'Memorias' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Diseño y Construcción de Memorias en Bloques', 1, 'Diseño y construcción de memorias utilizando componentes en nuestro mundo de bloques.', 90),
	((select id from Unidad where nombre = 'Memorias' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Proyectos Prácticos con Memorias', 2, 'Desarrollo de proyectos prácticos que involucren la aplicación de memorias en nuestro mundo de bloques.', 90);

-- Unidad: Unidad Aritmético-Lógica con Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Unidad Aritmético-Lógica con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Diseño y Construcción de una ALU con Redstone', 0, 'Diseño y construcción de una Unidad Aritmético-Lógica utilizando componentes Redstone.', 90),
	((select id from Unidad where nombre = 'Unidad Aritmético-Lógica con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Operaciones Aritméticas con Redstone', 1, 'Realización de operaciones aritméticas básicas utilizando componentes Redstone.', 75),
	((select id from Unidad where nombre = 'Unidad Aritmético-Lógica con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Proyectos Prácticos con ALU', 2, 'Desarrollo de proyectos prácticos que involucren la aplicación de una Unidad Aritmético-Lógica en nuestro mundo de bloques.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Arquitectura de Computadoras' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Diseño de Sistema de Control Central', 0, 'Desarrollo de un sistema de control central basado en principios de arquitectura de computadoras.', 180, 20),
	((select id from Unidad where nombre = 'Memorias' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Construcción de Banco de Memoria', 0, 'Proyecto de construcción de un banco de memoria en nuestro mundo de bloques.', 150, 18),
	((select id from Unidad where nombre = 'Unidad Aritmético-Lógica con Redstone' and idCurso = (select id from Curso where nombre = 'Sistemas Computacionales de Redstone')), 'Construcción de Calculadora Avanzada', 0, 'Proyecto de construcción de una calculadora avanzada utilizando una Unidad Aritmético-Lógica en nuestro mundo de bloques.', 120, 15);

-- Instrumentación con Redstone
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Instrumentación con Redstone'), 0, 'Sensores y Actuadores con Redstone'),
	((select id from Curso where nombre = 'Instrumentación con Redstone'), 1, 'Automatización de Procesos con Redstone'),
	((select id from Curso where nombre = 'Instrumentación con Redstone'), 2, 'Proyectos Prácticos de Instrumentación');

-- Unidad: Sensores y Actuadores con Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Sensores y Actuadores con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Introducción a Sensores y Actuadores', 0, 'Estudio introductorio sobre los principios y tipos de sensores y actuadores en nuestro mundo de bloques.', 90),
	((select id from Unidad where nombre = 'Sensores y Actuadores con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Sensores Avanzados con Redstone', 1, 'Exploración detallada de sensores avanzados y su aplicación en entornos automatizados con Redstone.', 120),
	((select id from Unidad where nombre = 'Sensores y Actuadores con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Actuadores Especializados con Redstone', 2, 'Estudio de actuadores especializados y su integración en sistemas de automatización utilizando Redstone.', 90);

-- Unidad: Automatización de Procesos con Redstone
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Automatización de Procesos con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Diseño de Sistemas de Automatización', 0, 'Desarrollo de habilidades para el diseño de sistemas de automatización utilizando Redstone en nuestro mundo de bloques.', 90),
	((select id from Unidad where nombre = 'Automatización de Procesos con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Programación Avanzada con Redstone', 1, 'Estudio avanzado de la programación de sistemas automatizados utilizando Redstone.', 120),
	((select id from Unidad where nombre = 'Automatización de Procesos con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Integración de Sensores y Actuadores', 2, 'Aplicación práctica de la integración de sensores y actuadores en sistemas automatizados.', 90);

-- Unidad: Proyectos Prácticos de Instrumentación
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Proyectos Prácticos de Instrumentación' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Desarrollo de Proyectos en Instrumentación', 0, 'Desarrollo y ejecución de proyectos prácticos que involucren la instrumentación y automatización con Redstone en nuestro mundo de bloques.', 120),
	((select id from Unidad where nombre = 'Proyectos Prácticos de Instrumentación' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Presentación y Evaluación de Proyectos', 1, 'Preparación y presentación de proyectos desarrollados durante el curso, seguido de evaluación y retroalimentación.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Sensores y Actuadores con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Construcción de Sistema de Control Automático', 0, 'Proyecto de construcción de un sistema de control automático utilizando sensores y actuadores con Redstone.', 120, 15),
	((select id from Unidad where nombre = 'Automatización de Procesos con Redstone' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Programación Avanzada en Redstone', 0, 'Desarrollo de scripts avanzados para la programación de sistemas automatizados en nuestro mundo de bloques.', 150, 18),
	((select id from Unidad where nombre = 'Proyectos Prácticos de Instrumentación' and idCurso = (select id from Curso where nombre = 'Instrumentación con Redstone')), 'Ejecución y Presentación de Proyecto', 0, 'Ejecución y presentación del proyecto final desarrollado durante el curso.', 120, 17);

-- Sistemas de Transporte
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Sistemas de Transporte'), 0, 'Tipos de Sistemas de Transporte en el Mundo Cúbico'),
	((select id from Curso where nombre = 'Sistemas de Transporte'), 1, 'Diseño y Construcción de Sistemas de Transporte'),
	((select id from Curso where nombre = 'Sistemas de Transporte'), 2, 'Automatización de Sistemas de Transporte');

-- Unidad: Tipos de Sistemas de Transporte en el Mundo Cúbico
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Tipos de Sistemas de Transporte en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Sistemas de Transporte Terrestre en el Mundo Cúbico', 0, 'Estudio de los sistemas de transporte terrestre en el mundo cúbico, incluyendo rieles y su aplicación en nuestro entorno.', 90),
	((select id from Unidad where nombre = 'Tipos de Sistemas de Transporte en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Sistemas de Transporte Acuático en el Mundo Cúbico', 1, 'Exploración de los sistemas de transporte acuático en el mundo cúbico, como barcos y su integración en redes de transporte.', 120),
	((select id from Unidad where nombre = 'Tipos de Sistemas de Transporte en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Sistemas de Transporte Especiales en el Mundo Cúbico', 2, 'Estudio de sistemas de transporte especiales en el mundo cúbico, como las perlas de Ender y su aplicación en entornos complejos.', 90);

-- Unidad: Diseño y Construcción de Sistemas de Transporte
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño y Construcción de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Planificación y Diseño de Rutas de Transporte', 0, 'Desarrollo de habilidades para la planificación y diseño eficiente de rutas de transporte en nuestro mundo cúbico.', 90),
	((select id from Unidad where nombre = 'Diseño y Construcción de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Construcción de Sistemas de Transporte Terrestre', 1, 'Proyecto de construcción de sistemas de transporte terrestre, incluyendo vías y estaciones.', 120),
	((select id from Unidad where nombre = 'Diseño y Construcción de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Desarrollo de Puertos y Terminales Acuáticos', 2, 'Estudio y construcción de puertos y terminales acuáticos para sistemas de transporte en nuestro mundo cúbico.', 90);

-- Unidad: Automatización de Sistemas de Transporte
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Automatización de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Sistemas de Control de Tráfico', 0, 'Desarrollo de habilidades para la automatización y control del tráfico en sistemas de transporte terrestre.', 90),
	((select id from Unidad where nombre = 'Automatización de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Automatización de Redes de Transporte Acuático', 1, 'Estudio y aplicación de la automatización en redes de transporte acuático en nuestro mundo cúbico.', 120),
	((select id from Unidad where nombre = 'Automatización de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Proyectos Prácticos de Automatización', 2, 'Desarrollo de proyectos prácticos que involucren la automatización de sistemas de transporte en entornos complejos.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Tipos de Sistemas de Transporte en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Presentación de Tipos de Sistemas de Transporte', 0, 'Presentación sobre los diferentes tipos de sistemas de transporte en el mundo cúbico.', 120, 15),
	((select id from Unidad where nombre = 'Diseño y Construcción de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Construcción de Red de Transporte Terrestre', 0, 'Proyecto de construcción de una red de transporte terrestre, incluyendo vías y estaciones.', 150, 18),
	((select id from Unidad where nombre = 'Automatización de Sistemas de Transporte' and idCurso = (select id from Curso where nombre = 'Sistemas de Transporte')), 'Desarrollo de Sistema de Control de Tráfico', 0, 'Proyecto de desarrollo de un sistema de control de tráfico para sistemas de transporte terrestre.', 120, 15);

-- Cursos Nivel 6 ------------------------------------------------------------------------------------------------

-- Curso: Sistemas Operativos de Redstone
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Sistemas Operativos de Redstone'), 0, 'Principios de Sistemas Operativos en el Mundo Cúbico'),
	((select id from Curso where nombre = 'Sistemas Operativos de Redstone'), 1, 'Desarrollo de Sistemas de Gestión de Recursos'),
	((select id from Curso where nombre = 'Sistemas Operativos de Redstone'), 2, 'Implementación de Redstone en Sistemas Operativos');

-- Unidad: Principios de Sistemas Operativos en el Mundo Cúbico
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Principios de Sistemas Operativos en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Estructuras Básicas de un Sistema Operativo en el Mundo Cúbico', 0, 'Estudio de las estructuras básicas de un sistema operativo en el mundo cúbico, incluyendo procesos y memoria.', 90),
	((select id from Unidad where nombre = 'Principios de Sistemas Operativos en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Gestión de Procesos en Entornos Redstone', 1, 'Desarrollo de habilidades para la gestión eficiente de procesos en entornos redstone.', 120),
	((select id from Unidad where nombre = 'Principios de Sistemas Operativos en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Sincronización y Comunicación en Sistemas Operativos de Redstone', 2, 'Estudio de técnicas de sincronización y comunicación en sistemas operativos de redstone.', 90);

-- Unidad: Desarrollo de Sistemas de Gestión de Recursos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Desarrollo de Sistemas de Gestión de Recursos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Gestión de Memoria en Sistemas Redstone', 0, 'Desarrollo de habilidades para la gestión eficiente de memoria en sistemas redstone.', 90),
	((select id from Unidad where nombre = 'Desarrollo de Sistemas de Gestión de Recursos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Manejo de Recursos en Entornos Redstone', 1, 'Estudio de técnicas para el manejo eficiente de recursos en entornos redstone.', 120),
	((select id from Unidad where nombre = 'Desarrollo de Sistemas de Gestión de Recursos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Optimización de Rendimiento en Sistemas Redstone', 2, 'Desarrollo de habilidades para la optimización de rendimiento en sistemas redstone.', 90);

-- Unidad: Implementación de Redstone en Sistemas Operativos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Implementación de Redstone en Sistemas Operativos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Integración de Componentes Redstone en Sistemas Operativos', 0, 'Estudio de la integración de componentes redstone en sistemas operativos y su aplicación en entornos redstone.', 90),
	((select id from Unidad where nombre = 'Implementación de Redstone en Sistemas Operativos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Desarrollo de Interfaces Redstone para Sistemas Operativos', 1, 'Desarrollo de habilidades para la creación de interfaces redstone en sistemas operativos.', 120),
	((select id from Unidad where nombre = 'Implementación de Redstone en Sistemas Operativos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Proyectos Prácticos de Implementación Redstone', 2, 'Desarrollo de proyectos prácticos que involucren la implementación de redstone en sistemas operativos.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Principios de Sistemas Operativos en el Mundo Cúbico' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Examen de Principios de Sistemas Operativos en el Mundo Cúbico', 0, 'Examen teórico sobre los principios fundamentales de sistemas operativos en el mundo cúbico.', 120, 20),
	((select id from Unidad where nombre = 'Desarrollo de Sistemas de Gestión de Recursos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Proyecto de Gestión de Recursos en Entornos Redstone', 0, 'Desarrollo de un proyecto práctico sobre la gestión de recursos en entornos redstone.', 150, 25),
	((select id from Unidad where nombre = 'Implementación de Redstone en Sistemas Operativos' and idCurso = (select id from Curso where nombre = 'Sistemas Operativos de Redstone')), 'Implementación de Interfaces Redstone en Sistemas Operativos', 0, 'Proyecto práctico de implementación de interfaces redstone en sistemas operativos.', 120, 20);

-- Curso: Automatización Avanzada
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Automatización Avanzada'), 0, 'Diseño de Sistemas Avanzados de Automatización'),
	((select id from Curso where nombre = 'Automatización Avanzada'), 1, 'Optimización y Expansión de Sistemas Automatizados'),
	((select id from Curso where nombre = 'Automatización Avanzada'), 2, 'Proyectos Prácticos de Automatización Avanzada');

-- Unidad: Diseño de Sistemas Avanzados de Automatización
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Diseño de Sistemas Avanzados de Automatización' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Diseño Avanzado de Redstone', 0, 'Estudio de técnicas avanzadas de diseño redstone para la creación de sistemas automatizados complejos.', 90),
	((select id from Unidad where nombre = 'Diseño de Sistemas Avanzados de Automatización' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Integración de Máquinas Especializadas', 1, 'Desarrollo de habilidades para la integración de maquinaria especializada en sistemas de automatización avanzada.', 120),
	((select id from Unidad where nombre = 'Diseño de Sistemas Avanzados de Automatización' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Técnicas Avanzadas de Control', 2, 'Estudio de técnicas avanzadas de control en sistemas de automatización, incluyendo sensores y actuadores redstone.', 90);

-- Unidad: Optimización y Expansión de Sistemas Automatizados
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Optimización y Expansión de Sistemas Automatizados' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Optimización de Rendimiento en Sistemas Avanzados', 0, 'Desarrollo de habilidades para la optimización de rendimiento en sistemas avanzados de automatización.', 90),
	((select id from Unidad where nombre = 'Optimización y Expansión de Sistemas Automatizados' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Expansión de Redes de Automatización', 1, 'Proyecto de expansión de redes de automatización avanzada, incluyendo la integración de nuevos sistemas y maquinaria.', 120),
	((select id from Unidad where nombre = 'Optimización y Expansión de Sistemas Automatizados' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Seguridad en Sistemas Automatizados', 2, 'Estudio de técnicas de seguridad aplicadas a sistemas automatizados avanzados en nuestro mundo cúbico.', 90);

-- Unidad: Proyectos Prácticos de Automatización Avanzada
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Proyectos Prácticos de Automatización Avanzada' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Diseño e Implementación de Granjas Automáticas', 0, 'Desarrollo de un proyecto práctico que involucre el diseño e implementación de granjas automáticas para la extracción de recursos.', 90),
	((select id from Unidad where nombre = 'Proyectos Prácticos de Automatización Avanzada' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Sistema Avanzado de Explotación Minera', 1, 'Proyecto de desarrollo e implementación de un sistema avanzado de explotación minera utilizando tecnologías redstone.', 120),
	((select id from Unidad where nombre = 'Proyectos Prácticos de Automatización Avanzada' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Diseño de Fábricas Automáticas', 2, 'Desarrollo de un proyecto práctico que involucre el diseño de fábricas automáticas para la producción masiva de materiales.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Diseño de Sistemas Avanzados de Automatización' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Proyecto de Diseño Avanzado de Redstone', 0, 'Desarrollo de un proyecto práctico que involucre el diseño avanzado de redstone para sistemas automatizados complejos.', 120, 20),
	((select id from Unidad where nombre = 'Optimización y Expansión de Sistemas Automatizados' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Proyecto de Optimización de Rendimiento en Sistemas Avanzados', 0, 'Desarrollo de un proyecto práctico de optimización de rendimiento en sistemas avanzados de automatización.', 150, 25),
	((select id from Unidad where nombre = 'Proyectos Prácticos de Automatización Avanzada' and idCurso = (select id from Curso where nombre = 'Automatización Avanzada')), 'Presentación de Proyectos Prácticos de Automatización Avanzada', 0, 'Presentación de proyectos prácticos desarrollados durante la unidad.', 90, 15);

-- Curso: Urbanización
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Urbanización'), 0, 'Planificación Urbana y Territorial'),
	((select id from Curso where nombre = 'Urbanización'), 1, 'Infraestructuras y Servicios en Entornos Urbanos'),
	((select id from Curso where nombre = 'Urbanización'), 2, 'Desarrollo Sostenible en la Construcción Urbana');

-- Unidad: Planificación Urbana y Territorial
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Planificación Urbana y Territorial' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Principios de Planificación Urbana', 0, 'Estudio de los principios fundamentales de la planificación urbana en nuestro universo cúbico.', 90),
	((select id from Unidad where nombre = 'Planificación Urbana y Territorial' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Diseño de Ciudades en el Mundo Cúbico', 1, 'Desarrollo de habilidades para el diseño de ciudades en nuestro mundo cúbico, incluyendo la distribución de edificaciones y áreas verdes.', 120),
	((select id from Unidad where nombre = 'Planificación Urbana y Territorial' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Zonificación y Ordenamiento Territorial', 2, 'Estudio de técnicas de zonificación y ordenamiento territorial aplicadas a la planificación urbana.', 90);

-- Unidad: Infraestructuras y Servicios en Entornos Urbanos
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Infraestructuras y Servicios en Entornos Urbanos' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Planificación de Infraestructuras Urbanas', 0, 'Estudio de la planificación de infraestructuras urbanas, incluyendo carreteras, transporte público y servicios básicos.', 90),
	((select id from Unidad where nombre = 'Infraestructuras y Servicios en Entornos Urbanos' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Gestión de Servicios en Ciudades', 1, 'Desarrollo de habilidades para la gestión eficiente de servicios en entornos urbanos, incluyendo agua, electricidad y gestión de residuos.', 120),
	((select id from Unidad where nombre = 'Infraestructuras y Servicios en Entornos Urbanos' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Sostenibilidad en Infraestructuras Urbanas', 2, 'Estudio de técnicas para la implementación de infraestructuras urbanas sostenibles en nuestro mundo cúbico.', 90);

-- Unidad: Desarrollo Sostenible en la Construcción Urbana
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Desarrollo Sostenible en la Construcción Urbana' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Principios de Desarrollo Sostenible en Construcción', 0, 'Estudio de los principios fundamentales del desarrollo sostenible aplicados a la construcción urbana en nuestro universo cúbico.', 90),
	((select id from Unidad where nombre = 'Desarrollo Sostenible en la Construcción Urbana' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Eficiencia Energética en Ciudades', 1, 'Desarrollo de habilidades para la implementación de medidas de eficiencia energética en entornos urbanos.', 120),
	((select id from Unidad where nombre = 'Desarrollo Sostenible en la Construcción Urbana' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Proyectos Prácticos de Desarrollo Sostenible Urbano', 2, 'Desarrollo de proyectos prácticos que apliquen los principios de desarrollo sostenible en la construcción urbana.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Planificación Urbana y Territorial' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Proyecto de Diseño Urbano', 0, 'Desarrollo de un proyecto práctico que involucre el diseño urbano basado en los principios de planificación urbana y territorial.', 120, 20),
	((select id from Unidad where nombre = 'Infraestructuras y Servicios en Entornos Urbanos' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Gestión de Servicios en Ciudades', 0, 'Proyecto práctico de gestión de servicios en entornos urbanos, incluyendo la planificación y gestión de servicios básicos.', 150, 25),
	((select id from Unidad where nombre = 'Desarrollo Sostenible en la Construcción Urbana' and idCurso = (select id from Curso where nombre = 'Urbanización')), 'Presentación de Proyectos de Desarrollo Sostenible Urbano', 0, 'Presentación de proyectos prácticos desarrollados durante la unidad.', 90, 15);

-- Curso: Viajes Interdimensionales
-- Unidades
insert into Unidad (idCurso, orden, nombre) values
	((select id from Curso where nombre = 'Viajes Interdimensionales'), 0, 'Principios de Viajes Interdimensionales'),
	((select id from Curso where nombre = 'Viajes Interdimensionales'), 1, 'Construcción de Portales Dimensionales'),
	((select id from Curso where nombre = 'Viajes Interdimensionales'), 2, 'Exploración de Otras Dimensiones');

-- Unidad: Principios de Viajes Interdimensionales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Principios de Viajes Interdimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Teoría de Dimensiones', 0, 'Estudio de la teoría detrás de las dimensiones en nuestro mundo cúbico y su interconexión.', 90),
	((select id from Unidad where nombre = 'Principios de Viajes Interdimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Energía para Portales', 1, 'Exploración de las fuentes de energía necesarias para activar y mantener portales interdimensionales.', 120),
	((select id from Unidad where nombre = 'Principios de Viajes Interdimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Efectos de los Viajes Interdimensionales', 2, 'Estudio de los posibles efectos y consecuencias de los viajes interdimensionales en nuestro mundo cúbico.', 90);

-- Unidad: Construcción de Portales Dimensionales
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Construcción de Portales Dimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Diseño y Construcción de Portales', 0, 'Desarrollo de habilidades para el diseño y construcción de portales dimensionales en nuestro mundo cúbico.', 90),
	((select id from Unidad where nombre = 'Construcción de Portales Dimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Materiales Esenciales para Portales', 1, 'Estudio de los materiales esenciales necesarios para la construcción de portales interdimensionales.', 120),
	((select id from Unidad where nombre = 'Construcción de Portales Dimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Técnicas de Activación y Desactivación', 2, 'Exploración de las técnicas para activar y desactivar portales dimensionales de manera segura y controlada.', 90);

-- Unidad: Exploración de Otras Dimensiones
insert into Tema (idUnidad, nombre, orden, descripcion, duracion) values
	((select id from Unidad where nombre = 'Exploración de Otras Dimensiones' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Dimensiones Alternativas en nuestro Mundo', 0, 'Estudio de las dimensiones alternativas existentes en nuestro mundo cúbico y sus características únicas.', 90),
	((select id from Unidad where nombre = 'Exploración de Otras Dimensiones' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Riesgos y Beneficios de la Exploración', 1, 'Análisis de los riesgos y beneficios asociados con la exploración de otras dimensiones en nuestro mundo cúbico.', 120),
	((select id from Unidad where nombre = 'Exploración de Otras Dimensiones' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Prácticas de Exploración Responsable', 2, 'Desarrollo de prácticas responsables y éticas en la exploración de otras dimensiones.', 90);

-- Actividades
insert into Actividad (idUnidad, nombre, orden, descripcion, duracion, valor) values
	((select id from Unidad where nombre = 'Principios de Viajes Interdimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Investigación y Presentación sobre Dimensiones', 0, 'Investigación y presentación sobre las dimensiones en nuestro mundo cúbico.', 120, 20),
	((select id from Unidad where nombre = 'Construcción de Portales Dimensionales' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Proyecto de Construcción de Portal', 0, 'Desarrollo de un proyecto práctico que involucre la construcción de un portal interdimensional.', 150, 25),
	((select id from Unidad where nombre = 'Exploración de Otras Dimensiones' and idCurso = (select id from Curso where nombre = 'Viajes interdimensionales')), 'Informe Ético de Exploración', 0, 'Desarrollo de un informe ético sobre la exploración de otras dimensiones en nuestro mundo cúbico.', 90, 15);

-- Asignacion de Grupos ---------------------------------------------------------------------------------------

insert into Grupo (idProfesor, idCurso) values (1, (select id from Curso where nombre = 'Crafteo Básico'));
insert into Grupo (idProfesor, idCurso) values (2, (select id from Curso where nombre = 'Matemáticas Discretas'));
insert into Grupo (idProfesor, idCurso) values (3, (select id from Curso where nombre = 'Algoritmia'));
insert into Grupo (idProfesor, idCurso) values (4, (select id from Curso where nombre = 'Física de Bloques'));
insert into Grupo (idProfesor, idCurso) values (5, (select id from Curso where nombre = 'Agricultura'));
insert into Grupo (idProfesor, idCurso) values (6, (select id from Curso where nombre = 'Minería Básica'));
insert into Grupo (idProfesor, idCurso) values (7, (select id from Curso where nombre = 'Armamento'));
insert into Grupo (idProfesor, idCurso) values (8, (select id from Curso where nombre = 'Biología'));
insert into Grupo (idProfesor, idCurso) values (9, (select id from Curso where nombre = 'Química'));
insert into Grupo (idProfesor, idCurso) values (10, (select id from Curso where nombre = 'Bloques de Construcción'));
insert into Grupo (idProfesor, idCurso) values (11, (select id from Curso where nombre = 'Biomas'));
insert into Grupo (idProfesor, idCurso) values (12, (select id from Curso where nombre = 'Análisis de Circuitos de Redstone'));
insert into Grupo (idProfesor, idCurso) values (13, (select id from Curso where nombre = 'Gastronomía'));
insert into Grupo (idProfesor, idCurso) values (14, (select id from Curso where nombre = 'Alquimia'));
insert into Grupo (idProfesor, idCurso) values (15, (select id from Curso where nombre = 'Dinámica de Fluidos'));
insert into Grupo (idProfesor, idCurso) values (16, (select id from Curso where nombre = 'Sistemas Binarios de Redstone'));
insert into Grupo (idProfesor, idCurso) values (17, (select id from Curso where nombre = 'Zoología y Domesticación'));
insert into Grupo (idProfesor, idCurso) values (18, (select id from Curso where nombre = 'Cálculo y Análisis Cúbico'));
insert into Grupo (idProfesor, idCurso) values (19, (select id from Curso where nombre = 'Encantamientos'));
insert into Grupo (idProfesor, idCurso) values (20, (select id from Curso where nombre = 'Principios de Automatización'));
insert into Grupo (idProfesor, idCurso) values (1, (select id from Curso where nombre = 'Sistemas Hexadecimales de Redstone'));
insert into Grupo (idProfesor, idCurso) values (2, (select id from Curso where nombre = 'Probabilidad y Estadística'));
insert into Grupo (idProfesor, idCurso) values (3, (select id from Curso where nombre = 'Arquitectura Cúbica'));
insert into Grupo (idProfesor, idCurso) values (4, (select id from Curso where nombre = 'Topografía'));
insert into Grupo (idProfesor, idCurso) values (5, (select id from Curso where nombre = 'Sistemas Computacionales de Redstone'));
insert into Grupo (idProfesor, idCurso) values (6, (select id from Curso where nombre = 'Instrumentación con Redstone'));
insert into Grupo (idProfesor, idCurso) values (7, (select id from Curso where nombre = 'Sistemas de Transporte'));
insert into Grupo (idProfesor, idCurso) values (8, (select id from Curso where nombre = 'Sistemas Operativos de Redstone'));
insert into Grupo (idProfesor, idCurso) values (9, (select id from Curso where nombre = 'Automatización Avanzada'));
insert into Grupo (idProfesor, idCurso) values (10, (select id from Curso where nombre = 'Urbanización'));
insert into Grupo (idProfesor, idCurso) values (1, (select id from Curso where nombre = 'Viajes Interdimensionales'));

-- Registros del Kardex -----------------------------------------------------------------------------------

-- Nivel 1
insert into Kardex (idAlumno, idCurso, inicio, fin, calificacion) 
select
    a.id as idAlumno,
    c.id as idCurso,
    DATE_ADD(p.registro, INTERVAL 1 DAY) as inicio,
    DATE_ADD(p.registro, INTERVAL 30 DAY) as fin,
    FLOOR(60 + rand() * 40) as calificacion
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Curso c
where
    a.id between 1 and 40
    and c.nivel = 1;

-- Nivel 2
insert into Kardex (idAlumno, idCurso, inicio, fin, calificacion) 
select
    a.id as idAlumno,
    c.id as idCurso,
    DATE_ADD(p.registro, INTERVAL 31 DAY) as inicio,
    DATE_ADD(p.registro, INTERVAL 50 DAY) as fin,
    FLOOR(60 + rand() * 40) as calificacion
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Curso c
where
    a.id between 1 and 30
    and c.nivel = 2;

-- Nivel 3
insert into Kardex (idAlumno, idCurso, inicio, fin, calificacion) 
select
    a.id as idAlumno,
    c.id as idCurso,
    DATE_ADD(p.registro, INTERVAL 52 DAY) as inicio,
    DATE_ADD(p.registro, INTERVAL 80 DAY) as fin,
    FLOOR(60 + rand() * 40) as calificacion
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Curso c
where
    a.id between 1 and 20
    and c.nivel = 3;

-- Nivel 4
insert into Kardex (idAlumno, idCurso, inicio, fin, calificacion) 
select
    a.id as idAlumno,
    c.id as idCurso,
    DATE_ADD(p.registro, INTERVAL 82 DAY) as inicio,
    DATE_ADD(p.registro, INTERVAL 100 DAY) as fin,
    FLOOR(60 + rand() * 40) as calificacion
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Curso c
where
    a.id between 1 and 10
    and c.nivel = 4;

-- Nivel 5
insert into Kardex (idAlumno, idCurso, inicio, fin, calificacion) 
select
    a.id as idAlumno,
    c.id as idCurso,
    DATE_ADD(p.registro, INTERVAL 101 DAY) as inicio,
    DATE_ADD(p.registro, INTERVAL 135 DAY) as fin,
    FLOOR(60 + rand() * 40) as calificacion
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Curso c
where
    a.id between 1 and 5
    and c.nivel = 5;

-- Nivel 6 (Egresados)
insert into Kardex (idAlumno, idCurso, inicio, fin, calificacion) 
select
    a.id as idAlumno,
    c.id as idCurso,
    DATE_ADD(p.registro, INTERVAL 140 DAY) as inicio,
    DATE_ADD(p.registro, INTERVAL 190 DAY) as fin,
    FLOOR(60 + rand() * 40) as calificacion
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Curso c
where
    a.id between 1 and 2
    and c.nivel = 6;
    
-- Inscripciones de Matriculas ----------------------------------------------------

-- Nivel 1 (Nuevo ingreso)
insert into Matricula (idAlumno, idGrupo, inicio) 
select
    a.id as idAlumno,
    g.id as idGrupo,
    DATE_ADD(p.registro, INTERVAL 1 DAY) as inicio
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Grupo g
    inner join Curso c on g.idCurso = c.id
where
    a.id between 41 and 50
    and c.nivel = 1;

-- Nivel 2
insert into Matricula (idAlumno, idGrupo, inicio) 
select
    a.id as idAlumno,
    g.id as idGrupo,
    DATE_ADD(p.registro, INTERVAL 31 DAY) as inicio
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Grupo g
    inner join Curso c on g.idCurso = c.id
where
    a.id between 31 and 40
    and c.nivel = 2;
    
-- Nivel 3
insert into Matricula (idAlumno, idGrupo, inicio) 
select
    a.id as idAlumno,
    g.id as idGrupo,
    DATE_ADD(p.registro, INTERVAL 52 DAY) as inicio
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Grupo g
    inner join Curso c on g.idCurso = c.id
where
    a.id between 21 and 30
    and c.nivel = 3;
    
-- Nivel 4
insert into Matricula (idAlumno, idGrupo, inicio) 
select
    a.id as idAlumno,
    g.id as idGrupo,
    DATE_ADD(p.registro, INTERVAL 82 DAY) as inicio
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Grupo g
    inner join Curso c on g.idCurso = c.id
where
    a.id between 11 and 20
    and c.nivel = 4;

-- Nivel 5
insert into Matricula (idAlumno, idGrupo, inicio) 
select
    a.id as idAlumno,
    g.id as idGrupo,
    DATE_ADD(p.registro, INTERVAL 101 DAY) as inicio
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Grupo g
    inner join Curso c on g.idCurso = c.id
where
    a.id between 6 and 10
    and c.nivel = 5;

-- Nivel 6
insert into Matricula (idAlumno, idGrupo, inicio) 
select
    a.id as idAlumno,
    g.id as idGrupo,
    DATE_ADD(p.registro, INTERVAL 140 DAY) as inicio
from
    Alumno a
    join Persona p on a.idPersona = p.id
    cross join Grupo g
    inner join Curso c on g.idCurso = c.id
where
    a.id between 3 and 5
    and c.nivel = 6;
    
-- Asignaciones de actvidades ----------------------------------------------------------

-- Nivel 1
-- Asignaciones calificadas
insert into Asignacion (idAlumno, idActividad, entrega, calificacion)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
	DATE_ADD(Matricula.inicio, INTERVAL FLOOR(1 + rand() * 15) DAY) as entrega,
    FLOOR(40 + rand() * 60) as calificacion
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 41 and 50
    and cu.nivel = 1
    and Unidad.orden = 0
group by
	idAlumno, idActividad, entrega;
-- Asignaciones no calificadas
insert into Asignacion (idAlumno, idActividad, entrega)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(15 + rand() * 8) DAY) as entrega
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 41 and 50
    and cu.nivel = 1
    and Unidad.orden = 1
group by
	idAlumno, idActividad, entrega;
    
-- Nivel 2
-- Asignaciones calificadas
insert into Asignacion (idAlumno, idActividad, entrega, calificacion)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(1 + rand() * 10) DAY) as entrega,
    FLOOR(40 + rand() * 60) as calificacion
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 31 and 40
    and cu.nivel = 2
    and Unidad.orden = 0
group by
	idAlumno, idActividad, entrega;
-- Asignaciones no calificadas
insert into Asignacion (idAlumno, idActividad, entrega)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(10 + rand() * 8) DAY) as entrega
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 31 and 40
    and cu.nivel = 2
    and Unidad.orden = 1
group by
	idAlumno, idActividad, entrega;

-- Nivel 3
-- Asignaciones calificadas
insert into Asignacion (idAlumno, idActividad, entrega, calificacion)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(1 + rand() * 15) DAY) as entrega,
    FLOOR(40 + rand() * 60) as calificacion
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 21 and 30
    and cu.nivel = 3
    and Unidad.orden = 0
group by
	idAlumno, idActividad, entrega;
-- Asignaciones no calificadas
insert into Asignacion (idAlumno, idActividad, entrega)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(15 + rand() * 8) DAY) as entrega
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 21 and 30
    and cu.nivel = 3
    and Unidad.orden = 1
group by
	idAlumno, idActividad, entrega;

-- Nivel 4
-- Asignaciones calificadas
insert into Asignacion (idAlumno, idActividad, entrega, calificacion)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(1 + rand() * 10) DAY) as entrega,
    FLOOR(40 + rand() * 60) as calificacion
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 11 and 20
    and cu.nivel = 4
    and Unidad.orden = 0
group by
	idAlumno, idActividad, entrega;
-- Asignaciones no calificadas
insert into Asignacion (idAlumno, idActividad, entrega)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(10 + rand() * 8) DAY) as entrega
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 11 and 20
    and cu.nivel = 4
    and Unidad.orden = 1
group by
	idAlumno, idActividad, entrega;

-- Nivel 5
-- Asignaciones calificadas
insert into Asignacion (idAlumno, idActividad, entrega, calificacion)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(1 + rand() * 15) DAY) as entrega,
    FLOOR(40 + rand() * 60) as calificacion
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 6 and 10
    and cu.nivel = 5
    and Unidad.orden = 0
group by
	idAlumno, idActividad, entrega;
-- Asignaciones no calificadas
insert into Asignacion (idAlumno, idActividad, entrega)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(15 + rand() * 8) DAY) as entrega
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 6 and 10
    and cu.nivel = 5
    and Unidad.orden = 1
group by
	idAlumno, idActividad, entrega;

-- Nivel 6
-- Asignaciones calificadas
insert into Asignacion (idAlumno, idActividad, entrega, calificacion)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(1 + rand() * 15) DAY) as entrega,
    FLOOR(40 + rand() * 60) as calificacion
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 3 and 5
    and cu.nivel = 6
    and Unidad.orden = 0
group by
	idAlumno, idActividad, entrega;
-- Asignaciones no calificadas
insert into Asignacion (idAlumno, idActividad, entrega)
select
	Alumno.id as idAlumno,
	Actividad.id as idActividad,
    DATE_ADD(Matricula.inicio, INTERVAL FLOOR(15 + rand() * 8) DAY) as entrega
from
	Matricula
    inner join Alumno on Matricula.idAlumno = Alumno.id
    inner join Grupo on Matricula.idGrupo = Grupo.id
    inner join Curso cm on Grupo.idCurso = cm.id
    cross join Actividad
    inner join Unidad on Actividad.idUnidad = Unidad.id
    inner join Curso cu on Unidad.idCurso = cu.id and cm.id = cu.id
where
	Alumno.id between 3 and 5
    and cu.nivel = 6
    and Unidad.orden = 1
group by
	idAlumno, idActividad, entrega;