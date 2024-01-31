-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2743
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37407591

-- Resposta
SELECT name, LENGTH(name) AS length
FROM people
ORDER BY length DESC;

-- Dados Iniciais
CREATE TABLE people(
    id INTEGER PRIMARY KEY,
    name varchar(255)
);
INSERT INTO people(id, name)
VALUES
    (1, 'Karen'),
    (2, 'Manuel'),
    (3, 'Ygor'),
    (4, 'Valentine'),
    (5, 'Jo');