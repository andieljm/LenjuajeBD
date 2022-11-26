CREATE TABLE provincia_cr (
    codigo_provincia NUMBER(5), -- PK --
    nombre_provincia varchar2(45),
    constraint pk_codigo_provincia primary key(codigo_provincia));
    
-- secuencia para el autoincremental de provincia
create sequence proviauto
start with 1
increment by 1;

-- un triger para que cuando se inserte algo aumente la llave primaria
create trigger proviautoT
before insert on provincia_cr
for each row
begin
select proviauto.nextval into :new.codigo_provincia from dual;
end;

INSERT INTO provincia_cr (nombre_provincia) VALUES ('San Jos�');
INSERT INTO provincia_cr (nombre_provincia) VALUES ('Alajuela');
INSERT INTO provincia_cr (nombre_provincia) VALUES ('Cartago');
INSERT INTO provincia_cr (nombre_provincia) VALUES ('Heredia');
INSERT INTO provincia_cr (nombre_provincia) VALUES ('Guanacaste');
INSERT INTO provincia_cr (nombre_provincia) VALUES ('Puntarenas');
INSERT INTO provincia_cr (nombre_provincia) VALUES ('Lim�n');

--cantones

CREATE TABLE canton_cr (
  codigo_canton number(5) NOT NULL constraint pk_codigo_canton primary key,
  codigo_provincia number(5) NOT NULL,
  nombre_canton varchar(45) NOT NULL,
  constraint fk_codigo_provincia FOREIGN KEY (codigo_provincia) REFERENCES provincia_cr(codigo_provincia));
  
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (101,1,'San Jos�');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (102,1,'Escaz�');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (103,1,'Desamparados');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (104,1,'Puriscal');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (105,1,'Tarraz�');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (106,1,'Aserr�');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (107,1,'Mora');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (108,1,'Goicoechea');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (109,1,'Santa Ana');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (110,1,'Alajuelita');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (111,1,'Vasquez de Coronado');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (112,1,'Acosta');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (113,1,'Tib�s');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (114,1,'Moravia');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (115,1,'Montes de Oca');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (116,1,'Turrubares');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (117,1,'Dota');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (118,1,'Curridabat');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (119,1,'P�rez Zeled�n');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (120,1,'Le�n Cort�s');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (201,2,'Alajuela');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (202,2,'San Ram�n');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (203,2,'Grecia');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (204,2,'San Mateo');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (205,2,'Atenas');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (206,2,'Naranjo');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (207,2,'Palmares');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (208,2,'Po�s');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (209,2,'Orotina');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (210,2,'San Carlos');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (211,2,'Alfaro Ruiz');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (212,2,'Valverde Vega');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (213,2,'Upala');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (214,2,'Los Chiles');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (215,2,'Guatuso');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (301,3,'Cartago');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (302,3,'Para�so');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (303,3,'La Uni�n');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (304,3,'Jim�nez');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (305,3,'Turrialba');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (306,3,'Alvarado');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (307,3,'Oreamuno');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (308,3,'El Guarco');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (401,4,'Heredia');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (402,4,'Barva');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (403,4,'Santo Domingo');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (404,4,'Santa B�rbara');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (405,4,'San Rafael');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (406,4,'San Isidro');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (407,4,'Bel�n');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (408,4,'Flores');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (409,4,'San Pablo');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (410,4,'Sarapiqu�');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (501,5,'Liberia');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (502,5,'Nicoya');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (503,5,'Santa Cruz');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (504,5,'Bagaces');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (505,5,'Carrillo');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (506,5,'Ca�as');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (507,5,'Abangares');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (508,5,'Tilar�n');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (509,5,'Nandayure');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (510,5,'La Cruz');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (511,5,'Hojancha');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (601,6,'Puntarenas');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (602,6,'Esparza');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (603,6,'Buenos Aires');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (604,6,'Montes de Oro');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (605,6,'Osa');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (606,6,'Aguirre');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (607,6,'Golfito');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (608,6,'Coto Brus');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (609,6,'Parrita');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (610,6,'Corredores');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (611,6,'Garabito');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (701,7,'Lim�n');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (702,7,'Pococ�');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (703,7,'Siquirres');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (704,7,'Talamanca');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (705,7,'Matina');
INSERT INTO canton_cr (codigo_canton,codigo_provincia,nombre_canton) VALUES (706,7,'Gu�cimo');

CREATE TABLE distrito_cr(
  codigo_distrito number(10) NOT NULL constraint pk_codigo_distrito primary key,
  codigo_canton number(5) NOT NULL,
  nombre_distrito varchar(45) NOT NULL,
  constraint fk_codigo_canton FOREIGN KEY (codigo_canton) REFERENCES canton_cr(codigo_canton));
  
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10101,101,'Carmen');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10102,101,'Merced');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10103,101,'Hospital');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10104,101,'Catedral');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10105,101,'Zapote');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10106,101,'San Francisco de Dos R�os');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10107,101,'Uruca');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10108,101,'Mata Redonda');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10109,101,'Pavas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10110,101,'Hatillo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10111,101,'San Sebasti�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10201,102,'Escaz�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10202,102,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10203,102,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10301,103,'Desamparados');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10302,103,'San Miguel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (10303,103,'San Juan de Dios');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10304,103,'San Rafael Arriba');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10305,103,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10306,103,'Frailes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10307,103,'Patarr�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10308,103,'San Crist�bal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10309,103,'Rosario');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10310,103,'Damas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10311,103,'San Rafael Abajo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10312,103,'Gravilias');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10313,103,'Los Guido');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10401,104,'Santiago');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10402,104,'Mercedes Sur');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10403,104,'Barbacoas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10404,104,'Grifo Alto');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10405,104,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10406,104,'Candelaria');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10407,104,'Desamparaditos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10408,104,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10409,104,'Chires');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10501,105,'San Marcos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10502,105,'San Lorenzo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10503,105,'San Carlos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10601,106,'Aserr�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10602,106,'Tarbaca o Praga');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10603,106,'Vuelta de Jorco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10604,106,'San Gabriel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10605,106,'La Legua');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10606,106,'Monterrey');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10607,106,'Salitrillos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10701,107,'Col�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10702,107,'Guayabo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10703,107,'Tabarcia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10704,107,'Piedras Negras');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10705,107,'Picagres');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10801,108,'Guadalupe');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10802,108,'San Francisco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10803,108,'Calle Blancos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10804,108,'Mata de Pl�tano');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10805,108,'Ip�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10806,108,'Rancho Redondo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10807,108,'Purral');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10901,109,'Santa Ana');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10902,109,'Salitral');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10903,109,'Pozos o Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10904,109,'Uruca o San Joaqu�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10905,109,'Piedades');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (10906,109,'Brasil');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11001,110,'Alajuelita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11002,110,'San Josecito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11003,110,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11004,110,'Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11005,110,'San Felipe');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11101,111,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11102,111,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11103,111,'Dulce Nombre de Jes�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11104,111,'Patalillo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11105,111,'Cascajal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11201,112,'San Ignacio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11202,112,'Guaitil');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11203,112,'Palmichal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11204,112,'Cangrejal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11205,112,'Sabanillas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11301,113,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11302,113,'Cinco Esquinas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11303,113,'Anselmo Llorente');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11304,113,'Le�n XIII');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11305,113,'Colima');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11401,114,'San Vicente');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11402,114,'San Jer�nimo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11403,114,'Trinidad');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11501,115,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11502,115,'Sabanilla');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11503,115,'Mercedes o Betania');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11504,115,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11601,116,'San Pablo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11602,116,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11603,116,'San Juan de Mata');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11604,116,'San Luis');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11605,116,'C�rara');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11701,117,'Santa Mar�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11702,117,'Jard�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11703,117,'Copey');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11801,118,'Curridabat');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11802,118,'Granadilla');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11803,118,'S�nchez');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11804,118,'Tirrases');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11901,119,'San Isidro de el General');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11902,119,'General');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11903,119,'Daniel Flores');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11904,119,'Rivas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11905,119,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11906,119,'Platanares');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11907,119,'Pejibaye');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11908,119,'Caj�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11909,119,'Bar�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11910,119,'R�o Nuevo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (11911,119,'P�ramo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (12001,120,'San Pablo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (12002,120,'San Andr�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (12003,120,'Llano Bonito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (12004,120,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (12005,120,'Santa Cruz');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (12006,120,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20101,201,'Alajuela');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20102,201,'San Jos�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20103,201,'Carrizal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20104,201,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20105,201,'Gu�cima');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20106,201,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20107,201,'Sabanilla');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20108,201,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20109,201,'R�o Segundo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20110,201,'Desamparados');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20111,201,'Turrucares');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20112,201,'Tambor');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20113,201,'La Garita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20114,201,'Sarapiqu�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20201,202,'San Ram�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20202,202,'Santiago');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20203,202,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20204,202,'Piedades Norte');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20205,202,'Piedades Sur');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20206,202,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20207,202,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20208,202,'Angeles');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20209,202,'Alfaro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20210,202,'Volio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20211,202,'Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20212,202,'Zapotal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (20213,202,'San Isidro de Pe�as Blancas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20301,203,'Grecia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20302,203,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20303,203,'San Jos�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20304,203,'San Roque');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20305,203,'Tacares');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20306,203,'R�o Cuarto');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20307,203,'Puente Piedra');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20308,203,'Bol�var');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20401,204,'San Mateo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20402,204,'Desmonte');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20403,204,'Jes�s Mar�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20501,205,'Atenas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20502,205,'Jes�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20503,205,'Mercedes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20504,205,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20505,205,'Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20506,205,'San Jos�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20507,205,'Santa Eulalia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20508,205,'Escobal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20601,206,'Naranjo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20602,206,'San Miguel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20603,206,'San Jos�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20604,206,'Cirr� Sur');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20605,206,'San Jer�nimo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20606,206,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20607,206,'Rosario');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20701,207,'Palmares');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20702,207,'Zaragoza');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (20703,207,'Buenos Aires');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20704,207,'Santiago');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20705,207,'Candelaria');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20706,207,'Esquipulas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20707,207,'La Granja');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20801,208,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20802,208,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20803,208,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20804,208,'Carrillos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20805,208,'Sabana Redonda');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20901,209,'Orotina');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20902,209,'Mastate');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20903,209,'Hacienda Vieja');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20904,209,'Coyolar');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (20905,209,'Ceiba');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21001,210,'Quesada');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21002,210,'Florencia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21003,210,'Buenavista');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21004,210,'Aguas Zarcas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21005,210,'Venecia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21006,210,'Pital');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21007,210,'Fortuna');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21008,210,'Tigra');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21009,210,'Palmera');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21010,210,'Venado');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21011,210,'Cutris');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21012,210,'Monterrey');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21013,210,'Pocosol');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21101,211,'Zarcero');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21102,211,'Laguna');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21103,211,'Tapezco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21104,211,'Guadalupe');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21105,211,'Palmira');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21106,211,'Zapote');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21107,211,'Las Brisas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21201,212,'Sarch� Norte');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21202,212,'Sarch� Sur');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21203,212,'Toro Amarillo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21204,212,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21205,212,'Rodr�guez');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21301,213,'Upala');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21302,213,'Aguas Claras');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21303,213,'San Jos� o Pizote');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21304,213,'Bijagua');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21305,213,'Delicias');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21306,213,'Dos R�os');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21307,213,'Yolillal';
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21401,214,'Los Chiles');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21402,214,'Ca�o Negro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21403,214,'Amparo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21404,214,'San Jorge');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21501,215,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21502,215,'Buenavista');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (21503,215,'Cote');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30101,301,'Oriental');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30102,301,'Occidental');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30103,301,'Carmen');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (30104,301,'San Nicol�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30105,301,'Aguacaliente o San Francisco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30106,301,'Guadalupe o Arenilla');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30107,301,'Corralillo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30108,301,'Tierra Blanca');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30109,301,'Dulce Nombre');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30110,301,'Llano Grande');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30111,301,'Quebradilla');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30201,302,'Para�so');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30202,302,'Santiago');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30203,302,'Orosi');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30204,302,'Cach�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30205,302,'Los Llanos de Santa Luc�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30301,303,'Tres R�os');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30302,303,'San Diego');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30303,303,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30304,303,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30305,303,'Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30306,303,'Dulce Nombre');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30307,303,'San Ram�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30308,303,'R�o Azul');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30401,304,'Juan Vi�as');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30402,304,'Tucurrique');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (30403,304,'Pejibaye');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30501,305,'Turrialba');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30502,305,'La Suiza');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30503,305,'Peralta');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30504,305,'Santa Cruz');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30505,305,'Santa Teresita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30506,305,'Pavones');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30507,305,'Tuis');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30508,305,'Tayutic');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30509,305,'Santa Rosa');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30510,305,'Tres Equis');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30511,305,'La Isabel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30512,305,'Chirrip�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30601,306,'Pacayas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30602,306,'Cervantes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30603,306,'Capellades');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30701,307,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30702,307,'Cot');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30703,307,'Potrero Cerrado');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30704,307,'Cipreses');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30705,307,'Santa Rosa');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30801,308,'El Tejar');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30802,308,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30803,308,'Tobosi');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (30804,308,'Patio de Agua');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40101,401,'Heredia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40102,401,'Mercedes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40103,401,'San Francisco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40104,401,'Ulloa');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40105,401,'Varablanca');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40201,402,'Barva');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40202,402,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40203,402,'San Pablo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40204,402,'San Roque');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40205,402,'Santa Luc�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40206,402,'San Jos� de la Monta�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40301,403,'Santo Domingo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40302,403,'San Vicente');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40303,403,'San Miguel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40304,403,'Paracito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40305,403,'Santo Tom�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40306,403,'Santa Rosa');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40307,403,'Tures');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40308,403,'Par�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40401,404,'Santa B�rbara');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40402,404,'San Pedro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40403,404,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40404,404,'Jes�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40405,404,'Santo Domingo del Roble');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40406,404,'Puraba');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40501,405,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40502,405,'San Josecito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40503,405,'Santiago');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40504,405,'Angeles');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40505,405,'Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40601,406,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40602,406,'San Jos�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40603,406,'Concepci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40604,406,'San Francisco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40701,407,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40702,407,'La Ribera');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40703,407,'Asunci�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40801,408,'San Joaqu�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40802,408,'Barrantes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40803,408,'Llorente');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (40901,409,'San Pablo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (41001,410,'Puerto Viejo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (41002,410,'La Virgen');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (41003,410,'Horquetas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (41004,410,'Llanuras de Gaspar');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (41005,410,'Cure�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50101,501,'Liberia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50102,501,'Ca�as Dulces');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50103,501,'Mayorga');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50104,501,'Nacascolo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50105,501,'Curubande');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50201,502,'Nicoya');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50202,502,'Mansi�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50203,502,'San Antonio');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50204,502,'Quebrada Honda');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50205,502,'S�mara');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50206,502,'N�sara');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50207,502,'Bel�n de Nosarita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50301,503,'Santa Cruz');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50302,503,'Bols�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50303,503,'Veintisiete de Abril');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50304,503,'Tempate');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50305,503,'Cartagena');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50306,503,'Cuajiniquil');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50307,503,'Diri�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50308,503,'Cabo Velas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50309,503,'Tamarindo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50401,504,'Bagaces');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50402,504,'Fortuna');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50403,504,'Mogote');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50404,504,'R�o Naranjo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50501,505,'Filadelfia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (50502,505,'Palmira');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50503,505,'Sardinal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50504,505,'Bel�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50601,506,'Ca�as');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50602,506,'Palmira');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50603,506,'San Miguel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50604,506,'Bebedero');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (50605,506,'Porozal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50701,507,'Juntas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50702,507,'Sierra');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50703,507,'San Juan');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50704,507,'Colorado');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50801,508,'Tilar�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50802,508,'Quebrada Grande');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50803,508,'Tronadora');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50804,508,'Santa Rosa');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50805,508,'L�bano');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50806,508,'Tierras Morenas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50807,508,'Arenal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50901,509,'Carmona');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50902,509,'Santa Rita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50903,509,'Zapotal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50904,509,'San Pablo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50905,509,'Porvenir');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (50906,509,'Bejuco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51001,510,'La Cruz');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51002,510,'Santa Cecilia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51003,510,'Garita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51004,510,'Santa Elena');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51101,511,'Hojancha');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51102,511,'Monte Romo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51103,511,'Puerto Carrillo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (51104,511,'Huacas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60101,601,'Puntarenas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60102,601,'Pitahaya');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60103,601,'Chomes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60104,601,'Lepanto');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60105,601,'Paquera');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60106,601,'Manzanillo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60107,601,'Guacimal');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60108,601,'Barranca');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60109,601,'Monte Verde');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60110,601,'Isla del Coco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60111,601,'C�bano');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60112,601,'Chacarita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60113,601,'Chira');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60114,601,'Acapulco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60115,601,'Roble');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60116,601,'Arancibia');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60201,602,'Esp�ritu Santo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60202,602,'San Juan Grande');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60203,602,'Macacona');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60204,602,'San Rafael');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60205,602,'San Jer�nimo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60301,603,'Buenos Aires');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60302,603,'Volc�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60303,603,'Potrero Grande');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60304,603,'Boruca');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60305,603,'Pilas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60306,603,'Colinas o Bajo de Ma�z');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60307,603,'Ch�nguena');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60308,603,'Bioley');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60309,603,'Brunka');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60401,604,'Miramar');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60402,604,'Uni�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60403,604,'San Isidro');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60501,605,'Puerto Cort�s');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60502,605,'Palmar');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60503,605,'Sierpe');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60504,605,'Bah�a Ballena');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60505,605,'Piedras Blancas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60601,606,'Quepos');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60602,606,'Savegre');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60603,606,'Naranjito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60701,607,'Golfito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60702,607,'Puerto Jim�nez');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60703,607,'Guaycar�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60704,607,'Pavon');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60801,608,'San Vito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60802,608,'Sabalito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60803,608,'Agua Buena');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60804,608,'Limoncito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60805,608,'Pittier');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (60901,609,'Parrita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (61001,610,'Corredor');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES (61002,610,'La Cuesta');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (61003,610,'Paso Canoas');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (61004,610,'Laurel');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (61101,611,'Jac�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (61102,611,'T�rcoles');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70101,701,'Lim�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70102,701,'Valle La Estrella');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70103,701,'R�o Blanco');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70104,701,'Matama');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70201,702,'Gu�piles');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70202,702,'Jim�nez');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70203,702,'Rita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70204,702,'Roxana');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70205,702,'Cariari');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70206,702,'Colorado');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70301,703,'Siquirres');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70302,703,'Pacuarito');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70303,703,'Florida');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70304,703,'Germania');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70305,703,'Cairo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70306,703,'Alegr�a');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70401,704,'Bratsi');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70402,704,'Sixaola');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70403,704,'Cahuita');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70404,704,'Telire');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70501,705,'Matina');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70502,705,'Bat�n');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70503,705,'Carrand�');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70601,706,'Gu�cimo');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70602,706,'Mercedes');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70603,706,'Pocora');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70604,706,'R�o Jim�nez');
INSERT INTO distrito_cr (codigo_distrito,codigo_canton,nombre_distrito) VALUES  (70605,706,'Duacar�');

CREATE TABLE direccion(
  id_direccion number(10) NOT NULL constraint pk_id_direccion primary key,
  otras_senas varchar(70) NOT NULL,
  codigo_distrito number(10) NOT NULL,
  constraint fk_codigo_distrito FOREIGN KEY (codigo_distrito) REFERENCES direccion(id_direccion));
  

CREATE TABLE usuario_rol(
  id_usuarioRol number(10) NOT NULL constraint pk_id_usuarioRol primary key,
  nombre_rol varchar(20) NOT NULL,
  descripcion_rol varchar(20) NOT NULL);
  


CREATE TABLE usuario(
  id_usuario number(10) NOT NULL constraint pk_id_usuario primary key,
  nombre_usuario varchar(20) NOT NULL,
  contrasena varchar(20) NOT NULL,
  id_usuarioRol number(10) NOT NULL,
  constraint fk_id_usuarioRol FOREIGN KEY (id_usuarioRol) REFERENCES usuario(id_usuario));
  

CREATE TABLE persona(
  id_persona number(10) NOT NULL constraint pk_id_persona primary key,
  primer_nombre varchar(20) NOT NULL,
  segundo_nombre varchar(20),
  primer_apellido varchar(20) NOT NULL,
  segundo_apellido varchar(20) NOT NULL,
  fecha_nacimiento varchar(20) NOT NULL,
  num_identificacion varchar(20) NOT NULL,
  id_direccion number(10) NOT NULL,
  constraint fk_id_direccion FOREIGN KEY (id_direccion) REFERENCES persona(id_persona));
  

CREATE TABLE tipo_telefono(
  id_tipoTelefono number(10) NOT NULL constraint pk_id_tipoTelefono primary key,
  tipo_telefono varchar(20) NOT NULL);
  

  
CREATE TABLE telefono(
  id_telefono number(10) NOT NULL constraint pk_id_telefono primary key,
  numero_telefonico varchar(20) NOT NULL,
  id_tipoTelefono number(10) NOT NULL,
  constraint fk_id_tipoTelefono FOREIGN KEY (id_tipoTelefono) REFERENCES telefono(id_telefono),
  id_persona number(10) NOT NULL,
  constraint fk_id_persona FOREIGN KEY (id_persona) REFERENCES telefono(id_telefono));
  


CREATE TABLE tipo_correoE(
  id_tipoCorreoE number(10) NOT NULL constraint pk_id_tipoCorreoE primary key,
  tipo_correoE varchar(20) NOT NULL);
  

CREATE TABLE correo_electronico(
  id_correoE number(10) NOT NULL constraint pk_id_correoE primary key,
  correoElectronico varchar(20) NOT NULL,
  id_tipoCorreoE number(10) NOT NULL,
  constraint fk_id_tipoCorreoE FOREIGN KEY (id_tipoCorreoE) REFERENCES correo_electronico(id_correoE),
  id_persona number(10) NOT NULL,
  constraint fk_id_persona FOREIGN KEY (id_persona) REFERENCES correo_electronico(id_correoE));


CREATE TABLE proveedor(
  id_proveedor number(10) NOT NULL constraint pk_id_proveedor primary key,
  nombre_empresa varchar(30) NOT NULL,
  id_correoE number(10) NOT NULL,
  constraint fk_id_correoEProveedor FOREIGN KEY (id_correoE) REFERENCES proveedor(id_proveedor),
  id_telefono number(10) NOT NULL,
  constraint fk_id_telefonoProveedor FOREIGN KEY (id_telefono) REFERENCES proveedor(id_proveedor),
  id_direccion number(10) NOT NULL,
  constraint fk_id_direccionProveedor FOREIGN KEY (id_direccion) REFERENCES proveedor(id_proveedor));


CREATE TABLE cliente(
  id_cliente number(10) NOT NULL constraint pk_id_cliente primary key,
  nombre_empresa varchar(30) NOT NULL,
  id_persona number(10) NOT NULL,
  constraint fk_id_personaCliente FOREIGN KEY (id_persona) REFERENCES cliente(id_cliente));


CREATE TABLE cargo_laboral(
  id_cargo number(10) NOT NULL constraint pk_id_cargo primary key,
  nombre_cargo varchar(30) NOT NULL,
  descripcion_cargo varchar(30) NOT NULL,
  salario_maximo varchar(30) NOT NULL,
  salario_minimo varchar(30) NOT NULL);


CREATE TABLE sucursal(
  id_sucursal number(10) NOT NULL constraint pk_id_sucursal primary key,
  nombre_sucursal varchar(30) NOT NULL,
  id_direccion number(10) NOT NULL,
  constraint fk_id_direccionSucursal FOREIGN KEY (id_direccion) REFERENCES sucursal(id_sucursal));


CREATE TABLE empleado(
  id_empleado number(10) NOT NULL constraint pk_id_empleado primary key,
  horas_labor_mes number(30) NOT NULL,
  id_persona number(10) NOT NULL,
  constraint fk_id_personaEmpleado FOREIGN KEY (id_persona) REFERENCES empleado(id_empleado),
  id_cargo number(10) NOT NULL,
  constraint fk_id_cargoLaboral FOREIGN KEY (id_cargo) REFERENCES empleado(id_empleado),
  id_sucursal number(10) NOT NULL,
  constraint fk_id_sucursal FOREIGN KEY (id_sucursal) REFERENCES empleado(id_empleado)); 
  
  
CREATE TABLE cliente(
  id_cliente number(10) NOT NULL constraint pk_id_cliente primary key,
  nombre_sucursal varchar(30) NOT NULL,
  id_direccion number(10) NOT NULL,
  constraint fk_id_direccionSucursal FOREIGN KEY (id_direccion) REFERENCES sucursal(id_sucursal));
  

CREATE TABLE categoria(
  id_categoria number(10) NOT NULL constraint pk_id_categoria primary key,
  nombre_categoria varchar(40) NOT NULL,
  descripcion_categoria varchar(60)not null); 
  
 
CREATE TABLE marca(
  id_categoria number(10) NOT NULL constraint pk_id_categoria primary key,
  nombre_categoria varchar(40) NOT NULL,
  descripcion_categoria varchar(60)not null);  
  
CREATE TABLE producto(
  id_producto number(10) NOT NULL constraint pk_id_producto primary key,
  nombre_producto varchar(30) NOT NULL,
  fecha_produccion number(10) NOT NULL,
  fecha_vencimiento number(10) NOT NULL,
  cantidad number(30) NOT NULL,
  precio_producto varchar(50) NOT NULL,
  descripcion_producto varchar(60) NOT NULL,
  id_proveedor number(10) NOT NULL,
  constraint fk_id_proveedor FOREIGN KEY (id_proveedor) REFERENCES producto(id_producto),
  id_categoria number(10) NOT NULL,
  constraint fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES producto(id_producto),
  id_marca number(10) NOT NULL,
  constraint fk_id_marca FOREIGN KEY (id_marca) REFERENCES producto(id_producto)); 
  

CREATE TABLE producto_proveedor(
  id_producto_proveedor number(10) NOT NULL constraint pk_id_producto_proveedor primary key,
  id_producto number(10) NOT NULL,
  constraint fk_id_producto2 FOREIGN KEY (id_producto) REFERENCES producto_proveedor(id_producto_proveedor),
  id_proveedor number(10) NOT NULL,
  constraint fk_id_proveedor2 FOREIGN KEY (id_proveedor) REFERENCES producto_proveedor(id_producto_proveedor));
  
  