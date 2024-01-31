-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2611
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37403457

-- Resposta
SELECT m.id, m.name
FROM movies AS m
INNER JOIN genres AS g
    ON g.id = m.id_genres
WHERE g.description = 'Action';

-- Dados Iniciais
CREATE TABLE genres (
    id numeric PRIMARY KEY,
    description varchar(50)
);
CREATE TABLE movies (
    id numeric PRIMARY KEY,
    name varchar(50),
    id_genres numeric REFERENCES genres (id)
);
INSERT INTO genres (id, description)
VALUES
    (1,	'Animation'),
    (2,	'Horror'),
    (3,	'Action'),
    (4,	'Drama'),
    (5,	'Comedy');
INSERT INTO movies (id, name, id_genres)
VALUES
    (1,	'Batman',	3),
    (2,	'The Battle of the Dark River',	3),
    (3,	'White Duck',	1),
    (4,	'Breaking Barriers',	4),
    (5,	'The Two Hours',	2);