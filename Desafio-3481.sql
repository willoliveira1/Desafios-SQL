-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/3481
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37417272

-- Resposta
SELECT DISTINCT node_id,
    CASE
        WHEN pointer IS NULL THEN 'LEAF'
        WHEN node_id = ANY(SELECT node_id FROM nodes WHERE node_id IN(SELECT pointer FROM nodes)) THEN 'INNER'
        ELSE 'ROOT'
    END AS type
FROM nodes
ORDER BY node_id;

-- Dados Iniciais
CREATE TABLE nodes (
    node_id numeric,
    pointer numeric
);
insert into nodes (node_id, pointer) values
    (50, 30),
    (50, 75),
    (30, 15),
    (30, 35),
    (15, 1),
    (15, 20),
    (35, 32),
    (35, 40),
    (1, null),
    (20, null),
    (32, null),
    (40, null),
    (75, 60),
    (75, 90),
    (60, 55),
    (60, 70),
    (90, 80),
    (90, 95),
    (55, null),
    (70, null),
    (80, null),
    (95, null);