
CREATE TABLE direccion(
  id_direccion number(10) NOT NULL constraint pk_id_direccion primary key,
  otras_senas varchar2(70) NOT NULL,
  codigo_distrito number(10) NOT NULL,
  constraint fk_codigo_distrito FOREIGN KEY (codigo_distrito) REFERENCES distrito_cr(codigo_distrito)on delete cascade);

--datos
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (1,'casa de color roja',10101);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (2,'casa de color azul',10102);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (3,'casa de color verde',10103);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (4,'casa de dos pisos',10104);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (5,'casa de amarilla',10105);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (6,'casa de esquinera',10106);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (7,'bodega azul',10201);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (8,'oficina',10202);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (9,'gran edificio',10302);
insert into direccion (id_direccion,otras_senas,codigo_distrito) values (10,'edifico verde',10301);


CREATE TABLE usuario_rol(
  id_usuarioRol number(10) GENERATED by default on null as IDENTITY constraint pk_id_usuarioRol primary key,
  nombre_rol varchar(20) NOT NULL,
  descripcion_rol varchar(30) NOT NULL);
--datos
insert into usuario_rol (nombre_rol,descripcion_rol) values ('administrador','administrar el programa');
insert into usuario_rol (nombre_rol,descripcion_rol) values ('empleado','facturacion y inventario');
  
  
CREATE TABLE usuario(
  id_usuario number(10) GENERATED by default on null as IDENTITY constraint pk_id_usuario primary key,
  nombre_usuario varchar(20) NOT NULL,
  contrasena varchar(20) NOT NULL,
  id_usuarioRol number(10) NOT NULL,
  constraint fk_id_usuarioRol FOREIGN KEY (id_usuarioRol) REFERENCES usuario_rol(id_usuarioRol));
--datos
insert into usuario (nombre_usuario,contrasena,id_usuarioRol) values ('admin','admin',1);
insert into usuario (nombre_usuario,contrasena,id_usuarioRol) values ('user','123',2);

----
create TABLE tipo_telefono(
  id_tipoTelefono number(10) GENERATED by default on null as IDENTITY constraint pk_id_tipoTelefono primary key,
  tipo_telefono varchar(20) NOT NULL);
  
--datos
insert into tipo_telefono (tipo_telefono) values ('+506');
insert into tipo_telefono (tipo_telefono) values ('+504');
  
create TABLE telefono(
  id_telefono number(10) GENERATED by default on null as IDENTITY constraint pk_id_telefono primary key,
  numero_telefonico varchar(20) NOT NULL,
  id_tipoTelefono number(10) NOT NULL,
  constraint fk_id_tipoTelefono FOREIGN KEY (id_tipoTelefono) REFERENCES tipo_telefono(id_tipoTelefono)on delete cascade);
 
--datos
insert into telefono (numero_telefonico,id_tipoTelefono) values (54738228,1);
insert into telefono (numero_telefonico,id_tipoTelefono) values (78738228,1);
insert into telefono (numero_telefonico,id_tipoTelefono) values (99738228,1);
insert into telefono (numero_telefonico,id_tipoTelefono) values (00738228,2);
insert into telefono (numero_telefonico,id_tipoTelefono) values (32228228,2);
insert into telefono (numero_telefonico,id_tipoTelefono) values (22348228,2);
insert into telefono (numero_telefonico,id_tipoTelefono) values (45668228,1);
insert into telefono (numero_telefonico,id_tipoTelefono) values (45678228,2);
insert into telefono (numero_telefonico,id_tipoTelefono) values (223458228,2);

-----
CREATE TABLE tipo_correoE(
  id_tipoCorreoE number(10) GENERATED by default on null as IDENTITY constraint pk_id_tipoCorreoE primary key,
  tipo_correoE varchar(20) NOT NULL);
--datos
insert into tipo_correoE (tipo_correoE) values ('gmail');
insert into tipo_correoE (tipo_correoE) values ('hotmail');
  
CREATE TABLE correo_electronico(
  id_correoE number(10) GENERATED by default on null as IDENTITY constraint pk_id_correoE primary key,
  correoElectronico varchar(20) NOT NULL,
  id_tipoCorreoE number(10) NOT NULL,
  constraint fk_id_tipoCorreoE FOREIGN KEY (id_tipoCorreoE) REFERENCES tipo_correoE(id_tipoCorreoE)on delete cascade);
--datos
insert into correo_electronico (correoElectronico,id_tipoCorreoE) values ('uni@gmail.com',1);
insert into correo_electronico (correoElectronico,id_tipoCorreoE) values ('panini@gmail.com',1);
insert into correo_electronico (correoElectronico,id_tipoCorreoE) values ('seiya@gmail.com',1);
insert into correo_electronico (correoElectronico,id_tipoCorreoE) values ('vene@hotmail.com',2);
insert into correo_electronico (correoElectronico,id_tipoCorreoE) values ('osca@hotmail.com',2);
insert into correo_electronico (correoElectronico,id_tipoCorreoE) values ('juan@hotmail.com',2);
    
-----
CREATE TABLE persona(
  id_persona number(10) GENERATED by default on null as IDENTITY constraint pk_id_persona primary key,
  primer_nombre varchar(20) NOT NULL,
  segundo_nombre varchar(20),
  primer_apellido varchar(20),
  segundo_apellido varchar(20),
  fecha_nacimiento varchar(20),
  num_identificacion varchar(20) NOT NULL,
  id_direccion number(10) NOT NULL,
  id_telefono number (10),
  id_correoE number(10),
  constraint fk_id_direccion FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion) on delete cascade,
  constraint fk_id_telefono FOREIGN KEY (id_telefono) REFERENCES telefono(id_telefono) on delete cascade,
  constraint fk_id_correoE FOREIGN KEY (id_correoE) REFERENCES correo_electronico(id_correoE)on delete cascade);
  
--datos
--empleados
insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
values ('juan','joel','lopez','madrigal','12/12/2000','111-1111',1,1,1);
insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
values ('pedro','diego','sanches','madrigal','02/10/1995','222-2212',2,2,2);
insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
values ('victor','joel','guzman','ortega','23/07/1995','144-1311',3,3,3);
-- clientes
insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
values ('josue','derian','huhson','valladares','12/12/1985','1543-1451',4,4,4);
insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
values ('jostin','marco','virilla','brenes','05/12/1999','331-2121',5,5,5);
insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
values ('diego','polo','jimenez','gomez','12/01/1994','554-1561',6,6,6);


CREATE TABLE cliente(
  id_cliente number(10) GENERATED by default on null as IDENTITY constraint pk_id_cliente primary key,
  id_persona number(10) NOT NULL,
  constraint fk_id_personaCliente FOREIGN KEY (id_persona) REFERENCES persona(id_persona)on delete cascade);
--datos
insert into cliente (id_persona) values (1);
insert into cliente (id_persona) values (2);
insert into cliente (id_persona) values (3);

CREATE TABLE cargo_laboral(
  id_cargo number(10) GENERATED by default on null as IDENTITY constraint pk_id_cargo primary key,
  nombre_cargo varchar(30) NOT NULL,
  descripcion_cargo varchar(30) NOT NULL,
  salario decimal(10,2) NOT NULL);
--datos
insert into cargo_laboral(nombre_cargo,descripcion_cargo,salario) values ('adminitrador','administrar empresa',250000.00);
insert into cargo_laboral(nombre_cargo,descripcion_cargo,salario) values ('cajero','facturar y inventario',176000.00);
insert into cargo_laboral(nombre_cargo,descripcion_cargo,salario) values ('produncion','encargado de bodega',150000.00);

------
CREATE TABLE sucursal(
  id_sucursal number(10) GENERATED by default on null as IDENTITY constraint pk_id_sucursal primary key,
  nombre_sucursal varchar(30) NOT NULL,
  id_direccion number(10) NOT NULL,
  constraint fk_id_direccionSucursal FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)on delete cascade);
--datos
insert into sucursal(nombre_sucursal,id_direccion) values ('DR',7);
insert into sucursal(nombre_sucursal,id_direccion) values ('DR2',8);
------
create TABLE empleado(
  id_empleado number(10) GENERATED by default on null as IDENTITY constraint pk_id_empleado primary key,
  horas_labor_mes number(30) NOT NULL,
  id_persona number(10) NOT NULL,
  constraint fk_id_personaEmpleado FOREIGN KEY (id_persona) REFERENCES persona(id_persona)on delete cascade,
  id_cargo number(10) NOT NULL,
  constraint fk_id_cargoLaboral FOREIGN KEY (id_cargo) REFERENCES cargo_laboral(id_cargo)on delete cascade,
  id_sucursal number(10) NOT NULL,
  constraint fk_id_sucursal FOREIGN KEY (id_sucursal) REFERENCES sucursal(id_sucursal)on delete cascade);
  
  
--datos
insert into empleado(horas_labor_mes,id_persona,id_cargo,id_sucursal) values (150,4,1,1);
insert into empleado(horas_labor_mes,id_persona,id_cargo,id_sucursal) values (120,5,2,1);
insert into empleado(horas_labor_mes,id_persona,id_cargo,id_sucursal) values (130,6,3,1);
  
-------
CREATE TABLE categoria(
  id_categoria number(10) GENERATED by default on null as IDENTITY constraint pk_id_categoria primary key,
  nombre_categoria varchar(40) NOT NULL,
  descripcion_categoria varchar(60)not null); 
  
--datos
insert into  categoria(nombre_categoria,descripcion_categoria) values ('condimentos','alimenos en polvo');
insert into  categoria(nombre_categoria,descripcion_categoria) values ('batidos','alimenos en jugo');

CREATE TABLE marca(
  id_marca number(10) GENERATED by default on null as IDENTITY constraint pk_id_marca primary key,
  nombre_marca varchar(40) NOT NULL);
--datos
insert into  marca(nombre_marca) values ('batiloco');
insert into  marca(nombre_marca) values ('condiloco');

-----  
CREATE TABLE proveedor(
  id_proveedor number(10) GENERATED by default on null as IDENTITY constraint pk_id_proveedor primary key,
  nombre_empresa varchar(30) NOT NULL,
  id_correoE number(10) NOT NULL,
  constraint fk_id_correoEProveedor FOREIGN KEY (id_correoE) REFERENCES correo_electronico(id_correoE)on delete cascade,
  id_telefono number(10) NOT NULL,
  constraint fk_id_telefonoProveedor FOREIGN KEY (id_telefono) REFERENCES telefono(id_telefono)on delete cascade,
  id_direccion number(10) NOT NULL,
  constraint fk_id_direccionProveedor FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)on delete cascade);

--datos
insert into  proveedor(nombre_empresa,id_correoE,id_telefono,id_direccion) values ('patitos',2,3,9);
insert into  proveedor(nombre_empresa,id_correoE,id_telefono,id_direccion) values ('focus',3,4,10);

----
CREATE TABLE producto(
  id_producto number(10) GENERATED BY DEFAULT ON NULL AS IDENTITY constraint pk_id_producto primary key,
  nombre_producto varchar2(30) NOT NULL,
  fecha_produccion varchar2(10) NOT NULL,
  fecha_vencimiento varchar2(10) NOT NULL,
  cantidad number(10) NOT NULL,
  precio_producto number(10) NOT NULL,
  descripcion_producto varchar2(60) NOT NULL,
  id_proveedor number(10) NOT NULL,
  constraint fk_id_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor)on delete cascade,
  id_categoria number(10) NOT NULL,
  constraint fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)on delete cascade,
  id_marca number(10) NOT NULL,
  constraint fk_id_marca FOREIGN KEY (id_marca) REFERENCES marca(id_marca)on delete cascade);
 
--datos
--consomes
insert into producto (nombre_producto,fecha_produccion,fecha_vencimiento,cantidad,precio_producto,descripcion_producto,id_proveedor,id_categoria,id_marca) values 
('consome_de_pollo','01-01-2020','02-02-2021',200,2500,'consome de pollo alimenticio',1,1,2);
insert into producto (nombre_producto,fecha_produccion,fecha_vencimiento,cantidad,precio_producto,descripcion_producto,id_proveedor,id_categoria,id_marca) values 
('consome_de_mariscos','02-02-2020','03-03-2021',150,3500,'consome de mariscos alimenticio',1,1,2);
--batidos
insert into producto (nombre_producto,fecha_produccion,fecha_vencimiento,cantidad,precio_producto,descripcion_producto,id_proveedor,id_categoria,id_marca) values 
('Batido_de_fresa','21-03-2020','04-02-2021',75,4500,'batido de fresa alimenticio',2,2,1);
insert into producto (nombre_producto,fecha_produccion,fecha_vencimiento,cantidad,precio_producto,descripcion_producto,id_proveedor,id_categoria,id_marca) values 
('Batido_de_coco','19-02-2020','01-02-2021',50,5000,'batido de coco alimenticio',2,2,1);
  
--facturas
--detalle factura
create table detalleFactura(
 id_detalle number(10) GENERATED BY DEFAULT ON NULL AS IDENTITY constraint pk_id_detalle primary key,
 id_producto number(10),
 id_cliente number(10),
 cantidad number(10),
 constraint fk_id_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto)on delete cascade,
 constraint fk_id_clientedf FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)on delete cascade);

--datos
insert into detalleFactura (id_producto,id_cliente,cantidad) values (1,1,5);

--factura cabeza
create table Factura(
id_factura number(10) GENERATED BY DEFAULT ON NULL AS IDENTITY constraint pk_id_factura primary key,
id_detalle number(10), 
fecha varchar2(30),
pago number(10),
constraint fk_id_detalle FOREIGN KEY (id_detalle) REFERENCES detalleFactura(id_detalle)on delete cascade
);

--datos
insert into Factura (id_detalle,fecha,pago) values (1,sysdate,12500);

--fin de creacion de base de datos







  
  
