-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2739
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37406829

-- Resposta
SELECT name, CAST(EXTRACT(DAY FROM payday) AS INT) AS day
FROM loan;

-- Dados Iniciais
CREATE TABLE loan(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    value NUMERIC,
    payday TIMESTAMP
);
INSERT INTO loan(id, name, value, payday)
VALUES (1, 'Cristian Ghyprievy', 3000.50, '2017-10-19'),
       (2, 'John Serial', 10000, '2017-10-10'),
       (3, 'Michael Seven', 5000.40, '2017-10-17'),
       (4, 'Joana Cabel', 2000, '2017-10-05'),
       (5, 'Miguel Santos', 4050, '2017-10-20');