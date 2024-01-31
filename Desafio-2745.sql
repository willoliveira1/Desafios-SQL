-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2745
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37407709

-- Resposta
SELECT name, TRUNC(salary * 0.1, 2) AS tax
FROM people
WHERE salary > 3000;

-- Dados Iniciais
CREATE TABLE people (
    id INTEGER PRIMARY KEY,
    name CHARACTER VARYING (255),
    salary NUMERIC
);
INSERT INTO people(id, name, salary)
VALUES
    (1, 'James M. Tabarez', 883),
    (2, 'Rafael T. Hendon', 4281),
    (3, 'Linda J. Gardner', 4437),
    (4, 'Nicholas J. Conn', 8011),
    (5, 'Karol A. Morales', 2508),
    (6, 'Lolita S. Graves', 8709);