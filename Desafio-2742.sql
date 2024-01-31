-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2642
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37407552

-- Resposta
SELECT l.name, TRUNC(l.omega * 1.618, 3) as Fator_N
FROM life_registry AS l
INNER JOIN dimensions AS d
    ON d.id = l.dimensions_id
WHERE d.name IN ('C875', 'C774')
AND l.name LIKE 'Richard%'
ORDER BY l.omega ASC;

-- Dados Iniciais
CREATE TABLE dimensions(
    id INTEGER PRIMARY KEY,
    name varchar(255)
);
CREATE TABLE life_registry(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    omega NUMERIC,
    dimensions_id INTEGER REFERENCES dimensions (id)
);
INSERT INTO dimensions(id, name)
VALUES
    (1, 'C774'),
    (2, 'C784'),
    (3, 'C794'),
    (4, 'C824'),
    (5, 'C875');
INSERT INTO life_registry(id, name, omega, dimensions_id)
VALUES
    (1, 'Richard Postman', 5.6, 2),
    (2, 'Simple Jelly', 1.4, 1),
    (3, 'Richard Gran Master', 2.5, 1),
    (4, 'Richard Turing', 6.4, 4),
    (5, 'Richard Strall',	1.0, 3);