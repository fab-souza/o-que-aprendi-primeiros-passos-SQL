CREATE TABLE estante (
  id INTEGER PRIMARY KEY,
  titulo VARCHAR(255),
  autor VARCHAR(255),
  idioma_pt_br BOOLEAN,
  nota NUMERIC
);


INSERT INTO estante (id, titulo, autor, idioma_pt_br, nota) 
	VALUES (1,'O Nome do Vento', 'Patric Rothfuss', TRUE, 5)
	
SELECT * FROM estante
	
INSERT INTO estante (id, titulo, autor, idioma_pt_br, nota) 
	VALUES (2,'Recursão', 'Blake Crouch', TRUE, 5)
INSERT INTO estante (id, titulo, autor, idioma_pt_br, nota) 
	VALUES (3,'Tigers Curse', 'Colleen Houck', FALSE, 4)
INSERT INTO estante (id, titulo, autor, idioma_pt_br, nota) 
	VALUES (4,'Trigun', 'Yasuhiro Nightow', FALSE, 5)
	
SELECT * FROM estante	
