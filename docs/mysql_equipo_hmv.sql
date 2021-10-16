create database equipo_hmv;
create table Cargos
(
id_cargo int auto_increment not null,
nombre_cargo varchar(50) not null,
activo varchar (1),
primary key (id_cargo)
)ENGINE = InnoDB;
create table Trabajadores
(
id_trabajador int auto_increment not null ,
id_cargo int not null,
nombre varchar(50) null ,
apellido varchar(50) null ,
especial varchar(1) null,
index(id_cargo),
primary key (id_trabajador),
foreign key (id_cargo) references Cargos(id_cargo)
)ENGINE = InnoDB;
create table Competencias
(
id_competencias int auto_increment not null,
compretencia varchar(5) null,
primary key (id_competencias)
);
create table Formulario
 (
 id_formulario int auto_increment not null ,
 id_trabajador int not null,
 id_cargo int not null,
 id_pregunta int not null,
 respuestas varchar (20) not null,
 primary key (id_formulario),
 index(id_cargo),
 index(id_trabajador),
 index(id_pregunta),
 foreign key (id_cargo) references Cargos(id_cargo),
 foreign key (id_trabajador) references trabajadores (id_trabajador),
 foreign key (id_pregunta) references pregunta(id_pregunta)
 );
create TABLE pregunta
(
	id_pregunta int auto_increment NOT NULL,
	preguntas varchar (200) NOT NULL,
	id_competencia int NOT NULL,
	PRIMARY KEY (id_pregunta),
	index(id_competencia),
    foreign key (id_competencia) references competencias(id_competencias)
) ;

create TABLE resultados
(
	id_resultados int auto_increment NOT NULL,
	id_formulario int NOT NULL,
	id_casco int NOT NULL,
	PRIMARY KEY (id_resultados),
	index(id_formulario),
    foreign key (id_formulario) references formulario(id_formulario),
    index(id_casco),
    foreign key (id_casco) references cascos(id_casco)
) ;

create table cascos
(
	id_casco int auto_increment not null,
    color_casco varchar(1)not null,
    primary key (id_casco)
);
