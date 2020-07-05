CREATE TABLE public.Materia (
	MateriaID 	serial PRIMARY KEY,
	MateriaName	VARCHAR(50),
	Estado		BOOLEAN,
	Descripcion	VARCHAR(300)
);

CREATE TABLE public.Rol (
	RolID 	serial PRIMARY KEY,
	RolName	VARCHAR(50)
);

CREATE TABLE public.Departamento (
	DepartamentoID 	serial PRIMARY KEY,
	DepartamentoName	VARCHAR(50)
);

CREATE TABLE public.Municipio (
	MunicipioID 	serial PRIMARY KEY,
	MunicipioName	VARCHAR(50),
	DepartamentoID 	INTEGER REFERENCES public.Departamento (DepartamentoID)
);

CREATE TABLE public.CentroEscolar(
	CentroEscolarID		SERIAL	PRIMARY KEY,
	MunicipioID	     	Integer	REFERENCES public.Municipio (MunicipioID),
	CentroEscolarName	VARCHAR(100) NOT NULL,
	Direccion			VARCHAR(300) NOT NULL,
	Estado				BOOLEAN		NOT NULL
);

CREATE TABLE public.UserAdmin (
	UserAdminID  		SERIAL 		PRIMARY KEY,
	CentroEscolarID     Integer		REFERENCES public.CentroEscolar (CentroEscolarID),
	MunicipioID	     	Integer		REFERENCES public.Municipio (MunicipioID),
	RolID	     		Integer		REFERENCES public.Rol (RolID),
	Nombre 				VARCHAR(50) NOT NULL,
	Apellido 			VARCHAR(50) NOT NULL,
	BirthdayDate 		DATE 		NOT NULL,
	Edad				SMALLINT	NOT NULL,
	Direccion			VARCHAR(300) NOT NULL,
	Username			VARCHAR(50)	NOT NULL,
	PasswordEncripted	TEXT		NOT NULL,
	Estado 				BOOLEAN		NOT NULL
);

CREATE TABLE public.Alumno (
	AlumnoID  			serial 		PRIMARY KEY,
	CentroEscolarID     Integer		REFERENCES public.CentroEscolar (CentroEscolarID),
	MunicipioID	     	Integer		REFERENCES public.Municipio (MunicipioID),
	FirstName 			VARCHAR(50) NOT NULL,
	LastName 			VARCHAR(50) NOT NULL,
	Carnet 				VARCHAR(8) 	NOT NULL,
	BirthdayDate 		DATE 		NOT NULL,
	Edad				SMALLINT	NOT NULL,
	Direccion			VARCHAR(300) NOT NULL,
	TelefonoFijo		VARCHAR(8)	NOT NULL,
	TelefonoMovil		VARCHAR(8)	NOT NULL,
	NombreDelPadre		VARCHAR(50) NOT NULL,
	NombreDeLaMadre		VARCHAR(50) NOT NULL
);

CREATE TABLE public.MateriaXAlumno (
	ID 				BIGSERIAL PRIMARY KEY,
	MateriaID		INTEGER REFERENCES public.Materia (MateriaID),
	AlumnoID 		INTEGER REFERENCES public.Alumno (AlumnoID),
	Anno			SMALLINT NOT NULL,
	Ciclo			SMALLINT NOT NULL,
	Nota			FLOAT(2) NOT NULL,
	Resultado		BOOLEAN	 NOT NULL/*,
	CONSTRAINT materiaxalumno_pkey PRIMARY KEY (MateriaID, AlumnoID)*/
);