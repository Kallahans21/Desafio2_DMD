-- Covid 19 en El Salvador
-- SB210537
Create database covid19;

create table territorio(
    id_zona int identity (1,1) primary key,
    zona varchar (50)

)

create table fecha
(
        id_fecha int identity (1,1) primary key,
        fecha date,
        mes varchar(15),
        año int,
        dia int,
        trimestre int,

)

create table contagios_porcentaje
(
    id_contagios int identity (1,1) primary key,
    parques_espaciosPublicos int,
    tiendas_super_farmacia int,
    comercio_recracion int,
    trabajo int,
    transito int,
    residencia int,
    id_fechas int foreign key references fecha(id_fecha),
    id_zonas int foreign key references territorio(id_zona),
)