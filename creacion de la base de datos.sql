--Creacion de la base de datos 

create tablespace food
datafile 'C:\Users\Lenovo\Documents\NetBeansProjects\FoodAdmin\BD\food.dbf' size 250M
default storage (initial 1m next 1m pctincrease 0);

/* Creación de usuarios */
--usar este comando si no se tiene la vercion 11 --> alter session set "_ORACLE_SCRIPT"=true;
create user LBD identified by LBD06
default tablespace food
temporary tablespace temp;

/* Otorgar permisos */
grant connect,resource to LBD;
/* Asignar quota */
alter user LBD quota unlimited on food; -- quota ilimitada