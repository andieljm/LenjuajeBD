--paquetes
set SERVEROUTPUT on;
--cabecera
create or replace PACKAGE hotelf
is
 

 function suma(pa in number, pe in number) return number ;



END;
-- paquete cuerpo
create or replace PACKAGE BODY hotelf
is
 
    
    
    function suma(pa in number, pe in number) return number
    is
    suma number(10);
    begin
    
    suma := pa + pe;
    
    return suma;
    end;

end;

select hotelf.suma(2,2) from dual;


select p.nombre_empresa,ce.correoelectronico,t.numero_telefonico 
from proveedor p
inner join correo_electronico ce
on p.id_correoe = ce.id_correoe
inner join telefono t
on t.id_telefono = p.id_telefono;



