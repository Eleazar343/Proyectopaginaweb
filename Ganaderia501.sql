create table corral (
  clave_corral VARCHAR2(5),
  ubicacion VARCHAR2 (100),
  capacidad  NUMERIC
   );
   
create table toro (
  id_toro VARCHAR2(5),
  clave_corral VARCHAR2(5),
  id_alimentacion VARCHAR2(6),
  raza VARCHAR2(30),
  peso VARCHAR2(10),
  edad int,
  num_toro int
  );
  
create table vacunacion (
  id_vacunacion VARCHAR2(10),
  fecha_vacunacion date,
  fecha_prox_vac date
  );
  
create table detalle_vacuna (
  clave_vac VARCHAR2(5),
  nombre_v VARCHAR2(50),
  descripcion VARCHAR2(100),
  tipo_vacunacion VARCHAR2(20),
  vigencia_vac date,
  dosis VARCHAR2(50),
  id_toro VARCHAR2(5),
  id_vacunacion VARCHAR2(10)
   );
  
create table alimentacion (
  id_alimentacion VARCHAR2(6),
  tipo_alimentacion VARCHAR2(50),
  costo_alimentacion float,
  cantidad int ,
  id_insumo VARCHAR2(7)
   );
   
create table insumo (
  id_insumo VARCHAR2(7),
  nombre_insumo VARCHAR2(40),
  fecha_adquisicion DATE,
  cantidad FLOAT,
  costo VARCHAR2(10),
  id_proveedor VARCHAR2(4)
  );
  
create table proveedor(
  id_proveedor VARCHAR2(4),
  nombre_prov VARCHAR2(20),
  apellido_p_p VARCHAR2(20),
  apellido_m_p VARCHAR2(20),
  direccion VARCHAR2(100),
  telefono int
   );
  CREATE TABLE login (
  correo varchar(50) NOT NULL,
  pass varchar(50) NOT NULL,
  usu varchar(50) NOT NULL,
  nivel varchar(50) NOT NULL  
);

  //Primary Key
  constraint pk_corral primary key (clave_corral);
  CONSTRAINT pk_toro PRIMARY KEY (id_toro);
  CONSTRAINT pk_vacunacion PRIMARY KEY (id_vacunacion);
  CONSTRAINT pk_detalle_vac PRIMARY KEY (clave_vac);
  CONSTRAINT pk_alimentacion PRIMARY KEY (id_alimentacion);
  CONSTRAINT pk_insumo PRIMARY KEY (id_insumo);
  CONSTRAINT pk_proveedor PRIMARY KEY (id_proveedor));
  ///Foreing Key 
  CONSTRAINT fk_alimentacion FOREIGN KEY  (id_alimentacion) references alimentacion (id_alimentacion));
  CONSTRAINT fk_toro FOREIGN KEY (id_toro) REFERENCES toro (id_toro),
  CONSTRAINT fk_vac FOREIGN KEY (id_vacunacion)REFERENCES vacunacion (id_vacunacion));
  CONSTRAINT fk_insumo FOREIGN KEY  (id_insumo) REFERENCES insumo (id_insumo)); 
  CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor)); 

//*LLENADO DE DATOS*/

INSERT INTO corral (clave_corral, ubicacion, capacidad) VALUES ('C001', 'Corral central ', 40);
INSERT INTO corral (clave_corral, ubicacion, capacidad) VALUES ('C002', 'Corral sur', 25);
INSERT INTO corral (clave_corral, ubicacion, capacidad) VALUES ('C003', 'Corral norte',60);
INSERT INTO corral (clave_corral, ubicacion, capacidad) VALUES ('C004', 'Corral oeste',15);


Select * from vacunacion;
--6 meses
INSERT INTO vacunacion VALUES ('VAC001','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC002','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC003','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC004','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC005','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC006','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC007','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC008','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC009','13/06/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC010','13/06/2023','13/12/2023');
--3 meses
INSERT INTO vacunacion VALUES ('VAC011','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC012','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC013','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC014','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC015','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC016','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC017','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC018','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC019','13/09/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC020','13/09/2023','13/12/2023');
---4 mese
INSERT INTO vacunacion VALUES ('VAC021','13/08/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC022','13/08/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC023','13/08/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC024','13/08/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC025','13/08/2023','13/12/2023');
--1 a�o
INSERT INTO vacunacion VALUES ('VAC026','13/01/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC027','13/01/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC028','13/01/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC029','13/01/2023','13/12/2023');
INSERT INTO vacunacion VALUES ('VAC030','13/01/2023','13/12/2023');

--- ALIMENTACION 

INSERT INTO alimentacion values ('A001','Engorda',780,'10 ', 'INS005');
INSERT INTO alimentacion values ('A002','Crecimiento',578,'8 ','INS006');
INSERT INTO alimentacion values ('A003','Volumen',345,'6 ', 'INS065');
INSERT INTO alimentacion values ('A004','Maduracion',689,'5 ','INS062');
INSERT INTO alimentacion values ('A005','Etapa de ensachamiento',890,'5 ','INS044');

--------llenado de tabla prove

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS001', 'Ma�z', TO_DATE('2023-11-04', 'YYYY-MM-DD'), 5000.0, '1000.00', '9001');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS002', 'Galleta', TO_DATE('2023-11-04', 'YYYY-MM-DD'), 3000.0, '800.00', '9005');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS003', 'Alfalfa', TO_DATE('2023-11-04', 'YYYY-MM-DD'), 1000.0, '1200.00', '9002');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS004', 'Harina de Soya', TO_DATE('2023-11-06', 'YYYY-MM-DD'), 2500.0, '1500.00', '9003');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS005', 'Gallinaza', TO_DATE('2023-11-07', 'YYYY-MM-DD'), 1800.0, '900.00', '9004');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS006', 'Sal Mineral', TO_DATE('2023-11-08', 'YYYY-MM-DD'), 300.0, '300.00', '9004');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS040', 'Melaza', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 800.0, '600.00', '9002');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS041', 'Alimento Concentrado 40 %', TO_DATE('2023-11-11', 'YYYY-MM-DD'), 3500.0, '1200.00', '9001');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS042', 'Hurea', TO_DATE('2023-11-12', 'YYYY-MM-DD'), 2000.0, '800.00', '9003');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS043', 'Zacate', TO_DATE('2023-11-13', 'YYYY-MM-DD'), 500.0, '250.00', '9002');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS044', 'Sal Clembuteralizada', TO_DATE('2023-11-14', 'YYYY-MM-DD'), 1200.0, '600.00', '9001');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS045', 'Minerales para Ganado', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 300.0, '300.00', '9003');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS060', 'Maiz Verde', TO_DATE('2023-11-17', 'YYYY-MM-DD'), 1800.0, '700.00', '9004');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS061', 'Cebada', TO_DATE('2023-11-18', 'YYYY-MM-DD'), 4000.0, '1100.00', '9005');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS062', 'Silos de Ma�z', TO_DATE('2023-11-19', 'YYYY-MM-DD'), 6000.0, '1500.00', '9001');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS063', 'Salvado de trigo', TO_DATE('2023-11-20', 'YYYY-MM-DD'), 150.0, '350.00', '9005');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS064', 'Sal Cebadero', TO_DATE('2023-11-21', 'YYYY-MM-DD'), 2200.0, '900.00', '9003');

INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS065', 'Poorvenir engorda', TO_DATE('2023-11-22', 'YYYY-MM-DD'), 400.0, '400.00', '9002');
INSERT INTO insumo (id_insumo, nombre_insumo, fecha_adquisicion, cantidad, costo, id_proveedor)
VALUES ('INS080', 'Ababe 40', TO_DATE('2023-11-24', 'YYYY-MM-DD'), 2800.0, '1000.00', '9005');

------DATOS PROVEEDOR 

INSERT INTO proveedor (id_proveedor, nombre_prov, apellido_p_p, apellido_m_p, direccion, telefono)
VALUES ('9001', 'Porvenir', '----', '------', 'Cam. Alegre, 50734 M�x.', 7227927700);

INSERT INTO proveedor VALUES ('9002', 'Granelera San Pedro', '----', '------', 'Salvador D�az Mir�n f520, San Pedro De Los Ba�os, 50740 San Pedro los Ba�os, M�x.', +527121210008);

INSERT INTO proveedor VALUES ('9003', 'AGROVIX', '----', '-----', 'Atlacomulco de Fabela - Lxtlahuaca de Rayon 415, 50734 Ixtlahuaca de Ray�n, M�x.', 7122000312);

INSERT INTO proveedor VALUES ('9004', 'Sandro', 'jimenez', 'Lara', '', 7126005489);

INSERT INTO proveedor VALUES ('9005', 'Raul', 'Mejia', 'Amado', 'San pedro de los ba�os centro ', 7121136359);

//Tabla toros

INSERT INTO toro VALUES (7401, 'C001', 'A001', 'Angus', 275, 2, 2);
INSERT INTO toro VALUES (7403, 'C001', 'A001', 'Angus', 280, 3, 3);
INSERT INTO toro VALUES (7405,  'C001', 'A001', 'Angus Rojo', 290, 2, 4);
INSERT INTO toro VALUES (7407 ,'C001', 'A001', 'Angus', 305, 3, 5);
INSERT INTO toro VALUES (7409, 'C001', 'A001', 'Angus', 295, 2, 6);
INSERT INTO toro VALUES (7411,  'C001', 'A001', 'Angus Rojo', 265, 3, 7);
INSERT INTO toro VALUES (7413, 'C001', 'A001', 'Angus', 270, 2, 8);
INSERT INTO toro VALUES (7415, 'C001', 'A001', 'Angus', 310, 3, 9);
INSERT INTO toro VALUES (7417,  'C001', 'A001', 'Angus Rojo', 285, 2, 10);
INSERT INTO toro VALUES (7419 ,'C001', 'A001', 'Angus', 260, 3, 11);
INSERT INTO toro VALUES (7421, 'C001', 'A001', 'Angus', 295, 2, 12);
INSERT INTO toro VALUES (7423, 'C001', 'A001', 'Angus Rojo', 280, 3, 13);
INSERT INTO toro VALUES (7425, 'C001', 'A001', 'Angus', 270, 2, 14);
INSERT INTO toro VALUES (7427, 'C001', 'A001', 'Angus', 305, 3, 15);
INSERT INTO toro VALUES (7429, 'C001', 'A001', 'Angus Rojo', 265, 2, 16);
----------------------------
INSERT INTO toro VALUES (7431, 'C002', 'A003', 'Angus', 290, 3, 17);
INSERT INTO toro VALUES (7433,'C002', 'A003', 'Angus', 275, 2, 18);
INSERT INTO toro VALUES (7435,'C002', 'A003', 'Angus Rojo', 300, 3, 19);
INSERT INTO toro VALUES (7437,'C002', 'A003', 'Angus', 280, 2, 20);
INSERT INTO toro VALUES (7501,'C002', 'A003', 'Charolais', 290, 2, 21);
INSERT INTO toro VALUES (7503,'C002', 'A003', 'Brangus', 305, 3, 22);
INSERT INTO toro VALUES (7505,'C002', 'A003', 'Limusin', 295, 2, 23);
INSERT INTO toro VALUES (7507,'C002', 'A003', 'Hereford', 285, 3, 24);
INSERT INTO toro VALUES (7509,'C002', 'A003', 'Charolais', 270, 2, 25);
INSERT INTO toro VALUES (7511,'C002','A003', 'Brangus', 290, 3, 26);
INSERT INTO toro VALUES (7513,'C002', 'A003', 'Limusin', 280, 2, 27);
INSERT INTO toro VALUES (7515,'C002', 'A003', 'Hereford', 310, 3, 28);
INSERT INTO toro VALUES (7517,'C002', 'A003', 'Charolais', 275, 2, 29);
INSERT INTO toro VALUES (7519, 'C002', 'A003', 'Brangus', 295, 3, 30);
INSERT INTO toro VALUES (7521,'C002', 'A003', 'Limusin', 270, 2, 31);
INSERT INTO toro VALUES (7523,'C002', 'A003', 'Hereford', 300, 3, 32);
INSERT INTO toro VALUES (7525,'C002', 'A003', 'Charolais', 285, 2, 33);
INSERT INTO toro VALUES (7527,'C002', 'A003', 'Brangus', 305, 3, 34);
INSERT INTO toro VALUES (7529,'C002', 'A003', 'Limusin', 265, 2, 35);
INSERT INTO toro VALUES (7531,'C002', 'A003', 'Hereford', 295, 3, 36);
INSERT INTO toro VALUES (7533,'C002', 'A003', 'Charolais', 280, 2, 37);
INSERT INTO toro VALUES (7535,'C002', 'A003', 'Brangus', 310, 3, 38);
INSERT INTO toro VALUES (7537,'C002', 'A003', 'Limusin', 290, 2, 39);
INSERT INTO toro VALUES (7539,'C002', 'A003', 'Hereford', 275, 3, 40);


INSERT INTO toro VALUES (7601,'C003', 'A004', 'Charolais', 550, 2, 61);
INSERT INTO toro VALUES (7603,'C003', 'A004', 'Brangus', 600, 3, 62);
INSERT INTO toro VALUES (7605,'C003', 'A004', 'Limusin', 700, 2, 63);

INSERT INTO toro VALUES (7611,'C003', 'A004', 'Brangus', 590, 3, 66);
INSERT INTO toro VALUES (7613,'C003', 'A004', 'Limusin', 660, 2, 67);
INSERT INTO toro VALUES (7615,'C003', 'A004', 'Hereford', 720, 3, 68);
INSERT INTO toro VALUES (7617,'C003', 'A004', 'Charolais', 590, 2, 69);
INSERT INTO toro VALUES (7619,'C003', 'A004', 'Brangus', 620, 3, 70);
INSERT INTO toro VALUES (7621,'C003', 'A004', 'Limusin', 670, 2, 71);
INSERT INTO toro VALUES (7623,'C003', 'A004', 'Hereford', 760, 3, 72);
INSERT INTO toro VALUES (7625,'C003', 'A004', 'Charolais', 560, 2, 73);
INSERT INTO toro VALUES (7627,'C003', 'A004', 'Brangus', 640, 3, 74);
INSERT INTO toro VALUES(7629,'C003', 'A004', 'Limusin', 690, 2, 75);
INSERT INTO toro VALUES (7631,'C003', 'A004', 'Hereford', 730, 3, 76);
INSERT INTO toro VALUES (7635,'C003', 'A004', 'Brangus', 620, 3, 78);
INSERT INTO toro VALUES (7637,'C003', 'A004', 'Limusin', 680, 2, 79);
INSERT INTO toro VALUES (7639,'C003', 'A004', 'Hereford', 700, 3, 80);
INSERT INTO toro VALUES (7701,'C003', 'A004', 'Charolais', 590, 2, 81);
INSERT INTO toro VALUES (7703,'C003', 'A004', 'Brangus', 600, 3, 82);
INSERT INTO toro VALUES (7705, 'C003', 'A004', 'Limusin', 700, 2, 83);
INSERT INTO toro VALUES (7707,'C003', 'A004', 'Hereford', 750, 3, 84);

INSERT INTO toro VALUES(7709, 'C004', 'A005', 'Charolais', 570, 2, 85);
INSERT INTO toro VALUES (7711,  'C004', 'A005', 'Brangus', 590, 3, 86);
INSERT INTO toro VALUES (7713,  'C004', 'A005', 'Limusin', 660, 2, 87);
INSERT INTO toro VALUES (7715, 'C004', 'A005', 'Hereford', 720, 3, 88);
INSERT INTO toro VALUES (7717,  'C004', 'A005', 'Charolais', 590, 2, 89);
INSERT INTO toro VALUES (7719,  'C004', 'A005', 'Brangus', 620, 3, 90);
INSERT INTO toro VALUES (7721,  'C004', 'A005', 'Limusin', 670, 2, 91);
INSERT INTO toro VALUES (7723,  'C004', 'A005', 'Hereford', 760, 3, 92);
INSERT INTO toro VALUES (7725,  'C004', 'A005', 'Charolais', 560, 2, 93);
INSERT INTO toro VALUES (7727,  'C004', 'A005', 'Brangus', 640, 3, 94);
INSERT INTO toro VALUES (7729, 'C004', 'A005', 'Limusin', 690, 2, 95);
INSERT INTO toro VALUES (7731,  'C004', 'A005', 'Hereford', 730, 3, 96);
INSERT INTO toro VALUES (7733,  'C004', 'A005', 'Charolais', 580, 2, 97);
INSERT INTO toro VALUES (7735,  'C004', 'A005', 'Brangus', 620, 3, 98);
INSERT INTO toro VALUES (7737,  'C004', 'A005', 'Limusin', 680, 2, 99);
INSERT INTO toro VALUES (7739,  'C004', 'A005', 'Hereford', 700, 3, 100);



//-----------------Revisar-------------------

INSERT INTO detalle_vacuna VALUES (201, 'IVOMEC', 'IVOMEC es un desparasitante utilizado para el control de par�sitos internos y externos en bovinos.', 'Desparasitante', '01/12/2023', 1, 7401, 'VAC001');
INSERT INTO detalle_vacuna VALUES (202, 'Complejo B', 'El Complejo B es un suplemento vitam�nico que contribuye al bienestar de los bovinos.', 'Vitamina', '03/12/2023',1,7405, 'VAC002');
INSERT INTO detalle_vacuna VALUES(203, 'ADE', 'La vitamina ADE es esencial para el crecimiento y salud de los bovinos', 'Vitamina', '03/12/2023', 4,7407,'VAC003');
INSERT INTO detalle_vacuna VALUES(204, 'Vovilis', 'Vovilis es una vacuna para prevenir enfermedades espec�ficas en bovinos.', 'Vacuna', '05/12/2023', 5, 7409, 'VAC004');
INSERT INTO detalle_vacuna VALUES (205, 'VOVAC 8', 'VOVAC 8 es una vacuna multicomponente para la protecci�n contra diversas enfermedades en bovinos.', 'Vacuna', '06/12/2023', 6,  7411, 'VAC005');
INSERT INTO detalle_vacuna VALUES (206, 'COVEXIN', 'COVEXIN es una vacuna para prevenir enfermedades clostridiales en bovinos', 'Vacuna', '07/12/2023', 7,7413, 'VAC006');
INSERT INTO detalle_vacuna VALUES (207, 'Catosal', 'Catosal es un reconstituyente que ayuda en situaciones de estr�s y debilidad en bovinos', 'Reconstituyente', '08/12/2023', 8, 7415, 'VAC007');
INSERT INTO detalle_vacuna VALUES(208, 'Vigantol', 'Vigantol es una fuente de vitamina D para mantener la salud �sea en bovinos.', 'Vitamina', '09/12/2023', 1, 7417, 'VAC008');
INSERT INTO detalle_vacuna VALUES (209, 'Nutrimin', 'Nutrimin es un suplemento nutricional para promover el crecimiento y la salud en bovinos', 'Vitamina', '10/12/2023', 2, 7419, 'VAC009');
INSERT INTO detalle_vacuna VALUES(210, 'PRO_FIT', 'PRO_FIT es un suplemento anab�lico para mejorar el rendimiento en bovinos.', 'Anabolicos', '11/12/2023', 3, 7421,'VAC010');
INSERT INTO detalle_vacuna VALUES (211, 'CEREALON', 'CEREALON es un suplemento alimenticio para una nutrici�n equilibrada en bovinos.', 'Vitamina', '12/12/2023', 4, 7423, 'VAC011');
INSERT INTO detalle_vacuna VALUES(212, 'GOLDENNOLA', 'GOLDENNOLA es un suplemento que favorece la producci�n de leche en bovinos.', 'Vitamina', '13/12/2023', 5, 7425,'VAC012');
INSERT INTO detalle_vacuna VALUES(213, 'IVOMEC', 'IVOMEC es un desparasitante utilizado para el control de par�sitos internos y externos en bovinos.', 'Desparasitante', '14/12/2023', 6, 7427, 'VAC013');
INSERT INTO detalle_vacuna VALUES(214, 'Tomado', 'Valvasen es un suplemento alimenticio para bovinos.', 'Vitamina', '15/12/2023', 7, 7429,'VAC014');
INSERT INTO detalle_vacuna VALUES(215, 'Complejo B', 'El Complejo B es un suplemento vitam�nico que contribuye al bienestar de los bovinos.', 'Vitamina', '16/12/2023', 8, 7431, 'VAC015');
INSERT INTO detalle_vacuna VALUES(216, 'ADE', 'La vitamina ADE es esencial para el crecimiento y salud de los bovinos.', 'Vitamina', '17/12/2023', 1, 7433,'VAC016');
INSERT INTO detalle_vacuna VALUES(217, 'Vovilis', 'Vovilis es una vacuna para prevenir enfermedades espec�ficas en bovinos.', 'Vacuna', '18/12/2023', 2, 7435, 'VAC017');
INSERT INTO detalle_vacuna VALUES(218, 'VOVAC 8', 'VOVAC 8 es una vacuna multicomponente para la protecci�n contra diversas enfermedades en bovinos.', 'Vacuna', '19/12/2023', 3, 7437,'VAC018');
INSERT INTO detalle_vacuna VALUES (225, 'GOLDENNOLA', 'GOLDENNOLA es un suplemento que favorece la producci�n de leche en bovinos.', 'Vitamina', '26/12/2023', 2, 7501, 'VAC019');
INSERT INTO detalle_vacuna VALUES (226, 'IVOMEC', 'IVOMEC es un desparasitante utilizado para el control de par�sitos internos y externos en bovinos.', 'Desparasitante', '27/12/2023', 3, 7503, 'VAC020');
INSERT INTO detalle_vacuna VALUES (227, 'Tomado', 'Valvasen es un suplemento alimenticio para bovinos.', 'Vitamina', '28/12/2023', 4, 7507, 'VAC021');
INSERT INTO detalle_vacuna VALUES (228, 'Complejo B', 'El Complejo B es un suplemento vitam�nico que contribuye al bienestar de los bovinos.', 'Vitamina', '29/12/2023', 5, 7509,'VAC021');
INSERT INTO detalle_vacuna VALUES (229, 'ADE', 'La vitamina ADE es esencial para el crecimiento y salud de los bovinos.', 'Vitamina', '30/12/2023', 6, 7511,'VAC022');
INSERT INTO detalle_vacuna VALUES (230, 'Vovilis', 'Vovilis es una vacuna para prevenir enfermedades espec�ficas en bovinos.', 'Vacuna', '31/12/2023', 7, 7513, 'VAC023');
INSERT INTO detalle_vacuna VALUES (231, 'VOVAC 8', 'VOVAC 8 es una vacuna multicomponente para la protecci�n contra diversas enfermedades en bovinos.', 'Vacuna', '01/01/2024', 8, 7515, 'VAC024');
INSERT INTO detalle_vacuna VALUES (232, 'COVEXIN', 'COVEXIN es una vacuna para prevenir enfermedades clostridiales en bovinos.', 'Vacuna', '01/01/2024', 1, 7519, 'VAC025');
INSERT INTO detalle_vacuna VALUES (233, 'Catosal', 'Catosal es un reconstituyente que ayuda en situaciones de estr�s y debilidad en bovinos.', 'Reconstituyente', '01/01/2024', 2, 7521,'VAC025');
INSERT INTO detalle_vacuna VALUES(234, 'Vigantol', 'Vigantol es una fuente de vitamina D para mantener la salud �sea en bovinos.', 'Vitamina', '01/01/2024', 3, 7523, 'VAC026');
INSERT INTO detalle_vacuna VALUES (235, 'Nutrimin', 'Nutrimin es un suplemento nutricional para promover el crecimiento y la salud en bovinos.', 'Vitamina', '01/01/2024', 4, 7525, 'VAC027');
INSERT INTO detalle_vacuna VALUES(236, 'PRO_FIT', 'PRO_FIT es un suplemento anab�lico para mejorar el rendimiento en bovinos.', 'Anabolicos', '01/01/2024', 5, 7527, 'VAC028');
INSERT INTO detalle_vacuna VALUES (237, 'CEREALON', 'CEREALON es un suplemento alimenticio para una nutrici�n equilibrada en bovinos.', 'Vitamina', '01/01/2024', 6,7529,'VAC029' );
INSERT INTO detalle_vacuna VALUES (238, 'GOLDENNOLA', 'GOLDENNOLA es un suplemento que favorece la producci�n de leche en bovinos.', 'Vitamina', '01/01/2024', 7, 7531,'VAC030');





---------------------------------------

DROP table detalle_vacuna; 
select * from insumo
select * from alimentacion; 

select * from proveedor;
describe corral;
select * from toro;
select * from alimentacion;
select * from corral;
SELECT * FROM ALIMENTACION;

select * from toro;

drop table login;
delete from login where usu='Ana Belen';
select * from login;

-- registros en la tabla "detalle_vacuna"
select * from detalle_vacuna; 
select * from vacunacion;

 SELECT c.ubicacion,c.capacidad, t.raza,t.peso,t.edad
FROM corral c
LEFT JOIN toro t ON c.clave_corral = t.clave_corral;
