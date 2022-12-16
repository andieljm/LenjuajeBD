--paquetes
set SERVEROUTPUT on;
--cabecera
create or replace PACKAGE bodega
is
 

 PROCEDURE crearuser(nom in varchar2,cla in varchar2,r in VARCHAR2);
 PROCEDURE n_cliente(nom in varchar2,nom2 in varchar2,ape in VARCHAR2,ape2 in varchar2,fecha in varchar2,
 cedula in VARCHAR2,dirre in varchar2,tel in varchar2,corre in varchar2);
 PROCEDURE crearsucur(nom in varchar2,dir in varchar2,dis in number);
 PROCEDURE registro_producto(
                            param_nombre_prod IN varchar2,
                            param_fecha_produc IN varchar2,
                            param_fecha_venc IN varchar2,
                            param_cant IN number,
                            param_precio_prod IN number,
                            param_descrip_prod IN varchar2,
                            param_id_prov IN number,
                            param_id_cate IN number,
                            param_id_marca IN number);
 PROCEDURE nuevo_pro(nom in varchar2,correo in varchar2, cel in varchar2);
 PROCEDURE eliminaC(ced in varchar2);
 PROCEDURE eliminaP(nom in varchar2);
 PROCEDURE modiP(mnom IN varchar2, ncant IN number);
 PROCEDURE M_cliente(cedula in VARCHAR2,dirre in varchar2,tel in varchar2,corre in varchar2);
 PROCEDURE factura(pro in VARCHAR2,cli in varchar2,cant in number);

END;
-- paquete cuerpo
create or replace PACKAGE BODY bodega
is
 
    
----1    
    PROCEDURE crearuser(nom in varchar2,cla in varchar2,r in VARCHAR2)
    as
    
    BEGIN
    insert into usuario (nombre_usuario,contrasena,id_usuarioRol) values (nom,cla,r);
     
    end;
--------2
  PROCEDURE n_cliente(nom in varchar2,nom2 in varchar2,ape in VARCHAR2,ape2 in varchar2,fecha in varchar2,
    cedula in VARCHAR2,dirre in varchar2,tel in varchar2,corre in varchar2)
    as
    d number(10);
    t number(10);
    c number(10);
    cli number(10);
    cont number(10);
    cursor  c_dirre is select id_direccion
	  from  direccion;
      cursor  c_tel is select id_telefono 
	  from  telefono;
      cursor  c_corre is select id_correoe 
	  from  correo_electronico;
      cursor  c_personas is select id_persona 
	  from  persona;
    BEGIN
    --contador
    for var_fila1 in c_dirre loop 
        cont := var_fila1.id_direccion;
	end loop;
    cont := cont + 1;
    --insert
    insert into direccion (id_direccion,otras_senas,codigo_distrito) values (cont,dirre,10701);
    insert into telefono (numero_telefonico,id_tipotelefono) values (tel,1);
    insert into correo_electronico (correoElectronico,id_tipoCorreoE) values (corre,1);
    --dirrecion
    for var_fila1 in c_dirre loop 
        d := var_fila1.id_direccion;
	end loop;
    --telefono
    for var_fila2 in c_tel loop 
        t := var_fila2.id_telefono;
	end loop;
    --correo
    for var_fila3 in c_corre loop 
        c := var_fila3.id_correoe;
	end loop;
    --insert
    insert into persona (primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,num_identificacion,id_direccion,id_telefono,id_correoE) 
     values (nom,nom2,ape,ape2,fecha,cedula,d,t,c);
     --cliente
    for var_fila4 in c_personas loop 
        cli := var_fila4.id_persona;
	end loop;
    insert into cliente (id_persona) values (cli);
    
    end;
--------3
PROCEDURE crearsucur(nom in varchar2,dir in varchar2,dis in number)
 as
 cont number(5);
  dr number(5);
    cursor  c_dirre is select id_direccion
	  from  direccion;
    BEGIN
     --contador
    for var_fila1 in c_dirre loop 
        cont := var_fila1.id_direccion;
	end loop;
    cont := cont + 1;
    insert into direccion (id_direccion,otras_senas,codigo_distrito) values (cont,dir,dis);
    ---
    for var_fila1 in c_dirre loop 
        dr := var_fila1.id_direccion;
	end loop;
    --sucursal 
     insert into sucursal(nombre_sucursal,id_direccion) values (nom,dr);
    end;
------4
PROCEDURE registro_producto(
                            param_nombre_prod IN varchar2,
                            param_fecha_produc IN varchar2,
                            param_fecha_venc IN varchar2,
                            param_cant IN number,
                            param_precio_prod IN number,
                            param_descrip_prod IN varchar2,
                            param_id_prov IN number,
                            param_id_cate IN number,
                            param_id_marca IN number)
AS 
BEGIN
  INSERT INTO producto(
            nombre_producto,
            fecha_produccion,
            fecha_vencimiento,
            cantidad,
            precio_producto,
            descripcion_producto,
            id_proveedor,
            id_categoria,
            id_marca)
        VALUES (param_nombre_prod,
            param_fecha_produc,
            param_fecha_venc,
            param_cant,
            param_precio_prod,
            param_descrip_prod,
            param_id_prov,
            param_id_cate,
            param_id_marca);    
END;
----5
PROCEDURE nuevo_pro(nom in varchar2,correo in varchar2, cel in varchar2)
as
 cont number(5);
  dr number(5);
    cursor  c_corre is select id_correoe
	  from  correo_electronico;
      cursor  c_tel is select id_telefono
	  from  telefono;
    BEGIN
    insert into telefono (numero_telefonico,id_tipotelefono) values (cel,1);
    insert into correo_electronico (correoElectronico,id_tipoCorreoE) values (correo,1);
     --correo
    for var_fila1 in c_corre loop 
        dr := var_fila1.id_correoe;
	end loop;
    --tel
    for var_fila1 in c_tel loop 
        cont := var_fila1.id_telefono;
	end loop;
    insert into proveedor (nombre_empresa,id_correoe,id_telefono,id_direccion) values (nom,dr,cont,9);
    end;
---6 -- eliminar
PROCEDURE eliminaC(ced in varchar2)
as

begin
delete from persona where persona.num_identificacion = ced; 

end;
---7 eliminar producto
PROCEDURE eliminaP(nom in varchar2)
as

begin
delete from producto where nombre_producto = nom; 

end;

--modificar
----8 modificar cantiadad
PROCEDURE modiP(mnom IN varchar2, ncant IN number)
AS 
BEGIN
  UPDATE PRODUCTO SET cantidad = ncant
  WHERE nombre_producto = mnom;
END;
--9 modificar cliente
PROCEDURE M_cliente(cedula in VARCHAR2,dirre in varchar2,tel in varchar2,corre in varchar2)
AS
dir varchar2(40);
tele varchar2(40);
cr varchar2(40);
BEGIN
--direccion
  select p.id_direccion into dir from persona p
  inner join direccion d 
  on d.id_direccion = p.id_direccion
  where cedula = p.num_identificacion;
  UPDATE direccion SET  OTRAS_SENAS = dirre 
  WHERE ID_DIRECCION = dir;
  ---telefono
  select p.ID_TELEFONO into tele from persona p
  inner join telefono t 
  on t.ID_TELEFONO = p.ID_TELEFONO
  where cedula = p.num_identificacion;
  UPDATE telefono SET  numero_telefonico = tel 
  WHERE ID_TELEFONO = tele;
  --correo
  select p.ID_CORREOE into cr from persona p
  inner join correo_electronico c
  on c.ID_CORREOE = p.ID_CORREOE
  where cedula = p.num_identificacion;
  UPDATE correo_electronico SET  correoelectronico = corre
  WHERE ID_CORREOE = cr;
END;
--- 10 crear factura
PROCEDURE factura(pro in VARCHAR2,cli in varchar2,cant in number)
as
cont number(5);
  fi number(5);
  prot varchar2(30);
  cliw varchar2(30);
    cursor  c_fac is select ID_DETALLE
	  from  detallefactura;
    BEGIN
    ---pro
    select p.ID_PRODUCTO into prot
    from producto p
    where pro = p.NOMBRE_PRODUCTO;
    ---precio pro
    select p.PRECIO_PRODUCTO into fi
    from producto p
    where pro = p.NOMBRE_PRODUCTO;
    ---cliente
   select c.ID_CLIENTE into cliw 
   from persona p
  inner join cliente c
  on c.ID_PERSONA = p.ID_PERSONA
  where cli = p.PRIMER_NOMBRE;
    ----
     insert into detallefactura (id_producto,id_cliente,cantidad) values (prot,cliw,cant);
     --contador
    for var_fila1 in c_fac loop 
        cont := var_fila1.ID_DETALLE;
	end loop;
    fi := fi * cant;
    insert into Factura (id_detalle,fecha,pago) values (cont,sysdate,fi);
   
end;
---fin
end;
-----fin de paquete
---crear factura
execute bodega.factura('consome_de_pollo','pedro',5);
---eliminar
--- eliminar cliente
execute bodega.eliminac('12345');
---eliminar producto
execute bodega.eliminaP('res');
---modificar
---modificar cliente
execute bodega.m_cliente('','dir','cel','corre');
--modificar cantidad
execute bodega.modip('consome_de_pollo',150);
--crear
--proveedor
execute bodega.nuevo_pro('prana','prana@gmail.com','1211-2222');
---Producto
execute bodega.registro_producto('harina','2/20/2020','1/21/2022',100,2500,'alimento en polvo',2,1,1);
---sucursal
execute bodega.crearsucur('DR3','bodega verde',10101);
--usuario
execute bodega.crearuser('luis','222',2);
--cliente
EXECUTE bodega.n_cliente('martin','joel','keng','garcia','1/02/2002','122-2455','casa verde','2164-3421','figuel@gmail.com');

