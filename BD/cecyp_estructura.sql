-- drop database if exists cecyp;
create database if not exists cecyp;
use cecyp;

/*
	Persona: Todos los usuarios de la plataforma
    - usuario: Nombre de usuario
    - nombre: Nombre(s) de pila
    - paterno: Apellido paterno
    - materno: Apellido materno
    - correo: E-mail del usuario
    - contra: Contraseña de inicio de sesión
    - nacimiento: Fecha de nacimiento
    - registro: Fecha de registro en la plataforma
    - sexo: 'M' -> Masculino,'F' -> Femenino
    - direccion: Dirección completa del domicilio
*/
-- drop table if exists Persona;
create table if not exists Persona (
	id int unsigned primary key not null auto_increment,
    usuario varchar(32) not null unique,
    nombre varchar(32) not null,
    paterno varchar(32) not null,
    materno varchar(32),
    correo varchar(64) not null,
    contra varchar(32) not null,
    nacimiento date,
    registro datetime default current_timestamp,
    sexo char check(sexo = 'M' OR sexo = 'F'),
    direccion varchar(128)
);

/*
	Profesor: Usuario que administra los cursos, contenido y profesores
*/
-- drop table if exists Administrador;
create table if not exists Administrador (
	id int unsigned primary key not null auto_increment,
    idPersona int unsigned not null unique,
    foreign key (idPersona) references Persona(id) on update cascade on delete cascade
);

/*
	Alumno: Usuario que toma los cursos, resuleve actividades y recibe calificaciones
*/
-- drop table if exists Alumno;
create table if not exists Alumno (
	id int unsigned primary key not null auto_increment,
    idPersona int unsigned not null unique,
    foreign key (idPersona) references Persona(id) on update cascade on delete cascade
);

/*
	Profesor: Usuario que asesora y califica a los alumnos
*/
-- drop table if exists Profesor;
create table if not exists Profesor (
	id int unsigned primary key not null auto_increment,
    idPersona int unsigned not null unique,
    foreign key (idPersona) references Persona(id) on update cascade on delete cascade
);

/*
	Curso: Conjunto total de material y actividades organizado en unidades para preparar al alumno en una materia
    - nombre: Nombre del curso
    - nivel: Grado de complejidad del curso (1-5)
    - descripcion: Breve descripción de la matería y las actividades a realizar dentro de curso
*/
-- drop table if exists Curso;
create table if not exists Curso (
	id int unsigned primary key not null auto_increment,
    nombre varchar(42) not null unique,
    nivel int unsigned check(nivel > 0),
    descripcion varchar(512)
);

/*
	Cursos_Seriados: Relación entre los cursos que requieren tener aprobados otros cursos para poder cursarse.
    - idDependiente: Curso que depende de haber cursado otro
    - idRequerido: Curso que tiene que haber sido aprobado para cursar el "dependiente"
*/
-- drop table if exists Cursos_Seriados;
create table if not exists Cursos_Seriados (
	idDependiente int unsigned not null,
    idRequerido int unsigned not null,
    foreign key (idDependiente) references Curso(id) on update cascade,
    foreign key (idRequerido) references Curso(id) on update cascade,
    unique (idDependiente, idRequerido)
);

/*
	Unidad: Conjunto de temas y actividades pertenecientes a un curso
    - orden: Número de unidad, define en que orden se posicionaran las unidades de un mismo curso. El número menor va antes, empezando desde 0
*/
-- drop table if exists Unidad;
create table if not exists Unidad (
	id int unsigned primary key not null auto_increment,
    idCurso int unsigned not null,
    orden int unsigned not null,
    nombre varchar(64) not null,
    foreign key (idCurso) references Curso(id) on update cascade,
    unique (nombre, idCurso),
    unique (orden, idCurso)
);

/*
	Tema: Material de exposición dentro de una unidad
    - orden: Número de tema, define en que orden se posicionaran los temas de un mismo curso. El número menor va antes, empezando desde 0
    - duracion: Minutos aproximados que le tomara al alumno completar este contenido
*/
-- drop table if exists Tema;
create table if not exists Tema (
	id int unsigned primary key not null auto_increment,
    idUnidad int unsigned not null,
    nombre varchar(64) not null,
    orden int unsigned not null,
    descripcion varchar(512),
    duracion int not null,
    foreign key (idUnidad) references Unidad(id) on update cascade,
    unique (nombre, idUnidad)
);

/*
	Actividad: Actividad del curso a realizar por el alumno y calificar por un profesor (ubicada dentro de una unidad)
    - orden: Número de unidad, define en que orden se posicionaran las unidades de un mismo curso. El número menor va antes, empezando desde 0
    - duracion: Minutos aproximados que le tomara al alumno completar esta actividad
    - valor: Valor sobre la calificación final del curso que tiene esta actividad
*/
-- drop table if exists Actividad;
create table if not exists Actividad (
	id int unsigned primary key not null auto_increment,
    idUnidad int unsigned not null,
    nombre varchar(64) not null,
    orden int unsigned not null,
    descripcion varchar(512),
    duracion int unsigned not null,
    valor int unsigned not null,
    foreign key (idUnidad) references Unidad(id) on update cascade,
    unique (nombre, idUnidad)
);

/*
	Grupo: Asignación de los profesores a los cursos que estos pueden impartir
*/
-- drop table if exists Grupo;
create table if not exists Grupo (
	id int unsigned primary key not null auto_increment,
	idProfesor int unsigned not null,
    idCurso int unsigned not null,
    foreign key (idProfesor) references Profesor(id) on update cascade,
    foreign key (idCurso) references Curso(id) on update cascade,
    unique (idProfesor, idCurso)
);

/*
	Matricula: Datos de la subscripción de un alumno a un curso
    - inicio: Fecha en la que el alumnno se inscribió al curso
*/
-- drop table if exists Matricula;
create table if not exists Matricula (
	idAlumno int unsigned not null,
    idGrupo int unsigned not null,
    inicio datetime not null default current_timestamp,
    foreign key (idAlumno) references Alumno(id) on update cascade on delete cascade,
    foreign key (idGrupo) references Grupo(id) on update cascade,
    primary key (idAlumno, idGrupo)
);

/*
	Kardex: Registra las calificaciones de los cursos aprobados de los alumnos. Cuando se haga un registro en esta tabla, se borrará el respectivo registro de Matricula.
    - inicio: Fecha en la que el alumnno se inscribió al curso
    - fin: Fecha en la que el alumno finalizó el curso
*/
-- drop table if exists Kardex;
create table if not exists Kardex (
	idAlumno int unsigned not null,
    idCurso int unsigned not null,
    inicio datetime not null,
    fin datetime not null default current_timestamp,
    calificacion int unsigned check (calificacion <= 100),
    foreign key (idAlumno) references Alumno(id) on update cascade on delete cascade,
    foreign key (idCurso) references Curso(id) on update cascade,
    primary key (idAlumno, idCurso)
);

/*
	Asignacion: Actividad asociada a un alumno
    - idAlumno: Quien realiza la actividad
    - idActividad: A realizar por el alumno
    - entrega: Fecha y hora en que el alumno realizó la entrega de la actividad
    - calificacion: Evaluación que el alumno recibió de su actividad
*/
-- drop table if exists Asignacion;
create table if not exists Asignacion (
	idAlumno int unsigned not null,
    idActividad int unsigned not null,
    entrega datetime,
    calificacion int unsigned check (calificacion <= 100),
    foreign key (idActividad) references Actividad(id) on update cascade,
    foreign key (idAlumno) references Alumno(id) on update cascade on delete cascade,
    primary key (idAlumno, idActividad)
);

-- Disparadores ----------------------------------------------------------------------------------------------------

/*
	tbi_alumno_curso_unico: Verificar si el alumno ya está inscrito en otro grupo del mismo curso
*/
-- drop trigger if exists tbi_alumno_curso_unico;
DELIMITER //
create trigger tbi_alumno_curso_unico
before insert on Matricula
for each row
begin
    if exists (
        select 1
        from Matricula
        inner join Grupo on Matricula.idGrupo = Grupo.id
        where Matricula.idAlumno = new.idAlumno and Grupo.idCurso = (select idCurso from Grupo where id = new.idGrupo)
    ) then
		signal sqlstate '45000'
        set message_text = 'El alumno ya está inscrito en otro grupo del mismo curso';
    end if;
end;
//
DELIMITER ;

/*
	tbi_curso_valido: Verificar si el alumno ya aprobó los cursos requeridos para inscribirse a este
*/
-- DROP TRIGGER IF EXISTS tbi_curso_valido;
DELIMITER //
create trigger tbi_curso_valido
before insert on Matricula
for each row
begin
    declare nRequeridos int;
    declare nAprobados int;
    -- Cuenta el número de cursos requeridos
    select count(*) into nRequeridos
    from Cursos_Seriados
    where idDependiente = (select idCurso from Grupo where id = new.idGrupo);
    -- Cuenta el numero de cursos requeridos aprobados
    select
		count(*) into nAprobados
    from
		Kardex
		inner join (select idRequerido as id from Cursos_Seriados where idDependiente = (select idCurso from Grupo where id = new.idGrupo)) Requerido on Kardex.idCurso = Requerido.id
    where
		Kardex.idAlumno = new.idAlumno
		and Kardex.calificacion >= 60;
    -- Comprueba si el alumno aprobó los cursos
    if nAprobados < nRequeridos then
		signal sqlstate '45000'
		set message_text = 'El alumno no cumple con los cursos requeridos para inscribirse en este curso';
    end if;
end;
//
DELIMITER ;

/*
	tai_eliminar_matricula: Elimina la matricula asociada a al kardex si es que existe
*/
-- DROP TRIGGER IF EXISTS tai_eliminar_matricula;
DELIMITER //
create trigger tai_eliminar_matricula
after insert on Kardex
for each row
begin
    delete from Matricula
    where idAlumno = NEW.idAlumno
    and idGrupo in (select id from Grupo where idCurso = NEW.idCurso);
end;
//
DELIMITER ;

/*
	tad_eliminar_asignaciones: Elimina las asignaciones asociadas a la matricula
*/
-- DROP TRIGGER IF EXISTS tad_eliminar_asignaciones;
DELIMITER //
create trigger tad_eliminar_asignaciones
after delete on Matricula
for each row
begin
    -- Eliminar todas las asignaciones del alumno en la materia específica
    delete from Asignacion
    where idAlumno = OLD.idAlumno
    and idActividad in (select idActividad from Grupo where idCurso = (select idCurso from Grupo where id = OLD.idGrupo));
end;
//
DELIMITER ;

-- Vistas --------------------------------------------------------------------------------------


/*
	V_Unidad: Datos de todas las actividades y temas agrupados por unidad de cada curso
    - actividades: Cantidad total de actividades que tiene la unidad
    - valor: Valor total de la unidad
    - duracion_actividad: Total de minutos que se estima tardarán las actividades de la unidad
    - temas: Cantidad total de temas que tiene la unidad
    - duracion_tema: Total de minutos que se estima tardarán los temas de la unidad
*/
create or replace view V_Unidad as
select
	Unidad.idCurso as idCurso,
	Unidad.id as idUnidad,
    coalesce(count(Actividad.id), 0) as actividades,
	coalesce(sum(Actividad.valor), 0) as valor,
    coalesce(sum(Actividad.duracion), 0) as duracion_actividad,
    coalesce(count(Tema.id), 0) as temas,
    coalesce(sum(Tema.duracion), 0) as duracion_tema
from
	Unidad
    inner join Actividad on Unidad.id = Actividad.idUnidad
    inner join Tema on Unidad.id = Tema.idUnidad
group by
	Unidad.id
order by
	Unidad.idCurso, Unidad.orden;

/*
	V_Progreso_Unidad_Alumno: Datos del progreso de cada alumno en cada unidad de cada curso
    - completadas: Número de actividades completadas
    - valor: Valor total de las actividades completadas en función de la calificación obtenida
    - promedio: Promedio de la califiación de todas las actividades
*/
create or replace view V_Progreso_Unidad_Alumno as
select
    Asignacion.idAlumno as idAlumno,
    Unidad.id as idUnidad,
    coalesce(sum(if(Asignacion.entrega is not null, 1, 0)), 0) as completadas,
    coalesce(sum(Asignacion.calificacion * Actividad.valor / 100), 0) as valor,
    coalesce(avg(Asignacion.calificacion), 0) as promedio
from
    Asignacion
	inner join Actividad on Asignacion.idActividad = Actividad.id
	inner join Unidad on Actividad.idUnidad = Unidad.id
group by
    Asignacion.idAlumno, Unidad.id
order by
	Asignacion.idAlumno, Unidad.orden;

/*
	V_Curso: Datos de todas las actividades y temas agrupados por curso
    - actividades: Cantidad total de actividades que tiene el curso
    - valor: Valor total del curso
    - duracion_actividad: Total de minutos que se estima tardarán las actividades del curso
    - temas: Cantidad total de temas que tiene el curso
    - duracion_tema: Total de minutos que se estima tardarán los temas del curso
*/
create or replace view V_Curso as
select
	Unidad.idCurso as idCurso,
    coalesce(count(Actividad.id), 0) as actividades,
	coalesce(sum(Actividad.valor), 0) as valor,
    coalesce(sum(Actividad.duracion), 0) as duracion_actividad,
    coalesce(count(Tema.id), 0) as temas,
    coalesce(sum(Tema.duracion), 0) as duracion_tema
from
	Unidad
    inner join Actividad on Unidad.id = Actividad.idUnidad
    inner join Tema on Unidad.id = Tema.idUnidad
group by
	Unidad.idCurso;

/*
	V_Progreso_Curso_Alumno: Datos del progreso de cada alumno en cada curso
    - completadas: Número de actividades completadas
    - valor: Valor total de las actividades completadas en función de la calificación obtenida
    - promedio: Promedio de la califiación de todas las actividades
*/
create or replace view V_Progreso_Curso_Alumno as
select
    Asignacion.idAlumno as idAlumno,
    Unidad.idCurso as idCurso,
    coalesce(sum(if(Asignacion.entrega is not null, 1, 0)), 0) as completadas,
    coalesce(sum(Asignacion.calificacion * Actividad.valor / 100), 0) as valor,
    coalesce(avg(Asignacion.calificacion), 0) as promedio
from
    Asignacion
	inner join Actividad on Asignacion.idActividad = Actividad.id
	inner join Unidad on Actividad.idUnidad = Unidad.id
group by
    Asignacion.idAlumno, Unidad.idCurso
order by
	Asignacion.idAlumno, Unidad.idCurso;

/*
	V_Progreso_Grupo: Datos del progreso de cada profesor en la evaluación de sus grupos
    - entregadas: Número de actividades entregadas por sus alumnos
    - calificadas: Número de actividades calificadas
    - valor: Valor total de las actividades completadas en función de la calificación obtenida
    - promedio: Promedio de la califiación de todas las actividades
*/
create or replace view V_Progreso_Grupo as
select
	Grupo.idProfesor as idProfesor,
    Grupo.id as idGrupo,
    coalesce(sum(if(Asignacion.entrega is not null, 1, 0)), 0) as entregadas,
    coalesce(sum(if(Asignacion.calificacion is not null, 1, 0)), 0) as calificadas,
    coalesce(avg(Asignacion.calificacion), 0) as promedio
from
    Asignacion
	inner join Matricula on  Matricula.idAlumno = Asignacion.idAlumno
    inner join Grupo on Grupo.id = Matricula.idGrupo
group by
    Grupo.idProfesor, Grupo.id
order by
	Grupo.idProfesor, Grupo.id;

/*
	V_Progreso_Porcentual_Unidad_Alumno: Datos del desempeño general de cada alumno en cada unidad en cada curso
    - completadas: Número de actividades completadas
    - total: Número de actividades en la unidad
    - porcentaje: Porcentaje de completitud de las actividades
    - valorCompletadas: Valor de las actividades completadas en función de la calificación recibida
    - valorTotal: Valor total esperado del 100% de las actividades completadas
    - calificacion: Calificación general del alumno en la unidad
*/
-- drop view V_Progreso_Porcentual_Unidad_Alumno;
create or replace view V_Progreso_Porcentual_Unidad_Alumno as
select
	Progreso.idAlumno as idAlumno,
    Progreso.idUnidad as idUnidad,
    Progreso.completadas as completadas,
    V_Unidad.actividades as total,
    round(Progreso.completadas / V_Unidad.actividades * 100) as porcentaje,
    Progreso.valor as valorCompletadas,
    V_Unidad.valor as valorTotal,
    round(Progreso.valor / V_Unidad.valor * 100) as calificacion
from
	V_Progreso_Unidad_Alumno Progreso
    inner join V_Unidad on Progreso.idUnidad = V_Unidad.idUnidad
order by
	idAlumno, idUnidad;

/*
	V_Progreso_Porcentual_Curso_Alumno: Datos del desempeño general de cada alumno en cada curso
    - completadas: Número de actividades completadas
    - total: Número de actividades en el curso
    - porcentaje: Porcentaje de completitud de las actividades
    - valorCompletadas: Valor de las actividades completadas en función de la calificación recibida
    - valorTotal: Valor total esperado del 100% de las actividades completadas
    - calificacion: Calificación general del alumno en el curso
*/
-- drop view V_Progreso_Porcentual_Curso_Alumno;
create or replace view V_Progreso_Porcentual_Curso_Alumno as
select
	Progreso.idAlumno as idAlumno,
    Progreso.idCurso as idCurso,
    Progreso.completadas as completadas,
    V_Curso.actividades as total,
    round(Progreso.completadas / V_Curso.actividades * 100) as porcentaje,
    Progreso.valor as valorCompletadas,
    V_Curso.valor as valorTotal,
    round(Progreso.valor / V_Curso.valor * 100) as calificacion
from
	V_Progreso_Curso_Alumno Progreso
    inner join V_Curso on Progreso.idCurso = V_Curso.idCurso
order by
	idAlumno, idCurso;

/*
	 V_Estdo_Curso_Alumno: Datos de cada curso por alumno, tomados de los cursos inscritos actualmente (Matricula) y los ya cursados (Kardex)
*/
-- drop view  V_Curso_Alumno;
create or replace view V_Curso_Alumno as
select
	Kardex.idAlumno as idAlumno,
    Kardex.idCurso as idCurso,
    Kardex.inicio as inicio,
    Kardex.calificacion as calificacion,
    100 as completitud,
    case
        when calificacion >= 60 then 'Aprovado'
        else 'Reprobado'
    end as estado
from
	Kardex
union select
	Progreso.idAlumno as idAlumno,
    Progreso.idCurso as idCurso,
    Matricula.inicio as inicio,
    Progreso.calificacion as calificacion,
    Progreso.porcentaje as completitud,
    'Cursando' as estado
from
	v_progreso_porcentual_curso_alumno Progreso
    inner join Matricula on Matricula.idAlumno = Progreso.idAlumno and (select idCurso from Grupo where id = Matricula.idGrupo) = Progreso.idCurso
order by
	idAlumno, idCurso;
-- Versión extendida:
-- drop view  V_Curso_Alumno_Ext;
create view  V_Curso_Alumno_Ext as
select
	vca.idAlumno as idAlumno,
    Persona.nombre as nombreAlumno,
    Persona.paterno as paternoAlumno,
    Persona.materno as maternoAlumno,
    vca.idCurso as idCurso,
    Curso.nombre as nombreCurso,
    Curso.nivel as nivel,
    vca.estado as estado,
    vca.inicio as inicio,
	vca.calificacion as calificacion,
    vca.completitud as completitud
from
	V_Curso_Alumno vca
    inner join Curso on Curso.id = vca.idCurso
    inner join Alumno on Alumno.id = vca.idAlumno
    inner join Persona on Persona.id = Alumno.idPersona
order by
	idAlumno, idCurso;

/*
	Vista para saber que tipo de usuario es la persona y su respectivo id de usuario.
    - id: idAdministrador, idProfesor, idAlumno
    - tipo
    -- A: Administador
    -- P: Profesor
    -- E: Alumno
*/
-- drop view V_T_Persona;
create or replace view V_T_Persona as
	select
		Persona.id as idPersona,
        'A' as tipo,
        Administrador.id as id
	from
		Persona
        inner join Administrador on Administrador.idPersona = Persona.id
union
    select
		Persona.id as idPersona,
        'P' as tipo,
        Profesor.id as id
	from
		Persona
        inner join Profesor on Profesor.idPersona = Persona.id
union
	select
		Persona.id as idPersona,
        'E' as tipo,
        Alumno.id as id
	from
		Persona
        inner join Alumno on Alumno.idPersona = Persona.id
order by
		idPersona;
-- Version extendida
-- drop view V_T_Persona_Ext;
create or replace view V_T_Persona_Ext as
select
	Persona.id as idPersona,
    vtp.id as idUsuario,
    vtp.tipo as tipo,
    Persona.usuario as usuario,
    Persona.contra as contra,
    Persona.nombre as nombre,
    Persona.paterno as paterno,
    Persona.materno as materno,
    Persona.sexo as sexo,
    Persona.nacimiento as nacimiento,
    Persona.correo as correo
from
	V_T_Persona vtp
    inner join Persona on Persona.id = vtp.idPersona
order by
	idPersona;

/*
	Datos de cada curso: conteo de profesores(grupos) y alumnos matriculados en cada uno
*/
create or replace view V_Cursos as
select
	Curso.id as idCurso,
    Curso.nombre as nombre,
    Curso.nivel as nivel,
    Curso.descripcion as descripcion,
    count(Matricula.idAlumno) as numAlumnos,
	count(distinct Grupo.idProfesor) as numProfersores
from
	Curso
    inner join Grupo on Grupo.idCurso = Curso.id
    inner join Matricula on Matricula.idGrupo = Grupo.id
group by
	Curso.id
order by
	Curso.id;

/*
	Datos de cada profesor (conteo de grupos y alumnos asignados a este)
*/
create or replace view V_Profesores as
select 
	Profesor.id as idProfesor,
    Persona.nombre as nombre,
    Persona.paterno as paterno,
    Persona.materno as materno,
    count(distinct Grupo.id) as grupos,
    count(distinct Matricula.idAlumno) as alumnos
from
	Profesor
    inner join Persona on Persona.id = Profesor.idPersona
    left outer join Grupo on Grupo.idProfesor = Profesor.id
    left outer join Matricula on Matricula.idGrupo = Grupo.id
group by
	Profesor.id,
    Persona.id
order by
	Profesor.id;

/*
	Temario (Temas y actividades) de cada Curso
    -- T: Tema
    -- A: Actividad
*/
create or replace view V_Temario as
select
	Curso.id as idCurso,
    Unidad.id as idUnidad,
    Unidad.orden+1 as numeroUnidad,
    Unidad.nombre as nombreUnidad,
    'T' as tipo,
    Tema.id as id,
    Tema.orden+1 as orden,
    Tema.nombre as nombre
from
	Curso
    inner join Unidad on Unidad.idCurso = Curso.id
    left outer join Tema on Tema.idUnidad = Unidad.id
union
select
	Curso.id as idCurso,
    Unidad.id as idUnidad,
    Unidad.orden+1 as numeroUnidad,
    Unidad.nombre as nombreUnidad,
    'A' as tipo,
    Actividad.id as id,
    Actividad.orden+1 as orden,
    Actividad.nombre as nombre
from
	Curso
    inner join Unidad on Unidad.idCurso = Curso.id
    left outer join Actividad on Actividad.idUnidad = Unidad.id
order by
	idCurso, numeroUnidad, orden;

-- Procedumientos almacenados ------------------------------------------------------------------


