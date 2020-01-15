insert into FER_PROFESIONES values (1,'Ingeniero',2.5);
insert into FER_CARGOS values (1,'Gerente'); 
insert into FER_EMPLEADOS values (4,'Byron','Godoy','Ricaurte','0107377021','byron1@hotmail.com','byron','masculino','4077632',1);
commit;

select * from FER_CLIENTES;
SELECT * FROM FER_CLIENTES WHERE CLI_CEDULA = '0107377020';
select max(CLI_CODIGO)+1 as id from FER_CLIENTES;
commit;

SELECT * FROM FER_CLIENTES WHERE CLI_CEDULA = '0107128100';

SELECT CLI_CODIGO,CLI_NOMBRE,CLI_APELLIDO,CLI_DIRECCION,CLI_CEDULA,CLI_EMAIL,CLI_NUM_TARJETA,
CLI_GENERO,CLI_TELEFONO,PRO_PROFESION
FROM FER_CLIENTES C, FER_PROFESIONES P
WHERE C.PROFESION_PRO_CODIGO=P.PRO_CODIGO AND P.PRO_PROFESION='Ingeniero';


SELECT CLI_CODIGO,CLI_NOMBRE,CLI_APELLIDO,CLI_DIRECCION,CLI_CEDULA,
CLI_EMAIL,CLI_NUM_TARJETA,CLI_GENERO,CLI_TELEFONO,PRO_PROFESION 
FROM FER_CLIENTES C, FER_PROFESIONES P WHERE C.CLI_NOMBRE LIKE 'Byron%' 
AND C.PROFESION_PRO_CODIGO=P.PRO_CODIGO;


select * from FER_PROFESIONES;

select * from FER_CATEGORIAS;
select * from FER_TIPO_MEDIDAS;
select * from FER_PROVEEDORES;
select * from FER_PRODUCTOS;
SELECT * FROM FER_PRODUCTO_PROVEEDORES;

FER_PROD_PROV_FER_PROD_FK;


insert into FER_PRODUCTO_PROVEEDORES VALUES (FER_pRODUCTO_PROVEEDORES_SEQ.NEXTVAL,15,1,1);

insert into FER_PRODUCTO_PROVEEDORES VALUES (FER_pRODUCTO_PROVEEDORES_SEQ.NEXTVAL,20,1,2);
insert into FER_PRODUCTO_PROVEEDORES VALUES (FER_pRODUCTO_PROVEEDORES_SEQ.NEXTVAL,26,2,3);
insert into FER_PRODUCTO_PROVEEDORES VALUES (FER_pRODUCTO_PROVEEDORES_SEQ.NEXTVAL,15,2,4);
commit;