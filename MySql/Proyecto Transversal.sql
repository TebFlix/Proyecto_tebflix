

INSERT INTO TEBFLIX.USUARIO VALUES ('diegommcc1@gmail.com', 'diegommcc',
		'DIEGO', 'MAÑANES', 'CAYERO', 'HOLA1234', TRUE);

INSERT INTO TEBFLIX.COMIC VALUES('1234', 'diegommcc', 'hola loco', 
	'accion', 'qwertuiohgfdsdfghjk fghj fghjkfghjkfgh', 'rutapdf', '9999-12-31', 
    'rutaimagen');
    
INSERT INTO  TEBFLIX.COMICFAV VALUE('1111','diegommcc', '1234');


INSERT INTO TEBFLIX.USUARIO VALUES ('Marvel@yopmail.com', 'Marvel',
		'Marvelita', 'studios', 'diez', 'Marvel12', TRUE);
        
INSERT INTO TEBFLIX.COMIC VALUES('1235', 'Marvel', 'hola wey', 
	'accion', 'comic policiaco', 'ejemplo_esp', '2019-09-21', 
    'avengers_3');
SELECT COMIC.PDF FROM TEBFLIX.COMIC
where comic.pdf = 'ejemplo_esp'
