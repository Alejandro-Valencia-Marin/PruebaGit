Connect system/admin@XE
/
Drop User Curso Cascade
/
Create Tablespace Curso 
Datafile 'C:\oraclexe\oradata\XE\Curso.dbf'    Size 10 M
/
Create Temporary Tablespace CursoTMP 
Tempfile 'C:\oraclexe\oradata\XE\CursoTMP.dbf' Size  5 M
/
Create User Curso Identified by curso
Default Tablespace Curso
Temporary Tablespace CursoTMP
/
Grant Connect  to Curso
/
Grant Resource to Curso
/
Connect curso/curso@XE
/
Create Table DEPTA
(Numdep		char(3)      	Not Null,
Nomdep		varchar2(30) 	Not Null,
Numdirec	char(4) 	Not Null,
Constraint PK_Depta Primary key (Numdep))
/
Create Table TEMPLA
(Nuempl		char(4)      	Not Null,
Nombre		varchar2(25) 	Not Null,
Apellido	varchar2(25) 	Not Null,
Dept		char(3)      	Not Null,
Salar		number(7),
Feching		date,
Tlfn		char(4),
Codtra		number(3),
Fechnac		date,
Sexo		char(1),
Nivedu		number(1),
Constraint PK_Templa Primary key (Nuempl),
Constraint FK_Templa Foreign key (Dept) References Depta(Numdep))
/
Insert into Depta
Values ('A10', 'PRODUCCION', '0100')
/