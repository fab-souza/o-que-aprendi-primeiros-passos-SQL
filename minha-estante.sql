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

CREATE TABLE goodreads (
	id SERIAL PRIMARY KEY,
	score NUMERIC NOT NULL
);

DROP TABLE goodreads

CREATE TABLE goodreads (
	id SERIAL PRIMARY KEY,
	score NUMERIC NOT NULL,
	ratings NUMERIC NOT NULL,
	reviews NUMERIC NOT NULL
);

INSERT INTO goodreads (score, ratings, reviews) VALUES (4.52, 825335, 47418);

SELECT * FROM goodreads;

INSERT INTO goodreads (score, ratings, reviews) VALUES (4.15, 163132, 20820);
INSERT INTO goodreads (score, ratings, reviews) VALUES (4.06, 60405, 6053);
INSERT INTO goodreads (score, ratings, reviews) VALUES (4.1, 197, 18);

-- Visualizar os dados das duas tabelas

SELECT * FROM estante
  JOIN goodreads ON goodreads.id = estante.id

-- Visualizar dados específicos, comparando minha nota com a nota no Goodreads

SELECT estante.titulo as "Nome do livro",
	   estante.nota as "Minha nota",
       goodreads.score as "Nota no Goodreads"
  FROM estante
  JOIN goodreads ON goodreads.id = estante.id
