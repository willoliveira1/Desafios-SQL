-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2746
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37407709

-- Resposta
SELECT name, TRUNC(salary * 0.1, 2) AS tax
FROM people
WHERE salary > 3000;

-- Dados Iniciais
CREATE TABLE virus (
    id INTEGER,
    name VARCHAR(255)
);
INSERT INTO virus(id, name)
VALUES
    (1, 'H1RT'),
    (2, 'H7H1'),
    (3, 'HUN8'),
    (4, 'XH1HX'),
    (5, 'XXXX');
