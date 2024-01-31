-- Link Desafio:  https://www.beecrowd.com.br/judge/pt/problems/view/2640
-- Link Resposta: https://www.beecrowd.com.br/judge/pt/runs/code/37406998

-- Resposta
SELECT 'Podium: ' || team AS name
FROM league
WHERE position IN (1, 2, 3)
UNION ALL
SELECT 'Demoted: ' || team AS name
FROM league
WHERE position IN (14, 15);

-- Dados Iniciais
CREATE TABLE league(
    position INTEGER,
    team CHARACTER VARYING (255)
);
INSERT INTO league(position, team)
VALUES (1, 'The Quack Bats'),
       (2, 'The Responsible Hornets'),
       (3, 'The Bawdy Dolphins'),
       (4, 'The Abstracted Sharks'),
       (5, 'The Nervous Zebras'),
       (6, 'The Oafish Owls'),
       (7, 'The Unequaled Bison'),
       (8, 'The Keen Kangaroos'),
       (9, 'The Left Nightingales'),
       (10, 'The Terrific Elks'),
       (11, 'The Lumpy Frogs'),
       (12, 'The Swift Buffalo'),
       (13, 'The Big Chargers'),
       (14, 'The Rough Robins'),
       (15, 'The Silver Crocs');